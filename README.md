# Ephemeral Volume Auto Cleanup Helm Chart

## Adding the chart to repository

To adding the chart repository with the name `evac`:

```
helm repo add evac https://shaekhhasanshoron.github.io/ephemeral-volume-auto-cleanup-chart
```

## Installing Chart Release

Install the controller manager:

```
helm install my-release evac/ephemeral-volume-auto-cleanup --create-namespace --namespace system --version 1.0.0
```
