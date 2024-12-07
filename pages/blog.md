---
layout: default
title: Blog
permalink: /blog/
---

# Posts

<p><a href="javascript:void(0);" onclick="history.back();" style="text-decoration: none; color: #007BFF; font-family: Arial, sans-serif;">
    ⬅️ Go to Previous Page
</a></p>

{% for post in site.posts %}
  - 👉 [ {{ post.title }} ]( {{ post.url | relative_url }} )
  <br>
  ***{{ post.description }}***
  <br>
  💻 Author: *{{ post.author }}*
  <br>
  {{ post.date | date: "📅 %d %B %Y 🕒 %T" }}
  <br><br>
  Categories: {{ post.categories | join: ", "}}
  <br>
  Tags: {{ post.tags | join: ", " }}
{% endfor %}

---

&copy; 2024 Luis Esteban. All rights reserved.