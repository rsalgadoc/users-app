# Instrucciones cómo ejecutar y probar la aplicación


## Ejecutar

Desde la línea de comandos, clone y ejecute la aplicación:

```bash
# Clone this repository
git clone https://github.com/rsalgadoc/users-app.git

# Go into the repository
cd users-app/backend-spring-boot-api

```

## Opcion 1 para ejecutar(Maven)

```bash
# Execute the command
./mvnw spring-boot:run
```

## Opcion 2 para ejecutar(Docker)

```bash
# Execute the command
docker build -t rsalgadoc/backend-users .

# Execute the command
docker run -d -p 8081:8080 rsalgadoc/backend-users
```