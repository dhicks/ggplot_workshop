## Simulated datasets to illustrate <http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1002128#sec007>
library(tidyverse)

overlap = bind_rows(
    tibble(group = 'a', 
           value = rnorm(100, mean = 5, sd = 2)), 
    tibble(group = 'b', 
           value = rnorm(100, mean = 6, sd = 2))
)
outlier = bind_rows(
    tibble(group = 'a', 
           value = rnorm(10, mean = 5, sd = 1)), 
    tibble(group = 'b', 
           value = c(rnorm(10, mean = 5, sd = .25), 10))
)
bimodal = bind_rows(
    tibble(group = 'a', 
           value = rnorm(5, mean = 4, sd = .25)), 
    tibble(group = 'a', 
           value = rnorm(5, mean = 6, sd = .25)), 
    tibble(group = 'b', 
           value = rnorm(5, mean = 5, sd = .25)), 
    tibble(group = 'b', 
           value = rnorm(5, mean = 7, sd = .25))
)

ggplot(bimodal, aes(group, value)) + 
    stat_summary(geom = 'errorbar', width = .25) +
    stat_summary(fun.y = 'mean', geom = 'col', width = .5)
ggplot(bimodal, aes(group, value)) + 
    geom_jitter(width = .1)
ggplot(bimodal, aes(value, fill = group)) + 
    geom_density(alpha = .5)
ggplot(bimodal, aes(group, value)) + 
    geom_dotplot(binaxis = 'y', stackdir = 'center')


save(bimodal, outlier, overlap, file = 'bar_plots_data.Rda')
