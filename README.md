# wdio-docker

This is an example of how to use webdriverio and docker to deliver a perfect smoke test enviroments
for more check the full medium articker at https://medium.com/@oliverassad/a-dockerized-e2e-testing-with-webdriveio-18ad37802230

https://jira.sanomalearning.com/browse/BLS-3237

> docker-compose build => build images to run the test
> docker-compose up --exit-code-from wdio => run the test based on a angular frontend and webdriverio testframework
> docker-compose down => remove all docker containers

The "--exit-code-from" flag here is the special trick. It will cause Docker Compose to start all of the containers, but when the command from image wdio finishes it will then shut everything down again.
