---
layout: default
title: Adult teams
---

<article id="main">
    <header class="special container">
        <span class="icon fa-futbol-o"></span>
        <h2>Adult teams</h2>
    </header>
    <section class="wrapper style4 container">
        <ul class="posts">
          {% for team in site.data.teams %}
          {% if team.manager != nil %}
	  {% assign thisage = team.agegrp | to_integer %}{% if thisage > 18 %}
            <li class="wrapper style1">
              <h2>{{ team.name }}</h2>
<p><strong>Manager:</strong> {{ team.manager }} <br />
<strong>Home ground:</strong> {{ team.homeground }} ({{ team.day }} {{ team.time }}) <br />
{% if team.format %}<strong>Format:</strong> {{ team.format }} <br /> {% endif %}
{% if team.League != nil %}<strong>League:</strong> {{ team.League }} <br /> {% endif %}
{% if team.results %}<a href="{{ team.results }}"><strong>Results</strong></a><br /> {% endif %}
{% if team.training != nil %}<strong>Training:</strong> {{ team.training }} <br /> {% endif %}
{% if team.sponsor != nil %}<strong>Sponsor:</strong> <a href="{{ team.sponsorURL }}">{{ team.sponsor }}</a> {% endif %}
{% if team.sponsor2 != nil %} and <a href="{{ team.sponsorURL2 }}">{{ team.sponsor2 }}</a> {% endif %}
{% if team.sponsor != nil %}<br /> {% endif %}
{% if team.schoolyear != nil %}<strong>School year:</strong> {{ team.schoolyear }} {% endif %}
{% if team.blurb != nil %}<br /><br /> {{ team.blurb }} <br /> {% endif %}
{% if team.leagueTable != nil %} {{ team.leagueTable }} <br /> {% endif %}
</p>
            </li>
	  {% endif %}
	  {% endif %}
          {% endfor %}
        </ul>
    </section>
</article>

