/* Crear base de datos dbGamarraMarket */  

CREATE DATABASE dbGamarraMarket
 


/* Poner en uso la base de datos dbGamarraMarket */ 
USE dbGamarraMarket;    


-- Crear tabla CLIENTE  
CREATE TABLE CLIENTE (  
    id INT PRIMARY KEY,  
    tipo_documento CHAR(3),  
    numero_documento CHAR(15),  
    nombres VARCHAR(60),  
    apellidos VARCHAR(90),  
    email VARCHAR(80) NULL,  
    celular CHAR(9) NULL,  
    fecha_nacimiento DATE,  
    activo BOOL  
);  

-- Crear tabla VENDEDOR  
CREATE TABLE VENDEDOR (  
    id INT PRIMARY KEY,  
    tipo_documento CHAR(3),  
    numero_documento CHAR(15),  
    nombres VARCHAR(60),  
    apellidos VARCHAR(90),  
    salario DECIMAL(8,2),  
    celular CHAR(9) NULL,  
    email VARCHAR(80) NULL,  
    activo BOOL  
);  

-- Crear tabla VENTA  
CREATE TABLE VENTA (  
    id INT PRIMARY KEY,  
    fecha_hora TIMESTAMP,  
    activo BOOL,  
    cliente_id INT,  
    vendedor_id INT,  
    FOREIGN KEY (cliente_id) REFERENCES CLIENTE(id),  
    FOREIGN KEY (vendedor_id) REFERENCES VENDEDOR(id)  
);  

-- Crear tabla PRENDA  
CREATE TABLE PRENDA (  
    id INT PRIMARY KEY,  
    descripcion VARCHAR(90),  
    marca VARCHAR(60),  
    cantidad INT,  
    talla VARCHAR(10),  
    precio DECIMAL(8,2),  
    activo BOOL  
);
-- Crear tabla VENTA_DETALLE  
CREATE TABLE VENTA_DETALLE (  
    id INT PRIMARY KEY,  
    cantidad INT,  
    venta_id INT,  
    prenda_id INT,  
    FOREIGN KEY (venta_id) REFERENCES VENTA(id),  
    FOREIGN KEY (prenda_id) REFERENCES PRENDA(id)  
);  

/* Eliminar base de datos dbGamarraMarket */  
-- DROP DATABASE dbGamarraMarket;  