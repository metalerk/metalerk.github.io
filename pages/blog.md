---
title: Blog
layout: archive
permalink: /blog/
---

# Blog Posts

Welcome! Here you'll find all my posts listed below:

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a> - 
      <span>{{ post.date | date: "%B %d, %Y" }}</span>
    </li>
  {% endfor %}
</ul>
