<!-- README.md -->

<div align="center">
  <img src="https://img.shields.io/badge/DevOps-Portfolio-blue.svg" alt="DevOps Portfolio"/>
  <h1 style="font-family:'Times New Roman', serif; color:#2c3e50;">DevOps Portfolio – End-to-End Cloud-Native Delivery</h1>
  <h3 style="font-family:'Times New Roman', serif; color:#34495e;">Author: <YOUR NAME> &nbsp;|&nbsp; Role: DevOps / Cloud Engineer</h3>
</div>

---

## <span style="font-family:'Times New Roman', serif; color:#2c3e50;">🌐 Projects Overview</span>

This repository showcases my **DevOps Projects**, highlighting:

1. **Infrastructure as Code** – reproducible AWS builds with Terraform
2. **CI/CD Pipelines** – Git-Ops–driven releases via GitHub Actions
3. **Containerization** – Docker images (Alpine → UBI) with SBOM & provenance
4. **Configuration Management** – Ansible roles executed at pod start-up
5. **Kubernetes Operations** – zero-downtime rollouts to EKS
6. **Data Resilience** – automated backups & cross-region restores for _all_ AWS-managed databases (RDS, Aurora, DynamoDB, ElastiCache, DocumentDB)

---

## <span style="font-family:'Times New Roman', serif; color:#2c3e50;">🚀 Architecture Diagram</span>

```mermaid
flowchart LR
  A[Developer Laptop] -->|git push| B(GitHub)
  B -->|trigger| C[GitHub Actions]
  C --> D[Terraform Cloud]
  D --> E[AWS Accounts (prod/non-prod)]
  E --> F[EKS Clusters]
  E --> G[AWS Databases]
  C --> H[Docker Registry]

  <table>
  <thead>
    <tr>
      <th align="left">Domain</th>
      <th align="left">Tools & Technologies</th>
      <th align="left">Key Features</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Infrastructure as Code</strong></td>
      <td>Terraform (v1.7+), AWS Provider</td>
      <td>Modular modules, state locking, drift detection</td>
    </tr>
    <tr>
      <td><strong>CI/CD</strong></td>
      <td>GitHub Actions, AWS OIDC</td>
      <td>Multi-stage pipelines, automated tests, least-privilege</td>
    </tr>
    <tr>
      <td><strong>Containerization</strong></td>
      <td>Docker, Alpine, UBI, Syft, Grype, Cosign</td>
      <td>Alpine→UBI migration, SBOM generation, image signing</td>
    </tr>
    <tr>
      <td><strong>Config Management</strong></td>
      <td>Ansible, AWS Secrets Manager</td>
      <td>Idempotent roles, dynamic inventory, secret injection</td>
    </tr>
    <tr>
      <td><strong>Kubernetes</strong></td>
      <td>EKS, Helmfile, OPA Gatekeeper</td>
      <td>Declarative releases, canary/blue-green, policy enforcement</td>
    </tr>
    <tr>
      <td><strong>Backup & DR</strong></td>
      <td>RDS/Aurora snapshots, DynamoDB PITR, S3 exports</td>
      <td>35-day retention, cross-region restore, runbooks</td>
    </tr>
  </tbody>
</table>
```
