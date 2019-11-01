---
layout: page
title: Publications by type
description:
sorting: type
link_to: year
---

{% include bib_intro.html %}

<h3 class="type">Journal articles</h3>
{% bibliography -f {{site.scholar.bibliography}} -q @article %}

<h3 class="type">Peer-review conference and workshop papers</h3>
{% bibliography -f {{site.scholar.bibliography}} -q @inproceedings %}

<h3 class="type">Edited book chapters</h3>
{% bibliography -f {{site.scholar.bibliography}} -q @incollection %}

<h3 class="type">Other</h3>
{% bibliography -f {{site.scholar.bibliography}} -q @misc|@phdthesis|@mastersthesis %}
