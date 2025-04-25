# DevOps Portfolio – End-to-End Cloud-Native Delivery

\*Author: **<YOUR NAME>\***

> **Role**  DevOps / Cloud Engineer  
> **Primary Cloud**  AWS (multi-account, multi-region)  
> **IaC**  Terraform & Ansible  
> **Orchestration**  Kubernetes (EKS)  
> **Containers**  Docker & Red Hat UBI  
> **CI/CD**  GitHub Actions + AWS Code\* suite

---

## 1 | Executive Summary

This repository is a **reference implementation** of my core DevOps skill set, showcasing a secure, fully automated path from source control to a production-grade Kubernetes workload:

1. **Infrastructure as Code** – reproducible AWS builds with Terraform
2. **CI/CD Pipelines** – Git-Ops–driven releases via GitHub Actions
3. **Containerization** – Docker images (Alpine → UBI) with SBOM & provenance
4. **Configuration Management** – Ansible roles executed at pod start-up
5. **Kubernetes Operations** – zero-downtime rollouts to EKS
6. **Data Resilience** – automated backups & cross-region restores for _all_ AWS-managed databases (RDS, Aurora, DynamoDB, ElastiCache, DocumentDB)

---

## 2 | High-Level Architecture

[Developer Laptop]──git push──►[GitHub]───triggers──►[GitHub Actions]
│
+───────────────────────────────┤
│ ▼
[Terraform Cloud]────────►[AWS Accounts (prod / non-prod)]
│ │
│ +─────[EKS Clusters]─────+
│ │ │
▼ ▼ ▼
[TF State Backend] [Docker Registry] [RDS / Aurora / …]

_(Editable file: `docs/architecture.drawio`)_

---

## 3 | Key Features

| Domain               | Highlights                                                                                                                     |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| **Terraform**        | • Modular design • S3 + DynamoDB state locking • Automated drift detection                                                     |
| **CI/CD**            | • GitHub Actions workflows • Multi-stage Docker build & cache • OIDC least-privilege deploy role                               |
| **Kubernetes**       | • Declarative Helmfile releases • Progressive delivery (blue-green/canary) • Cluster policy via OPA Gatekeeper                 |
| **Ansible**          | • Idempotent pod bootstrap tasks • Dynamic inventory from K8s API • Secret injection via AWS Secrets Manager                   |
| **Backup & Restore** | • 35-day RDS/Aurora snapshots • DynamoDB PITR & S3 exports • Regional fail-over playbooks                                      |
| **Docker**           | • Alpine → UBI migration for DISA-STIG hardening • SBOM (`syft`) & CVE scan (`grype`) • Cosign signatures & Rekor attestations |

---

---

## 4 | Getting Started (Local Lab)

### 5.1 Prerequisites

- Terraform ≥ 1.7
- Docker ≥ 25.x
- Kubectl & Helm
- AWS CLI with an IAM role that can create resources
- Python 3.12 + pipx (for Ansible & helpers)

### 5.2 One-Click Bootstrap

```bash
# Clone & initialise Terraform back-end
git clone https://github.com/<your-user>/devops-portfolio.git
cd devops-portfolio/terraform/live/lab
terraform init && terraform apply

# Build & push the demo image
make docker-build docker-push

# Provision EKS & deploy application
make eks-create
make deploy-app
```
