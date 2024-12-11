# Dynamic IP Changer: An Invisible Gateway to the Internet

## Introduction

**`Dynamic IP Changer`** is an advanced tool designed to offer anonymity and privacy when browsing the internet. Harness the power of **`Tor`** and **`Tornet`** to dynamically change your IP address, allowing you to remain invisible while browsing, downloading or performing any online activity.

This solution is ideal for those who want to protect their identity, avoid tracking, or access location-restricted content.

---

## Characteristics

- 🌍 **`Total Anonymity`**: Automatically change your IP address at user-defined intervals.
- ⚡ **`Easy to Configure`**: Automatically configure `Tor` and Tornet on your system.
- 🔄 **`Dynamic Update`**: Define the time interval to change your `IP` according to your needs.
- 🛡️ **`DNS Protection`**: `SOCKS v5` proxy configuration to ensure `DNS` requests pass through `Tor`.
- 🖥️ **`Integration with Firefox`**: Clear instructions to configure your browser and start browsing safely.

---

## Facility

The tool automatically checks for necessary requirements and installs them if they are not available. However, before you begin, make sure you have access to a `Linux`-based distribution (e.g. `Kali Linux`).

### Installation Steps:

1. Clone the repository and access the tool directory.
2. Run the main script:

```bash
bash dynamicIP.sh
```

Follow the instructions on the screen. The tool will configure:
`Tor`: to redirect your traffic.
`Tornet`: to manage the dynamic change of `IP`.
Configuring `Firefox` to Use `Tor`

To browse anonymously using Firefox, configure Tor's `SOCKS` proxy by following these steps:

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

## Use

Run the tool:

```bash
bash dynamicIP.sh
```

### During execution, the script:

You will configure the necessary components.
It will ask you for the time interval in seconds to dynamically change your `IP`.
It will start changing your `IP` automatically.
Browse with confidence and anonymity.

### Advantages of `Dynamic IP Changer`

`Invisibility`: Changing your `IP` periodically makes your online activity harder to track.
`Global Access`: Bypass geographic restrictions by accessing content blocked in your location.
`Enhanced Privacy`: Protect your identity against trackers, advertisers and potential third-party threats.
`Easy Integration`: Works perfectly with browsers configured to use `Tor`.

## Notes

This tool is designed exclusively for personal and ethical use. Misuse may violate third party privacy laws or terms of service.
To maximize anonymity, always use a secure connection and avoid logging into services that might reveal your identity.

### Requirements

Operating System: `Linux`

### Tools Needed:

`Tor`

`Tornet` (will be installed automatically if not available)
`Python 3` (for virtual environments, if necessary)

### Practical Example

If you want to change your `IP` every 30 seconds:

Run the script:

```bash
bash dynamicIP.sh
```

Enter 30 as the time interval when prompted.

Configure `Firefox` following the instructions provided and start browsing with a new `IP` every half minute.

## Contributions

If you have ideas to improve this tool, feel free to contribute to the project. Anonymity online is a right, and together we can make it more accessible for everyone!

Maintain your privacy. Keep your freedom.
