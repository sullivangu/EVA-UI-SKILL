#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
OUT_DIR="${ROOT_DIR}/build/hub-package"

rm -rf "${OUT_DIR}"
mkdir -p "${OUT_DIR}/agents" "${OUT_DIR}/references" "${OUT_DIR}/assets/example-lab"

cp "${ROOT_DIR}/SKILL.md" "${OUT_DIR}/"
cp "${ROOT_DIR}/README.md" "${OUT_DIR}/"
cp "${ROOT_DIR}/agents/openai.yaml" "${OUT_DIR}/agents/"
cp "${ROOT_DIR}/references/"*.md "${OUT_DIR}/references/"
cp "${ROOT_DIR}/assets/example-lab/index.html" "${OUT_DIR}/assets/example-lab/"
cp "${ROOT_DIR}/assets/example-lab/styles.css" "${OUT_DIR}/assets/example-lab/"

echo "Hub package exported to ${OUT_DIR}"
