# HELM_MASTER
Helm with development for java and React js projects.
# Login Form Helm Chart

This Helm chart deploys a **Login Form** application on a Kubernetes cluster.

## Prerequisites

- Helm 3 installed
- Kubernetes cluster up and running
- Optional: Ingress controller if using Ingress

## Installation

To install the chart with the release name `loginform`:

```sh
helm install loginform .
```

If you need to upgrade an existing deployment:

```sh
helm upgrade loginform .
```

## Uninstallation

To remove the deployment:

```sh
helm uninstall loginform
```

## Configuration

You can override the default values by creating a `values.yaml` file and specifying custom parameters.

Example:

```yaml
replicaCount: 2
image:
  repository: mymohammadaszadali/loginform
  tag: latest
  pullPolicy: Always
service:
  type: ClusterIP
  port: 80
ingress:
  enabled: true
  hostname: loginform.example.com
```

Then apply using:

```sh
helm install loginform . -f values.yaml
```

## Values

| Parameter          | Description                          | Default        |
|--------------------|----------------------------------|--------------|
| `replicaCount`    | Number of replicas                | `1`          |
| `image.repository`| Image repository                  | `myrepo/loginform` |
| `image.tag`       | Image tag                         | `latest`     |
| `image.pullPolicy`| Image pull policy                 | `Always`      |
| `service.type`    | Service type (`ClusterIP/NodePort/LoadBalancer`) | `ClusterIP` |
| `service.port`    | Service port                      | `80`         |
| `ingress.enabled` | Enable Ingress                    | `false`      |
| `ingress.hostname`| Ingress hostname                  | `nil`        |

## Troubleshooting

- **Helm Lint Issues**: Run `helm lint .` to validate your chart.
- **Deployment Issues**: Check logs using `kubectl logs -l app=loginform`.
- **Ingress Not Working**: Ensure Ingress controller is installed and configured correctly.

## Contributing

Feel free to submit issues or pull requests if you find any problems!




