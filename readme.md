# dev.local
This is a collection of tools and utilities to enhance local development.

## Getting started
Services mostly use docker. The goal of these tools are to be general enough and light enough to reuse in different projects or for different customers.

### Dependencies
- Docker

## Start Services

To start services, `cd` to the corresponding directory and run `docker compose`. 

For example,
```
cd logs
docker compose up
```

## Optional: `dev.local`

An easy to remember domain to map local development resources.

For the first time, update your hosts file to add `dev.local`
```sh
sudo ./update-hosts.sh

# or for windows

.\update-hosts.ps1
```

### Start `Dev.Local.Proxy`

```sh
./start-proxy.sh

# or for non-elevated

./start-proxy-non-admin.sh

# or for windows

./start-proxy.ps1
```

For instance, logs will be available at:
- `dev.local/logs` 
- `dev.local:7000/logs` if running non-admin

I prefer the `admin` version since there's less typing; in principal, there's little other difference aside from the security aspect of running things as administrator if that bothers you (or if you can't).