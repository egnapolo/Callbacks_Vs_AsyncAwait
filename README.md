# Callbacks_Vs_AsyncAwait
Dos enfoques diferentes para manejar la asincronía en la programación.

Callbacks 
=============
En el enfoque de callbacks, se pasa una función (callback) como argumento a una función asincrónica. 
Esta función de callback se ejecutará una vez que la operación asincrónica haya finalizado. El uso de callbacks permite controlar el flujo de ejecución y manejar el resultado o el error de la operación asincrónica. Sin embargo, cuando hay múltiples operaciones asincrónicas anidadas o complejas, el código puede volverse difícil de leer y mantener debido a la estructura de anidación de callbacks (callback hell).

La siguiente imagen es un claro ejemplo del uso de Callbacks. Puede comparar esta imagen con el archivo ViewModel.swift del repositorio, que hace uso del async await. 
  
![Callback](https://github.com/egnapolo/Callbacks_Vs_AsyncAwait/assets/47797458/698e93a4-f798-4f42-8b2f-1b97ec1e8db6)

  
Async/Await 
============= 
Async/Await es un enfoque más moderno y estructurado para manejar la asincronía en el código. En lugar de utilizar callbacks, se utilizan palabras clave `async` y `await`. `async` se coloca antes de una función para indicar que es una función asincrónica, y `await` se utiliza dentro de una función asincrónica para esperar la finalización de una operación asincrónica. La ventaja principal de Async/Await es que permite escribir código asincrónico de manera más secuencial y fácil de leer, sin anidar callbacks.

### La principal diferencia entre Callbacks y Async/Await 
radica en la forma en que se estructura y se escribe el código. Callbacks tiende a conducir a una estructura de código anidada y más compleja, mientras que Async/Await permite un código más secuencial y legible. Async/Await es especialmente útil cuando se manejan múltiples operaciones asincrónicas o cuando se requiere un flujo de control más claro en el código asincrónico.

**En resumen**, los Callbacks y Async/Await son enfoques para manejar la asincronía en la programación Swift. Los callbacks son una forma tradicional de manejar la asincronía mediante el paso de funciones de callback, mientras que Async/Await es un enfoque más moderno que permite escribir código asincrónico de manera secuencial y fácil de leer utilizando las palabras clave `async` y `await`.

Recuerde:
-------------
En programación, la asincronía se refiere a la capacidad de realizar tareas de forma independiente y no bloqueante. En lugar de esperar a que una tarea se complete antes de continuar con la siguiente, las tareas asincrónicas pueden ejecutarse simultáneamente o en segundo plano, lo que permite que el programa continúe su ejecución sin detenerse.
La asincronía es particularmente útil cuando se trabaja con operaciones que pueden llevar tiempo, como el acceso a bases de datos, llamadas a API, descarga de archivos o procesamiento intensivo. En lugar de bloquear la ejecución del programa mientras se espera que estas operaciones se completen, se pueden ejecutar de forma asincrónica, lo que permite que el programa continúe realizando otras tareas mientras se espera el resultado de la operación asincrónica.

La asincronía se implementa mediante la programación asincrónica, que utiliza técnicas como hilos de ejecución separados, programación concurrente, devolución de llamada (callbacks), promesas, async/await u otros mecanismos similares dependiendo del lenguaje de programación utilizado.
Cuando una tarea se ejecuta de forma asincrónica, el programa no espera de manera síncrona a que se complete, sino que continúa ejecutando otras tareas o se suscribe a un mecanismo para recibir una notificación cuando la tarea asincrónica haya finalizado. Esto permite una mayor eficiencia y capacidad de respuesta en la programación, especialmente cuando se trata de tareas que pueden llevar mucho tiempo o pueden bloquear la ejecución del programa de manera síncrona.
