#!/bin/bash

set -x

now_timestamp=$(date "+%Y-%m-%d %T %z")
now_day=$(date "+%Y-%m-%d")

filename="${now_day}-new-post.md"


cat << EOF > ${filename}
---
title:  "title here"
description: description here
date:   ${now_timestamp}
categories: magic keywords
---

# title here

text here
EOF
