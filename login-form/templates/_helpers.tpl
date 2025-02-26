{{/*
Resource Name common
*/}}
{{- define "loginform.resourceName" -}}
{{- .Release.Name -}}-login
{{- end }}

{{/*
Common Labels
*/}}
{{- define "loginform.labels" -}}
app: {{ .Release.Name }}
{{- end }}

