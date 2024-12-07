---
layout: default
title: Blog
permalink: /blog/
---

## Posts

{% for post in site.posts %}
  - [ {{ post.title }} ]( {{ post.url | relative_url }} )
  <br>
  {{ post.description }}
  <br>
  {{ post.date | date: "%B %d, %Y %T" }}
  <br><br>
  Categories: {{ post.categories | join: ", "}}
  <br>
  Tags: {{ post.tags | join: ", " }}
{% endfor %}

---

&copy; 2024 4MLabs. All rights reserved.