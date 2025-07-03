
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
kubectl create namespace monitoring

helm install grafana grafana/grafana \
  --namespace monitoring \
  --set adminPassword='admin' \
  --set service.type=NodePort \
  --set service.nodePort=30030

helm upgrade --install prometheus prometheus-community/prometheus \
  --namespace monitoring \
  --set server.service.type=NodePort \
  --set server.service.nodePort=30090



