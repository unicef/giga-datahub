# Giga Datahub

## Prerequisites

- [ ] Kubernetes
- [ ] Helm
- [ ] Task

## Development

1. Copy the contents of `.env.example` into a new file named `.env`.
2. In the `k8s` directory, copy contents of `secrets.example.yaml` into a new file
   named `secrets.yaml`.
3. Get the contents files you just copied from Bitwarden
    - `Datahub .env`
    - `Datahub secrets.yaml`
4. In Bitwarden, you will also see some entries with a pattern
   of `Datahub {service-name}.env`. Copy the contents of each of these entries into new
   files named `{service-name}.env`.
5. Run `task` to install the K8s & Helm items. This may take a while.
6. Open the Datahub UI at `localhost:9002`.
7. Go wild.
