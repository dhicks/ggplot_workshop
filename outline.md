# Welcome! 
    - Dan
    - live coding + theory
    - "basic/moderate"
    - This outline:  <https://tinyurl.com/ychrqybp>


# Learning outcomes
After this workshop, you will
    1. understand why plots are useful in EDA
    2. understand the grammar of graphics paradigm behind ggplot2
    3. be able to use ggplot2 in exploring your own data
    4. know about ggplot2-related packages to explore on your own


# 'Exploratory Data Analysis'
    [@Tukey1977]

Goals of EDA
    1. Further clean your data
    2. Start to identify *phenomena*
    
Hierarchies of data and models 
    [@Suppes1962; @BogenWoodward1988; @Mayo1996]
    theory
            synthesis
    phenomena
            inferential statistics
    clean data
            EDA
    raw data
            instrument models
    physical events

Why use plots in EDA?  
    - Datasaurus Dozen
    - <https://github.com/stephlocke/datasauRus>
    
What about p-hacking?  
    - Data science as experimental science
        - EDA can identify *potential* phenomena
        - need to follow up with *confirmatory research*
        - generate new data with careful controls
        - predesignated analysis
    - Data science as historical science
        - "without the ability to manipulate suspect conditions, one is at the mercy of what nature just happens to leave in her wake" [@Cleland2002]
        - why does this phenomenon show up in these particular data?  
        - build consilience across different historical traces
        - look for a "smoking gun"


# First look at Gapminder
Read the docs! Check the str()! 
    - What are the variables?  
    - How are they represented?  
    - What are their range of reasonable values?  
    - *What makes you go "hmm"?* 
    
Histograms and scatterplots
    
    
# The Grammar of Graphics
    [@Wilkinson1999; but start with @Wickham2010]
    
Plots are functions
      *data*  -*aes*->  *geom*
      var1    --aes-->  x
      var2    --aes-->  y
      var3    --aes-->  color
        ...

Plots are functors

Plots are models
    - "All models are wrong but some are useful" - George Box
    - How is this plot useful?  (Useful for *what*?)
    - How is this plot wrong? 

The grammar of graphics and ggplot2


# Catalog of geoms

## 0d geoms
- point
    - jitter
- text, label
- rug

Aesthetics
- x, y
- color
- size
- shape
- alpha

## Scales and transforms
    - logs
    - Brewer

## 1d geoms
- line
    - path - Haiti
    - step
- hline, vline

New aesthetics
- linetype
- group

## Facets

## Distributions and summaries
x-axis is continuous
    - histogram
    - density
    - stat_ecdf

x-axis is categorical
        - reorder    
    - bar
    - boxplot
    - violin

linerange & stat_summary
    - linerange
        - errorbar
        - pointrange
        - crossbar
    - stat_summary calculates summary values at each value of y
        - mean, median
        - sd, se, max, min
        - geom = 'linerange'

2D distributions
    - bin2d
    - hex
    - density2d


# Barcharts = bad charts
    [@Weissgerber2015]
    <http://dx.doi.org/10.1371/journal.pbio.1002128>

`bar_plots_data.Rda`
    <https://tinyurl.com/y832p845>
    Bar plot + error bars
    point and dotplot
    density


# Smoothing


# ggplot2 and other packages
tidyverse
    - correlation heatmap

ggplot2 extensions
    - many lots!  
        <https://cran.r-project.org/web/packages/ggplot2/index.html>

    - ggraph - networks, hierarchical clustering
    - ggridges - ridgeline plots
    - ggalluvial - alluvial plots / Sankey diagrams
    - Spatial data
        - NB Dan doesn't know much about spatial data
        - <https://duckduckgo.com/?q=ggplot+spatial+data&atb=v17>
        - <http://strimas.com/r/tidy-sf/>
        - leaflet

    - directlabels - label colors directly in plots
    - ggsci - color palettes for several major scientific journals

    - GGally::ggpairs() - quasi-GG pair plots
    - multiple plots
        - cowplot
        - <http://github.com/thomasp85/patchwork>
        - egg 
        - gridExtra

plotly::ggplotly()
    - text aesthetic


# References
[@BogenWoodward1988] Bogen, James, and James Woodward. 1988. “Saving the Phenomena.” The Philosophical Review 97 (3): 303–52.

[@Cleland2002] Cleland, Carol E. 2002. “Methodological and Epistemic Differences between Historical Science and Experimental Science*.” Philosophy of Science 69 (3): 447–51. https://doi.org/10.1086/342455.

[@Mayo1996] Mayo, Deborah G. 1996. Error and the Growth of Experimental Knowledge. Science and Its Conceptual Foundations. Chicago: University of Chicago Press.

[@Suppes1962] Suppes, P. 1962. “Models of Data.” Logic, Methodology and Philosophy of Science: Proceedings of the 1960 International Congress, 252–261.

[@Tukey1977] Tukey, John Wilder. 1977. Exploratory Data Analysis. Addison-Wesley Series in Behavioral Science. Reading, Mass: Addison-Wesley Pub. Co.

[@Weissgerber2015] Weissgerber, Tracey L., Natasa M. Milic, Stacey J. Winham, and Vesna D. Garovic. 2015. “Beyond Bar and Line Graphs: Time for a New Data Presentation Paradigm.” PLoS Biol 13 (4): e1002128. https://doi.org/10.1371/journal.pbio.1002128.

[@Wickham2010] Wickham, Hadley. 2010. “A Layered Grammar of Graphics.” Journal of Computational and Graphical Statistics 19 (1): 3–28. https://doi.org/10.1198/jcgs.2009.07098.

[@Wilkinson1999] Wilkinson, Leland. 1999. The Grammar of Graphics. Statistics and Computing. New York, NY: Springer New York. https://doi.org/10.1007/978-1-4757-3100-2.

