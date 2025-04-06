---
title: All Posts | Krafter's Blog
layout: default
---
# Krafter's Blog

{% for post in site.posts %}
### [{{ post.title }}]({{ post.url }})
*{{ post.date | date: "%-d %B %Y" }}*
{{ post.excerpt }}

{% endfor %}