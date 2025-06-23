---
layout: page
permalink: /instructor_manual/
---

{% assign instructor_manual_readme = site.pages | where: "path", "INSTRUCTOR_MANUAL.md" | first %}
{{ instructor_manual_readme.content }} 