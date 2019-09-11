# DO NOT CHANGE ORDER OF THE FOLLOWING INSTRUCTIONS
# Do not use install_github to install BigKnn library
install.packages("BigKnn")
install_github("OHDSI/CohortMethod", ref = "v3.0.2", upgrade = "never")
install_github("OHDSI/DatabaseConnectorJars", ref = "v1.1.0", upgrade = "never")
install_github("OHDSI/DatabaseConnector", ref = "6cbd41f", upgrade = "never")
install_github("OHDSI/EmpiricalCalibration", ref = "v1.4.0", upgrade = "never")
install_github("OHDSI/FeatureExtraction", ref = "v2.2.2", upgrade = "never")
install_github("OHDSI/OhdsiRTools", ref = "v1.5.5", upgrade = "never")
install_github("OHDSI/SqlRender", ref = "c6c78ff", upgrade = "never")
install_github("OHDSI/Cyclops", ref = "v2.0.2", upgrade = "never")
install_github("OHDSI/OhdsiSharing", ref = "v0.1.3", upgrade = "never")
install_github("OHDSI/MethodEvaluation", ref = "98ae26e", upgrade = "never")
install_github("OHDSI/PatientLevelPrediction", ref = "v3.0.1", upgrade = "never")
install_bitbucket("Floooo/PythonInR", upgrade = "never")
install_github("rstudio/keras", upgrade = "never")

library(keras)
install_keras()
