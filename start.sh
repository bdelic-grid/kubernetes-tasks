#!/bin/bash

terraform apply --auto-approve
sleep 15

gcloud container clusters create bdelic-cluster --zone=us-central1-a --num-nodes=2 --network=bdelic-kubernetes-vpc --subnetwork=bdelic-kubernetes-subnet
gcloud container clusters get-credentials bdelic-cluster --location=us-central1-a
sleep 30

helm install my-chart my-chart