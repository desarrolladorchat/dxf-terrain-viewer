# Terreno DXF

Visor local 2D/3D para archivos DXF ASCII. No requiere instalar paquetes ni conexión a internet.

Incluye identidad visual de Transmission Line, favicon oficial y una interfaz adaptable para escritorio, tablet y móvil con controles táctiles.

## Uso

1. Ejecute `iniciar.bat` (requiere Node.js) para abrir el ejemplo incluido automáticamente.
2. También puede abrir `index.html` directamente: Panul se mostrará automáticamente y podrá seleccionar o arrastrar cualquier otro DXF.

La superficie 3D se interpola a partir de las cotas de los vértices. El control de exageración vertical permite destacar relieves suaves.

Incluye los planos Panul y Navidad en formato DXF 2018 / AC1032. El visor detecta y muestra automáticamente la versión de cada archivo cargado.

Los ejemplos están incorporados en la página para que funcionen también al abrir el HTML directamente, sin servidor ni conexión a internet.

## Docker

El contenedor utiliza Nginx sin privilegios y escucha internamente en el puerto `8080`. Por defecto, Docker publica el visor en el puerto `8188` del VPS, sin ocupar `80`, `443`, `3010` ni `8090`.

```bash
docker compose up -d --build
```

Para elegir otro puerto sin editar archivos:

```bash
DXF_VIEWER_PORT=8288 docker compose up -d --build
```

Luego abra `http://IP-DEL-VPS:8188`. En Hostinger Docker Manager puede definir la variable `DXF_VIEWER_PORT` antes de desplegar.
