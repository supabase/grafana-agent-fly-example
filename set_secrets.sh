echo "Setting required secrets at fly.io..."

# "Supabase service role secret (https://supabase.com/dashboard/project/_/settings/api)"
flyctl secrets set SUPABASESERVICEROLESECRET="value"

# "Supabase project url (https://supabase.com/dashboard/project/_/settings/api)"
# "(exclude the https:// part, example.: zzzzzzzzzzzzzzzzzzzz.supabase.co)"
flyctl secrets set SUPABASEPROJECTURL="value"

# "Grafana prometheus remote write endpoint"
# "grafana cloud / my account / prometheus details / remote write endpoint"
flyctl secrets set REMOTEWRITEENDPOINT="value"

# "Grafana prometheus Username"
# "grafana cloud / my account / prometheus details / (Username / Instance ID)"
flyctl secrets set REMOTEUSERNAME="value"

# "Grafana prometheus remote write password"
# "grafana cloud / my account / prometheus details / (Password / API Key)"
flyctl secrets set REMOTEWRITEPASSWORD="value"

