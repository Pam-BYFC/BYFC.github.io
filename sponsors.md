---
layout: post
title: Sponsors
---

{% for team in site.data.teams %}
## {{ team.name }}

{% if team.sponsor %}<strong>Sponsor:</strong> 
    <a href="{{ team.sponsorURL }}">{{ team.sponsor }}</a>
{% endif %}
{% endfor %}

