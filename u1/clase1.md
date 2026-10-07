# Introducción

Definición de SegInfo.
- Confidencialidad
- Integridad
- Disponibilidad

Confidencialidad:
Sólo usuarios autorizados pueden leer datos.

Integridad:
Sólo usuarios autorizados __y sólo por los medios autorizados__ 
pueden modificar datos.

Disponibilidad:
Los usuarios autorizados pueden usar datos y programas siempre que lo necesiten.

Estas definiciones hacen uso de las palabras 'usuarios', 'datos', 'programas'.
Esto muchas veces se abstrae hablando de 2 conceptos: 'sujetos' y 'objetos'.

Los sujetos son un subconjunto de los objetos.  
Los sujetos son entidades activas que pueden acceder información o programas.

Una persona (o usuario) es un sujeto, un proceso o una computadora también.

Los objetos son sujetos o bien un contenedor de datos 
(archivo, directorio, socket).

Ejemplo: Sistema de sueldos

Empleado | Sueldo
x        | 100
y        | 2000
z        | 3000

El gerente de RRHH tiene acceso. Supongamos que inadvertidamente le aumenta el 
sueldo a y, un subordinado de z, así:

Empleado | Sueldo
x        | 100
y        | 200000
z        | 3000

Terminaría ganando más que su jefe. Para evitar eso:

Gerente de RRHH:
Autorizado a modificar sueldos __sólo usando las rutinas correspondientes del 
sistema de sueldos__

GRAN PARTE DEL APUNTE ESTÁ ORIENTADO A __CONFIDENCIALIDAD__
Hay mucho menos de Integridad.
__NADA__ de disponibilidad.

Preservar confidencialidad e integridad es fundamentalmente distinto de preservar
disponibilidad.

Para preservar la confidencialidad e integridad se tiene que restringir el uso 
del sistema.

Para la disponibilidad se tiene que permitir el uso del sistema.

Para la seguridad informática:

Universo hostil, malicioso. Hay adversarios, amenazas, vulnerabilidades 
(errores en el software), ataques.

usuario y atacante pueden ser los mismos.

La ingeniería de software se hace pensando en un universo benigno.

## Safety y security

Safety y security significan "seguridad", pero la primera está asociada al 
universo benigno, y la segunda al hostil.

Puedo tener un programa:

Safety-correcto o Security-correcto.

# Ingeniería de seguridad informática

- Principios
- Buenas prácticas
- Métodos
- Técnicas
- Herramientas

Logran desplegar sistemas con un grado o nivel razonable de seguridad.
Esto no garantiza tener:

Seguridad perfecta.
Sistema totalmente seguro.

> La seguridad informática es un proceso, no un producto  
B. Schneider

Producto: Antivirus.

Proceso: Está actualizado? Está instalado en todas las computadoras? 
Está corriendo en todas las computadoras?

Sólo con el antivirus, si queda desactualizado podés recibir un ataque.

# AAA

Autenticación, autorización, auditoría (aaa)

Autenticación tiene un paso previo:  
Identificación -> Proveer una identidad: nombre y apellido, DNI, Cara, etc...

Autenticación es entonces corroborar la identidad pretendida.

Login: nombre de usuario, contraseña

Se presentan credenciales de acceso.

Credenciales de acceso -> Factores de autenticación:
- Algo que se sabe: Contraseña
- Algo que se tiene: Tarjeta
- Algo que se es: Huella dactilar.

Cuantos más factores mejor es el mecanismo de autenticación pero también es 
más costoso y engorroso.

Autorización -> Control de acceso -> Autoriza o no al sujeto a acceder a un 
cierto recurso del sistema.

Control de acceso -> Permisos, derechos, o modos de acceso.

Sujeto solicita acceso a un recurso en o con un cierto modo de acceso. Este 
modo de acceso en general es (read, write, append, control. Usualmente se usan 
read y write. Append es un tipo de write. Control permite modificar los 
derechos de acceso a un recurso)

Ejemplo: Control de acceso en UNIX.

Procesos (sujetos) solicitan acceso a archivos (objetos). Hay permisos r,w,x. 
Hay grupos de usuarios.

Permiso de control -> Dueño del recurso -> chmod.

Dueño grupo resto
rw-    r--   r--

Ejemplo: Control de acceso basado en roles.

Algunos DBMS tienen esto.

Auditoría:
- Registrar o mantener una bitácora de auditoría.
- Analizar la bitácora de auditoría.

## Seguridad de un sistema de cómputo

Interna: Seguridad del software y hardware que sirven para proteger
la información.

Externa: Controles que el software no puede realizar por sí solo -> Seguridad 
física. Investigación del personal.

Hipótesis de seguridad: La organización confía en que los usuarios no 
divulgarán, dañarán, o harán indisponible la información a la que están
autorizados.

Software:
(1-10%)
- Confiable: Responsable de implementar la política de seguridad. Una falla 
compromete al sistema.
- Benigno: Usa privilegios especiales. Los errores son involuntarios o 
accidentales.
(90-99%)
- Hostil: Origen desconocido. Posible vector de ataque.

Benigno y hostil -> No confiable -> Caballo de Troya. Un programa 
aparentemente útil, pero que oculta funciones de ataque.

Casi cualquier programa debería ser considerado un Caballo de Troya.

Empresa -> Reconocimiento de patrones en bases de datos. Planilla de cálculo.

Si estos datos son secretos/valiosos, hay que considerar qué pasaría si este 
software es un Caballo de Troya.

