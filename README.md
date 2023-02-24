# Docker CICD Pproject
This is a repository to build docker images.

1. Create shell scripts and use environment variables.
2. Create buildspec.yml file
3. Create AWS Codebuild project and add environment variables.
4. To build the initial project click "Start build".
4. To build another project simply create a folder (the name you want to tag your image with) and add a Dockerfile to it with the commands.
5. Push to GitHub
6. Create the repo in DockerHub
7. In AWS Codebuild use "Start build with overrides" and change the environment variables for the DOCKER_IMAGE_TAG and DOCKER_HUB_REPO_NAME
