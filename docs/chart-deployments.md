# How to add a new helm-chart to this deployment?

We use a simple hack to easily deploy helm-charts without the need to download and store the helm-chart.

1. Create a new directory inside `./charts`
2. Create a Chart.yaml and values.yaml as you would do in order to create a new helm-chart
3. Add the chart you want to add as a helm dependency (you can use existing charts as a reference)
4. Run `helm dependency update` in your terminal, while you're in the chart directory
5. Add a ArgoCD Application in the `./argo-apps` directory (you can use [cert-manager.yaml](../argo-apps/cert-manager.yaml) as an example)
6. configure the helm-chart using the value.yaml
7. commit your changes
8. profit :)
