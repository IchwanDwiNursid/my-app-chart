{{- define "helm-chart-app.labels" }}
app: {{ .Release.Name}}
version: {{ .Values.image.tag }}
{{- end }}