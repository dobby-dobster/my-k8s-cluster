export APP_INSTANCE_NAME=monitoring-stack
export NAMESPACE=monitoring
export GRAFANA_GENERATED_PASSWORD="$(echo -n 'password' | base64)"

awk 'FNR==1 {print "---"}{print}' manifest/* \\n | envsubst '$APP_INSTANCE_NAME $NAMESPACE $GRAFANA_GENERATED_PASSWORD' \\n > "${APP_INSTANCE_NAME}_manifest.yaml"
