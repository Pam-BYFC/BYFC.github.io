---
layout: post
title: Shop
---

This is the Barming Youth FC shop.

{% for item in site.data.shop %}
## {{ item.item }}

{{ item.description }}

![{{ item.item }}](images/{{  item.image }}){:class="img-responsive"} 

<strong>Price: {{ item.price }}</strong>


{% endfor %}

