#Docker Image for Execution Engine
 
>Type to get docker build

## 1.0.15

```bash
# To generate {GITHUB_PAT} 
# - Open URL 'https://github.com/settings/tokens/new?scopes=repo,gist&description=R:GITHUB_PAT
# - Generate token and put it in docker build command
docker build --build-arg GITHUB_PAT={GITHUB_PAT} -t odysseusinc/r-env:1.0.15 .
  
docker push odysseusinc/r-env:1.0.15
```

Changes:
1. Updated r-java to v4.0.2
1. Updated Python to v3.8
1. Updated R library versions and removed duplicated

## 1.0.14

```bash
# To generate {GITHUB_PAT} 
# - Open URL 'https://github.com/settings/tokens/new?scopes=repo,gist&description=R:GITHUB_PAT
# - Generate token and put it in docker build command
docker build --build-arg GITHUB_PAT={GITHUB_PAT} -t odysseusinc/r-env:1.0.14 .
docker build \
-t odysseusinc/r-env:1.0.14 \
--build-arg GITHUB_PAT={GITHUB_PAT} \
 .
  
docker push odysseusinc/r-env:1.0.14
```

Changes:

1. Failback to latest version of scikit-learn (0.22.2) that supports deprecated sklearn.externals.joblib.
It's related to the PatientLevelPrediction issue with python modules.

## 1.0.13

Changes:
1. upgrade libraries versions
2. upgrade OHDSI libraries for fix big-query limit issue

```bash
# To generate {GITHUB_PAT} 
# - Open URL 'https://github.com/settings/tokens/new?scopes=repo,gist&description=R:GITHUB_PAT
# - Generate token and put it in docker build command
docker build --build-arg GITHUB_PAT={GITHUB_PAT} -t odysseusinc/r-env:1.0.13 .
docker build \
-t odysseusinc/r-env:1.0.13 \
--build-arg GITHUB_PAT={GITHUB_PAT} \
 .
  
docker push odysseusinc/r-env:1.0.13
```

## 1.0.12

Changes:
1. rlist was added for Cohort Pathways analysis

```bash
docker build -t odysseusinc/r-env:1.0.12 .
docker push odysseusinc/r-env:1.0.12
```

## 1.0.11

Changes:
1. Python 3.6 was added as required by Prediction analyses

```bash
docker build -t odysseusinc/r-env:1.0.11 .
docker push odysseusinc/r-env:1.0.11
```

## 1.0.10

Changes:
1. SqlRender updated to the develop branch resolving BigQuery issues
1. DatabaseConnector updated to the develop branch resolving BigQuery and Redshift issues
1. MethodEvaluation updated to the develop branch which resolves issue for DBs w/o real temporary tables support

```sh
docker build -t odysseusinc/r-env:1.0.10 .
docker push odysseusinc/r-env:1.0.10
```

## 1.0.9

Changes:
1. Added missing libraries for PLE

```sh
docker build -t odysseusinc/r-env:1.0.9 .
docker push odysseusinc/r-env:1.0.9
```

## 1.0.8

Changes:
1. DatabaseConnector updated to the develop branch resolving RedShift issues
1. SqlRender updated to 1.6.2 release to conform DatabaseConnector dependencies

```bash
docker build -t odysseusinc/r-env:1.0.8 .
docker push odysseusinc/r-env:1.0.8
```

## 1.0.7

Changes:
1. Added geospatial libraries

```bash
docker build -t odysseusinc/r-env:1.0.7 .
docker push odysseusinc/r-env:1.0.7
```

## 1.0.6

Changes:
1. Added missing libraries

```sh
docker build -t odysseusinc/r-env:1.0.6 .
docker push odysseusinc/r-env:1.0.6
```

## 1.0.5

Changes:

1. Migrated to newer r-java:3.5.3 based on the Debian Stretch release
2. Added library Matrix required by RcppEigen

```sh
docker build -t odysseusinc/r-env:1.0.5 .
docker push odysseusinc/r-env:1.0.5
```

## 1.0.4

Changes:

1. FeatureExtraction migrated to 2.1.1 version

```sh
docker build -t hub.arachnenetwork.com/r-env:1.0.4 .
docker push hub.arachnenetwork.com/r-env:1.0.4
```

## 1.0.3

Changes:

1. Added PatientLevelPrediction 1.2.2 to R libraries since one is required by PatientLevelPrediction Analysis execution.

```sh
docker build -t hub.arachnenetwork.com/r-env:1.0.3 .
docker push hub.arachnenetwork.com/r-env:1.0.3
```

## 1.0.2

Changes:
1. Updated SqlRender version to 1.4.7 (due to Redshift issues)
```sh
docker build -t hub.arachnenetwork.com/r-env:1.0.2 .
docker push hub.arachnenetwork.com/r-env:1.0.2
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

## 1.0.0

```sh
docker build -t hub.arachnenetwork.com/r-env:1.0.0 .
docker push hub.arachnenetwork.com/r-env:1.0.0
```