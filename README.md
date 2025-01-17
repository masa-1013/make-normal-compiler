# ふつうのコンパイラをつくろう
書籍「ふつうのコンパイラをつくろう」のコードリポジトリ

# 内容まとめ
## 1章
- プログラムをコンパイルすると実行可能ファイルが作成される。実行可能ファイルとはELF(executable and linking format) という特定の形式を満たしているファイルのこと。
  - file コマンドを使用すると、あるファイルがELFの形式かどうか調べれる

- 実行可能ファイルを生成するまでの4つの段階
  - 以下の4つの作業をまとめてビルドと呼ぶ(場合によってはコンパイルと呼ぶこともある)
  1. プリプロセス ・・ プリプロセッサにより#includeや#defineが処理される。要はヘッダファイルが取り込まれて展開される。コンパイルの前処理
  1. (狭義の) コンパイル ・・ プロプロセスの出力をコンパイラでコンパイルして、アセンブル言語のソースコードを出力する
  1. アセンブル ・・ アセンブラによって機械語に変換される。オブジェクトファイルと呼ばれるものが出力される
  1. リンク ・・ オブジェクトファイルから実行可能ファイルやライブラリを生成する。ライブラリを使用している場合はライブラリとの結合処理も行われる。

- コンパイルの4つの段階
  1. 構文解析 ・・ ソースコードを解析してコンピューターが理解しやすい構文木に変換する。
  1. 意味解析 ・・ 構文木を解析して余計なものを取り除いたり、情報を付け加えたりして、抽象構文木を生成する
  1. 中間表現の生成 ・・ コンパイラの内部だけで使われる中間表現という構造に変換する。1つのコンパイラで複数の言語やCPUに対応する場合にそれぞれに対応する必要がなくなる
  1. コード生成 ・・ 中間表現をアセンブリ言語に変換する