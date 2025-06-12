
# Python Flask CI/CD Demo with Docker, SonarQube, Azure DevOps & Kubernetes

## Descripción

Este proyecto es una demostración de CI/CD para una aplicación Python Flask, integrando análisis de calidad con SonarQube, construcción y despliegue de imágenes Docker, ejecución de scripts en pipeline, y despliegue automatizado en Kubernetes (Minikube). El pipeline está orquestado desde Azure DevOps y utiliza infraestructura autogestionada.

## Despliegue usando Azure DevOps

1. **Configura tu agente self-hosted** en Azure DevOps y asegúrate de que tenga Docker, kubectl, Python y acceso a tu clúster Kubernetes (Minikube o AKS).

2. **Configura las variables necesarias** en Azure DevOps (token de SonarQube).

3. **Ejecuta el pipeline**:
   - El pipeline (`azure-pipelines.yaml`) realiza automáticamente:
     - Análisis de calidad con SonarQube.
     - Build y push de la imagen Docker.
     - Ejecución de scripts de prueba.
     - Despliegue de la aplicación en Kubernetes usando los manifiestos de la carpeta `environment/`.

4. **Verifica el despliegue**:
   - Usa `kubectl get all` para ver los recursos creados.
   - Si usas Minikube, ejecuta `minikube service python-app --url` para obtener el endpoint.
   - Si tienes Ingress, accede a la URL configurada en el manifiesto de ingress.


## Notas

- Todos los manifiestos de Kubernetes están en la carpeta `environment/`.
- Puedes adaptar los manifiestos para tu entorno (Minikube, AKS, etc).
- Para el análisis de SonarQube, asegúrate de tener una instancia accesible desde el agente.
