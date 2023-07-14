
# Supabase Prometheus Metrics & Grafana
![Supabase Grafana dashboard](supabase-grafana-prometheus.png)

## 1. Setup Accounts

* Create an account on Grafana (https://grafana.com)
* Create an account on Fly.io (https://fly.io)
* You should already have a Supabase account and a Supabase project

## 2. Deploy the Grafana Agent on Fly.io

### 2A. Create the app

 * Change the `app` name in the `fly.toml`
 * Install the `flyctl` command-line tool: [flyctl installation instructions](https://fly.io/docs/hands-on/install-flyctl)
 * Log into fly: `flyctl auth login`
 * Create your fly app: `flyctl apps create`
    * use the app name you added to `fly.toml`
 
### 2B. Gather the necessary secrets

 * `SUPABASESERVICEROLESECRET`
    * Supabase service role secret 
    * found here: [https://supabase.com/dashboard/project/_/settings/api](https://supabase.com/dashboard/project/_/settings/api)
 * `SUPABASEPROJECTURL`
    * Supabase project url 
    * found here: [https://supabase.com/dashboard/project/_/settings/api](https://supabase.com/dashboard/project/_/settings/api)
    * exclude the `https://` part, for example: `zzzzzzzzzzzzzzzzzzzz.supabase.co`
 * `REMOTEWRITEENDPOINT`
    * Grafana prometheus remote write endpoint
    * [Grafana Cloud](https://grafana.com) / My Account / Prometheus Details / (Remote Write Endpoint)
 * `REMOTEUSERNAME`
    * Grafana prometheus Username
    * [Grafana Cloud](https://grafana.com) / My Account / Prometheus Details / (Username / Instance ID)
 * `REMOTEWRITEPASSWORD`
    * Grafana prometheus remote write password
    * [Grafana Cloud](https://grafana.com) / My Account / Prometheus Details / (Password / API Key) / Generate now
 * Set your `fly.io` secrets in the script: [set_secrets.sh](./set_secrets.sh)
 * Set your fly secrets by executing the script: `./set_secrets.sh`

### 2C. Deploy the `Grafana Agent App` on `fly.io`

This app will gather data from your Supabase project once per minute and ingest it into Grafana Cloud.

 * Deploy your fly app: `fly deploy --config fly.toml`

## 3. Create the Grafana Dashboard

 * [Grafana Cloud](https://grafana.com) / My Account / Grafana / Launch
 * Menu / Dashboards / New / Import
 * Upload JSON file: [panels-full.json](./panels-full.json)


### Useful Links

[https://grafana.com/docs/agent/latest/getting-started/create-config-file/](https://grafana.com/docs/agent/latest/getting-started/create-config-file/)


### Exported metrics:

A list of exported metrics can be found [here](./metrics.md)

