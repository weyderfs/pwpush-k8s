{{/* Temaplte Labels */}}
{{- define "pwpush.labels" }}
labels:
  app.kubernetes.io/name: {{ .Chart.Name }}
  helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
  environment: {{ default "develop" .Values.environment }}
  version: {{ .Values.version }}
  date: {{ now | htmlDate }}
{{- end -}}

