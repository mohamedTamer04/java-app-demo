
# Java Hello World App - CI/CD Pipeline with GitHub Actions, Podman, and Minikube

This project demonstrates a simple Java application containerized with **Podman**, pushed to **Docker Hub**, and deployed to a local Kubernetes cluster using **Minikube**.  
A full **CI/CD pipeline** is set up using **GitHub Actions**.

---

## 📌 Project Overview

- **Application**: A basic Java app that prints "Hello World."
- **Containerization**: Built and pushed to **Docker Hub** using **Podman**.
- **CI/CD**: Implemented with **GitHub Actions**.
- **Deployment**: Deployed to **Minikube** Kubernetes cluster.

---

## ⚙️ Technologies Used

- Java
- Podman
- Docker Hub
- GitHub Actions
- Kubernetes (Minikube)
- SonarCloud (for static code analysis)

---

## 🚀 CI/CD Pipeline Breakdown

The GitHub Actions pipeline (`pipeline.yaml`) is triggered on:

- Push to `main` branch
- Pull request to `main` branch

The pipeline consists of three jobs:

1. **Test**
   - Checks out the code.
   - Performs static code analysis using **SonarCloud**.

2. **Build**
   - Installs **Podman**.
   - Builds the container image.
   - Logs in to **Docker Hub**.
   - Pushes the built image to the Docker Hub repository.

3. **Deploy**
   - Sets up and starts **Minikube**.
   - Applies Kubernetes deployment and service configuration using `kubectl`.
   - Verifies that the pods and services are running.

---

## 🐳 Docker Hub Image

- The built container image is hosted on Docker Hub:  
  [docker.io/mohamedeid123/java-hello-app:v1.5](https://hub.docker.com/r/mohamedeid123/java-hello-app)

---

## 🛠️ How to Run Locally

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name
   ```

2. Build and run the container using Podman:
   ```bash
   podman build -t java-hello-app .
   podman run java-hello-app
   ```

3. Or deploy it locally using Minikube and Kubernetes:
   ```bash
   minikube start
   kubectl apply -f Deployment-Service.yaml
   minikube service java-hello-service
   ```

---

## 📄 Project Files

- `src/Main.java`: Java source code
- `Deployment-Service.yaml`: Kubernetes deployment and service definitions
- `pipeline.yaml`: GitHub Actions workflow
- `README.md`: Project documentation

---

## 🙌 Acknowledgements

Thanks to SonarCloud for providing static code analysis, and to GitHub Actions for enabling a smooth CI/CD experience.

---

## 📫 Contact

For any questions or feedback, feel free to reach out via GitHub!
