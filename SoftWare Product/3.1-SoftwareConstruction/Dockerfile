# Використання базового образу SDK для збірки
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /app

# Копіювання файлів проекту (Program.cs з Лаб 3)
COPY . .

# Компіляція прототипу
RUN dotnet build -c Release -o out

# Використання мінімального образу для запуску
FROM mcr.microsoft.com/dotnet/runtime:7.0
WORKDIR /app
COPY --from=build /app/out .

# Команда запуску вашого LitraStabilityHub
ENTRYPOINT ["dotnet", "LitraStabilityHub.dll"]
