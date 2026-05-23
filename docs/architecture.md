# Architecture

## Existing Architecture

GitHub → Jenkins → Kubernetes → Istio

Problems:
- No observability
- No rollback validation
- No circuit breakers

## Fixed Architecture

GitHub
  ↓
Jenkins CI/CD
  ↓
AWS ECR
  ↓
AWS EKS
  ↓
Istio Service Mesh
  ↓
Prometheus + Grafana + Jaeger