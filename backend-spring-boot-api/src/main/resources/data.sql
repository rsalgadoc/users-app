INSERT INTO users(name,lastname,email,username,password) VALUES('Rodrigo', 'Salgado', 'juan@gmail.com','rsalgado','$2a$10$J9x0CuS9f86J2TyERb3rYOUy/D.wUXksYPECyHhDZPAr.maj7/U8O');
INSERT INTO users(name,lastname,email,username,password) VALUES('Pedro', 'Perez', 'pedro@gmail.com','pperez','$2a$10$J9x0CuS9f86J2TyERb3rYOUy/D.wUXksYPECyHhDZPAr.maj7/U8O');
INSERT INTO users(name,lastname,email,username,password) VALUES('Fernando ', 'Gonzalez', 'fgonzalez@gmail.com','fgonzalez','$2a$10$J9x0CuS9f86J2TyERb3rYOUy/D.wUXksYPECyHhDZPAr.maj7/U8O');
INSERT INTO users(name,lastname,email,username,password) VALUES('Nicolas ', 'Prieto', 'nprieto@gmail.com','nprieto','$2a$10$J9x0CuS9f86J2TyERb3rYOUy/D.wUXksYPECyHhDZPAr.maj7/U8O');
INSERT INTO users(name,lastname,email,username,password) VALUES('Alejandro ', 'Rios', 'arios@gmail.com','arios','$2a$10$J9x0CuS9f86J2TyERb3rYOUy/D.wUXksYPECyHhDZPAr.maj7/U8O');

INSERT INTO roles(name) VALUES('ROLE_ADMIN');
INSERT INTO roles(name) VALUES('ROLE_USER');


INSERT INTO users_roles(user_id,role_id) VALUES(1,1);
INSERT INTO users_roles(user_id,role_id) VALUES(2,1);
INSERT INTO users_roles(user_id,role_id) VALUES(3,2);
INSERT INTO users_roles(user_id,role_id) VALUES(4,2);
INSERT INTO users_roles(user_id,role_id) VALUES(5,2);


