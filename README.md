# El Bestiario de Minegarde

Todavía en adición de funciones. Por ahora funcionan los aspectos básicos del CRUD compartidos entre dos tablas accedidas desde 
bestiario.jsp, la de monstruo como contenedora de la mayoría de la información, siendo el elemento clave foránea de la tabla
elemento cuya finalidad reside únicamente en forzar al usuario a emplear los establecidos para que se muestren mediante imágenes
como atributos dentro de la tabla.

Podemos añadir, leer y borrar monstruos de manera directa desde bestiario.jsp. La edición de datos de monstruos ya existentes
se ejecuta en otra página en la cual se nos permite incluir la URL de internet de una imagen para que figure en el listado del CRUD.

Podemos así mismo buscar monstruos bien por su nombre o por su elemento. Requiere todavía de edición, pues emplea una página intermedia que
no soluciona muchos problemas cuando cada monstruo todavía no tiene más de cinco columnas de información. La finalidad vendría a ser en
caso de mantenerse escueta la información, distribuir la búsqueda por elemento en tablas con tres monstruos por línea distribuidos
equitativamente con un mayor detalle, como si de cartas de búsqueda y captura se tratasen. En caso de añadirse más información como 
hábitats o misiones en los que vive o se pide cazar al monstruo respectivamente y otros factores que pertenecen a las tablas que quedan por 
incorporar, una página única para cada monstruo sería lo más propicio.







# A implementar.

Así mismo, queda por incorporar lo que debería ser la página principal en lugar de bestiario.jsp: index.jsp cuya idea principal residiría en el uso de las otras 
dos tablas como un índice de actualidad, quedando el estado de la fauna de los biomas y la lista de misiones como un punto inicial que
resulta más lógico para su uso al margen de cazadores, pues cualquiera es capaz de publicar sus peticiones, si bien no de editarlas,
pues nos ceñiríamos a la idea de papeles colgados en una tabla. No obstante deberíamos ser capaces de buscar las misiones en base al
monstruo que aparezca, el valor de la recompensa, o el bioma en el que se realiza, buscando que se muestren en detalles parecidos a los 
carteles de misión de la saga. 

Así mismo, deberíamos poder buscar monstruos según los biomas en los que aparezcan y acceder desde el detalle del monstruo al bioma. 
Lo más importante a posteriori sería diseñar la página para que no duela a la vista.
