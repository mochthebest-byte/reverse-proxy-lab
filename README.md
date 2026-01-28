# Reverse Proxy Lab (Compose + Bonus Kind/K8s)

## Prereqs
### Mandatory
- Docker + Docker Compose plugin (`docker compose version`)
- curl
- python3 (for `python3 -m json.tool`)

### Bonus (Kubernetes)
- kind
- kubectl
- helm (optional, but convenient)

---

## Mandatory: Docker Compose

### 1) Configure env
```bash
cp .env.example .env
# edit ENV_NAME if needed
