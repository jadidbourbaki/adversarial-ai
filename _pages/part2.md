---
layout: page
permalink: /part2/
---

{% assign part2_readme = site.pages | where: "path", "part2/README.md" | first %}
{{ part2_readme.content }} 