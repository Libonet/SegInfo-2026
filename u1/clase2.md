# U2. Confidencialidad en sistemas de cómputo.

## Caballos de troya (C.T)
(programa que aparenta ser útil pero esconde funciones de ataque)

- Cómo preservar un secreto en un sistema de cómputo?
- Cómo evitar el espionaje informático?

Seguridad en sistemas operativos. Es tan difícil?
Ningún S.O. de uso masivo puede evitar ataques que usen caballos de Troya.

- El atacante desarrolla el CT. 
- Logra instalarlo en el sistema que quiere atacar.
- Un usuario (U) con acceso al secreto ejecuta CT.
- CT lee el secreto y lo escribe en un objeto al cual el atacante tiene acceso.


El problema está en el diseño del SO. No es un error de programación ni de 
configuración.
El sistema de permisos no es suficientemente fuerte como para defenderse de CTs.
Los SO populares tienen un mecanismo de control de acceso que se denomina 
"control de acceso discrecional" (DAC) porque parte de la política de seguridad 
la pueden definir los usuarios ordinarios.
Parte de la política de seguridad a discreción de los usuarios ordinarios.

Parte de la política de seguridad queda a discreción de los usuarios ordinarios.
Los usuarios ordinarios tienen la capacidad de dar, revocar, y modificar 
permisos de ciertos objetos.
DAC conceptualmente hay una matriz de control de acceso.
Usualmente la matriz se implementa como listas de control de acceso (ACL)

ACL(o2) = \[ s2 |-> {r,w,c}, s5 |-> {r,w,c}, s6 |-> {r,w} \]
ACL(o1) = \[ s1 |-> {r,w,c}, s3 |-> {r,c} \]

UNIX implementa ACL muy restringidas.
ACL(o) = \[ u |-> {...}, g |-> {...}, o |-> {...} \]
            dueño,       grupo,       otros,

SO o a nivel de ciertas aplicaciones (DBMS)

## Seguridad multi-nivel (MLS)

Política de confidencialidad (o seguridad) del gobierno de EE.UU.
Departamento de Defensa (DoD)
Departamento de Estado
60-70
Seguridad de grado militar.

### Politica MLS

- Cada documento y cada persona tienen asignada una clase de acceso o 
de seguridad.
- Cada clase de acceso es un par ordenado 
$$(n, C)$$
donde n se llama nivel de seguridad y C conjunto de categorías (need-to-know).
$n \in$ \{ unclassified < confidential < secret < top secret \}
-  

Despues seguimos con la unidad 2.2 entera.
