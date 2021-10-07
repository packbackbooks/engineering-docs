#!/bin/bash

set -eo pipefail

# Ensure all our paths are based off of the root of the repo
cd "$(dirname "${BASH_SOURCE[0]}")"

# Output formatting variables
NO_FORMAT="\e[0m"
F_UNDERLINED="\e[4m"
F_BOLD="\e[1m"
C_RED="\e[31m"
C_YELLOW="\e[93m"
C_CYAN="\e[36m"
C_LIME="\e[92m"

__find_markdown_files()
{
    filesToExclude="node_modules|vendor|PULL_REQUEST_TEMPLATE\.md|LICENSE\.md"
    # Find all markdown files
    find ./ -type f -name \*.md | \
    # Exclude files matching these patterns
    grep -Ev $filesToExclude | \
    # Order them by depth and directory
    while read file; do
        printf '%s\t%s\t%s\n' "${file%/*}" "$(tr -dc / <<< "$file")" "$file"
    done | sort -n | \
    # Strip it down to just the file name again
    sed 's/.*\t//g'
}

sync_markdown_to_confluence()
{
    errors=()
    for file in $(__find_markdown_files); do
        path=${file//'./'/''}
        echo "Sync $path";
        # Prepend documentation with metadata and header info.
        echo -e "<!-- Space: ENG -->
<!-- Parent: Engineering Docs (Public-facing) -->
<!-- Title: $path -->\n
**DO NOT EDIT THIS PAGE** This file was automatically synced to Confluence from GitHub. Any changes to this documentation should be made in git and committed to the repo. Changes made in Confluence will be overwritten.
[View this file in GitHub.](https://github.com/packbackbooks/questions/blob/master/$path)\n\n
$(cat $file)" > $file
        # Sync the file in Confluence
        mark -u $JIRA_USER -p $JIRA_API_TOKEN \
            -b https://packback.atlassian.net/wiki/ \
            -f $file || \
        # Retry with verbose debugging
        mark --trace -u $JIRA_USER -p $JIRA_API_TOKEN \
            -b https://packback.atlassian.net/wiki/ \
            -f $file || \
        # If it still fails, add it to the list of failed files.
        errors[${#errors[@]}]=$path;
    done;
    # List any files that failed to sync
    for file in "${errors[@]}"; do
        echo -e "${C_RED}ERROR:${NO_FORMAT} Unable to sync $file to Confluence.";
    done;
    exit ${#errors[@]}
}

__get_confluence_page_ids_to_delete()
{
    # ################################# WARNING ################################# #
    # This deletes all child pages in Confluence underneath the specified page:
    # https://packback.atlassian.net/wiki/spaces/QUESTIONS/pages/1226375277
    # Use caution when changing this. Triple-check you're deleting the right pages.
    curl -X GET -H "$h1" -H "$h2" "https://packback.atlassian.net/wiki/rest/api/content/1242529793/child/page?limit=1000" | \
        jq -re '.results[].id'
}

clear_confluence()
{
    h1="Authorization: Basic $(echo -n $JIRA_USER:$JIRA_API_TOKEN | base64)"
    h2="Content-Type: application/json"
    for page_id in $(__get_confluence_page_ids_to_delete); do
        echo "Deleting page $page_id from Confluence."
        curl -X DELETE -H "$h1" -H "$h2" "https://packback.atlassian.net/wiki/rest/api/content/$page_id"
    done;
}