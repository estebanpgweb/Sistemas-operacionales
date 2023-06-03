


# taller 11 sistemas operacionales
## 1. Explique la diferencia entre los conceptos de fragmentación interna y externa
**Fragmentacion interna:**
 - La fragmentación interna ocurre cuando hay espacio desperdiciado dentro de un bloque de memoria asignado a un proceso, esto sucede cuando la asignación de bloques de memoria que son más grandes que el tamaño requerido por el proceso.
 - Es menos eficiente respecto al uso de la memoria ya que el espacio que no se utiliza no puede ser ocupado por otros procesos 
 -Este tipo de fragmentación se presenta en sistemas que utilizan asignación de memoria estática o particiones fijas razón por la cual la asignación de memoria no es tan eficiente
 **Fragmentación externa:**
 - La fragmentación externa es común en sistemas que utilizan asignación de memoria dinámica, esto permite que el sistema operativo puede asignar y liberar memoria de manera flexible. 
 - este tipo de fragmentación consiste en asignar un proceso en un espacio disponible en el sistema, pero la memoria se encuentra fragmentada en varios bloques no contiguos.
 - lo anterior pude ser un problema porque, aunque haya suficiente memoria total disponible, no se puede asignar a un proceso si no hay un bloque contiguo lo suficientemente grande para los requerimientos de memoria de dicho proceso.
## 2.  ¿En que forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?
Primero el editor de montaje asigna direcciones de memoria a las variables y constantes definidas en el código fuente.  y se almacenan en áreas de memoria reservadas específicamente para ellos luego organiza las instrucciones del programa de acuerdo con las direcciones de memoria asignadas, genera referencias y etiquetas simbólicas en lugar de direcciones de memoria absolutas en el código fuente las cuales son utilizadas como referencias a ubicaciones de memoria específicas y son reemplazadas por direcciones de memoria reales durante el proceso de ensamblaje y por ultimo si el programa hace referencia a símbolos o etiquetas definidos en otras partes del código, el editor de montaje se encarga de resolver esas referencias cruzadas asignando las direcciones de memoria correctas.
    
## 3 ¿Que información debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste?

El compilador debe generar una tabla de símbolos que contenga información sobre todos los símbolos definidos en el programa, como variables, constantes, funciones, etiquetas, entre otros, debe hacer un cálculo del tamaño de los diferentes tipos de datos utilizados en el programa, como enteros, flotantes, arreglos, estructuras, entre otros, si en el programa se hace referencia a símbolos definidos en otros módulos el compilador debe proporcionar información sobre estas referencias cruzadas y debe incluir información sobre bibliotecas externas 
    
## 4 En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB. ¿Como situarían en memoria una serie de procesos de 212 KB, 417 KB, 112 KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Que algoritmo hace el uso más eficiente de la memoria?
**1.  **Primer ajuste:****

-   Proceso de 212 KB: Se asignaría a la partición de 500 KB.
-   Proceso de 417 KB: No hay una partición de memoria lo suficientemente grande para este proceso, por lo que se buscaría la siguiente partición disponible.
-   Proceso de 112 KB: Se asignaría a la partición de 200 KB.
-   Proceso de 426 KB: No hay una partición de memoria lo suficientemente grande para este proceso, por lo que se buscaría la siguiente partición disponible.
**2.  **Mejor ajuste:****

-   Proceso de 212 KB: Se asignaría a la partición de 300 KB, ya que es la partición más cercana en tamaño.
-   Proceso de 417 KB: Se asignaría a la partición de 500 KB
-   Proceso de 112 KB: Se asignaría a la partición de 200 KB.
-   Proceso de 426 KB: Se asignaría a la partición de 600 KB.
**3.  Peor ajuste:**

-   Proceso de 212 KB: Se asignaría a la partición de 600 KB
-   Proceso de 417 KB: Se asignaría a la partición de 500 KB
-   Proceso de 112 KB: Se asignaría a la partición de 200 KB.
-   Proceso de 426 KB: Se asignaría a la partición de 600 KB
## 5 La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas?
1.  **Asignación contigua de memoria:** la memoria se divide en particiones contiguas y se asigna a los procesos, 

2.  **Segmentación pura:**  la memoria se divide en segmentos lógicos de diferentes tamaños y cada segmento se asigna a una parte específica del programa. Para permitir la asignación dinámica de memoria en la segmentación pura.
3.  **Paginación pura**:  la memoria se divide en páginas de tamaño fijo y los programas se dividen en páginas lógicas. Para soportar la asignación dinámica de memoria en la paginación pura 

para soportar la asignación dinámica de memoria en los esquemas de asignación contigua de memoria, segmentación pura y paginación pura, se necesitan administradores de memoria adecuados, algoritmos de asignación apropiados y mecanismos para gestionar la fragmentación interna o externa que pueda ocurrir. 
## 6 Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a: 
1. **Fragmentación externa.** 
En términos de fragmentación externa, la paginación pura es generalmente más eficiente que la asignación continua de memoria y la segmentación pura.
-   Asignación continua de memoria: La fragmentación externa puede ser un problema significativo en este esquema, ya que los programas ocupan particiones contiguas de memoria
-   Segmentación pura: La fragmentación externa también puede ser un problema en este esquema. Si los segmentos ocupados están dispersos en la memoria, se pueden generar espacios vacíos entre ellos, lo que resulta en fragmentación externa. 
-   Paginación pura: En este esquema, la fragmentación externa es mínima o inexistente. Las páginas de tamaño fijo se asignan de manera independiente a los procesos, lo que significa que no hay huecos entre las páginas asignadas. 

2.  **Fragmentación interna.** 
-   Asignación continua de memoria: La fragmentación interna puede generar conflictos ya que. los procesos deben ajustarse a las particiones de memoria asignadas, lo que puede llevar a que se desperdicie espacio en las particiones debido a la diferencia entre el tamaño del proceso y el tamaño de la partición asignada.
-   Segmentación pura: La fragmentación interna también puede ser un problema porque los segmentos asignados a los procesos pueden ser más grandes que el tamaño real del código o los datos, lo que genera desperdicio de espacio.
-   Paginación pura: La fragmentación interna en la paginación pura también es mínima por los mismos motivos mencionados anteriormente.
3. **Capacidad de compartir código.**
-   Asignación continua de memoria: En este esquema, el código compartido puede ser difícil de implementar, ya que los procesos se asignan a particiones contiguas y no se pueden compartir secciones de memoria.
-   Segmentación pura: La segmentación pura facilita la capacidad de compartir código entre procesos. Los segmentos de código pueden asignarse como segmentos compartidos, lo que permite que múltiples procesos accedan a la misma porción de memoria para ejecutar código común.
-   Paginación pura: La paginación pura también permite compartir código entre procesos.
## 7 En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad. 
**1. ¿Por qué?** esto debido a la protección de memoria y la implementación del mecanismo de paginación. Cada proceso tiene su propio espacio de direcciones virtuales que se divide en páginas. Cada página se asigna y protege individualmente para cada proceso. Esto se hace para garantizar la seguridad y el aislamiento entre los procesos,

**2. ¿ podía el OS permitir el acceso a otras zonas de memoria?** 
Si se desea permitir que un proceso acceda a otras zonas de memoria, el sistema operativo tendría que implementar algún mecanismo explícito para compartir memoria entre procesos. Esto podría lograrse mediante técnicas como la asignación de páginas compartidas, donde múltiples procesos tienen acceso de lectura/escritura a la misma página física.

 **3. ¿Por qué debería o por qué no debería?**
 Si se desea permitir que un proceso acceda a otras zonas de memoria, el sistema operativo tendría que implementar algún mecanismo explícito para compartir memoria entre procesos. Esto podría lograrse mediante técnicas como la asignación de páginas compartidas, donde múltiples procesos tienen acceso de lectura/escritura a la misma página física.
 
 ## 8 Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.
 
 **Mecanismo de paginación:** En el mecanismo de paginación, la memoria se divide en páginas de tamaño fijo tanto en el espacio de direcciones virtuales como en el espacio de direcciones físicas. La tabla de páginas se utiliza para mapear las páginas virtuales a las páginas físicas correspondientes. La cantidad de memoria requerida para la tabla de páginas depende de varios factores, como el tamaño de la página y el tamaño total del espacio de direcciones virtuales. Sin embargo, en comparación con la segmentación, el mecanismo de paginación tiende a requerir menos memoria para la tabla de páginas, ya que solo es necesario almacenar información de mapeo a nivel de página, en lugar de información de mapeo a nivel de segmento.

**Mecanismo de segmentación:** En el mecanismo de segmentación, la memoria se divide en segmentos lógicos, que pueden tener diferentes tamaños y representar diferentes partes de un programa. Se utiliza una tabla de segmentos para mapear los segmentos lógicos a las direcciones físicas correspondientes. 
La cantidad de memoria requerida para la tabla de segmentos depende del número de segmentos presentes en el espacio de direcciones virtuales y la cantidad de información necesaria para describir cada segmento. A medida que aumenta el número de segmentos y la cantidad de información asociada, la memoria requerida para la tabla de segmentos puede volverse significativa y aumentar proporcionalmente a la complejidad del programa

