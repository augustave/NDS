#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting Autonomous Venture Studio Swarm..."
echo "----------------------------------------------"
python3 "$SCRIPT_DIR/swarm_orchestrator.py"
echo "----------------------------------------------"
echo "Swarm Execution Complete."
