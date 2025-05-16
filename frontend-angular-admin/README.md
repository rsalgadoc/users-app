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
docker run -d --name frontend-users -p 81:80 --restart always rsalgadoc/frontend-users
```

```bash
curl http://172.31.13.246:81
```

# Como crear un proxy inverso en NGINX

Una vez corriendo asi se peude ingresar al contenendor, 

```bash
docker exec -it -u root frontend-users sh
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

```console
    location /backend/ {
        proxy_pass http://172.31.13.246:8081/;
    }
```


```bash
nginx -s reload
```

http://ec2-3-133-140-15.us-east-2.compute.amazonaws.com/backend/api/users

# Para instalar la app de Angular en Amazon S3, seguir los siguientes pasos:

1. En la consola de AWS, buscar S3, una vez dentro ir a Create bucket

2. General purpose

3. En Bucket name , poner: frontend-angular-admin

4. ACLs disabled (recommended)

5. Luego hay que deselccionar la opcion Block all public access, es decir hay que dar acceso publico.

Y aceptar acknowledge:  I acknowledge that the current settings might result in this bucket and the objects within becoming public.

6.  Bucket Versioning -> Disable

7.  Default encryption -> Server-side encryption with Amazon S3 managed keys (SSE-S3) 

8.  Bucket Key -> Enable

9. Create bucket

# Ahora bamos a construir nuestro proyecto de angular para obeter los archivos

1. No vamos a la raiz del ptoyecto de Angular

2. Y ejecutamos 
```bash
ng build --configuration production
```

3. Luego vamos a tomar los archivs generados en la carpeta: users-app\frontend-angular-admin\dist\user-app\browser

# Cargar archivos

1. Ingresamos al bucket  -> frontend-angular-admin

2. vamos a Upload, y cargamos los archivos generados de la carpeta browser

3. Files and folders (5 total, 438.8 KB)

4. Presionamos Upload

5. Luego volvemos atrar en el bucket frontend-angular-admin

6. Y vamos a la pestaña de Properties

7. vamos al ultimo en la opcion -> Static website hosting

8. La editamos para habilitarla -> Enable

9. En la opcion Index document, ponemos index.html y guardamos.

10. Luego nos vamos a la pestaña de Permissions

11. Y editamos Bucket policy, y pegamos lo siguiente:

```bash
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::frontend-angular-admin/*"
        }
    ]
}
```

12. Save changes.

13. Y vemos nustra app, subida en S3

http://frontend-angular-admin.s3-website.us-east-2.amazonaws.com/

14. Para solucionar el problema de la rutas, por ejemplo cuando sale este error:

404 Not Found
Code: NoSuchKey
Message: The specified key does not exist.
Key: login
RequestId: KEMSE6TXXDVXN0G6
HostId: yfG7tcs22OxQx0K/vv+O0oZwcEeKn1GMv9YO+8ECHFnSLdT1xo8tzsVZOuud2du/loAcwU1Wk2BYj6OsWlgdn/uO0mL89INaSMuhMc7wY74=

15. Ir a Properties -> Static website hosting

16. En Error document - optional poner: index.html, y salvar.
