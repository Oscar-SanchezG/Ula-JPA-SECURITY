#Producto Agregar

#URL: http://localhost:8080/api/productos
Metodo: Post
#Request:
{
  "nombre": "Tacos de pulpo",
  "descripcion": "Orden de 3 tacos de pulpo",
  "precio": 95,
  "stock": 100,
  "idCategoria": 1
}

#Response:
{
    "success": true,
    "mensaje": "Producto registrado correctamente",
    "data": {
        "descripcion": "Orden de 3 tacos de pulpo",
        "estado": null,
        "idCategoria": 1,
        "idProducto": null,
        "nombre": "Tacos de pulpo",
        "precio": 95,
        "stock": 100
    }
}

#Producto Listar

#URL: http://localhost:8080/api/productos
Metodo: Get
#Response:
{
    "success": true,
    "mensaje": "Consulta exitosa",
    "data": [
        {
            "descripcion": "Taco de camarón",
            "estado": 1,
            "idCategoria": 1,
            "idProducto": 1,
            "nombre": "Taco Gobernador",
            "precio": 95,
            "stock": 50
        },
        {
            "descripcion": "Bebida natural",
            "estado": 1,
            "idCategoria": 2,
            "idProducto": 2,
            "nombre": "Agua de Horchata",
            "precio": 35,
            "stock": 100
        },
        {
            "descripcion": "Orden de 3 tacos de pulpo",
            "estado": 1,
            "idCategoria": 1,
            "idProducto": 3,
            "nombre": "Tacos de pulpo",
            "precio": 95,
            "stock": 100
        }
    ]
}


#Producto Buscar por ID

#URL: http://localhost:8080/api/productos/3
Metodo: Get
#Response:
{
    "success": true,
    "mensaje": "Consulta exitosa",
    "data": {
        "descripcion": "Orden de 3 tacos de pulpo",
        "estado": 1,
        "idCategoria": 1,
        "idProducto": 3,
        "nombre": "Tacos de pulpo",
        "precio": 95,
        "stock": 100
    }
}

#Producto Actulizar por ID

#URL: http://localhost:8080/api/productos/3
Metodo: Put
#Request:
{
  "nombre": "Tacos de pulpo",
  "descripcion": "Orden de 2 tacos de pulpo",
  "precio": 95,
  "stock": 100,
  "idCategoria": 1
}

#Response:
{
    "success": true,
    "mensaje": "Producto actualizado correctamente",
    "data": null
}

#Producto Eliminar por ID

#URL: http://localhost:8080/api/productos/3
Metodo: Delete
#Response:
{
    "success": true,
    "mensaje": "Producto eliminado correctamente",
    "data": null
}


#Producto Mas vendidos

#URL: http://localhost:8080/api/productos/top-vendidos
Metodo: Get
#Response:
{
    "success": true,
    "mensaje": "Consulta exitosa",
    "data": [
        {
            "nombreProducto": "Taco Gobernador",
            "totalVendido": 2
        },
        {
            "nombreProducto": "Agua de Horchata",
            "totalVendido": 1
        }
    ]
}

#Documentacion
#URL : http://localhost:8080/v3/api-docs

#Swagger
#URL : http://localhost:8080/swagger-ui/index.html