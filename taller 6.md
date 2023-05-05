# Taller 6
#### Esteban David Florez 2191940
## 1) Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo 

1.  Operaciones con muchas entradas y salidas: Si una aplicación realiza muchas operaciones de entrada/salida como lecturas y escrituras de archivos o conexiones de red, los hilos adicionales pueden no proporcionar una mejora significativa en el rendimiento. Esto se debe a que la mayor parte del tiempo de ejecución se gasta esperando a que se completen las operaciones de E/S, y no se puede hacer nada más mientras tanto.

2.  Cálculo de una tarea secuencial: Si una tarea debe realizarse de manera secuencial, es posible que agregar hilos adicionales no proporcione una mejora significativa en el rendimiento. Por ejemplo, si se trata de una tarea matemática que depende del resultado anterior, agregar hilos adicionales no mejorará el rendimiento, ya que cada hilo debe esperar a que se complete el hilo anterior antes de continuar con su tarea. En este caso, la mejor solución puede ser optimizar el algoritmo o el código para que sea más eficiente en un solo hilo, en lugar de agregar hilos adicionales.
## 2) . Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario
1.   La biblioteca de hilos mantiene un estado para cada hilo, en el cual incluye información como el valor de los registros de la CPU, la pila de llamadas y la tabla de variables. Este estado se almacena en una estructura de datos, como un bloque de control de contexto, que se utiliza para cambiar entre hilos.
    
2.  La biblioteca de hilos interrumpe el hilo actual en el momento en que se produce un evento, como una llamada de sistema, una operación de E/S o un temporizador. Cuando se produce este evento, la biblioteca de hilos guarda el estado de contexto del hilo actual en la estructura de datos de contexto.
    
3.  Después de esto la biblioteca de hilos selecciona el siguiente hilo a ejecutar y restaura su estado de contexto desde la estructura de datos de contexto. Este hilo se convierte en el hilo actual y se reanuda su ejecución desde el punto en que se interrumpió.
    
4.  realiza la transición del hilo al cambiar el estado de la CPU para que se ejecute en el nuevo hilo seleccionado. La transición del hilo se completa cuando el nuevo hilo se reanuda y continúa su ejecución.
## 3) Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

Cada hilo en un proceso multihilo tiene su propia pila de llamadas y registros de la CPU, donde almacena valores actuales de los registros de la CPU para ese hilo en particular. Cuando se produce una transición de hilo los valores de los registros de la CPU se cambian

En un entorno multihilo, cada hilo puede ejecutarse de manera independiente y, por lo tanto, es posible que cada hilo tenga su propia versión del estado del programa. Cada hilo puede modificar los valores de sus propios registros de la CPU y acceder a los datos en su propia pila de llamadas. por lo tanto, los valores de los registros de la CPU no se comparten entre hilos y son específicos de cada hilo individual.  aunque, puede haber algunas excepciones en las que los valores de los registros de la CPU se comparten entre hilos. Por ejemplo, en algunas arquitecturas de procesadores, puede haber registros de propósito general que se comparten entre todos los hilos en el procesador. En estos casos, los hilos pueden acceder y modificar los valores de estos registros compartidos. Pero en general, en un proceso multihilo, los valores de los registros de la CPU se mantienen separados para cada hilo individual.
## 4)  Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? Si, no y porqué?
En un proceso multihilo, los cúmulos de memoria no se comparten automáticamente entre los hilos. Cada hilo en un proceso multihilo tiene su propio conjunto de registros de la CPU, pila de llamadas y datos en el cúmulo de memoria.

Cuando un hilo realiza una operación de escritura en el cúmulo de memoria, los cambios no se propagan automáticamente a los otros hilos. Si otro hilo necesita acceder a los mismos datos, debe leer los datos actualizados del cúmulo de memoria.
## 5) Las variables globales se comparten entre los hilos de un proceso multihilo? Si, no y porqué?
Sí, este tipo de variables se declaran fuera de cualquier función o bloque y están disponibles para todos los hilos en el proceso. Cuando se modifica el valor de una variable global en uno de los hilos, el cambio se refleja en el valor de la variable para todos los demás hilos en el proceso, pero si varios hilos intentan acceder y modificar una variable global al mismo tiempo, puede haber problemas de concurrencia y de acceso concurrente a la variable global
## 6) La memoria de pila se comparten entre los hilos de un proceso multihilo? Si, no y porqué?
La memoria de pila no se comparte entre los hilos de un proceso multihilo. Cada hilo tiene su propia pila de llamadas y memoria de pila que se utiliza para almacenar variables locales y argumentos de función.
## 7) En que ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador.

esto se puede dar en un sistema monoprocesador y se obtienen un mejor rendimiento en procesos como:

1.  cuando se realiza una tarea de procesamiento intensivo y no está limitada por la velocidad de procesamiento de la CPU, la solución multihilo puede aprovechar al máximo los recursos de la CPU. En este caso, la tarea se divide en múltiples subprocesos que se ejecutan en paralelo en diferentes núcleos de la CPU
   
2.  Aplicaciones de servidor: Las aplicaciones de servidor como servidores web, bases de datos, servidores de archivos, etc. suelen tener una gran cantidad de solicitudes simultáneas de diferentes clientes. En este caso, la solución multihilo puede permitir que múltiples solicitudes se procesen en paralelo, lo que mejora la capacidad de respuesta y el rendimiento del sistema.
## 8) Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?
Sí, esto debido a que en un sistema multiprocesador, hay varios procesadores que pueden ejecutar diferentes hilos de forma simultánea y paralela, lo que permite una mayor capacidad de procesamiento y una mayor velocidad de ejecución. Cuando se ejecuta una solución multihilo en un sistema multiprocesador, los diferentes hilos se distribuyen entre los diferentes procesadores, lo que permite que varios hilos se ejecuten en paralelo.
## 9) Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores
si esto sucede, el rendimiento del sistema puede verse afectado negativamente debido a que los hilos de usuario adicionales tendrán que competir por los recursos limitados de la CPU, lo que puede llevar a la ejecución de hilos menos eficiente y un mayor tiempo de espera, también se puede presentar que varios hilos de usuario estén tratando de acceder a los mismos recursos, lo que puede resultar en cuellos de botella y esperas. 
