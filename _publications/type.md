---
layout: page
title: Publications by type
description:
sorting: type
link_to: year
social: true
sections:
  - bibquery: "@article"
    text: "Journal articles"
  - bibquery: "@inproceedings"
    text: "Conference and workshop papers"
  - bibquery: "@incollection"
    text: "Edited book chapters"
  - bibquery: "@misc|@phdthesis|@mastersthesis"
    text: "Other"
---
{% include bib_intro.html %}

{% for section in page.sections %}
  {% capture category_counter %}
  {% bibliography_count -f {{site.scholar.bibliography}} -q {{section.bibquery}} %}
  {% endcapture %}
  <div class="spd-pub-group" style="counter-reset:bibitem {{ category_counter | plus:1 }}">
    <span>{{section.text}}</span>
    <span title="Expand/Collapse" class="spd-grp-show-hide float-right fas fa-angle-down"></span>
  </div>
  {% bibliography -f {{site.scholar.bibliography}} -q {{section.bibquery}} %}
{% endfor %}
