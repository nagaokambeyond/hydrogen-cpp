# とても参考にしたもの
https://www.youtube.com/watch?v=vcSijrRsrY0

intel系CPU対象にしたコンパイラ
この動画にある、hydrogenという言語がコンパイルできるようにする。

# 環境
VSCodeのdevcontainerを使用する。
intel系CPUの命令セットの生成、実行を確認するため、
Dockerfile、devcontainer.jsonでは、`amd64`を指定している。

M1のMacOSでも動くことを目指す(rosetta)。

## devcontainerのはじめかた
VSCodeで左下のグリーンのアイコンをクリックして、`コンテナで再度開く`をクリックする

# https://www.youtube.com/watch?v=vcSijrRsrY0

# 1:00〜命令を変更する

`return 69;`→`exit 69;`

