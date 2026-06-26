# Platform-Foundation
#changing user and secret key
eval "$(ssh-agent -s)"
ssh-add -K /Users/mac/.ssh/id_rsa_techbeing
git push -u origin main --force

# Foundation

The Foundation repository serves as the GitOps bootstrap layer for the Kubernetes platform.

It defines the deployment order of the platform and acts as the single entry point for bootstrapping clusters using ArgoCD.

## Purpose

This repository is responsible for:

- Bootstrapping Kubernetes clusters
- Registering ArgoCD Applications
- Deforing deployment order
- Managing environments
- Acting as the GitOps root repository

## Repository Structure

foundation/
├── applications/
├── bootstrap/
├── environments/
│ ├── dev/
│ ├── staging/
│ └── production/
└── README.md

## Deployment Flow
Foundation
↓
Foundation Infrastructure
↓
Foundation Services
↓
Application Repositories


## Technologies

- Kubernetes
- ArgoCD
- GitOps
- YAML
- Helm

## Responsibilities

- Bootstrap clusters
- Register applications
- Environment separation
- GitOps synchronization

## Prerequisites

- Kubernetes Cluster
- ArgoCD Installed
- kubectl
- Git access

## Usage

Apply the bootstrap manifests:

```bash
kubectl apply -f bootstrap/
