#Cliente Agregar

#URL: http://localhost:8080/api/clientes
Metodo: Post
#Request:
{
"nombre": "Eduardo",
"apellido": "Sanchez",
"telefono": "4771234567",
"correo": "eduardo@gmail.com"
}

#Response:
{
    "success": true,
    "mensaje": "Cliente registrado correctamente",
    "data": {
        "apellido": "Sanchez",
        "correo": "eduardo@gmail.com",
        "estado": null,
        "fechaRegistro": null,
        "idCliente": null,
        "nombre": "Eduardo",
        "telefono": "4771234567"
    }
}

#Cliente Listar

#URL: http://localhost:8080/api/clientes
#Metodo : Get
#Response :
{
    "success": true,
    "mensaje": "Consulta exitosa",
    "data": [
        {
            "apellido": "Sanchez",
            "correo": "eduardo@gmail.com",
            "estado": 1,
            "fechaRegistro": "2026-05-24T21:28:05.211354",
            "idCliente": 1,
            "nombre": "Eduardo",
            "telefono": "4771234567"
        }
    ]
}

#Cliente Buscar por ID

#URL: http://localhost:8080/api/clientes/1
#Metodo : Get
#Response :
{
    "success": true,
    "mensaje": "Consulta exitosa",
    "data": {
        "apellido": "Sanchez",
        "correo": "eduardo@gmail.com",
        "estado": 1,
        "fechaRegistro": "2026-05-24T21:28:05.211354",
        "idCliente": 1,
        "nombre": "Eduardo",
        "telefono": "4771234567"
    }
}

#Cliente Actulizar por ID

URL: http://localhost:8080/api/clientes/1
#Metodo : Put
#Request:
{
"nombre": "Eduardo",
"apellido": "Sanchez",
"telefono": "4731295482",
"correo": "eduardo@gmail.com"
}

#Response:
{
    "success": true,
    "mensaje": "Cliente actualizado correctamente",
    "data": null
}

#Cliente Eliminiar por ID

#URL: http://localhost:8080/api/clientes/1
#Metodo : Delete
#Response :
{
    "success": true,
    "mensaje": "Cliente eliminado correctamente",
    "data": null
}

#Documentacion
#URL : http://localhost:8080/v3/api-docs

#Swagger
#URL : http://localhost:8080/swagger-ui/index.html