    .text
    sub     r0, r0, r0  # r0 を 0 にする
    b       _min_caml_start
_min_caml_start:
    addis   r1, r0, ha16(global_var0)
    ori     r1, r1, lo16(global_var0)
    sw      r0, 0(r1)
    fcos    r2, r0
    sw      r2, 4(r1)
    lw      r60, 4(r1)
    ftoi    r60, r60
    addi    r61, r60, 48
    out     r61
    b       _min_caml_end
_min_caml_end:
    flush
    halt
    halt
    halt    # ここで text セクション終わり
# ここから data セクション
    .data
global_var0: # 適当なグローバル変数名
    .size   2 # この領域のサイズが 2 バイトであることを表す。領域の初期化は不要