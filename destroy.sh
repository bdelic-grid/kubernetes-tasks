#!/bin/bash

helm delete my-chart

gcloud container clusters delete bdelic-cluster --zone=us-central1-a

terraform destroy --auto-approve