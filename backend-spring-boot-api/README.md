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
docker run -d -p 8081:8080 --restart always rsalgadoc/backend-users
```

# Para probar en el servidor:

```bash
curl http://localhost:8081/api/users
```bash

# El resultado se veria algo asi:

[ec2-user@ip-172-31-13-246 backend-spring-boot-api]$ curl http://localhost:8081/api/users
[{"id":1,"name":"Rodrigo","lastname":"Salgado","email":"juan@gmail.com","username":"rsalgado","admin":true,...........
