#!/bin/bash
# Setup script for PySpark environment
# This script activates the virtual environment and sets up Java 17
#
# Usage:
#   source setup_env.sh          (recommended - runs in current shell)
#   OR
#   ./setup_env.sh               (runs in subshell, then drops you into interactive shell)

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Activate virtual environment
source pyspark-learn-env/bin/activate

# Set Java 17 environment variables
export JAVA_HOME=/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

echo "✓ Virtual environment activated"
echo "✓ Java 17 configured (Java version: $(java -version 2>&1 | head -1))"
echo ""
echo "You can now run PySpark scripts. Example:"
echo "  python BonusChapter01/pyspark_test_script.py"
echo ""

# If script was executed (not sourced), start an interactive shell
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "Starting interactive shell with environment configured..."
    echo "Type 'exit' when done."
    exec "$SHELL"
fi

