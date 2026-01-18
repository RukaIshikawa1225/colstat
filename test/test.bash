#!/usr/bin/bash
# SPDX-FileCopyrightText: 2026 Ruka Ishikawa
# SPDX-License-Identifier: BSD-3-Clause

set -e
echo "1 2 3" | ./bin/colstat | grep -q "3 6 2"

