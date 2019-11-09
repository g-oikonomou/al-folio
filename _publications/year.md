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
  <div class="spd-pub-group">
    <span>{{y}}</span>
    <span title="Expand/Collapse" class="spd-grp-show-hide float-right fas fa-angle-down"></span>
  </div>
  {% bibliography -f {{site.scholar.bibliography}} -q @*[year={{y}}]* %}
{% endfor %}
