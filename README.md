# Giga Datahub

## Prerequisites

- [ ] Docker
- [ ] Task

## Development

1. Copy the contents of `.env.example` into a new file named `.env`.
2. In the `k8s` directory, copy contents of `secrets.example.yaml` into a new file
   named `secrets.yaml`.
3. Get the contents of the files you just copied from Bitwarden
    - `Datahub .env`
    - `Datahub secrets.yaml`
4. In Bitwarden, you will also see some entries with a pattern
   of `Datahub {service-name}.env`. Copy the contents of each of these entries into new
   files named `{service-name}.env`.
5. Create another file named `user.props` and get its contents also from
   Bitwarden `Datahub user.props`.
6. Run `task` to launch the containers. This may take a while.
7. Open the Datahub UI at `http://localhost:9002/login`.
8. Login with the Bitwarden credentials `Datahub-DEV Admin Credentials`.
9. Go wild.
