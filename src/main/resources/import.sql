-- https://docs.spring.io/spring-boot/docs/current/reference/html/boot-features-sql.html
-- https://docs.spring.io/spring-boot/docs/current/reference/html/howto-database-initialization.html
-- IN THIS FILE WE CAN WRITE AN SQL SCRIPT CONTAINING:
-- SCHEMA, TABLE AND DATA MANIPULATION QUERIES
-- TO BE EXECUTED AUTOMATICALLY DURING THE INITIALIZATION OF THE APPLICATION
-- AND AFTER THE CREATION OF SCHEMA AND TABLES BY Hibernate
-- IF spring.jpa.hibernate.ddl-auto IS SET TO create OR create-drop
-- IT IS A Hibernate feature (nothing to do with Spring)

-- INSERT INTO USER (id, firstname, lastname, email, username, password, role) VALUES ('123', 'John', 'Doe', 'john@mail.com', 'johnD', 'pass1234', 'ROLE_USER');
-- INSERT INTO USER (id, firstname, lastname, email, username, password, role) VALUES ('124', 'Jane', 'Doe', 'jane@mail.com', 'janeD', 'pass1234', 'ROLE_ADMIN');

INSERT INTO USERS (firstName,lastName,vat,address,phone,email,password,userType,propertyType) VALUES ('Manos', 'Manolakis','121212125','Crete','0123456789','manos@manolakis.com','mrmanolakis','USER','MAISONETTE');
INSERT INTO USERS (firstName,lastName,vat,address,phone,email,password,userType,propertyType) VALUES ('Takis', 'Takakis','121212126','Athens','0123456789','takis@takakis.com','mrtakakis','ADMIN','DETACHED_HOUSE');
INSERT INTO USERS (firstName,lastName,vat,address,phone,email,password,userType,propertyType) VALUES ('Sakis', 'Sakakis','121212127','Larisa','0123456789','sakis@sakakis.com','mrsakakis','USER','BLOCK_OF_FLATS');
INSERT INTO USERS (firstName,lastName,vat,address,phone,email,password,userType,propertyType) VALUES ('Lakis', 'Lalakis','121212128','Thessaloniki','0123456789','lakis@lalakis.com','mrlalakis','USER','MAISONETTE');
INSERT INTO USERS (firstName,lastName,vat,address,phone,email,password,userType,propertyType) VALUES ('Makis', 'Makakis','121212129','Patra','0123456789','makis@makakis.com','mrmakakis','ADMIN','DETACHED_HOUSE');
D
INSERT INTO REPAIRS (repairDate,status,cost,address,description,repairType,userID ) VALUES ('2020-12-03', 'ONGOING','18000','Crete','This is a test value','PAINTING','1');
INSERT INTO REPAIRS (repairDate,status,cost,address,description,repairType,userID ) VALUES ('2020-12-03', 'FINISHED','9000','Athens','This is a test value','FRAMES','2');
INSERT INTO REPAIRS (repairDate,status,cost,address,description,repairType,userID ) VALUES ('2020-12-03', 'ONGOING','18000','Larisa','This is a test value','PAINTING','4');
INSERT INTO REPAIRS (repairDate,status,cost,address,description,repairType,userID ) VALUES ('2020-12-03', 'FINISHED','18000','Athens','This is a test value','PAINTING','2');
INSERT INTO REPAIRS (repairDate,status,cost,address,description,repairType,userID) VALUES ('2020-12-03', 'ONGOING','9000','Patra','This is a test value','PAINTING','5');
--REPAIRS with default statDus of PENDING
INSERT INTO REPAIRS (repairDate,cost,address,description,repairType,userID) VALUES ('2020-12-03','12000','Crete','This is a test value','PLUMBING','1');
INSERT INTO REPAIRS (repairDate,cost,address,description,repairType,userID) VALUES ('2020-12-03','12000','Patra','This is a test value','PLUMBING','5');
INSERT INTO REPAIRS (repairDate,cost,address,description,repairType,userID) VALUES ('2020-12-03','9000','Thessaloniki','This is a test value','PLUMBING','3');
INSERT INTO REPAIRS (repairDate,cost,address,description,repairType,userID) VALUES ('2020-12-03','12000','Athens','This is a test value','PLUMBING','2');
