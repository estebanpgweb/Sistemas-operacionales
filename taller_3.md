# taller #3

## 1.  En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad
- **menciones dos problemas y expliquelos**
     - *vulnerabilidad a ataques de malware:* En los entornos compartidos, el riesgo de que los usuarios descarguen, compartan y ejecuten archivos maliciosos es mayor, también hay la posibilidad de que al no actulizar los programas y sistemas operativos, queden brechas de seguridad por las cuales los ciberdelicuentes aprovechen para acceder al sistema.
     - *violación a la privacidad de los usuarios:* los usuarios pueden acceder accidentalmente a los archivos o correos electronicos de los otros usuarios, o los administradores del sistema pueden tener acceso a la información personal o confidencial de los usuarios sin su conocimiento.
- **Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un sistema dedicado. Explique su respuesta:** 
 No se puede asegur con certeza que siempre sea posible, en los sistemas compratidos es dificil dar garantia de que los usuarios implementen buenas practicas de seguridad y se usen medidad de seguridad concistente, y cualquier falla en uno de los sistemas de los usuarios puede afectar a todos los otros usuarios que hagan parte del sistema. En los sistemas dedicados la medidas de seguridad son mas faciles de implementar y mantener, debido a que solo exite un usuario o grupo de usuarios que buscan acceder al sistema y los riesgos de seguridad son mas faciles de controlar y limitar.
 
## 2. un problema comun en los OS es la utilizacion de recursos. enumere los recursos de deben gestionarse en las siguientes maquinas (explique por que)

- **sistemas embebidos:** carecen de seguridad ya que son para amplio acceso por lo que se ve comprometida la informacion confiada en ellos en ciertas ocasiones que se de un uso malintenconado
- **mainframe:** dependiendo del tipo de maquina, puede haber recursos de hardware especificos que deben gestionarse adecuadamente por ejemplo las tarjetas graficas o los dispositivos de entrada/salida
- **server:** este desde el punto de vista energetico 
-**mobile:**-   Los dispositivos móviles, como teléfonos inteligentes y tabletas, tienen recursos limitados en términos de CPU, memoria y almacenamiento. Es importante gestionar adecuadamente estos recursos para garantizar que el sistema funcione de manera eficiente y que la duración de la batería sea adecuada. Además, es importante gestionar adecuadamente la seguridad y el acceso para garantizar que los datos estén protegidos en caso de pérdida o robo del dispositivo.

## 3.  Caracterice dos casos de uso para implementar un OS para servidor y PC.
- **servidores de aplicaciones:**
Los servidores de aplicaciones son sistemas que ejecutan aplicaciones empresariales críticas, como aplicaciones de gestión de relaciones con clientes (CRM), software de gestión de la cadena de suministro (SCM), software de gestión de recursos empresariales (ERP) y software de gestión de bases de datos. En este caso de uso, se necesita un OS para servidor que proporcione una plataforma estable y segura para ejecutar estas aplicaciones críticas y garantizar la disponibilidad y el rendimiento de la aplicación.
- **Estaciones de trabajo para diseño gráfico y edición de video:** Las estaciones de trabajo para diseño gráfico y edición de video requieren un OS para PC que sea capaz de manejar tareas de procesamiento intensivas. En este caso de uso, se necesita un OS para PC que proporcione una plataforma estable y capaz de manejar grandes archivos y aplicaciones pesadas. El OS debe ser compatible con herramientas de software específicas para diseño gráfico y edición de video, como Adobe Photoshop y Final Cut Pro, y debe ser capaz de gestionar adecuadamente los recursos de hardware, como la tarjeta gráfica, la CPU y la memoria.

## 4. Compare las diferencias entre multiprocesamiento simétrico y asimétrico.

-   Velocidad de reloj y capacidad de memoria: en un sistema SMP, todos los procesadores tienen la misma velocidad de reloj y capacidad de memoria, mientras que en un sistema AMP, los procesadores pueden tener diferentes velocidades de reloj y capacidades de memoria.
-   Acceso a recursos: en un sistema SMP, todos los procesadores tienen acceso igualitario a los recursos del sistema, mientras que en un sistema AMP, los procesadores tienen funciones específicas y diferentes niveles de acceso a los recursos.
- Distribución de carga de trabajo: en un sistema SMP, la carga de trabajo se distribuye de manera uniforme entre los procesadores, mientras que en un sistema AMP, cada procesador tiene una tarea específica.
## 5 .Enumere los requerimientos para que dos maquinas se junten en un cluster y provean un servicio de alta disponibilidad (HA)
1.  Hardware compatible: Las máquinas del clúster deben ser compatibles en cuanto a hardware para que funcionen juntas. Esto incluye aspectos como la arquitectura de la CPU, la cantidad y tipo de memoria RAM, la capacidad de almacenamiento y la velocidad de red.
    
2.  Sistema operativo y software compatibles: Todas las máquinas del clúster deben estar ejecutando el mismo sistema operativo y tener instalado el software necesario para proporcionar el servicio HA. Esto incluye software de clustering y herramientas para compartir recursos y balancear la carga de trabajo.
    
3.  Conexión de red redundante: Es importante tener una conexión de red redundante para evitar puntos únicos de falla. Las máquinas del clúster deben estar conectadas a una red de alta velocidad y disponer de una conexión de red secundaria como medida de contingencia.
    
4.  Recursos compartidos: Los recursos, como el almacenamiento y la memoria, deben estar compartidos entre las máquinas del clúster para garantizar la disponibilidad continua del servicio. Es necesario utilizar herramientas para gestionar y sincronizar el acceso a los recursos compartidos.
    
5.  Monitoreo y gestión del clúster: Es importante contar con herramientas para monitorear el estado del clúster, identificar y resolver problemas, y realizar la gestión de los recursos compartidos. Esto ayuda a garantizar la disponibilidad y confiabilidad del servicio HA.
    
6.  Plan de recuperación ante desastres: Es necesario contar con un plan de recuperación ante desastres en caso de que falle una máquina o recurso del clúster. Esto incluye la configuración de copias de seguridad y medidas para la recuperación en caso de fallos en el hardware o software del clúster.

## 6. Compare las diferencias entre una excepción y una interrupción.

Las interrupciones son señales externas que provienen de dispositivos de hardware, las excepciones son señales internas que indican que se ha producido un error o una condición inesperada en el programa. Además, el manejo y la causa de ambas son diferentes, y las interrupciones son generalmente manejadas por el sistema operativo, mientras que las excepciones son manejadas por el propio programa.
-   Origen: Una interrupción es una señal externa que proviene de un dispositivo de hardware, como un temporizador, una tarjeta de red o un dispositivo de entrada/salida. En cambio, una excepción es una señal interna que proviene del propio software, como una violación de acceso a memoria, una operación ilegal o una división por cero.
    
-   Momento de ocurrencia: Las interrupciones ocurren en cualquier momento, independientemente del flujo de ejecución del programa, mientras que las excepciones se producen durante la ejecución normal del programa.
    
-   Manejo: El manejo de una interrupción implica suspender temporalmente la ejecución del programa para atender la interrupción, mientras que el manejo de una excepción implica capturar la excepción, tomar medidas para corregir el problema (si es posible) y continuar con la ejecución normal del programa.

# 7. El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la CPU

- **¿Como interactuá la CPU con el dispositivo para coordinar la transferencia?**
   -   La CPU programa el controlador de DMA indicando la dirección de memoria donde se deben almacenar los datos, la dirección de memoria donde se encuentran los datos a transferir y la cantidad de datos que se deben transferir. A continuación, el controlador de DMA se encarga de controlar el acceso al bus del sistema y transferir los datos entre el dispositivo de entrada/salida y la memoria.
   -    Durante la transferencia de datos, la CPU se mantiene informada sobre el progreso de la transferencia a través de señales de interrupción o mediante la lectura del estado del controlador de DMA. Una vez que se completa la transferencia, el controlador de DMA emite una señal de interrupción para notificar a la CPU que la operación de transferencia ha finalizado. La CPU puede entonces procesar los datos transferidos y continuar con su trabajo normal.
 - **¿Como sabe la CPU que las operaciones de memoria se han completado?**
   -   En el caso de operaciones de memoria que no involucren el uso de DMA, la CPU es responsable de acceder a la memoria y realizar las operaciones de lectura o escritura necesarias. La CPU espera a que la operación de memoria se complete antes de continuar con la ejecución de instrucciones. Esto se logra a través del uso de señales de control de memoria, como el bit de espera (wait) o el bit de listo (ready) en el bus de memoria. Cuando la operación de memoria está en curso, el dispositivo de memoria establece el bit de espera, lo que indica a la CPU que debe esperar antes de continuar. Cuando la operación de memoria se completa, el dispositivo establece el bit de listo, lo que indica a la CPU que la operación ha finalizado.
   -   En el caso de operaciones de memoria que involucren el uso de DMA, la CPU programa el controlador de DMA para realizar las operaciones de transferencia de datos, y se mantiene informada sobre el progreso de la transferencia a través de señales de interrupción o mediante la lectura del estado del controlador de DMA. Una vez que se completa la transferencia, el controlador de DMA emite una señal de interrupción para notificar a la CPU que la operación de transferencia ha finalizado.
## 8.  Identifique dos razones por las que la cache es útil. ¿Que problemas resuelve y causa?
 -  Reducción de tiempos de acceso a memoria: La cache permite acceder a los datos de manera más rápida que si se accediera directamente desde la memoria principal. Como la cache es un tipo de memoria de alta velocidad que se encuentra más cerca de la CPU que la memoria principal, el tiempo de acceso a los datos es menor, lo que acelera la ejecución de los programas.
    
-  Reducción de la carga en el bus de memoria: Al reducir el número de accesos a la memoria principal, la cache también reduce la carga en el bus de memoria. Esto significa que los recursos del sistema se utilizan de manera más eficiente, ya que se reduce el número de ciclos de bus y se evita la congestión del bus.

