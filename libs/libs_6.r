library("devtools")
drat::addRepo(c("OHDSI", "cloudyr"))
# DO NOT CHANGE ORDER OF THE FOLLOWING INSTRUCTIONS
# Do not use install_github to install BigKnn library
install.packages("BigKnn")
install_github("rstudio/reticulate", ref = "f17091b", upgrade = "never") # 1.13 per https://github.com/rstudio/keras/issues/869
install_github("OHDSI/CohortMethod", ref = "v3.1.1", upgrade = "never")
install_github("OHDSI/DatabaseConnectorJars", ref = "e4a152e", upgrade = "never") # v1.1.0
install_github("OHDSI/DatabaseConnector", ref = "v2.4.3", upgrade = "never")
install_github("OHDSI/EmpiricalCalibration", ref = "v2.0.1", upgrade = "never")
install_github("OHDSI/FeatureExtraction", ref = "v2.2.5", upgrade = "never")
install_github("OHDSI/OhdsiRTools", ref = "v1.7.0", upgrade = "never")
install_github("odysseusinc/SqlRender", ref = "3ac31e6", upgrade = "never")
install_github("OHDSI/Cyclops", ref = "v2.0.3", upgrade = "never")
install_github("OHDSI/OhdsiSharing", ref = "v0.2.1", upgrade = "never")
install_github("OHDSI/MethodEvaluation", ref = "98ae26e", upgrade = "never")
install_github("OHDSI/PatientLevelPrediction", ref = "v3.0.8", upgrade = "never")
install_bitbucket("Floooo/PythonInR", upgrade = "never")
install_github("rstudio/keras", ref = "95ea0b5", upgrade = "never")

library(keras)
install_keras()
