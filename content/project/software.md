+++
# Date this page was created.
date = "2018-02-23"

# Project title.
title = "Open source software development"

# Project summary to display on homepage.
summary = "R packages and data products for academic and general application"

# Optional image to display on homepage (relative to `static/img/` folder).
image_preview = "headers/projects/model_small.jpg"

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["R", "open-source", "data science"]

# Optional external URL for project (replaces project detail page).
external_link = ""

# Does the project detail page use math formatting?
math = false

# Optional featured image (relative to `static/img/` folder).
[header]
image = "headers/projects/wl2.jpg"
caption = "&copy; A. Hurley"

+++


Research is generally highly domain and application specific and therefore often requires unique and tailored data analyses approaches. While specialized, many approaches are well established within scientific communities, yet are applied on a variety of platforms in a non-standardized manner. By developing and distributing well-documented, open-source software, such analyses can become more accessible, aiding in advancing science toward more reproducibility.

My software is written in [R (for statistical computing)](https://www.r-project.org/) and freely available via my [GitHub repositories](https://github.com/the-Hull).

### Current Projects

- <small> **lib2bib**: this package aims to facilitate acknowledging developers of (open-source) software in the #rstats community. Package development and maintenance require effort and time - most contributions are typically unpaid. Hence, some recognition goes a long way. The package allows:  
  + identifying all packages used in a directory/project, script or Rmarkdown files,
  + printing them to console (or to a list)
  + writing a .txt or .bib file with the package bibliography 

[GitHub Repository](https://github.com/the-Hull/lib2bib) // [Package website](https://the-hull.github.io/lib2bib/index.html)

</small>

- <small> **RAPTOR** (Row And Tracheid Organizer in R): This packages performs wood cell anatomical data analyses on spatially explicit xylem (tracheids) datasets derived from wood anatomical thin sections. The package includes functions for the visualisation, alignment and detection of continuous tracheid radial file (defines as rows) and tracheid position within an annual ring of coniferous species. (Note: [Richard L. Peters](http://www.wsl.ch/info/mitarbeitende/peters/index_EN) is the project-lead and behind the fascinating mathematics; my duties are ensuring that the package met criteria for submission to software archives by adjusting code, efficiency and structure).  
[GitHub Repository](https://github.com/the-Hull/raptor/) // [CRAN](https://cran.r-project.org/web/packages/RAPTOR/index.html)</small>


## Data science products <a name = "data-science"></a>

Science is extremely fun (I hope you agree), yet only useful (beyond being stimulating) if results are communicated to audiences appropriately. One highly accessible way of achieving this are well-crafted, interactive data science products that allow exploring a given inference (e.g. mechanism or concept) with supporting data. I use a variety of tools based around [R (for statistical computing)](https://www.r-project.org/) and associated packages.

### Current Projects

- <small> Online public outreach and data exploration platform for the [Birmingham Institute of Forest Research (BIFoR)](http://www.birmingham.ac.uk/research/activity/bifor/index.aspx). An early version is available [here](https://aglhurley.shinyapps.io/bifor).  *In development*. </small>