## 52pencils - a pencil blog

52 pencils - that will be a pencil a week for a year then...

# Blog entries

## Index
{% for post in site.posts %}
<li><a href="{{site.baseurl}}{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}

## Recent posts

<ul>
{% for post in site.posts %}
    <li><a href="{{site.baseurl}}{{ post.url }}">{{ post.title }}</a></li>
    {{ post.date | date:"%B %d, %Y" }}
    {{ post.content }}
{% endfor %}
</ul>

