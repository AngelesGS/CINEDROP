# CineDrop - App Móvil de Gestión Cinematográfica

> Aplicación nativa Android para explorar, gestionar y organizar colecciones cinematográficas mediante consumo de servicios web RESTful.

---

## Descripción del Proyecto

**CineDrop** es una plataforma móvil desarrollada como proyecto académico para la materia de *Programación de Dispositivos Móviles* en la **Facultad de Ciencias de la Computación (BUAP)**[cite: 1]. 

El objetivo principal es resolver la dispersión de información sobre catálogos de películas, ofreciendo una experiencia de usuario fluida, limpia y moderna en dispositivos Android mediante el consumo de API REST en tiempo real[cite: 1].

---

## Características Principales

* **Autenticación y Seguridad:** Registro e inicio de sesión de usuarios con verificación de cuenta vía código enviado por correo electrónico y gestión de sesiones mediante tokens **JWT**[cite: 1].
* **Exploración de Catálogo:** Búsqueda y filtrado de películas organizadas por géneros (Acción, Terror, Comedia, Suspenso, etc.)[cite: 1].
* **Mi Colección (Favoritos):** Sección personalizada para guardar películas favoritas[cite: 1].
* **Gestión de Perfil:** Edición de datos de usuario y soporte técnico directo desde la aplicación[cite: 1].
* **Interfaz Moderna:** Diseño adaptable con soporte para tema oscuro utilizando componentes avanzados de UI (`RecyclerView`, `CardView`, `BottomNavigationView`)[cite: 1].

---

## Arquitectura y Tecnologías

El proyecto sigue un modelo **Cliente-Servidor**[cite: 1] compuesto por:

### **Cliente (Android - Frontend Móvil)**
* **Lenguaje:** Java[cite: 1]
* **SDK:** Android SDK[cite: 1]
* **Red / API:** [Retrofit](https://square.github.io/retrofit/) para peticiones HTTP/RESTful[cite: 1]
* **Carga de Imágenes:** [Glide](https://github.com/bumptech/glide) para carga asíncrona de portadas[cite: 1]
* **UI Components:** `RecyclerView`, `CardView`, `BottomNavigationView`[cite: 1]

### **Servidor & Base de Datos (Backend)**
* **Servidor Web:** Apache / MySQL a través de **XAMPP**[cite: 1]
* **Base de Datos:** MySQL (`cinedrop_db`)[cite: 1]
* **Seguridad:** Autenticación por Tokens JWT[cite: 1]

---

## Modelo de Base de Datos

El sistema relacional consta de las siguientes entidades principales[cite: 1]:
* `usuario`: Registro de usuarios, contraseñas encriptadas, tokens de verificación y estado[cite: 1].
* `pelicula`: Almacena información detallada del catálogo, enlaces a portadas, videos y géneros[cite: 1].
* `genero`: Catálogo de clasificaciones (Acción, Terror, etc.)[cite: 1].
* `favoritos`: Tabla relacional entre usuarios y películas marcadas como favoritas[cite: 1].

---
## Instalación y Configuración Local

### **Prerrequisitos**
* Android Studio (versión reciente).
* Java Development Kit (JDK 11+).
* [XAMPP](https://www.apachefriends.org/) (Apache y MySQL)[cite: 1].

### **Pasos:**

1. **Clonar el repositorio:**
   ```bash
   git clone [https://github.com/AngelesGS/CineDrop.git](https://github.com/AngelesGS/CineDrop.git)
