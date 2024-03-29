library("devtools")
drat::addRepo(c("OHDSI", "cloudyr"))
# DO NOT CHANGE ORDER OF THE FOLLOWING INSTRUCTIONS
install_github("OHDSI/Cyclops", ref = "v3.1.2", upgrade = "never")
install_github("OHDSI/ParallelLogger", ref = "v2.0.2", upgrade = "never")
install_github("OHDSI/BigKnn", ref = "v1.0.1", upgrade = "never")
install.packages("VennDiagram")
install_github("rstudio/reticulate", ref = "1aff9d8", upgrade = "never") # 1.13 per https://github.com/rstudio/keras/issues/869
install_github("OHDSI/CohortMethod", ref = "v4.2.0", upgrade = "never")
install_github("OHDSI/DatabaseConnector", ref = "a130d7d", upgrade = "never")
install_github("OHDSI/EmpiricalCalibration", ref = "v2.1.0", upgrade = "never")
install_github("OHDSI/FeatureExtraction", ref = "v3.1.1", upgrade = "never")
install_github("OHDSI/OhdsiRTools", ref = "v1.10.0", upgrade = "never")
install_github("OHDSI/SqlRender", ref = "v1.7.0", upgrade = "never")
install_github("OHDSI/OhdsiSharing", ref = "v0.2.2", upgrade = "never")
install_github("OHDSI/ROhdsiWebApi", ref = "v1.2.0", upgrade = "never")
install_github("OHDSI/CohortDiagnostics", ref = "v2.1.0", upgrade = "never")
install_github("OHDSI/MethodEvaluation", ref = "v2.1.0", upgrade = "never")
install_github("OHDSI/PatientLevelPrediction", ref = "v4.3.10", upgrade = "never")

library(PatientLevelPrediction)
configurePython(envname='PLP', envtype='conda')

install_github("rstudio/keras", ref = "v2.4.0", upgrade = "never")
