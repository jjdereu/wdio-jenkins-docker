# REMOVE ALL STOPPED CONTAINERs
docker rm $(docker ps -a -q)

# BUILD DOCKER IMAGE
docker-compose build

# RUN DOCKER IMAGE WITH TESTS AND CLOSE WHEN READY
docker-compose up --exit-code-from wdio

# STOP CONTAINERS
docker-compose down

# REMOVE ALL STOPPED CONTAINERs
docker rm $(docker ps -a -q)

