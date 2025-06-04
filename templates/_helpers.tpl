
{{- define "ephemeral-volume-cleanup.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "ephemeral-volume-cleanup.serviceaccount.name" -}}
{{- printf "%s-sa" (include "ephemeral-volume-cleanup.name" . ) | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "ephemeral-volume-cleanup.clusterole.name" -}}
{{- printf "%s-cr" (include "ephemeral-volume-cleanup.name" . ) | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "ephemeral-volume-cleanup.clusterolebinding.name" -}}
{{- printf "%s-crb" (include "ephemeral-volume-cleanup.name" . ) | trunc 63 | trimSuffix "-" }}
{{- end }}