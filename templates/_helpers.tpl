{{/*
Create image for cadvisor
*/}}
{{- define "cadvisor.container" -}}
{{- if .Values.cadvisor.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.cadvisor.image.name .Values.cadvisor.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.cadvisor.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for codeinsights-db
*/}}
{{- define "codeinsigtsdb.container" -}}
{{- if .Values.codeinsigtsdb.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.codeinsigtsdb.image.name .Values.codeinsigtsdb.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.codeinsigtsdb.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for codeintel-db
*/}}
{{- define "codeinteldb.container" -}}
{{- if .Values.codeinteldb.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.codeinteldb.image.name .Values.codeinteldb.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.codeinteldb.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for Apline
*/}}
{{- define "codeinteldb.alpine.container" -}}
{{- if .Values.codeinteldb.alpine.image.tag -}}
{{- printf "%s:%s" .Values.codeinteldb.alpine.image.name .Values.codeinteldb.alpine.image.tag -}}
{{- else -}}
{{- printf "%s:%s" .Values.codeinteldb.alpine.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for postgres-exporter
*/}}
{{- define "codeinteldb.postgresExporter.container" -}}
{{- if .Values.codeinteldb.postgresExporter.image.tag -}}
{{- printf "%s:%s" .Values.codeinteldb.postgresExporter.image.name .Values.codeinteldb.postgresExporter.image.tag -}}
{{- else -}}
{{- printf "%s:%s" .Values.codeinteldb.postgresExporter.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for github-proxy
*/}}
{{- define "githubProxy.container" -}}
{{- if .Values.githubProxy.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.githubProxy.image.name .Values.githubProxy.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.githubProxy.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for frontend
*/}}
{{- define "frontend.container" -}}
{{- if .Values.frontend.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.frontend.image.name .Values.frontend.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.frontend.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for gitserver
*/}}
{{- define "gitserver.container" -}}
{{- if .Values.gitserver.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.gitserver.image.name .Values.gitserver.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.gitserver.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for grafana
*/}}
{{- define "grafana.container" -}}
{{- if .Values.grafana.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.grafana.image.name .Values.grafana.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.grafana.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for indexed-search zoekt-webserver
*/}}
{{- define "indexedSearch.zoektwebserver.container" -}}
{{- if .Values.indexedSearch.zoektwebserver.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.indexedSearch.zoektwebserver.image.name .Values.indexedSearch.zoektwebserver.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.indexedSearch.zoektwebserver.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for indexed-search zoekt-indexserver
*/}}
{{- define "indexedSearch.zoektindexserver.container" -}}
{{- if .Values.indexedSearch.zoektindexserver.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.indexedSearch.zoektindexserver.image.name .Values.indexedSearch.zoektindexserver.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.indexedSearch.zoektindexserver.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for jaeger
*/}}
{{- define "jaeger.container" -}}
{{- if .Values.jaeger.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.jaeger.image.name .Values.jaeger.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.jaeger.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for precise-code-intel
*/}}
{{- define "preciseCodeIntel.container" -}}
{{- if .Values.preciseCodeIntel.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.preciseCodeIntel.image.name .Values.preciseCodeIntel.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.preciseCodeIntel.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for prometheus
*/}}
{{- define "prometheus.container" -}}
{{- if .Values.prometheus.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.prometheus.image.name .Values.prometheus.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.prometheus.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for query-runner
*/}}
{{- define "queryRunner.container" -}}
{{- if .Values.queryRunner.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.queryRunner.image.name .Values.queryRunner.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.queryRunner.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for repo-updater
*/}}
{{- define "repoUpdater.container" -}}
{{- if .Values.repoUpdater.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.repoUpdater.image.name .Values.repoUpdater.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.repoUpdater.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for searcher
*/}}
{{- define "searcher.container" -}}
{{- if .Values.searcher.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.searcher.image.name .Values.searcher.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.searcher.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for symbols
*/}}
{{- define "symbols.container" -}}
{{- if .Values.symbols.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.symbols.image.name .Values.symbols.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.symbols.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for syntect-server
*/}}
{{- define "syntectServer.container" -}}
{{- if .Values.syntectServer.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.syntectServer.image.name .Values.syntectServer.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.syntectServer.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}

{{/*
Create image for jaeger-agent
*/}}
{{- define "jaegerAgent.container" -}}
{{- if .Values.jaegerAgent.image.tag -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.jaegerAgent.image.name .Values.jaegerAgent.image.tag -}}
{{- else -}}
{{- printf "%s/%s:%s" .Values.image.registry .Values.jaegerAgent.image.name .Values.image.tag -}}
{{- end -}}
{{- end -}}