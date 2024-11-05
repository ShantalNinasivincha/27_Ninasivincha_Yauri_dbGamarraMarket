# dbGamarraMarket  

## Descripción  

Este repositorio contiene un script SQL para la creación de la base de datos `dbGamarraMarket`, 
la cual está diseñada para gestionar un sistema de ventas en un mercado. El diseño incluye tablas
para la gestión de clientes, vendedores, prendas y ventas.  

## Estructura de la Base de Datos  

La base de datos `dbGamarraMarket` incluye las siguientes tablas:  

- **CLIENTE**: Almacena la información de los clientes, incluyendo sus datos personales y estado activo.  
- **VENDEDOR**: Contiene los datos de los vendedores, incluyendo su salario, número de documento y estado.  
- **PRENDA**: Registra las prendas disponibles en el mercado, con detalles como descripción, marca, talla y precio.  
- **VENTA**: Guarda información sobre las transacciones, asignando un cliente y un vendedor a cada venta.  
- **VENTA_DETALLE**: Detalla los productos vendidos en cada venta, vinculando la venta con las prendas correspondientes.  

## Tabla de Contenidos  

- [Requisitos](#requisitos)  
- [Cómo Ejecutar el Script](#cómo-ejecutar-el-script)  


## Requisitos  

- MySQL Server instalado.  
- Acceso a MySQL Workbench o cualquier otro cliente compatible con MySQL.  

## Cómo Ejecutar el Script  

1. Clona este repositorio en tu máquina local:  
   ```bash  
   git clone https://github.com/ShantalNinasivincha/27_Ninasivincha_Yauri_dbGamarraMarket.git
