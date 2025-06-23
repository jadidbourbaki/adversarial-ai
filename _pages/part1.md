---
layout: page
permalink: /part1/
---

{% assign part1_readme = site.pages | where: "path", "part1/README.md" | first %}
{{ part1_readme.content }} 