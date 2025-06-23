---
layout: page
permalink: /contributing/
---

{% assign contributing_readme = site.pages | where: "path", "CONTRIBUTING.md" | first %}
{{ contributing_readme.content }} 