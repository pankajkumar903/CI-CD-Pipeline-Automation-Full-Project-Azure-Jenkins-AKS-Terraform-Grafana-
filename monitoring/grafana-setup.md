helm install grafana grafana/grafana
kubectl get secret grafana -o jsonpath="{.data.admin-password}" | base64 --decode
