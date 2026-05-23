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

# Git Recovery Actions

## Investigating Bad Release

```bash
git log --oneline --graph
git diff HEAD~2
git reflog
```

## Reverting Faulty Canary Deployment

```bash
git revert a1b2c3d
```

This safely reversed the broken Istio routing change without rewriting production history.

## Cleaning Local Commits

```bash
git reset --soft HEAD~1
```

Used to reorganize release commits before pushing.

## Amending Incorrect Commit

```bash
git commit --amend
```

Used to remove accidentally committed configuration changes.

## Jenkins Agent Investigation

### Findings

- Jenkins agents were disconnected due to high Docker image build load
- Disk usage exceeded 90%
- Multiple concurrent builds exhausted executor capacity

### Diagnostic Commands

```bash
docker system df

df -h

kubectl top nodes
```

### Fixes Applied

- Added build timeout
- Disabled concurrent builds
- Added workspace cleanup
- Introduced rollback automation