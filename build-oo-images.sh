#!/bin/bash

# docker base
curl -H "Accept: application/json" -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/oo-docker-base/trigger/a69ccba7-6602-489a-8bd8-fc884fe9beeb/

# agent
curl -H "Accept: application/json" -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/oo-docker-agent/trigger/c2252f88-6984-4fc4-b235-1730d5123674/

# agent sidecar
curl -H "Accept: application/json" -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/oo-docker-agent-sidecar/trigger/b856aa77-345b-4287-bfc9-fcce85687b72/

# on-prem server
curl -H "Accept: application/json" -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/oo-docker-onprem-server/trigger/be5d1a5a-48e2-4272-99f6-d073c3e8185d/

# remote collector
curl -H "Accept: application/json" -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/oo-docker-remote-collector/trigger/cababe10-1730-448c-8079-ed4b278a9451/

# hybrid storage
curl -H "Accept: application/json" -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/oo-docker-hybrid-storage/trigger/245da992-15be-4a28-99e1-7a917fce1774/

# webhook
curl -H "Accept: application/json" -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/oo-webhook-example/trigger/8f3f35b5-a1a5-4e64-8117-de1cc3c60a8c/

# event generator
curl -H "Accept: application/json" -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/oo-docker-event-generator/trigger/74435b82-7c2f-45b6-b83c-f45fde08a47c/

