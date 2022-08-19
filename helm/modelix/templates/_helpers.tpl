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

{{- define "modelix.pullSecret" -}}
{{- if .Values.dockerProxy.secret }}
imagePullSecrets:
- name: {{ .Values.dockerProxy.secret }}
{{- else -}}
{{- if .Values.dockerProxy.secret64 }}
imagePullSecrets:
- name: "{{ include "modelix.fullname" . }}-docker-secret"
{{- end }}
{{- end }}
{{- end }}

{{- define "modelix.serviceAccountName" -}}
{{- if .Values.serviceAccount -}}
{{- .Values.serviceAccount -}}
{{- else -}}
{{- include "modelix.fullname" . -}}-sa
{{- end -}}
{{- end -}}

{{- define "modelix.externalUrl" -}}
https://{{ .Values.ingress.hostname }}{{ if .Values.ingress.port }}:{{ .Values.ingress.port }}{{ end }}/
{{- end }}

{{- define "modelix.externalKeycloakUrl" -}}
{{ include "modelix.externalUrl" . }}
{{- end }}
{{- define "modelix.internalKeycloakUrl" -}}
http://{{ include "modelix.fullname" . }}-keycloak:8080/
{{- end }}

{{- define "modelix.keycloakEnv" -}}
- name: KEYCLOAK_CLIENT_SECRET
  valueFrom:
    secretKeyRef:
      key: keycloak-client-secret
      name: "{{ include "modelix.fullname" . }}-keycloak-client-secret"
- name: KEYCLOAK_CLIENT_ID
  value: "{{ .Values.keycloak.clientId }}"
- name: KEYCLOAK_REALM
  value: "{{ .Values.keycloak.realm }}"
- name: KEYCLOAK_BASE_URL
  value: "{{ include "modelix.internalKeycloakUrl" . }}"
{{- end }}

