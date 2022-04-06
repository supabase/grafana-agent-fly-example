
# Using Grafana Cloud to Monitor your Supabase Cloud Deployment

Sign up and get your API keys from Grafana Cloud.

## Grafana Cloud API Keys

Go to grafana.com > in the nav click my account > and then click `API Keys`

## Grafana Cloud Prometheus Remote Write Endpoint

Go to grafana.com > in the nav click my account > and then click `details` for Prometheus in your "Grafana Cloud Stack"

## Setup Config

 * Change the `app` name in the `fly.toml`
 * Make sure your `static_configs` `targets` is your Supbase project hostname
 * Make sure your `metrics_path` is correct in `agent.yaml`
 * Make sure your `remote_write` `url` is correct in `agent.yaml`

## Deploy on Fly

 * Sign up for Fly and run `fly deploy`

## Useful Links
https://grafana.com/docs/agent/latest/getting-started/create-config-file/



