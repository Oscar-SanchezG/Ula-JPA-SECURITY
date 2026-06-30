#Pedido Agregar
#URL: http://localhost:8080/api/pedidos
Metodo: Post
#Request:
{
  "idCliente": 1,
  "productos": [
    {
      "idProducto": 1,
      "cantidad": 2
    },
    {
      "idProducto": 2,
      "cantidad": 1
    }
  ]
}

#Response:
{
    "success": true,
    "mensaje": "Pedido generado correctamente",
    "data": 1
}


#Pedido Cancelar
#URL: http://localhost:8080/api/pedidos/1
Metodo: Delete
#Response:
{
    "success": true,
    "mensaje": "Pedido cancelado correctamente",
    "data": null
}

#Documentacion
#URL : http://localhost:8080/v3/api-docs

#Swagger
#URL : http://localhost:8080/swagger-ui/index.html