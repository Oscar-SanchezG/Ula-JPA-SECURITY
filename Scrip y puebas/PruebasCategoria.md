#Categoria Agregar

#URL: http://localhost:8080/api/categorias
Metodo: Post
#Request:
{
    "nombre": "Caldos",
    "descripcion": "Caldos de mariscos"
}

#Response:
{
    "success": true,
    "mensaje": "Categoria registrada correctamente",
    "data": {
        "descripcion": "Caldos de mariscos",
        "estado": null,
        "idCategoria": null,
        "nombre": "Caldos"
    }
}

#Categoria Listar

#URL: http://localhost:8080/api/categorias
Metodo: Get
#Response:
{
    "success": true,
    "mensaje": "Consulta exitosa",
    "data": [
        {
            "descripcion": "Tacos de mariscos",
            "estado": 1,
            "idCategoria": 1,
            "nombre": "Tacos"
        },
        {
            "descripcion": "Bebidas preparadas",
            "estado": 1,
            "idCategoria": 2,
            "nombre": "Bebidas"
        },
        {
            "descripcion": "Caldos de mariscos",
            "estado": 1,
            "idCategoria": 3,
            "nombre": "Caldos"
        }
    ]
}


#Categoria Buscar por ID

#URL: http://localhost:8080/api/categorias/2
Metodo: Get
#Response:
{
    "success": true,
    "mensaje": "Consulta exitosa",
    "data": {
        "descripcion": "Bebidas preparadas",
        "estado": 1,
        "idCategoria": 2,
        "nombre": "Bebidas"
    }
}

#Categoria Actulizar por ID

#URL: http://localhost:8080/api/categorias/2
Metodo: Put
#Request:
 {
    "nombre": "Bebidas",
    "descripcion": "Bebidas preparadas frias"
 }

#Response:
{
    "success": true,
    "mensaje": "Categoria actualizada correctamente",
    "data": null
}

#Categoria Eliminar por ID

#URL: http://localhost:8080/api/categorias/2
Metodo: Delete
#Response:
{
    "success": true,
    "mensaje": "Categoria eliminada correctamente",
    "data": null
}

#Documentacion
#URL : http://localhost:8080/v3/api-docs

#Swagger
#URL : http://localhost:8080/swagger-ui/index.html