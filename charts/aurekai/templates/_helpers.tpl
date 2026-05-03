{{- define "aurekai.fullname" -}}
{{- .Release.Name }}-aurekai
{{- end }}

{{- define "aurekai.labels" -}}
helm.sh/chart: aurekai-{{ .Chart.Version }}
app.kubernetes.io/name: aurekai
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
