# Restoring and building our app
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /docker-compose-api-db
COPY . .
RUN dotnet restore
RUN dotnet build -o /app --no-restore
 
# Moving to the application folder
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS serve
WORKDIR /app
COPY --from=build /app ./
 
EXPOSE 443
EXPOSE 80
 
# Setting up as container entrypoint
ENTRYPOINT dotnet docker-compose-api-db.dll