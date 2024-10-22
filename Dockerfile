FROM rocker/geospatial:4
COPY . /workdir

RUN Rscript -e "install.packages(c('ggsoccer','extrafont', 'ggpattern', 'cowplot'), repos = 'http://cran.rstudio.com')"
RUN Rscript -e "install.packages(c('ggforce', 'hexbin', 'magick', 'patchwork'), repos = 'http://cran.rstudio.com')"
RUN Rscript -e "install.packages(c('styler'), repos = 'http://cran.rstudio.com')"
RUN Rscript -e "remotes::install_github('ewenme/understatr')"
RUN Rscript -e "devtools::install_github('abhiamishra/ggshakeR')"

WORKDIR /workdir