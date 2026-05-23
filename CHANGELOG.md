# Changelog

All notable changes to this project will be documented here.

---

## release/2025.06.1

### Fixed
- Fixed OOMKilled issue in account-service
- Corrected Istio canary routing labels
- Resolved Jenkins rollback tag mismatch
- Added MongoDB PVC binding fix

### Added
- Resource limits and requests
- Prometheus alert rules
- Jaeger tracing
- Circuit breaker for payment-service

### Security
- Added Git secret scanning
- Protected main branch
- Added PR approval workflow

---

## release/2025.05.9

### Added
- Initial deployment pipeline
- Canary deployment support
- Istio VirtualService