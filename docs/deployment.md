# Deployment Procedure

CI/CD has been set up with Azure DevOps. To deploy, simply merge changes into the
relevant branch:

`dev` > DEV

`staging` > STG

`production` > PRD

To manually trigger deployments, go to
the [Pipelines](https://unicef.visualstudio.com/OI-GIGA/_build) page and trigger
the relevant pipeline:

- giga-datahub-deploy-dev
- giga-datahub-deploy-stg
- giga-datahub-deploy-prd
