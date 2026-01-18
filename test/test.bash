#!/usr/bin/bash
# SPDX-FileCopyrightText: 2026 Ruka Ishikawa
# SPDX-License-Identifier: BSD-3-Clause

set -e

echo -e "1 2\n3 4" | ./bin/colstat | grep -q "^2 4"
echo -e "1 2\n3 4" | ./bin/colstat | grep -q "^2 6"

