#!/bin/bash

# Prompt for post details
read -p "Post title: " POST_TITLE
read -p "Tags (comma-separated): " TAG_INPUT
read -p "Excerpt: " EXCERPT

# Format date
DATE=$(date +"%Y-%m-%d %H:%M:%S %z")
DATE_PREFIX=$(date +"%Y-%m-%d")

# Format filename
SLUG=$(echo "$POST_TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/-\+/-/g' | sed 's/^-//' | sed 's/-$//')
FILENAME="_posts/${DATE_PREFIX}-${SLUG}.md"

# Format tags as YAML list
IFS=',' read -ra TAGS_ARRAY <<< "$TAG_INPUT"
TAGS_YAML=""
for TAG in "${TAGS_ARRAY[@]}"; do
  TAGS_YAML+="  - $(echo "$TAG" | xargs)\n"
done

# Create the post file
cat > "$FILENAME" <<EOF
---
title: "$POST_TITLE"
date: '$DATE'
tags:
$TAGS_YAML
layout: post
excerpt: $EXCERPT
feature-img: /assets/img/feature-img/default.png
thumbnail: /assets/img/feature-img/default.png
bootstrap: true
published: false
---

# $POST_TITLE

This is your new post. Replace this text with your content.

![Example Image](/assets/img/example.jpg)

Here's a [sample link](https://example.com) to get you started.
EOF

echo "✅ New post created: $FILENAME"
