/*========================================================
  TABLA DE CAT_ROLES
========================================================*/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE clientes CASCADE CONSTRAINTS';
   EXECUTE IMMEDIATE 'DROP TABLE categorias CASCADE CONSTRAINTS';
   EXECUTE IMMEDIATE 'DROP TABLE productos CASCADE CONSTRAINTS';
   EXECUTE IMMEDIATE 'DROP TABLE pedidos CASCADE CONSTRAINTS';
   EXECUTE IMMEDIATE 'DROP TABLE detalle_pedido CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/

BEGIN
   EXECUTE IMMEDIATE 'DROP SEQUENCE seq_clientes';
   EXECUTE IMMEDIATE 'DROP SEQUENCE seq_categorias';
   EXECUTE IMMEDIATE 'DROP SEQUENCE seq_productos';
   EXECUTE IMMEDIATE 'DROP SEQUENCE seq_pedidos';
   EXECUTE IMMEDIATE 'DROP SEQUENCE seq_detalle_pedido';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/

-- =============================================
-- SECUENCIAS
-- =============================================

CREATE SEQUENCE seq_clientes START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_categorias START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_productos START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_pedidos START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_detalle_pedido START WITH 1 INCREMENT BY 1;

-- =============================================
-- TABLA CLIENTES
-- =============================================

CREATE TABLE clientes (
    id_cliente NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    apellido VARCHAR2(100),
    telefono VARCHAR2(20),
    correo VARCHAR2(150),
    estado NUMBER DEFAULT 1,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =============================================
-- TABLA CATEGORIAS
-- =============================================

CREATE TABLE categorias (
    id_categoria NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    descripcion VARCHAR2(200),
    estado NUMBER DEFAULT 1
);

-- =============================================
-- TABLA PRODUCTOS
-- =============================================

CREATE TABLE productos (
    id_producto NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    descripcion VARCHAR2(200),
    precio NUMBER(10,2),
    stock NUMBER,
    id_categoria NUMBER,
    estado NUMBER DEFAULT 1,

    CONSTRAINT fk_producto_categoria
    FOREIGN KEY(id_categoria)
    REFERENCES categorias(id_categoria)
);

-- =============================================
-- TABLA PEDIDOS
-- =============================================

CREATE TABLE pedidos (
    id_pedido NUMBER PRIMARY KEY,
    id_cliente NUMBER,
    fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total NUMBER(10,2),
    estado_pedido VARCHAR2(50),
    fecha_cancelacion TIMESTAMP,
    estado NUMBER DEFAULT 1,

    CONSTRAINT fk_pedido_cliente
    FOREIGN KEY(id_cliente)
    REFERENCES clientes(id_cliente)
);

-- =============================================
-- TABLA DETALLE PEDIDO
-- =============================================

CREATE TABLE detalle_pedido (
    id_detalle NUMBER PRIMARY KEY,
    id_pedido NUMBER,
    id_producto NUMBER,
    cantidad NUMBER,
    precio_unitario NUMBER(10,2),
    subtotal NUMBER(10,2),
    estado NUMBER DEFAULT 1,

    CONSTRAINT fk_detalle_pedido
    FOREIGN KEY(id_pedido)
    REFERENCES pedidos(id_pedido),

    CONSTRAINT fk_detalle_producto
    FOREIGN KEY(id_producto)
    REFERENCES productos(id_producto)
);

INSERT INTO categorias( id_categoria, nombre, descripcion )
VALUES( seq_categorias.NEXTVAL, 'Tacos','Tacos de mariscos');

INSERT INTO categorias(id_categoria, nombre, descripcion )
VALUES( seq_categorias.NEXTVAL, 'Bebidas','Bebidas preparadas');

INSERT INTO productos( id_producto, nombre, descripcion, precio, stock, id_categoria)
VALUES(seq_productos.NEXTVAL,'Taco Gobernador','Taco de camarón', 95,50,1);

INSERT INTO productos( id_producto, nombre, descripcion, precio, stock, id_categoria)
VALUES(seq_productos.NEXTVAL,'Agua de Horchata','Bebida natural',35,100,2);

commit ;