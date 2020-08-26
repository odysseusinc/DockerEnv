library("devtools")
drat::addRepo(c("OHDSI", "cloudyr"))
# DO NOT CHANGE ORDER OF THE FOLLOWING INSTRUCTIONS
install_github("OHDSI/Cyclops", ref = "v3.0.0", upgrade = "never")
install_github("OHDSI/ParallelLogger", ref = "v2.0.0", upgrade = "never")
install_github("OHDSI/BigKnn", ref = "v1.0.0", upgrade = "never")
install.packages("VennDiagram")
install_github("rstudio/reticulate", ref = "f17091b", upgrade = "never") # 1.13 per https://github.com/rstudio/keras/issues/869
install_github("OHDSI/CohortMethod", ref = "v4.0.0", upgrade = "never")
install_github("OHDSI/DatabaseConnectorJars", ref = "e4a152e", upgrade = "never")
install_github("OHDSI/DatabaseConnector", ref = "v3.0.0", upgrade = "never")
install_github("OHDSI/EmpiricalCalibration", ref = "v2.0.2", upgrade = "never")
install_github("OHDSI/FeatureExtraction", ref = "v3.0.0", upgrade = "never")
install_github("OHDSI/OhdsiRTools", ref = "v1.7.0", upgrade = "never") # 1.8.0 has issues with PLP KNN model
install_github("OHDSI/SqlRender", ref = "v1.6.6", upgrade = "never")
install_github("OHDSI/OhdsiSharing", ref = "v0.2.1", upgrade = "never")
install_github("OHDSI/ROhdsiWebApi", ref = "v0.0.3", upgrade = "never")
install_github("OHDSI/CohortDiagnostics", ref = "1e65c04", upgrade = "never")
install_github("OHDSI/MethodEvaluation", ref = "v2.0.0", upgrade = "never")
install_github("OHDSI/PatientLevelPrediction", ref = "v4.0.2", upgrade = "never")

library(PatientLevelPrediction)
configurePython(envname='PLP', envtype='conda')

install_github("rstudio/keras", ref = "95ea0b5", upgrade = "never")

library(keras)
install_keras()