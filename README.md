# **Rick and Morty App - Prueba Técnica Popoyán**  

> Proyecto solicitado como prueba técnica para la empresa **Popoyán**. Esta aplicación consume la API pública de Rick and Morty para listar personajes y mostrar sus detalles.



---

## **Índice**  
1. [Descripción General](#descripción-general)  
2. [Características](#características)  
3. [Arquitectura del Proyecto](#arquitectura-del-proyecto)  
4. [Instalación y Ejecución](#instalación-y-ejecución)  
5. [Uso de la App](#uso-de-la-app)  
6. [Tecnologías Utilizadas](#tecnologías-utilizadas)  


---

## **Descripción General**  
Este proyecto es una **aplicación móvil** desarrollada como parte de un proceso de selección técnica para la empresa **Popoyán**. La app permite consumir y mostrar los personajes de la serie **Rick and Morty**, listando los personajes y proporcionando detalles individuales sobre cada uno. 

La app ha sido diseñada para ser **responsiva**, soportando tanto dispositivos **móviles** como **tabletas**, y se ha implementado la funcionalidad de **tema claro y oscuro** para mejorar la experiencia de usuario.

---

## **Características**  
- 📋 **Listado de personajes** 
- 📱 **Diseño adaptativo** para tabletas y móviles.  
- 🌗 **Tema claro y oscuro** configurable automáticamente.  
- 🛠️ Aplicación de **Clean Architecture** para mantener un código limpio y modular.  

---

## **Arquitectura del Proyecto**  
Se implementó  **Clean Architecture** a pesar del tamaño reducido del proyecto para asegurar:  
- Un **código mantenible** y fácil de escalar.  
- Separación clara entre **dominio**, **presentación** y **datos**.   

**Estructura del Proyecto:**  
- `feature/characters/domain`: Entidades y casos de uso.  
- `feature/characters/data`: Implementación de la API y repositorios.  
- `feature/characters/presenter`: Pantallas y widgets para la UI.  

---

## **Instalación y Ejecución**
1. **Clona el repositorio**
```bash
git clone https://github.com/funkai13/prueba_tecnica_popoyan.git
```
2. **Instala las Dependencias**
   ```bash
   flutter pub get
   ```
3. **Ejecuta la App**
   ```bash
   flutter run
   ```
## **Uso de la App**
1. Al abrir la app, verás una lista completa de personajes de Rick and Morty.
<div align="center">
  <img src="https://i.ibb.co/YtYV37t/Screenshot-20241018-105248.png" alt="pagina inicial" height="500"/>
</div>

3. Toca un personaje para ver más detalles.
<div align="center">
  <img src="https://i.ibb.co/gMZzh5v/details-page.png" alt="pagina de detalles" height="500"/>
</div>
5. Prueba la app en modo claro y oscuro para ver el cambio automático de tema.
  <div>
  <img src="https://i.ibb.co/1Lg8zFb/initial-page-white.png" alt="pagina inicial claro" height="500"/>
  <img src="https://i.ibb.co/gZ7Xf6g/details-page-white.png" alt="pagina detalles claro" height="500"/>
  <img src="https://i.ibb.co/YtYV37t/Screenshot-20241018-105248.png" alt="pagina inicial oscuro" height="500"/>
  <img src="https://i.ibb.co/gMZzh5v/details-page.png" alt="pagina de detalles oscuro" height="500"/>
  </div>

6. La interfaz se adapta automáticamente entre móvil y tableta.

   6.1 Vistas de tableta Vertical
     <div>
       <img src="https://i.ibb.co/xzRQHkG/initial-page-tablet.png" alt="pagina inicial tablet" height="500"/>
       <img src="https://i.ibb.co/dfzsQZ2/details-page-tablet.png" alt="pagina detalles tablet" height="500"/>
     </div>

     6.2 Vistas de tableta Horizontal
     <div>
       <img src="https://i.ibb.co/JyyCG8F/initial-page-lanscape-tablet.png" alt="pagina inicial tablet horizontal" height="500"/>
       <img src="https://i.ibb.co/31LJqVV/details-page-landscape-tablet.png" alt="pagina detalles tablet horizontal" height="500"/>
     </div>

## **Tecnologías Utilizadas**
- Flutter para la interfaz de usuario.
- Dart como lenguaje principal.
- Rick and Morty API para la obtención de datos.
- Riverpod para la gestión de estados.
- Clean Architecture para la estructura del código.
- GitHub para control de versiones.
