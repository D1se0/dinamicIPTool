# Dynamic IP Changer: An Invisible Gateway to the Internet

## Introducción

**`Dynamic IP Changer`** es una herramienta avanzada diseñada para ofrecer anonimato y privacidad en la navegación por internet. Aprovecha la potencia de **`Tor`** y **`Tornet`** para cambiar dinámicamente tu dirección `IP`, permitiéndote permanecer invisible mientras navegas, descargas o realizas cualquier actividad en línea.

Esta solución es ideal para quienes desean proteger su identidad, evitar rastreos o acceder a contenido restringido por ubicación.

---

## Características

- 🌍 **`Anonimato Total`**: Cambia automáticamente tu dirección `IP` en intervalos definidos por el usuario.
- ⚡ **`Fácil de Configurar`**: Configura automáticamente `Tor` y Tornet en tu sistema.
- 🔄 **`Actualización Dinámica`**: Define el intervalo de tiempo para cambiar tu `IP` según tus necesidades.
- 🛡️ **`Protección DNS`**: Configuración de proxy `SOCKS v5` para asegurar que las solicitudes `DNS` pasen a través de `Tor`.
- 🖥️ **`Integración con Firefox`**: Instrucciones claras para configurar tu navegador y comenzar a navegar de manera segura.

---

## Instalación

La herramienta verifica automáticamente los requisitos necesarios y los instala si no están disponibles. Sin embargo, antes de comenzar, asegúrate de tener acceso a una distribución basada en `Linux` (por ejemplo, `Kali Linux`).

### Pasos de Instalación:

1. Clona el repositorio y accede al directorio de la herramienta.
2. Ejecuta el script principal:

```bash
bash dinamicIP.sh
```

Sigue las instrucciones en pantalla. La herramienta configurará:
`Tor`: para redirigir tu tráfico.
`Tornet`: para gestionar el cambio dinámico de `IP`.
Configuración de `Firefox` para Usar `Tor`

Para navegar con anonimato usando Firefox, configura el proxy `SOCKS` de Tor siguiendo estos pasos:

```
Escribe about:preferences en la barra de direcciones de Firefox.
Desplázate hasta Configuración de red y haz clic en Configuración....
En la ventana emergente:
Selecciona Configuración manual de proxy.
Introduce los siguientes datos:
Proxy SOCKS: 127.0.0.1
Puerto: 9050
Activa Proxy SOCKS v5.
Marca Hacer uso de DNS a través de SOCKS.
Haz clic en Aceptar para guardar los cambios.
```

## Uso

Ejecuta la herramienta:

```bash
bash dinamicIP.sh
```

### Durante la ejecución, el script:

Configurará los componentes necesarios.
Te pedirá el intervalo de tiempo en segundos para cambiar dinámicamente tu `IP`.
Comenzará a cambiar tu `IP` automáticamente.
Navega con confianza y anonimato.

### Ventajas de `Dynamic IP Changer`

`Invisibilidad`: Cambiar tu `IP` periódicamente hace que tu actividad en línea sea más difícil de rastrear.
`Acceso Global`: Evita restricciones geográficas accediendo a contenido bloqueado en tu ubicación.
`Privacidad Mejorada`: Protege tu identidad contra rastreadores, anunciantes y posibles amenazas de terceros.
`Fácil Integración`: Funciona perfectamente con navegadores configurados para utilizar `Tor`.

## Notas

Esta herramienta está diseñada exclusivamente para uso personal y ético. El mal uso puede violar las leyes de privacidad o términos de servicio de terceros.
Para maximizar el anonimato, utiliza siempre una conexión segura y evita iniciar sesión en servicios que puedan revelar tu identidad.

### Requisitos

Sistema Operativo: `Linux`

### Herramientas Necesarias:

`Tor`

`Tornet` (se instalará automáticamente si no está disponible)
`Python 3` (para entornos virtuales, si es necesario)

### Ejemplo Práctico

Si deseas cambiar tu `IP` cada 30 segundos:

Ejecuta el script:

```bash
bash dinamicIP.sh
```

Introduce 30 como intervalo de tiempo cuando se te solicite.

Configura `Firefox` siguiendo las instrucciones proporcionadas y comienza a navegar con una `IP` nueva cada medio minuto.

## Contribuciones

Si tienes ideas para mejorar esta herramienta, siéntete libre de contribuir al proyecto. ¡El anonimato en línea es un derecho, y juntos podemos hacerlo más accesible para todos!

Mantén tu privacidad. Mantén tu libertad.
