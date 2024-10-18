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
7. [Modo Claro y Oscuro](#modo-claro-y-oscuro)  
8. [Contribución](#contribución)  
9. [Licencia](#licencia)  
10. [Contacto](#contacto)  

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


