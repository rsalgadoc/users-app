# UserApp

This project was generated using [Angular CLI](https://github.com/angular/angular-cli) version 19.2.10.

## Development server

To start a local development server, run:

```bash
ng serve
```

Once the server is running, open your browser and navigate to `http://localhost:4200/`. The application will automatically reload whenever you modify any of the source files.

## Code scaffolding

Angular CLI includes powerful code scaffolding tools. To generate a new component, run:

```bash
ng generate component component-name
```

For a complete list of available schematics (such as `components`, `directives`, or `pipes`), run:

```bash
ng generate --help
```

## Building

To build the project run:

```bash
ng build
```

This will compile your project and store the build artifacts in the `dist/` directory. By default, the production build optimizes your application for performance and speed.

## Running unit tests

To execute unit tests with the [Karma](https://karma-runner.github.io) test runner, use the following command:

```bash
ng test
```

## Running end-to-end tests

For end-to-end (e2e) testing, run:

```bash
ng e2e
```

Angular CLI does not come with an end-to-end testing framework by default. You can choose one that suits your needs.

## Additional Resources

For more information on using the Angular CLI, including detailed command references, visit the [Angular CLI Overview and Command Reference](https://angular.dev/tools/cli) page.


To solve the issue with 
import Swal from 'sweetalert2';

```bash
npm install sweetalert2
```

Install redux

```bash
ng add @ngrx/store@latest
```

```bash
ng add @ngrx/store-devtools@latest
```

```bash
ng add @ngrx/effects@latest
```

```bash
docker build -t rsalgadoc/frontend-users .
```
# Debido a que el build en AWS se queda pegado, por se una instancia muy pequeña, subir a DockerHub con el siguiente comando:
```bash
docker push rsalgadoc/frontend-users
```

```bash
docker run -d -p 80:80 --restart always rsalgadoc/frontend-users
```

# Como crear un proxy inverso en NGINX

Una vez corriendo asi se peude ingresar al contenendor:
```bash
docker exec -it -u root 827b78756051 sh
```
Para probar si tengo acceso al backed desde el contendor del frontend, aca pongo la ip interna del host(la instancia de EC2) Private IPv4 addresses 172.31.13.246

```bash
wget http://172.31.13.246:8081/api/users
```

```bash
cd /etc/nginx/conf.d
```

```bash
vi default.conf
```

Agrego la siguiente linea:

```java
    location /backend/ {
        proxy_pass http://172.31.13.246:8081/;
    }
```


```bash
nginx -s reload
```

http://ec2-3-133-140-15.us-east-2.compute.amazonaws.com/backend/api/users