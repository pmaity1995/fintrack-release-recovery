# Incident Report

At 11:59 PM a production deployment introduced:

- Canary rollout changes
- Jenkins modifications
- MongoDB StatefulSet updates

Result:

- CrashLoopBackOff
- OOMKilled pods
- Broken rollback
- Canary misrouting
- Elevated latency