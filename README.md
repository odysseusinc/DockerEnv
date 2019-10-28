#Docker Image for Execution Engine
 
>Type to get docker build

## 1.0.0

```sh
docker build -t hub.arachnenetwork.com/r-env:1.0.0 .
docker push hub.arachnenetwork.com/r-env:1.0.0
```

## 1.0.1

Changes:

1. Updated DatabaseConnector version
1. Updated Cyclops version 1.3.1
1. Added required library cairo-dev

```sh
docker build -t hub.arachnenetwork.com/r-env:1.0.1 .
docker push hub.arachnenetwork.com/r-env:1.0.1
```

## 1.0.2

Changes:
1. Updated SqlRender version to 1.4.7 (due to Redshift issues)
```sh
docker build -t hub.arachnenetwork.com/r-env:1.0.2 .
docker push hub.arachnenetwork.com/r-env:1.0.2
```

## 1.0.3

Changes:

1. Added PatientLevelPrediction 1.2.2 to R libraries since one is required by PatientLevelPrediction Analysis execution.

```sh
docker build -t hub.arachnenetwork.com/r-env:1.0.3 .
docker push hub.arachnenetwork.com/r-env:1.0.3
```

## 1.0.4

Changes:

1. FeatureExtraction migrated to 2.1.1 version

```sh
docker build -t hub.arachnenetwork.com/r-env:1.0.4 .
docker push hub.arachnenetwork.com/r-env:1.0.4
```

## 1.0.5

Changes:

1. Migrated to newer r-java:3.5.3 based on the Debian Stretch release
2. Added library Matrix required by RcppEigen

```sh
docker build -t odysseusinc/r-env:1.0.5 .
docker push odysseusinc/r-env:1.0.5
```

## 1.0.6

Changes:
1. Added missing libraries

```sh
docker build -t odysseusinc/r-env:1.0.6 .
docker push odysseusinc/r-env:1.0.6
```

## 1.0.7

Changes:
1. Added geospatial libraries

```bash
docker build -t odysseusinc/r-env:1.0.7 .
docker push odysseusinc/r-env:1.0.7
```

## 1.0.8

Changes:
1. DatabaseConnector updated to develop branch resolving RedShift issues
1. SqlRender updated to 1.6.2 release to conform DatabaseConnector dependencies

```bash
docker build -t odysseusinc/r-env:1.0.8 .
docker push odysseusinc/r-env:1.0.8
```

## 1.0.9

Changes:
1. Added missing libraries for PLE

```sh
docker build -t odysseusinc/r-env:1.0.9 .
docker push odysseusinc/r-env:1.0.9
```

## 1.0.10

Changes:
1. SqlRender updated to develop branch resolving BigQuery issues
1. DatabaseConnector updated to develop branch resolving BigQuery and Redshift issues
1. MethodEvaluation updated to develop branch which resolves issue for DBs w/o real temporary tables support

```sh
docker build -t odysseusinc/r-env:1.0.10 .
docker push odysseusinc/r-env:1.0.10
```

## 1.0.11

Changes:
1. Python 3.6 was added as requied by Prediction analyses

```bash
docker build -t odysseusinc/r-env:1.0.11 .
docker push odysseusinc/r-env:1.0.11
```

## 1.0.12

Changes:
1. rlist was added for Cohort Pathways analysis

```bash
docker build -t odysseusinc/r-env:1.0.12 .
docker push odysseusinc/r-env:1.0.12
```