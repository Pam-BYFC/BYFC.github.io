---
layout: post
title: Shop
---

Welcome to the Barming Youth FC shop. Please view the items below and use the link at the bottom of the page to place an order. 

If you have any queries please send an email to [shop@barmingyouth.co.uk](mailto:shop@barmingyouth.co.uk)

{% for item in site.data.shop %}
## {{ item.item }}

{{ item.description }}

![{{ item.item }}](images/{{  item.image }}){:class="img-responsive"} 

<strong>Price: {{ item.price }}</strong>


{% endfor %}


Click [here](https://goo.gl/forms/3kFzIJfmqhdO0iq33) to place an order.
