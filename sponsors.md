---
layout: post
title: Sponsors
---

We would like to express our thanks to all of the companies listed below that are sponsoring Barming Youth FC teams this year. Without this support it would be much more difficult to provide our players with the kit they need.

{% for team in site.data.teams %}
## {{ team.name }}

{% if team.sponsor %}<strong>Sponsor:</strong> 
    <a href="{{ team.sponsorURL }}">{{ team.sponsor }}</a>
{% endif %}
{% endfor %}

