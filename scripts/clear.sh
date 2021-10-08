#!/bin/bash

set -ex

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

__get_confluence_page_ids_to_delete()
{
    # ################################# WARNING ################################# #
    # This deletes all child pages in Confluence underneath the specified page:
    # https://packback.atlassian.net/wiki/spaces/ENG/pages/1242529793
    # Use caution when changing this. Triple-check you're deleting the right pages.
    curl -X GET -H "$h1" -H "$h2" "https://packback.atlassian.net/wiki/rest/api/content/1242529793/child/page?limit=1000" | \
        jq -re '.results[].id'
}

echo "Clearing existing docs from Confluence"
h1="Authorization: Basic $(echo -n $JIRA_USER:$JIRA_API_TOKEN | base64)"
h2="Content-Type: application/json"
for page_id in $(__get_confluence_page_ids_to_delete); do
    echo "Deleting page $page_id from Confluence."
    curl -X DELETE -H "$h1" -H "$h2" "https://packback.atlassian.net/wiki/rest/api/content/$page_id"
done;