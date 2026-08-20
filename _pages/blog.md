---
layout: default
permalink: /blog/
title: blog
nav: true
nav_order: 1
blog_layout: true
pagination:
  enabled: true
  collection: posts
  permalink: /page/:num/
  per_page: 5
  sort_field: date
  sort_reverse: true
  trail:
    before: 1
    after: 3
---

<div class="post blog-list">
  <header class="header-bar">
    <h1>{{ site.blog_name }}</h1>
    {% if site.blog_description %}
      <p>{{ site.blog_description }}</p>
    {% endif %}
  </header>

{% if site.display_tags and site.display_tags.size > 0 %}

<nav class="tag-category-list" aria-label="記事タグ">
{% for tag in site.display_tags %}
<a href="{{ tag | slugify | prepend: '/blog/tag/' | append: '/' | relative_url }}">
<i class="fa-solid fa-hashtag fa-sm"></i>
{{ tag }}
</a>
{% endfor %}
</nav>
{% endif %}

{% if page.pagination.enabled %}
{% assign postlist = paginator.posts %}
{% else %}
{% assign postlist = site.posts %}
{% endif %}

  <ul class="post-list">
    {% for post in postlist %}
      {% assign read_time = post.content | strip_html | number_of_words: 'cjk' | divided_by: 400 | plus: 1 %}
      <li class="post-list-item">
        <div class="post-list-copy">
          <h2>
            {% if post.redirect %}
              <a class="post-title" href="{{ post.redirect }}" {% if post.redirect contains '://' %}target="_blank" rel="external nofollow noopener"{% endif %}>
                {{ post.title }}
              </a>
            {% else %}
              <a class="post-title" href="{{ post.url | relative_url }}">{{ post.title }}</a>
            {% endif %}
          </h2>

          {% if post.description %}
            <p class="post-description">{{ post.description }}</p>
          {% endif %}

          <p class="post-meta">
            {{ read_time }}分で読了
            <span aria-hidden="true">&middot;</span>
            <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: '%Y年%-m月%-d日' }}</time>
          </p>

          {% if post.tags.size > 0 or post.categories.size > 0 %}
            <p class="post-tags">
              {% for tag in post.tags %}
                <a href="{{ tag | slugify | prepend: '/blog/tag/' | append: '/' | relative_url }}">
                  <i class="fa-solid fa-hashtag fa-sm"></i>
                  {{ tag }}
                </a>
              {% endfor %}
              {% for category in post.categories %}
                <a href="{{ category | slugify | prepend: '/blog/category/' | append: '/' | relative_url }}">
                  <i class="fa-solid fa-tag fa-sm"></i>
                  {{ category }}
                </a>
              {% endfor %}
            </p>
          {% endif %}
        </div>

        {% if post.thumbnail %}
          <img class="post-thumbnail" src="{{ post.thumbnail | relative_url }}" alt="">
        {% endif %}
      </li>
    {% endfor %}

  </ul>

{% if page.pagination.enabled %}
{% include pagination.liquid %}
{% endif %}

</div>
