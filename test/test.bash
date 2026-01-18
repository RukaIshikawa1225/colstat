#!/usr/bin/bash
# SPDX-FileCopyrightText: 2026 Ruka Ishikawa
# SPDX-License-Identifier: BSD-3-Clause

set -e

# 正常系
echo -e "1 2\n3 4" | ./bin/colstat | grep -q "^2 4"

# 数値でない
! echo "1 a 3" | ./bin/colstat

# 列数不一致
! echo -e "1 2\n3" | ./bin/colstat

# 空入力
! echo "" | ./bin/colstat

