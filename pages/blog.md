---
layout: default
title: Blog
permalink: /blog/
---

<h1>Posts</h1>

<br>

<p><a href="javascript:void(0);" onclick="history.back();" style="text-decoration: none; color: #007BFF; font-family: Arial, sans-serif;">
    ⬅️ Go to Previous Page
</a></p>

<br>

<hr>

{% for post in site.posts %}

  {% assign current_date = 'now' | date: '%s' %}
  {% assign post_date = post.date | date: '%s' %}
  {% assign time_difference = current_date | minus: post_date %}
  {% assign seven_days_in_seconds = 7 | times: 86400 %}
  
  <br>

   **👉 [ {{ post.title }} ]( {{ post.url | relative_url }} )** {% if time_difference < seven_days_in_seconds %}&emsp;<a class="ui black tag label">NEW</a>{% endif %} 
  
  
  ***{{ post.description }}***
  
  
  💻 Author: *{{ post.author }}*
  <br>
  {{ post.date | date: "📅 %d %B %Y 🕒 %T" }}
  
  Categories: {{ post.categories | join: ", "}}
  <br>
  Tags: {{ post.tags | join: ", " }}
  
  <br>
  <hr>

{% endfor %}
