{{/* 
Jager Agent Container
*/}}
{{- define "jaegerAgent.spec" }}
- name: jaeger-agent
  image: {{ include "jaegerAgent.container" . }}
  env:
    - name: POD_NAME
      valueFrom:
        fieldRef:
          apiVersion: v1
          fieldPath: metadata.name
  ports:
  - containerPort: 5775
    protocol: UDP
  - containerPort: 5778
    protocol: TCP
  - containerPort: 6831
    protocol: UDP
  - containerPort: 6832
    protocol: UDP
  resources:
  {{- if .Values.jaegerAgent.resources.requests }}
    requests:
  {{- range $key, $val := .Values.jaegerAgent.resources.requests }}
      {{ $key }}: {{ $val }}
  {{- end }}
  {{- end }}
  {{- if .Values.jaegerAgent.resources.limits }}
    limits:
  {{- range $key, $val := .Values.jaegerAgent.resources.limits }}
      {{ $key }}: {{ $val }}
  {{- end }}
  {{- end }}
  args:
    - --reporter.grpc.host-port=jaeger-collector:14250
    - --reporter.type=grpc  
{{- end }}