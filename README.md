# pwpush

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.45.0](https://img.shields.io/badge/AppVersion-1.45.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| dnsPolicy | string | `"ClusterFirst"` |  |
| env[0].name | string | `"TZ"` |  |
| env[0].value | string | `"America/Sao_Paulo"` |  |
| env[1].name | string | `"PWP__DEFAULT_LOCALE"` |  |
| env[1].value | string | `"en"` |  |
| env[2].name | string | `"PWP__LOG_LEVEL"` |  |
| env[2].value | string | `"warn"` |  |
| image | string | `"docker.io/pglombardo/pwpush-ephemeral"` |  |
| imagePullPolicy | string | `"Always"` |  |
| limitsCpu | float | `1.5` |  |
| limitsMemory | string | `"512Mi"` |  |
| maxSurge | string | `"25%"` |  |
| maxUnavailable | string | `"25%"` |  |
| namespace | string | `"security"` |  |
| progressDeadlineSeconds | int | `15` |  |
| replicas | int | `1` |  |
| requestCpu | int | `1` |  |
| requestMemory | string | `"256Mi"` |  |
| restartPolicy | string | `"Always"` |  |
| schedulerName | string | `"default-scheduler"` |  |
| securityContext | object | `{}` |  |
| terminationGracePeriodSeconds | int | `30` |  |
| terminationMessagePath | string | `"/dev/termination-log"` |  |
| terminationMessagePolicy | string | `"FallbackToLogsOnError"` |  |

