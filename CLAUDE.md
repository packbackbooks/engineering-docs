# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose
This is a documentation repository for Packback engineering practices, career growth, and team processes. It doesn't contain application code but rather markdown files explaining engineering practices.

## Documentation Guidelines
- Use markdown for all documentation files (.md extension)
- Follow consistent heading structure (# for title, ## for sections)
- Include diagrams in .drawio.png format when visualizing processes
- Place supporting images in the files/ directory
- Group related documentation in subdirectories (careers/, interviews-and-hiring/)
- Maintain clean, professional language suitable for both internal and external use

## Workflow Commands
- Generate PNG from diagrams: `convert -density 300 file.pdf -flatten -resize 25% output.png`
- Montage images: `montage input-0.png input-1.png -tile 2x1 -geometry +1+0 output.png`
- Clear content: `./scripts/clear.sh`
- Sync content: `./scripts/sync.sh`

## Style Guidelines
- Use active voice and clear, concise language
- Maintain 80-100 character line length for readability 
- Use consistent terminology throughout documentation
- Link related documents using relative paths
- Favor lists and headings to improve scannability
- Document sprint processes and career pathways completely