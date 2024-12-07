---
layout: default
title: Sacred Circuits Home
description: A place to share ideas, thoughts, and most importantly, random sht.
subtitle: A place to share ideas, thoughts, and most importantly, random sht.
author: metalerk
lang: "en"
permalink: "/"
robots: "index, follow"
canonical_url: "https://metalerk.github.io/"
image: "https://avatars.githubusercontent.com/u/13503868?v=4"
twitter_card: "summary_large_image"
keywords: "technology blog, tech tutorials, tech reviews, latest gadgets, software tips"
meta_tags:
  - name: "viewport"
    content: "width=device-width, initial-scale=1"
  - name: "theme-color"
    content: "#ffffff"
  - name: "author"
    content: "metalerk"
  - name: "keywords"
    content: "technology blog, tech tutorials, tech reviews, latest gadgets, software tips"
  - name: "description"
    content: "A place to share ideas, thoughts, and most importantly, random sht."
og_tags:
  - property: "og:title"
    content: "Sacred Circuits"
  - property: "og:description"
    content: "A place to share ideas, thoughts, and most importantly, random sht."
  - property: "og:image"
    content: "https://avatars.githubusercontent.com/u/13503868?v=4"
  - property: "og:url"
    content: "https://metalerk.github.io/"
  - property: "og:type"
    content: "website"
twitter_tags:
  - name: "twitter:card"
    content: "summary_large_image"
  - name: "twitter:title"
    content: content: "Sacred Circuits"
  - name: "twitter:description"
    content: "A place to share ideas, thoughts, and most importantly, random sht."
  - name: "twitter:image"
    content: "https://avatars.githubusercontent.com/u/13503868?v=4"
sitemap:
  priority: 1.0
  changefreq: "daily"
media_subpath: /assets/img/site/
---

<section class="custom-section">


<div id="github-page-layout">
    <!-- Left sidebar (Profile section) -->
    <div id="github-sidebar">
        <img id="github-profile-avatar" src="assets/img/site/luis.jpg" alt="User Avatar">
        <div id="github-profile-info">
            <h2 id="github-profile-name">Luis Esteban Rodriguez</h2>
            <p id="github-profile-username"><a href="http://github.com/metalerk" target="_blank">@metalerk</a></p>
            <p id="github-profile-bio">Dev, Musician, Dreamer</p>
        </div>
        <div id="github-profile-details">
            <p><strong>🤷‍♂️</strong> followers · <strong>🤷‍♂️</strong> following</p>
            <ul>
                <li><span class="icon">🏢</span> <span>Rabobank</span></li>
                <li><span class="icon">📍</span> <span>Netherlands 🇳🇱</span></li>
                {% assign current_hour = "now" | date: "%T UTC %z" %}
                <li><span class="icon">⏰</span> <span>{{ current_hour }}</span></li>
                <li><span class="icon">📧</span> <a href="mailto:rodriguezjluis0@gmail.com">rodriguezjluis0@gmail.com</a></li>
                <li><span class="icon">🔗</span> <a href="http://metalerk.github.io" target="_blank">http://metalerk.github.io</a></li>
                <li><span class="icon">✖</span> <a href="https://twitter.com/luis_esteban05" target="_blank">@luis_esteban05</a></li>
            </ul>
        </div>
    </div>

    <!-- Main content (List section) -->
    <div id="github-main-content">
        <h1>A place to share ideas, thoughts, and most importantly, random sht.</h1>

        <h3>Available commands:</h3>

        <table border="1" style="border-collapse: collapse; text-align: left; font-family: Arial, sans-serif;">
          <thead style="background-color: #f2f2f2;">
              <tr>
                  <th style="padding: 8px;">Command</th>
                  <th style="padding: 8px;">Description</th>
              </tr>
          </thead>
          <tbody>
              <tr>
                  <td style="padding: 8px;"><code>blog</code></td>
                  <td style="padding: 8px;">Redirects to <a href="/blog/">Blog Posts</a></td>
              </tr>
              <tr>
                  <td style="padding: 8px;"><code>resume</code></td>
                  <td style="padding: 8px;">Shows <a href="/resume/">Resume</a></td>
              </tr>
          </tbody>
      </table>
      
      <br>

        <div id="bashConsole" style="background-color: #1e1e1e; color: #ffffff; font-family: monospace; padding: 20px; border-radius: 8px; width: 80%; max-width: 600px; height: 300px; overflow-y: auto; position: relative;">
          <div id="output"></div>
          <div style="display: flex;">
              <span style="color: #00ff00;">guest@bash:~$  </span>
              <input id="bashInput" type="text" style="flex: 1; background: none; border: none; outline: none; color: #ffffff; font-family: monospace;" autofocus>
          </div>
      </div>
      
      <script>
          const output = document.getElementById('output');
          const input = document.getElementById('bashInput');
      
          const commands = {
              help: () => {
                  return `
      Available commands:
      - help: Show this help menu
      - blog: Redirect to the blog page
      - resume: Redirect to the resume page
                  `;
              },
              'blog': () => {
                  window.location.href = '/blog/';
                  return 'Redirecting to /blog/...';
              },
              'resume': () => {
                  window.location.href = '/resume/';
                  return 'Redirecting to /resume/...';
              },
          };
      
          input.addEventListener('keydown', (e) => {
              if (e.key === 'Enter') {
                  const command = input.value.trim().toLowerCase();
                  const response = commands[command] 
                      ? commands[command]() 
                      : `Command not found: ${command}`;
                  
                  output.innerHTML += `<div><span style="color: #00ff00;">guest@bash:~$  </span>${command}</div>`;
                  output.innerHTML += `<div>${response}</div>`;
                  input.value = '';
                  output.scrollTop = output.scrollHeight; // Scroll to bottom
              }
          });
      </script>
      
      


    </div>
</div>



</section>