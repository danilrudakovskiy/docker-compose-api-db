# docker-compose-api-db

### Description
This project is example how to containerize .NET 6 API and postgres sql db using docker and docker compose.
### Commands
##### Run API
```bash
docker build -t dockerapitest -f Api.Dockerfile .
docker run dockerapitest -p 7268:80
```
##### Run API + DB
```bash
docker compose up
```