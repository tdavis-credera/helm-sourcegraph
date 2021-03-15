# handy-sourcegraph

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cadvisor.image.name | string | `"sourcegraph/cadvisor"` | The name of the container for cadvisor |
| cadvisor.image.tag | string | `"insiders@sha256:66afd169a02ffd5eaafdd4a41c8382b3af26c7eea9dd3c5b18a5990f548ca027"` | Override the tag for cadvisor container |
| cadvisor.resources | object | `{"limits":{"cpu":"300m","memory":"2000Mi"},"requests":{"cpu":"150m","memory":"200Mi"}}` | The kubernetes resource spec for the cadvisor container |
| codeinsigtsdb.image.name | string | `"sourcegraph/codeinsights-db"` | The name of the container for codeinsights-db |
| codeinsigtsdb.image.tag | string | `"insiders@sha256:f985af2fef860cc48be40ded864df025b8794b02b86e66cbc6c55bfe3c418831"` | Override the tag for codeinsights-db container |
| codeinsigtsdb.replicas | int | `1` |  |
| codeinsigtsdb.resources | object | `{"limits":{"cpu":"4","memory":"2Gi"},"requests":{"cpu":"4","memory":"2Gi"},"storage":"200Gi"}` | The kubernetes resource spec for the codeinsights-db container |
| codeinteldb.alpine.image.name | string | `"sourcegraph/alpine"` | The name of the container for alpine   |
| codeinteldb.alpine.image.tag | string | `"3.12@sha256:133a0a767b836cf86a011101995641cf1b5cbefb3dd212d78d7be145adde636d"` | Override the tag for alpine container       |
| codeinteldb.image.name | string | `"sourcegraph/codeintel-db"` | The name of the container for codeintel-db |
| codeinteldb.image.tag | string | `"insiders@sha256:a55fea6638d478c2368c227d06a1a2b7a2056b693967628427d41c92d9209e97"` | Override the tag for codeintel-db container |
| codeinteldb.postgresExporter.image.name | string | `"wrouesnel/postgres_exporter"` | The name of the container for postgresExporter   |
| codeinteldb.postgresExporter.image.tag | string | `"v0.7.0@sha256:785c919627c06f540d515aac88b7966f352403f73e931e70dc2cbf783146a98b"` | Override the tag for postgresExporter container       |
| codeinteldb.postgresExporter.resources | object | `{"limits":{"cpu":"10m","memory":"50Mi"},"requests":{"cpu":"10m","memory":"50Mi"}}` | The kubernetes resource spec for the postgresExporter container |
| codeinteldb.replicas | int | `1` |  |
| codeinteldb.resources | object | `{"limits":{"cpu":"4","memory":"2Gi"},"requests":{"cpu":"4","memory":"2Gi"},"storage":"200Gi"}` | The kubernetes resource spec for the codeintel-db container |
| frontend.envVars | list | `[{"name":"PGDATABASE","value":"sg"},{"name":"PGHOST","value":"pgsql"},{"name":"PGPORT","value":"5432"},{"name":"PGSSLMODE","value":"disable"},{"name":"PGUSER","value":"sg"},{"name":"REDIS_CACHE_ENDPOINT","value":null},{"name":"REDIS_STORE_ENDPOINT","value":null}]` | A list of env vars (name, value maps) for the frontend container |
| frontend.image.name | string | `"sourcegraph/frontend"` | The name of the container for frontend |
| frontend.image.tag | string | `"insiders@sha256:2f7cbdaa0c6ec68f5c8794e67b1934d5f55a62d4877b3a244c253b28ffc7a582"` | Override the tag for frontend container |
| frontend.ingress.host | string | `"sourcegraph.example.com"` | The host name for sourcegraph frontend |
| frontend.replicas | int | `1` |  |
| frontend.resources | object | `{"limits":{"cpu":"2","ephemeral-storage":"8Gi","memory":"4G"},"requests":{"cpu":"2","ephemeral-storage":"4Gi","memory":"2G"}}` | The kubernetes resource spec for the frontend container |
| githubProxy.image.name | string | `"sourcegraph/github-proxy"` | The name of the container for github-proxy |
| githubProxy.image.tag | string | `"insiders@sha256:a0e34d440bec14d8b929b6e5d723a3b4060b84be5418223e73ddebf6585c1bd6"` | Override the tag for github-proxy container |
| githubProxy.replicas | int | `1` |  |
| githubProxy.resources | object | `{"limits":{"cpu":"1","memory":"1G"},"requests":{"cpu":"100m","memory":"250M"}}` | The kubernetes resource spec for the github-proxy container |
| gitserver.image.name | string | `"sourcegraph/gitserver"` | The name of the container for gitserver |
| gitserver.image.tag | string | `"insiders@sha256:c515d02a4ca5a284ae041131ccb9560fe20a4bb74af8f121b235dd64340d3168"` | Override the tag for gitserver container |
| gitserver.replicas | int | `1` |  |
| gitserver.resources | object | `{"limits":{"cpu":"4","memory":"8G"},"requests":{"cpu":"4","memory":"8G"}}` | The kubernetes resource spec for the gitserver container |
| grafana.image.name | string | `"sourcegraph/grafana"` | The name of the container for grafana |
| grafana.image.tag | string | `"insiders@sha256:ba07ec6572fb1b30f97c7ffbe7bfaec4e008a944e367f4f0cd4853c88e5a5fa4"` | Override the tag for grafana container |
| grafana.replicas | int | `1` |  |
| grafana.resources | object | `{"limits":{"cpu":"1","memory":"512Mi"},"requests":{"cpu":"100m","memory":"512Mi"},"storage":"2Gi"}` | The kubernetes resource spec for the grafana container |
| image.registry | string | `"index.docker.io"` | The default container repository for all images |
| image.tag | string | `"latest"` | The default container image tag |
| indexedSearch.replicas | int | `1` |  |
| indexedSearch.resources | object | `{"storage":"200Gi"}` | The kubernetes resource spec for the indexed-searcher container |
| indexedSearch.zoektindexserver.image.name | string | `"sourcegraph/search-indexer"` | The name of the container for search-indexer |
| indexedSearch.zoektindexserver.image.tag | string | `"insiders@sha256:d3c2779b9b3fccc46bacef8deb68653e9ee6fda5df6c455419149201bc245a43"` | Override the tag for search-indexer container |
| indexedSearch.zoektindexserver.resources | object | `{"limits":{"cpu":"8","memory":"8G"},"requests":{"cpu":"4","memory":"4G"}}` | The kubernetes resource spec for the search-indexer container |
| indexedSearch.zoektwebserver.image.name | string | `"sourcegraph/indexed-searcher"` | The name of the container for indexed-searcher |
| indexedSearch.zoektwebserver.image.tag | string | `"insiders@sha256:e5a191417e8cc85e357d9456ae48da8e919795b16057337dddd1309f5800a82d"` | Override the tag for indexed-searcher container |
| indexedSearch.zoektwebserver.resources | object | `{"limits":{"cpu":"2","memory":"4G"},"requests":{"cpu":"500m","memory":"2G"}}` | The kubernetes resource spec for the indexed-searcher container |
| jaeger.image.name | string | `"sourcegraph/jaeger-all-in-one"` | The name of the container for jaeger |
| jaeger.image.tag | string | `"insiders@sha256:2d0a0d21ae3d44bc919da86994edfd63c1dce2742ccf3a71de6f7cd501abc6b1"` | Override the tag for jaeger container |
| jaeger.replicas | int | `1` |  |
| jaeger.resources | object | `{"limits":{"cpu":"1","memory":"1G"},"requests":{"cpu":"500m","memory":"500M"}}` | The kubernetes resource spec for the jaeger container |
| jaegerAgent.image.name | string | `"sourcegraph/jaeger-agent"` | The name of the container for jaeger-agent |
| jaegerAgent.image.tag | string | `"insiders@sha256:ed0d7dfc8f188a41a2113c3eab1f3ccac41d392be7e7fc3258f58623747bf00b"` | Override the tag for jaeger-agent container |
| jaegerAgent.resources | object | `{"limits":{"cpu":"1","memory":"500M"},"requests":{"cpu":"100m","memory":"100M"}}` | The kubernetes resource spec for the jaeger-agent container |
| persistentVolume.storageClass | string | `"ebs-csi-driver"` |  |
| preciseCodeIntel.image.name | string | `"sourcegraph/precise-code-intel-worker"` | The name of the container for precise-code-intel |
| preciseCodeIntel.image.tag | string | `"insiders@sha256:082fa390b45d79e31a43ab7249b69d2078793023f47d38c11cd323a520c21466"` | Override the tag for precise-code-intel container |
| preciseCodeIntel.replicas | int | `1` |  |
| preciseCodeIntel.resources | object | `{"limits":{"cpu":"2","memory":"4G"},"requests":{"cpu":"500m","memory":"2G"}}` | The kubernetes resource spec for the precise-code-intel container |
| prometheus.image.name | string | `"sourcegraph/prometheus"` | The name of the container for prometheus |
| prometheus.image.tag | string | `"insiders@sha256:50689fe08a65e92e641be112a3dd6a53761155a6318f19191986ce0aea8aa232"` | Override the tag for prometheus container |
| prometheus.replicas | int | `1` |  |
| prometheus.resources | object | `{"limits":{"cpu":"2","memory":"6G"},"requests":{"cpu":"500m","memory":"6G"},"storage":"200Gi"}` | The kubernetes resource spec for the prometheus container |
| queryRunner.image.name | string | `"sourcegraph/query-runner"` | The name of the container for query-runner |
| queryRunner.image.tag | string | `"insiders@sha256:e8ef08adf05eb244b1d97dd71e5f5acd36f2ae3d928d09c7cc35ab49507ab75a"` | Override the tag for query-runner container |
| queryRunner.replicas | int | `1` |  |
| queryRunner.resources | object | `{"limits":{"cpu":"1","memory":"1G"},"requests":{"cpu":"500m","memory":"1G"}}` | The kubernetes resource spec for the query-runner container |
| repoUpdater.envVars | list | `[{"name":"REDIS_CACHE_ENDPOINT","value":null},{"name":"REDIS_STORE_ENDPOINT","value":null}]` | A list of env vars (name, value maps) for the repo-updater container |
| repoUpdater.image.name | string | `"sourcegraph/repo-updater"` | The name of the container for repo-updater |
| repoUpdater.image.tag | string | `"insiders@sha256:e081b7b493fe83b30cd520915773f7efa38e06edf0c7e44c213ac092d7081d92"` | Override the tag for repo-updater container |
| repoUpdater.replicas | int | `1` |  |
| repoUpdater.resources | object | `{"limits":{"cpu":"1","memory":"2Gi"},"requests":{"cpu":"1","memory":"500Mi"}}` | The kubernetes resource spec for the repo-updater container |
| searcher.image.name | string | `"sourcegraph/searcher"` | The name of the container for searcher |
| searcher.image.tag | string | `"insiders@sha256:807c80c9ec6ed77fc815563f54a4e2334910a7ed31170aca2234454ccfef4bc8"` | Override the tag for searcher container |
| searcher.replicas | int | `1` |  |
| searcher.resources | object | `{"limits":{"cpu":"2","ephemeral-storage":"8Gi","memory":"2G"},"requests":{"cpu":"500m","ephemeral-storage":"4Gi","memory":"500M"}}` | The kubernetes resource spec for the searcher container |
| symbols.image.name | string | `"sourcegraph/symbols"` | The name of the container for symbols |
| symbols.image.tag | string | `"insiders@sha256:ea23d4d5e158ca75c324283d8f398f61d413685c2702ec54c650b732317129ac"` | Override the tag for symbols container |
| symbols.replicas | int | `1` |  |
| symbols.resources | object | `{"limits":{"cpu":"2","ephemeral-storage":"8Gi","memory":"2G"},"requests":{"cpu":"500m","ephemeral-storage":"4Gi","memory":"500M"}}` | The kubernetes resource spec for the symbols container |
| syntectServer.image.name | string | `"sourcegraph/syntax-highlighter"` | The name of the container for syntect-server |
| syntectServer.image.tag | string | `"insiders@sha256:83ff65809e6647b466bd400de4c438a32feeabe8e791b12e15c67c84529ad2de"` | Override the tag for syntect-server container |
| syntectServer.replicas | int | `1` |  |
| syntectServer.resources | object | `{"limits":{"cpu":"4","memory":"6G"},"requests":{"cpu":"250m","memory":"2G"}}` | The kubernetes resource spec for the syntect-server container |
| volumeClaimTemplates.storage | string | `"200Gi"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)

# cAdvisor

[cAdvisor](https://github.com/google/cadvisor) provides container users an understanding of the resource usage and performance characteristics of their running containers. It is a running daemon that collects, aggregates, processes, and exports information about running containers.

cAdvisor is part of the default Sourcegraph cluster installation, and deployed as a [Kubernetes DaemonSet](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/). This setup is based on the [official cAdvisor Kubernetes Daemonset configuration](https://github.com/google/cadvisor/tree/master/deploy/kubernetes). We use our own cAdvisor deployment over the built-in metrics exported by Kubernetes because the latter is often outdated and needs to be kept in sync with our [Docker-Compose deployments](https://docs.sourcegraph.com/admin/install/docker-compose). This setup allows us to have standard dashboards across all Sourcegraph deployments.

Note that the `sourcegraph/cadvisor` Docker images come with a set of default flags to help reduce memory usage and load on Prometheus - see [our Dockerfile](https://github.com/sourcegraph/sourcegraph/blob/master/docker-images/cadvisor/Dockerfile) for more details.

# Grafana

[Grafana](https://https://grafana.com/) is an open-source analytics dashboard application.

A Grafana instance is part of the default Sourcegraph cluster installation.
Learn more about Grafana in the [metrics and dashboards guide](https://docs.sourcegraph.com/admin/observability/metrics).

# Prometheus

[Prometheus](https://prometheus.io/) is an open-source application monitoring system and time series database.
 It is commonly used to track key performance metrics over time, such as the following:

- QPS
- Application requests by URL route name
- HTTP response latency
- HTTP error codes
- Time since last search index update


A Prometheus instance is part of the default Sourcegraph cluster installation. 

## Optional Steps

1. Edit `extra.rules` in [prometheus.ConfigMap.yaml](prometheus.ConfigMap.yaml) to define custom [Prometheus recording rules](https://prometheus.io/docs/practices/rules/).

   Here are some example rules:

   ```
   # This is a comment
   myCustomMetric1 = rate(src_http_request_duration_seconds_bucket{job=~"sourcegraph-.*"}[5m])
   myCustomMetric2 = sum by (route, ns, le)(task:src_http_request_duration_seconds_bucket:rate5m)
   ```

1. Apply your changes to Prometheus to the cluster.

   ```bash
   ./kubectl-apply-all.sh
   ```

## Making Prometheus accessible

### Port-forwarding

See [accessing Prometheus directly](https://docs.sourcegraph.com/admin/observability/metrics#accessing-prometheus-directly).

### Kubernetes service

Create a YAML file defining
a
[Kubernetes service](https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service) that
exposes the Prometheus deployment.

We recommend using a NodePort service with the following configuration:

```yaml
apiVersion: v1
kind: Service
metadata:
  labels:
    app: prometheus
  name: prometheus-node-port
spec:
  externalTrafficPolicy: Cluster
  ports:
    - name: http
      nodePort: 30010
      port: 30010
      protocol: TCP
      targetPort: http
  selector:
    app: prometheus
  type: NodePort
```

(Note: some cloud infrastructure providers support the "LoadBalancer" service type, which
automatically provisions an external load balancer for the service. We recommend against this type
of service for Prometheus, because almost certainly you do NOT want to expose Prometheus to public
Internet traffic.)

After creating the Prometheus service, add the appropriate network ingress rules in your
infrastructure provider to allow trusted incoming traffic to access port 30010 on nodes in the
Kubernetes cluster. SECURITY NOTE: Prometheus is unauthenticated, so whatever incoming traffic the
ingress rules allow will have _complete access_ to the Prometheus UI. Be careful that the ingress
rules restrict incoming traffic to trusted sources.

If a stable IP is required, provision a static IP and an external load balancer in lieu of adding
ingress rules. On most infrastructure providers, the steps are roughly the following:

- Provision the static IP.
- Create an external load balancer. (On AWS, use an "Application Load Balancer".)
- Connect the internal/backend half of the load balancer to the set of nodes in the Kubernetes
  cluster. (On AWS, create a "target group" that contains the instances in the cluster. On Google
  Cloud, define a "target pool".)
- Connect the external/frontend half of the load balancer to the static IP. (On AWS, create a
  "listener rule". On Google Cloud, create a "forwarding rule".)

### Exposing the Prometheus API endpoint

Some customers may want to make the Prometheus API endpoint accessible to other services like the
following:

- An analytics visualization tool like Grafana 
(note: an instance of Grafana is part of the default Sourcegraph cluster installation)
- An metrics ingestion pipeline

To expose the Prometheus API to such a service, follow the steps to expose Prometheus via Kubernetes
service with an external load balancer. Ensure that the load balancer permits incoming traffic from
the other service. The [Prometheus API](https://prometheus.io/docs/prometheus/latest/querying/api/)
is reachable under the path `/api/v1`.

## Defining alerts

Sourcegraph ships with a default set of alerts - see [alerting](https://docs.sourcegraph.com/admin/observability/alerting).

Additional rules and alerts can be defined in `extra_rules.yml` - see [Prometheus configuration](https://docs.sourcegraph.com/admin/observability/metrics#prometheus-configuration).

## Metrics

See [metrics and dashboards](https://docs.sourcegraph.com/admin/observability/metrics).
