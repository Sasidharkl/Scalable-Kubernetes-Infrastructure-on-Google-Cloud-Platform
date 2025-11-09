#!/usr/bin/env bash
set -euo pipefail
cd ../terraform || exit 1
terraform destroy -auto-approve
