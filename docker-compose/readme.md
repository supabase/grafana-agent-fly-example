# Run the Grafana Agent with Docker Compose

This directory contains a Docker Compose 3 configuration that can be used to launch a Grafana Agent from any machine you want.

## 1. Gather the necessary secrets

- [Follow this step](../readme.md#2b-gather-the-necessary-secrets)

## 2. Create `.env` file

```
SUPABASESERVICEROLESECRET=${SUPABASESERVICEROLESECRET}
SUPABASEPROJECTURL=${SUPABASEPROJECTURL}
REMOTEWRITEENDPOINT=${REMOTEWRITEENDPOINT}
REMOTEUSERNAME=${REMOTEUSERNAME}
REMOTEWRITEPASSWORD=${REMOTEWRITEPASSWORD}
```

## 3. Run the agent as daemon

```bash
$ docker-compose up -d
```

## 4. Create the Grafana Dashboard

- [Follow this step](../readme.md#3-create-the-grafana-dashboard)
