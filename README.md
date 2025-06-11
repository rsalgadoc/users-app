# Backend Spring Boot


## Instrucciones cómo ejecutar el Backend

Desde la línea de comandos, clone el repositorio:

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

### Para probar en el servidor:

```bash
curl http://localhost:8081/api/users
```

### El resultado se veria algo asi:

[ec2-user@ip-172-31-13-246 backend-spring-boot-api]$ curl http://localhost:8081/api/users
[{"id":1,"name":"Rodrigo","lastname":"Salgado","email":"juan@gmail.com","username":"rsalgado","admin":true,...........


# Frontend Angular

## Instrucciones cómo ejecutar el Frontend

Desde la línea de comandos, clone el repositorio:

```bash
# Clone this repository
git clone https://github.com/rsalgadoc/users-app.git

# Go into the repository
cd users-app/frontend-angular-admin

```

## Opcion 1 Development server

To start a local development server, run:

```bash
ng serve
```

Once the server is running, open your browser and navigate to `http://localhost:4200/`. The application will automatically reload whenever you modify any of the source files.


## Opcion 2 ejecutar con Docker

```bash
# Construimos la imagen con el Dockerfile 
docker build -t rsalgadoc/frontend-users .
```
 Debido a que el build en AWS se queda pegado, por ser una instancia muy pequeña, subir a DockerHub con el siguiente comando:
```bash
# Subimos a Docker Hub
docker push rsalgadoc/frontend-users
```

```bash
# Ejecutamos
docker run -d --name frontend-users -p 80:80 --restart always rsalgadoc/frontend-users
```

### Para probar abrimos la siguiente URL:

http://ec2-44-201-227-174.compute-1.amazonaws.com