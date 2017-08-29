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


        <h3>AGM 2017</h3>
        <ul>
          {% for doc in site.data.docs %}
            <li>
		{% if doc.group == "AGM" %}
		<a href="{{ doc.link }}">{{ doc.description }} ({{ doc.filetype }})</a> <br />
		{% endif %}
            </li>
          {% endfor %}
        </ul>


        <h3>Rules and policies</h3>
        <ul>
          {% for doc in site.data.docs %}
            <li>
		{% if doc.group == "policy" %}
		<a href="{{ doc.link }}">{{ doc.description }} ({{ doc.filetype }})</a> <br />
		{% endif %}
            </li>
          {% endfor %}
        </ul>

        <h3>Forms</h3>
        <ul>
          {% for doc in site.data.docs %}
            <li>
		{% if doc.group == "forms" %}
		<a href="{{ doc.link }}">{{ doc.description }} ({{ doc.filetype }})</a> <br />
		{% endif %}
            </li>
          {% endfor %}
        </ul>
        <h3>Documents</h3>
        <ul>
          {% for doc in site.data.docs %}
            <li>
		{% if doc.group == "docs" %}
		<a href="{{ doc.link }}">{{ doc.description }} ({{ doc.filetype }})</a> <br />
		{% endif %}
            </li>
          {% endfor %}
        </ul>
        <h3>Accounts</h3>
        <ul>
          {% for doc in site.data.docs %}
            <li>
		{% if doc.group == "accounts" %}
		<a href="{{ doc.link }}">{{ doc.description }} ({{ doc.filetype }})</a> <br />
		{% endif %}
            </li>
          {% endfor %}
        </ul>
    </section>
</article>

