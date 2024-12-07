---
title: Blog
layout: archive
permalink: /blog/
---

# Blog Posts

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url | relative_url }}">{{ post.title }}</a> - 
      <span>{{ post.date | date: "%B %d, %Y" }}</span>
    </li>
  {% endfor %}
  {% for post in site.posts %}
  <p>{{ post.title }} - <a href="{{ post.url }}">{{ post.url }}</a></p>
{% endfor %}

</ul>
