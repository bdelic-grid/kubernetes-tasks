#!/bin/bash

helm delete my-chart

kubectl delete service petclinic-load-balancer
kubectl delete deployment petclinic-deployment

gcloud container clusters delete bdelic-cluster --zone=us-central1-a

terraform destroy --auto-approve