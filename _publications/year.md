---
layout: page
title: Publications by date
description:
sorting: year
link_to: type
yearstart: 2002
social: true
---

{% include bib_intro.html %}
{% assign year_end = "now" | date: "%Y" %}

{% capture paper_counter %}
{% bibliography_count -f {{site.scholar.bibliography}} %}
{% endcapture %}

<div style="counter-reset:bibitem {{ paper_counter | plus:1 }}"></div>

{% for y in (page.yearstart..year_end) reversed %}
  <h3 class="year">{{y}}</h3>
  {% bibliography -f {{site.scholar.bibliography}} -q @*[year={{y}}]* %}
{% endfor %}
