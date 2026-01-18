#!/usr/bin/bash
# SPDX-FileCopyrightText: 2026 Ruka Ishikawa
# SPDX-License-Identifier: BSD-3-Clause

set -e
echo "1 2 3" | ./bin/colstat > /dev/null
echo "1 2 3" | ./bin/colstat | grep -q 6
echo "1,2,3" | ./bin/colstat | grep -q 6

