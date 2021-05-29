About project:
=================

The project is one study project where I'm try using Github Actions to execute CI/CD pipeline

The flow the pipeline:
======================

- Create one pull request for develop branch
- Before merge code the github actions execute tests, case passed, allow merge code.
- When code sended to develop branch is execute tests and deploy code to staging environment.
- When create release and publish release is execute github action to execute deploy code in production environment.
