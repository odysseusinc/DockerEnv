library("devtools")
install_version("yaml", version = "2.2.0", type = "source", upgrade_dependencies = FALSE)
install_version("zip", version = "2.0.0", type = "source", upgrade_dependencies = FALSE)
install_version('maptools', version = "0.9-5", upgrade_dependencies = FALSE)
install_version('sp', version = "1.3-1", upgrade_dependencies = FALSE)
install_version('raster', version = "2.9-5", repos = c('https://cran.cnr.berkeley.edu/'), upgrade_dependencies = FALSE)
install_version('rgeos', version = "0.4-3", repos = c('https://cran.cnr.berkeley.edu/'), upgrade_dependencies = FALSE)
install_version('jqr', version = "1.1.0", repos = c('https://cran.cnr.berkeley.edu/'), upgrade_dependencies = FALSE)
install_version('geojson', version = "0.3.2", repos = c('https://cran.cnr.berkeley.edu/'), upgrade_dependencies = FALSE)
install_version('KernSmooth', version = "2.23-15", repos = c('https://cran.cnr.berkeley.edu/'), upgrade_dependencies = FALSE)
install_version("drat", version = "0.1.5", type = "source", upgrade_dependencies = FALSE)
install_github("miraisolutions/godmode", upgrade_dependencies = FALSE)