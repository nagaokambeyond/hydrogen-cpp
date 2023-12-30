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

## 12:00〜　　アセンブラで実装した場合の感覚
https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md

`exit`は`60`

```assembly
global _start
_start:
    mov rax, 60    # exitをあらわす
    mov rdi, 0     # 返却する値
    syscall        # 上記のレジスタの内容でシステムコール
```

## 15:00〜　　アセンブラでビルド

アセンブラのコンパイル
> nasm -f elf64 test.asm

リンク
> ld test.o -o test

生成したファイルの実行
> ./test

返却内容の確認
> echo $?

## 23:00〜　　cmake

準備
> cmake -S . -B build/

ビルド
> cmake --build build/
> ./build/hydro

## 30:00〜　　指定ファイルを読み出して表示

## 38:30〜　　ファイルの内容を解析してtokenを生成

## 58:30〜　　tokenからassemblyを生成
