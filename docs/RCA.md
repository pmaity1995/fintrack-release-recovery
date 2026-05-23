# Root Cause Analysis

## Issues

1. OOMKilled Pods
- Missing resource limits
- Retry storms increased memory usage

2. Canary Rollout Failure
- Istio labels mismatched deployment labels
- 100% traffic routed to v2

3. Jenkins Failure
- Agents disconnected due to disk exhaustion

4. MongoDB PVC Pending
- StorageClass missing

5. Secret Leakage
- No branch protection or secret scanning