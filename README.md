# 🧪 CI/CD Pipeline Automation – Azure, Jenkins, AKS, Terraform, Grafana

## 📌 Objective
Automate the deployment of a Python Flask app using Jenkins, Docker, Terraform, and Azure Kubernetes Service (AKS), with monitoring via Prometheus and Grafana.

## 📂 Project Structure

- `app/` – Flask App with Docker support
- `terraform/` – Infrastructure as Code to provision AKS and ACR
- `jenkins/` – Jenkinsfile defining CI/CD pipeline
- `k8s/` – Kubernetes manifests for deployment and service
- `monitoring/` – Helm commands for Prometheus & Grafana

## 🚀 Pipeline Flow

**GitHub → Jenkins → ACR → AKS → Prometheus/Grafana**

## 📸 Screenshots / Dashboards
_Add images here (optional)_

## ✅ Technologies Used

- Azure AKS & ACR
- Jenkins (CI/CD)
- Docker
- Kubernetes
- Terraform
- Prometheus & Grafana

## 🔐 Secrets & Security

- ACR credentials are securely stored as Kubernetes secrets
- AKS can pull images using `imagePullSecrets`

## 🔧 Setup Instructions

Refer to each directory's README or command files for step-by-step deployment.
