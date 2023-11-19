# Giga Datahub

## Prerequisites

- [ ] Docker
- [ ] Task
- [ ] Bitwarden CLI

## Development

1. Get your API key and secret from
   the [Bitwarden web app](https://vault.bitwarden.com/#/settings/security/security-keys)
   Be very careful not to share this anywhere except the Bitwarden CLI.
2. Login to the Bitwarden CLI:
    ```shell
    bw login --apikey
    ```
3. When prompted, enter your API key and secret which you got from the Bitwarden web
   app.
4. Unlock your vault:
    ```shell
    bw unlock
    ```
   You will be prompted to enter your master password.
5. After unlocking, you will be given instructions to save the Bitwarden session to an
   environment
   variable. The command should look something like this:
   ```shell
   export BW_SESSION="the session token"
   ```
6. Run the script to download the remaining environment variables:
    ```shell
    ./get-envs.sh
    ```
7. Run `task` to launch the containers. This may take a while.
8. Open the Datahub UI at `http://localhost:9002/login`.
9. Login with the Bitwarden credentials `Datahub-DEV Admin Credentials`.
10. Go wild.
