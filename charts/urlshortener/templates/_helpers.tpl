{{/*
Expand the name of the chart.
*/}}
{{- define "urlshortener.name" -}}
{{- default .Chart.Name .Values.urlshortener.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "urlshortener.fullname" -}}
{{- $name := default .Chart.Name .Values.urlshortener.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "urlshortener.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "urlshortener.labels" -}}
helm.sh/chart: {{ include "urlshortener.chart" . }}
{{ include "urlshortener.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "urlshortener.selectorLabels" -}}
app.kubernetes.io/name: {{ include "urlshortener.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "urlshortener.serviceAccountName" -}}
{{- if .Values.urlshortener.serviceAccount.create }}
{{- default (include "urlshortener.fullname" .) .Values.urlshortener.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.urlshortener.serviceAccount.name }}
{{- end }}
{{- end }}
