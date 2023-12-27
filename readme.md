# 作るもの
intel系CPU対象にしたコンパイラ
https://www.youtube.com/watch?v=vcSijrRsrY0
この動画にある、hydrogenという言語がコンパイルできるようにする。

# 環境
vscodeのdevcontainerを使用する。
intel系CPUの命令セットの生成、実行を確認するため、
Dockerfile、devcontainer.jsonでは、`amd64`を指定している。

m1のmacosでも動くことを目指す(rosetta)。

## 12:00〜
https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md

`exit`は`60`

```assembly
global _start
_start:
    mov rax, 60    # exitをあらわす
    mov rdi, 0     # 返却する値
    syscall        # 上記のレジスタの内容でシステムコール
```

## 15:00〜

アセンブラのコンパイル
> nasm -f elf64 test.asm

リンク
> ld test.o -o test

生成したファイルの実行
> ./test

返却内容の確認
> echo $?

## 23:00〜　
> cmake -S . -B build/
> cmake --build build/
> ./build/hydro
