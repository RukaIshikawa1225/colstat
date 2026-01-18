PDX-FileCopyrightText: 2026 石川 琉輝
SPDX-License-Identifier: BSD-3-Clause


`colstat` は、**標準入力から数値データを受け取り、各列ごとに件数・合計・平均を計算して出力する Linux コマンド**です。  
空白区切りやカンマ区切りの数値データを扱うことができます。

---

## 特徴

- 標準入力からデータを受け取る
- 複数行・複数列の数値データに対応
- 各列ごとに「件数・合計・平均」を出力
- 異常な入力に対しては終了ステータス 1 を返す
- bash によるテストを実装
- GitHub Actions による自動テストに対応

---

## 動作環境

- Linux
- Python 3

外部ライブラリは不要です。

---

## インストール

```bash
git clone https://github.com/RukaIshikawa2025/colstat.git
cd colstat
chmod +x bin/colstat
```
---

## 使い方

`colstat` は標準入力から数値データを受け取って動作します。  
ファイル名を引数として渡すのではなく、**パイプ（`|`）で入力を与えてください。**

### 基本的な使い方


```bash
echo -e "1 2\n3 4" | ./bin/colstat
```
### 出力例

```text
 2 4 2
 2 6 3
```
この例では：
 1列目：1,3→件数2/合計4/平均2
 2列目：2,4→件数2/合計6/平均3

---

## 入力形式

- 各行に数値を空白またはカンマ区切りで記述
- すべての行で列数かそろっている必要があります

### 対応例

```text
 1 2 3
 4 5 6
```

```text
 1,2,3
 4,5,6
```
---

## 異常系の扱い

以下の場合、'colstat'は何も出力せず終了ステータス1を返します。

- 入力が空の場合
- 数値以外のデータが含まれる場合
- 行ごとに列数が一致しない場合

### 例

```bash
echo "1 a 3" | ./bin/colstat
echo $?

1
```

---

## テスト

テストはbashスクリプトで実装されています。

```bash
./test/test.bash
```

正常終了時は何も表示されず、終了ステータスは0になります。

```bash
echo $?

0
```

---

## GitHub Actions

本リポジトリではGitHub Actionsを用いて、push時に自動テストが実行されるよう設定しています。

---

## ライセンス

このソフトウェアは**BSD 3-Clause License**のもとで公開されています。
詳細は'LICENSE'ファイルを参照してください。

---

##著作権表示

```yaml

SPDX-FileCopyrightText: 2026 Ruka Ishikawa
SPDX-License-Identifier: BSD-3-Clause
```

---
