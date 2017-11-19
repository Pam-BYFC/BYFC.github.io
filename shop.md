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

Click [here](https://goo.gl/forms/3kFzIJfmqhdO0iq33) to place an order.


{% endfor %}

