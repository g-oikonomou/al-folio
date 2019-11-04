---
layout: page
title: Publications by type
description:
sorting: type
link_to: year
social: true
---

{% include bib_intro.html %}

{% capture category_counter %}
{% bibliography_count -f {{site.scholar.bibliography}} -q @article %}
{% endcapture %}
<h3 class="type" style="counter-reset:bibitem {{ category_counter | plus:1 }}">Journal articles</h3>
{% bibliography -f {{site.scholar.bibliography}} -q @article %}

{% capture category_counter %}
{% bibliography_count -f {{site.scholar.bibliography}} -q @inproceedings %}
{% endcapture %}
<h3 class="type" style="counter-reset:bibitem {{ category_counter | plus:1 }}">Peer-reviewed conference and workshop papers</h3>
{% bibliography -f {{site.scholar.bibliography}} -q @inproceedings %}

{% capture category_counter %}
{% bibliography_count -f {{site.scholar.bibliography}} -q @incollection %}
{% endcapture %}
<h3 class="type" style="counter-reset:bibitem {{ category_counter | plus:1 }}">Edited book chapters</h3>
{% bibliography -f {{site.scholar.bibliography}} -q @incollection %}

{% capture category_counter %}
{% bibliography_count -f {{site.scholar.bibliography}} -q @misc|@phdthesis|@mastersthesis %}
{% endcapture %}
<h3 class="type" style="counter-reset:bibitem {{ category_counter | plus:1 }}">Other</h3>
{% bibliography -f {{site.scholar.bibliography}} -q @misc|@phdthesis|@mastersthesis %}
