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

-- "mrmanolakis","mrtakakis","mrsakakis","mrlalakis","mrmakakis"
INSERT INTO USERS (firstName,lastName,vat,address,phone,email,password,userType,propertyType) VALUES ('Manos', 'Manolakis','121212125','Crete','0123456789','manos@manolakis.com','$2a$10$CxFptswj4IA60TyT6GxXUuJ377aiMO7gBPOC6/K3t0lbG0mffjpte','USER','MAISONETTE');
INSERT INTO USERS (firstName,lastName,vat,address,phone,email,password,userType,propertyType) VALUES ('Takis', 'Takakis','121212126','Athens','0123456789','takis@takakis.com','$2a$10$7Imd1UV5Pkezzl0N1aVlxOCEI5csZIpyZLlSBN206BR4e/HiIxrVC','ADMIN','DETACHED_HOUSE');
INSERT INTO USERS (firstName,lastName,vat,address,phone,email,password,userType,propertyType) VALUES ('Sakis', 'Sakakis','121212127','Larisa','0123456789','sakis@sakakis.com','$2a$10$LKI5W77Yu/mvdbvizyUyKutkDEqgdYyJ3qnAdfYRnU6h/dVZfjLVi','USER','BLOCK_OF_FLATS');
INSERT INTO USERS (firstName,lastName,vat,address,phone,email,password,userType,propertyType) VALUES ('Lakis', 'Lalakis','121212128','Thessaloniki','0123456789','lakis@lalakis.com','$2a$10$muwkDkj5yJdL1WHHgYopF.JO0EwwQcsvA1n1RnH87phFoU.YGni9u','USER','MAISONETTE');
INSERT INTO USERS (firstName,lastName,vat,address,phone,email,password,userType,propertyType) VALUES ('Makis', 'Makakis','121212129','Patra','0123456789','makis@makakis.com','$2a$10$7tFrqI34QxdnKo0dcrSMzOAbTQL17WtxVOAQpETGJ85XTx20oiwbm','ADMIN','DETACHED_HOUSE');

INSERT INTO REPAIRS (repairDate,status,cost,address,description,repairType,userID ) VALUES ('2020-12-03', 'ONGOING','18000','Crete','This is a test value','PAINTING','1');
INSERT INTO REPAIRS (repairDate,status,cost,address,description,repairType,userID ) VALUES ('2020-12-03', 'COMPLETED','9000','Athens','This is a test value','FRAMES','2');
INSERT INTO REPAIRS (repairDate,status,cost,address,description,repairType,userID ) VALUES ('2020-12-03', 'ONGOING','18000','Larisa','This is a test value','PAINTING','4');
INSERT INTO REPAIRS (repairDate,status,cost,address,description,repairType,userID ) VALUES ('2020-12-03', 'COMPLETED','18000','Athens','This is a test value','PAINTING','2');
INSERT INTO REPAIRS (repairDate,status,cost,address,description,repairType,userID) VALUES ('2020-12-03', 'ONGOING','9000','Patra','This is a test value','PAINTING','5');
--REPAIRS with default status of PENDING
INSERT INTO REPAIRS (repairDate,cost,address,description,repairType,userID) VALUES ('2020-12-03','12000','Crete','This is a test value','PLUMBING','1');
INSERT INTO REPAIRS (repairDate,cost,address,description,repairType,userID) VALUES ('2020-12-03','12000','Patra','This is a test value','PLUMBING','5');
INSERT INTO REPAIRS (repairDate,cost,address,description,repairType,userID) VALUES ('2020-12-03','9000','Thessaloniki','This is a test value','PLUMBING','3');
INSERT INTO REPAIRS (repairDate,cost,address,description,repairType,userID) VALUES ('2020-12-03','12000','Athens','This is a test value','PLUMBING','2');
