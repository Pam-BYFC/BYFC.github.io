---
layout: default
---

<article id="main">
    <header class="special container">
        <span class="icon fa-futbol-o"></span>
        <h2>Teams</h2>
    </header>
    <section class="wrapper style4 container">
        <ul class="posts">
          {% for team in site.data.teams %}
            <li class="wrapper style1">
              <h2>{{ team.name }}</h2>
<p><strong>Manager:</strong> {{ team.manager }} <br />
<strong>Home ground:</strong> {{ team.homeground }} <br />
{% if team.training %}<strong>Training:</strong> {{ team.training }} <br /> {% endif %}
{% if team.sponsor %}<strong>Sponsor:</strong> {{ team.sponsor }} <br /> {% endif %}
{% if team.schoolyear %}<strong>School year:</strong> {{ team.schoolyear }} {% endif %}
</p>
            </li>
          {% endfor %}
        </ul>
    </section>
</article>

