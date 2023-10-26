
# Supabase Prometheus Metrics & Grafana
![Supabase Grafana dashboard](supabase-grafana-prometheus.png)

## 1. Setup Accounts

1. Create an account on Grafana (https://grafana.com)
2. Create an account on Fly.io (https://fly.io)
3. You should already have a Supabase account and a Supabase project

## 2. Deploy the Grafana Agent on Fly.io

### 2A. Create the app

1. Change the `app` name in the `fly.toml`
2. Install the `flyctl` command-line tool: [flyctl installation instructions](https://fly.io/docs/hands-on/install-flyctl)
3. Log into fly: `flyctl auth login`
4. Create your fly app: `flyctl apps create`
   4.1 use the app name you added to `fly.toml`

### 2B. Gather the necessary secrets

1. `SUPABASESERVICEROLESECRET`
    * Supabase service role secret
    * found here: [https://supabase.com/dashboard/project/_/settings/api](https://supabase.com/dashboard/project/_/settings/api)
2. `SUPABASEPROJECTURL`
    * Supabase project url
    * found here: [https://supabase.com/dashboard/project/_/settings/api](https://supabase.com/dashboard/project/_/settings/api)
    * exclude the `https://` part, for example: `zzzzzzzzzzzzzzzzzzzz.supabase.co`
3. `REMOTEWRITEENDPOINT`
    * Grafana prometheus remote write endpoint
    * [Grafana Cloud](https://grafana.com) / My Account / Prometheus Details / (Remote Write Endpoint)
4. `REMOTEUSERNAME`
    * Grafana prometheus Username
    * [Grafana Cloud](https://grafana.com) / My Account / Prometheus Details / (Username / Instance ID)
5. `REMOTEWRITEPASSWORD`
    * Grafana prometheus remote write password
    * [Grafana Cloud](https://grafana.com) / My Account / Prometheus Details / (Password / API Key) / Generate now

### 2C. Save the gathered secrets

1. Set your `fly.io` secrets in the script: [set_secrets.sh](./set_secrets.sh)

> **Warning**
> If you skip this step, you'll likely see errors later on such as `error loading config file /etc/agent/agent.yaml: url for remote_write is empty` and `Error: smoke checks for 01234567890 failed: the app appears to be crashing`

### 2D. Deploy the `Grafana Agent App` on `fly.io`

This app will gather data from your Supabase project once per minute and ingest it into Grafana Cloud.

 * Deploy your fly app: `fly deploy --config fly.toml`

## 3. Create the Grafana Dashboard

 1. [Grafana Cloud](https://grafana.com) / My Account / Grafana / Launch
 2. Menu / Dashboards / New / Import
 3. Upload JSON file: [panels-full.json](./panels-full.json)


### Useful Links

[https://grafana.com/docs/agent/latest/getting-started/create-config-file/](https://grafana.com/docs/agent/latest/getting-started/create-config-file/)


### Exported metrics:

A list of exported metrics can be found [here](./metrics.md)
