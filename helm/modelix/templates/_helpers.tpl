{{/*
Expand the name of the chart.
*/}}
{{- define "modelix.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "modelix.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "modelix.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "modelix.labels" -}}
helm.sh/chart: {{ include "modelix.chart" . }}
{{ include "modelix.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "modelix.selectorLabels" -}}
app.kubernetes.io/name: {{ include "modelix.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "modelix.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "modelix.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "modelix.externalUrl" -}}
{{ .Values.external.proto }}://{{ .Values.external.hostname }}:{{ .Values.external.port }}/
{{- end }}

{{- define "modelix.externalKeycloakUrl" -}}
{{ .Values.external.proto }}://{{ .Values.external.keycloak.hostname }}:{{ .Values.external.keycloak.port }}/
{{- end }}
{{- define "modelix.internalKeycloakUrl" -}}
http://{{ include "modelix.fullname" . }}-keycloak:8080/
{{- end }}

{{- define "modelix.keycloakEnv" -}}
- name: KEYCLOAK_CLIENT_SECRET
  value: "{{ .Values.keycloak.clientSecret }}"
- name: KEYCLOAK_CLIENT_ID
  value: "{{ .Values.keycloak.clientId }}"
- name: KEYCLOAK_REALM
  value: "{{ .Values.keycloak.realm }}"
- name: KEYCLOAK_BASE_URL
  value: "{{ include "modelix.internalKeycloakUrl" . }}"
{{- end }}

