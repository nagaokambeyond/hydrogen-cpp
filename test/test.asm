global _start
_start:
    mov rax, 60    # exitをあらわす
    mov rdi, 0     # 返却する値
    syscall        # 上記のレジスタの内容でシステムコール
    