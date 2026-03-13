#!/usr/bin/env bash
set -euo pipefail

cd backend-quarkus
minikube image build -t quarkus-hello:java25 .
cd ..

cd frontend-angular
minikube image build -t angular-hello:ng21 .
cd ..