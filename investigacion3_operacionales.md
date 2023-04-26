# INVESTIGACION #3

Esteban David Florez
2191940


## 1. Compare las diferencias entre la planeación a corto plazo y largo plazo
La diferencia clave entre la planificación a corto plazo y la planificación a largo plazo es que la planificación a corto plazo se centra en un período inmediato, que por lo general es a menos de un año especialmente en referencia a los ingresos y la rentabilidad, mientras que la planificación a largo plazo se centra en los logros para el futuro proyectado. Los objetivos a corto plazo conducen hacia expectativas como el desarrollo de nuevos productos, la mejora del flujo de caja, etc. esta visión de planificación es importante para satisfacer a los inversores que desean ver resultados o mejorar los resultados de su empresa.  
cuando se realiza una evaluación a largo plazo estamos haciendo una proyección hacia el futuro, evalúa las amenazas que la empresa puede enfrentar en términos de situaciones sociales, económicas y políticas, tanto a nivel local como global. Además se centra en situaciones competitivas como comportamientos de la competencia, nuevos productos y posibles cambios de proveedores



## 2. Caracterice dos procesos que se puedan considerar a mediano plazo.

 - uno de los procesos que podemos realizar en mediano plazo es el diseño del sistema el que se define la arquitectura, los componentes, las interacciones los requisitos del sistema y se definen las características y especificaciones técnicas. El diseño del sistema también implica la creación de modelos y prototipos para evaluar el desempeño y la funcionalidad del sistema antes de construirlo.
 - otro proceso que se puede realizar en mediano plazo es la implementación del sistema y es el proceso siguiente de la etapa anterior, Este proceso implica la selección y adquisición de los componentes necesarios, la construcción de los prototipos y la integración de los componentes en el sistema final. 

## 3. Describa las acciones que toma el kernel para el cambio de contexto entre procesos
son varias las acciones que realiza el kernel pero entre las principales estan:

 -  Guarda el estado del proceso actual: en este proceso almacena el valor de los registros de la CPU, la información de la pila, el estado de los semáforos entre otros
 - Selecciona el siguiente proceso a ejecutar: esto lo realiza mediante un algoritmo de planificación para seleccionar el siguiente proceso a ejecutar en función de su prioridad, tiempo de espera, una vez que se ha seleccionado el siguiente proceso, el kernel carga el estado guardado del proceso y lo prepara para su ejecución.
 -  Restaura el estado del proceso seleccionado:  el kernel restaura el estado guardado del proceso seleccionado y lo pone en ejecución, este proceso puede acceder a los recursos del sistema y realizar su trabajo hasta que el kernel lo detiene o se produce otro cambio de contexto.

## 4. Defina las ventajas y desventajas desde el punto de vista del programador para comunicación síncrona y asíncrona.

### comunicacion síncrona
#### ventajas

 -   Es fácil de entender porque es lineal y fácil de depurar porque cada proceso espera al otro para continuar.
 -  Como la comunicación síncrona es secuencial, garantiza que los datos estén sincronizados y no haya problemas de consistencia.
 -   Facilita el control de errores: Como cada proceso espera al otro para continuar, es fácil detectar y corregir errores.
#### desventajas
 -   los procesosos se ejecuntan en cola (uno despues del otro) , si el proceso que se esta ejecutando es lento, puede ralentizar el proceso que lo espera.
-   Mayor complejidad: La comunicación síncrona puede hacer que el código sea más complejo y difícil de mantener.
### comunicacion asíncrona
#### ventajas:
-   se tiene un mejor rendimiento debido a que  los procesos se ejecutan sin esperar a que el otro termine su tarea,.
- La comunicación asíncrona es menos compleja porque los procesos pueden trabajar independientemente.
-  Permite la comunicación entre procesos en diferentes momentos.
#### desventajas
-  Como los procesos pueden trabajar de manera independiente, la coherencia de los datos puede ser difícil de mantener.
-  debido a que los procesos trabajan de manera independiente, puede ser difícil depurar problemas de comunicación.
## 5. defina las ventajas y desventajas desde el punto de vista del OS para envio pór copia y envio por referencia

### Ventajas del envío por copia son:
- El OS no necesita preocuparse por problemas de seguridad, ya que la función no puede acceder a la memoria fuera de su ámbito.
    
-  cada función tiene su propia copia de los argumentos.
    
-  se minimizan las posibilidades de obtener errores inesperados debido a que la copia de los argumentos garantiza que la función no pueda modificar los valores originales,
    

### Desventajas del envío por copia:

- se puede sobrecargar la memoria si los argumentos son grandes o se pasan a muchas funciones.
    
- La copia de los argumentos puede requerir tiempo adicional para la ejecución de la función.
    
- Si los argumentos se modifican en una función y se devuelven como resultado, se deben copiar de vuelta en la función de llamada, lo que puede consumir tiempo adicional y memoria.
    

Ventajas del envío por referencia:

- no se realizan copias adicionales de los argumentos evitando la sobrecarga de memoria y el ahorro de  tiempo
    
- Los cambios realizados en los argumentos dentro de la función se reflejan en la función de llamada, lo que puede ser útil en algunas situaciones.
    

Desventajas del envío por referencia:

- El OS debe garantizar que la función no pueda acceder a la memoria fuera de su ámbito, lo que puede ser un problema de seguridad.
   
- Si los argumentos se modifican en una función y se devuelven como resultado, se deben copiar de vuelta en la función de llamada, este proceso consume tiempo adicional y capacidad de almacenamiento de la memoria


## 6. Describa las ventajas y desventajas desde el punto de vista del OS para un mensaje de tamaño fijo y de tamaño9 variable
### Ventajas del mensaje de tamaño fijo:
- El OS puede reservar un bloque de memoria fija para cada mensaje, lo que reduce la sobrecarga y la fragmentación de la memoria.
    
- El OS puede predecir el tamaño de cada mensaje y optimizar la transferencia de datos en consecuencia.
    
- El procesamiento de mensajes de tamaño fijo puede ser más eficiente, ya que no se requiere ninguna comprobación adicional de longitud o de final de mensaje.
    

### Desventajas del mensaje de tamaño fijo desde el punto de vista del OS:

- Los mensajes de tamaño fijo pueden limitar la flexibilidad y la capacidad de adaptación del sistema a diferentes situaciones.
    
- Si los mensajes contienen menos datos que el tamaño fijo asignado, se desperdicia memoria.
    

### Ventajas del mensaje de tamaño variable desde el punto de vista del OS:

- Los mensajes de tamaño variable pueden adaptarse a diferentes situaciones y requisitos, lo que mejora la flexibilidad y la capacidad de adaptación del sistema.
    
- Si los mensajes contienen menos datos que el tamaño máximo posible, se utiliza solo la cantidad necesaria de memoria.
    

### Desventajas del mensaje de tamaño variable desde el punto de vista del OS:

- El OS debe realizar comprobaciones adicionales de longitud y de final de mensaje, lo que puede consumir tiempo y recursos.
    
-  El OS debe gestionar la fragmentación de la memoria y la asignación de memoria dinámica para cada mensaje, lo que puede aumentar la sobrecarga del sistema.
## 7. Describa los estados de un proceso 

-  Nuevo: el proceso acaba de ser creado, pero todavía no se ha iniciado.
    
- Listo: el proceso está listo para su ejecución y espera a que el planificador del sistema operativo lo seleccione para ejecutarse.
    
- En  ejecución: el proceso está siendo ejecutado actualmente por uno de los núcleos de procesador.
- Bloqueado: el proceso está esperando un recurso, como la entrada de datos o la finalización de una operación de E/S, y no puede continuar hasta que se complete la operación.
    
- Terminado: el proceso ha finalizado su ejecución y espera a que el sistema operativo recoja sus resultados y libere los recursos utilizados.

## 8. Que datos se encuentran en un PCB

- Identificación del proceso: esta información incluye el ID del proceso, el nombre del proceso y el usuario que lo inició.
    
- Estado del proceso: ya sea  listo, en ejecución, bloqueado o terminado.
    
-  Contador de programa: esta información indica la dirección de memoria de la próxima instrucción que debe ejecutar el proceso.
    
-  Prioridad del proceso: la prioridad del proceso se utiliza para la planificación del procesador y se almacena en el PCB.
    
## 9. Describa un modelo de comunicacion Cliente-Servidor
El modelo cliente-servidor regula la interacción entre el cliente y el servidor mediante tareas rutinarias como el envío de peticiones HTTP a servidores web o la transferencia de archivos por FTP son casos de uso típicos en el cual el  servidor es el responsable de proporcionar los servicios; Se encarga de ejecutar los servicios solicitados y entrega la respuesta esperada. El cliente, en cambio, utiliza y solicita los servicios proporcionados. En esta arquitectura el cliente suele ser estaciones de trabajo que solicitan varios servicios al servidor, mientras que un servidor es una máquina que actúa como depósito de datos y funciona como un sistema gestor de base de datos, este se encarga de dar la respuesta demandada por el cliente.

