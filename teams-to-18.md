---
layout: default
title: Teams &mdash; secondary school age
---

<article id="main">
    <header class="special container">
        <span class="icon fa-futbol-o"></span>
        <h2>Teams &mdash; secondary school age</h2>
    </header>
    <section class="wrapper style4 container">
        <ul class="posts">
          {% for team in site.data.teams %}
	  {% assign thisage = team.agegrp | to_integer %}{% if thisage > 11 and thisage < 19 %}
            <li class="wrapper style1">
              <h2>{{ team.name }}</h2>
<p><strong>Manager:</strong> {{ team.manager }} <br />
<strong>Home ground:</strong> {{ team.homeground }} ({{ team.day }} {{ team.time }}) <br />
{% if team.format %}<strong>Format:</strong> {{ team.format }} <br /> {% endif %}
{% if team.results %}<a href="{{ team.results }}"><strong>Results</strong></a><br /> {% endif %}
{% if team.training %}<strong>Training:</strong> {{ team.training }} <br /> {% endif %}
{% if team.sponsor %}<strong>Sponsor:</strong> <a href="{{ team.sponsorURL }}">{{ team.sponsor }}</a> {% endif %}
{% if team.sponsor2 %} and <a href="{{ team.sponsorURL2 }}">{{ team.sponsor2 }}</a> {% endif %}
{% if team.sponsor %}<br /> {% endif %}
{% if team.schoolyear %}<strong>School year:</strong> {{ team.schoolyear }} {% endif %}
{% if team.blurb %}<br /><br /> {{ team.blurb }} <br /> {% endif %}
</p>
            </li>
	  {% endif %}
          {% endfor %}
        </ul>
    </section>
</article>

