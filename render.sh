#!/usr/bin/env bash
set -e

PIXI_PYTHON="/Users/troyaltus/data-projects/road-network-resilience/.pixi/envs/default/bin/python"

export QUARTO_PYTHON="$PIXI_PYTHON"
export PATH="/Users/troyaltus/data-projects/road-network-resilience/.pixi/envs/default/bin:$PATH"
unset CONDA_PREFIX
unset CONDA_DEFAULT_ENV

echo "Using Python: $QUARTO_PYTHON"
echo "==> Rendering all formats..."
quarto render road-network-resilience.qmd
echo "==> Done. Output in docs/"