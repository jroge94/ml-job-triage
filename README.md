# ml-job-triage

A small production-style ML project that turns scheduler/job report logs into structured events and predicts:
- error category (e.g., FTP, auth, timeout, file-missing, unknown)
- severity (optional)
- recommended action (optional)

## Why this exists
This repo demonstrates practical software engineering for ML:
- reproducible training
- versioned artifacts
- clean CLI interfaces
- tests + CI
- safe synthetic sample data

## Quickstart
```bash
make setup
make test
make train   # trains on examples/sample_logs and writes artifacts/
make predict # runs inference on examples/sample_logs
