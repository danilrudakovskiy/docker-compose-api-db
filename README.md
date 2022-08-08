# docker-compose-api-db
An example how to create a docker-compose.yml to run your .NET 6 api with db


to run api:
docker build -t dockerapitest -f Api.Dockerfile .
docker run dockerapitest -p 7268:80

to run together