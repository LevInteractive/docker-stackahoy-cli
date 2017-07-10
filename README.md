# stackahoy/stackahoy-cli

Use this image when deploying with Stackahoy in your pipeline so you won't have to `npm i -g stackahoy`.

https://hub.docker.com/r/stackahoy/stackahoy-cli/

### Example

This is a snippet from a [GitLab CI (gitlab-ci.yml)](https://docs.gitlab.com/ee/ci/yaml/) file, but it could be used in any CI pipeline.

```yml
deploy:
  image: stackahoy/stackahoy-cli
  stage: deploy_staging
  script:
    - stackahoy deploy -t $STACKAHOY_TOKEN -b staging -r $REPO_ID
  only:
    - staging
  tags:
    - dind
```
