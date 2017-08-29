---
layout: default
title: Policies, forms and documents 
---

<article id="main">
    <header class="special container">
        <span class="icon fa-futbol-o"></span>
        <h2>Policies, forms and documents</h2>
    </header>
    <section class="wrapper style4 container">



        {% for docsection in site.data.docsections %}
        <h3>{{ docsection.title }}</h3>
        <ul>
          {% for doc in site.data.docs %}
            <li>
		{% if doc.group == docsection.section %}
		<a href="{{ doc.link }}">{{ doc.description }} ({{ doc.filetype }})</a> <br />
		{% endif %}
            </li>
          {% endfor %}
        </ul>
        {% endfor %}

    </section>
</article>

