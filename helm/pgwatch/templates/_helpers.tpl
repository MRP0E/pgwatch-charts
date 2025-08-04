
{{/*
Define the value of the sources parameter based on the definition of multiple or a single source
*/}}
{{- define "sources" -}}
{{- $inline := printf "postgresql://$PGWATCH_USER:$PGWATCH_USER_PASSWORD@$METRIC_DATABASE_ENDPOINT:$METRIC_DATABASE_PORT/$METRIC_DATABASE_DATABASE?sslmode=$METRIC_DATABASE_SSLMODE"  -}}
{{- $file := "/etc/sources.yaml" -}}

{{- if .Values.pgwatch.postgres.sources -}}
  {{- $file -}}
{{- else -}}
  {{- $inline -}}
{{- end -}}
{{- end -}}