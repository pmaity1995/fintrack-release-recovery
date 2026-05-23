#!/bin/bash

kubectl rollout undo deployment/account-service -n fintrack

echo "Rollback completed"