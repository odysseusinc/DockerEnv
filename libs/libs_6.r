library("devtools")
drat::addRepo(c("OHDSI", "cloudyr"))
# DO NOT CHANGE ORDER OF THE FOLLOWING INSTRUCTIONS
# Do not use install_github to install BigKnn library
install.packages("BigKnn")
install.packages("VennDiagram")
install_github("rstudio/reticulate", ref = "f17091b", upgrade = "never") # 1.13 per https://github.com/rstudio/keras/issues/869
install_github("OHDSI/ParallelLogger", ref = "v1.2.0", upgrade = "never")

install_github("OHDSI/CohortMethod", ref = "8a528ac", upgrade = "never")
install_github("OHDSI/DatabaseConnectorJars", ref = "e4a152e", upgrade = "never")
install_github("OHDSI/DatabaseConnector", ref = "41bc1ae", upgrade = "never")
install_github("OHDSI/EmpiricalCalibration", ref = "v2.0.1", upgrade = "never")
install_github("OHDSI/FeatureExtraction", ref = "master", upgrade = "never")
install_github("OHDSI/OhdsiRTools", ref = "v1.7.0", upgrade = "never") # 1.8.0 has issues with PLP KNN model
install_github("OHDSI/SqlRender", ref = "168afb3", upgrade = "never")
install_github("OHDSI/Cyclops", ref = "v2.0.3", upgrade = "never")
install_github("OHDSI/OhdsiSharing", ref = "v0.1.3", upgrade = "never")
install_github("OHDSI/ROhdsiWebApi", ref = "v0.0.3", upgrade = "never")
install_github("OHDSI/CohortDiagnostics", ref = "1e65c04", upgrade = "never")
install_github("OHDSI/MethodEvaluation", ref = "98ae26e", upgrade = "never")
install_github("OHDSI/PatientLevelPrediction", ref = "v3.0.16", upgrade = "never")

install_bitbucket("Floooo/PythonInR", upgrade = "never")
install_github("rstudio/keras", ref = "95ea0b5", upgrade = "never")

library(keras)
install_keras()
