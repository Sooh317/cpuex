
# PowerPC 32bit Simulator
 
PowerPC 32bit版のシミュレータです.

# Requirement
 
* gcc 11.1.0
 
# Usage
  
```bash
make install #重要
```
"assembly.txt"には読ませたいアセンブリのファイル名を列挙してください.<br>
デフォルトでレイトレプログラム128*128が実行されます.
512*512を実行したい場合はminrt128.s -> minrt512.sとしてください.

<br>
make をすると "sim" という実行ファイルが生成されます.<br>

```bash
make
```

binary_to_assemblyではrun/bin内のバイナリをアセンブリに直してrun/asmに結果を出力します.
assembly_to_binaryではrun/assembly.txt内に列挙されたアセンブリファイルを読んでバイナリをrun/binに結果を出力します.

```bash
make binary_to_assembly
make assembly_to_binary
```

# Option

実行時にオプションを設定することができます.

****
 * -s : ステップ実行を行います.
****


# Example

実行例です.

```bash
./sim 
```
実行結果だけflushed.ppmに表示させます.

```bash
./sim -s
```
ステップ実行を行います.

# step execution specifications
 - "h : ヘルプの表示"
 - "s : 1ステップ進める";
 - "S : nステップ進める"; 
 - "g : 汎用をレジスタ表示";
 - "f : 浮動小数点レジスタを表示";
 - "c : crを表示";
 - "t : ctrを表示";
 - "l : lrを表示";
 - "m : メモリアドレス n 周辺を表示";
 - "M : メモリアドレス a-b を表示";
 - "C : nライン目のキャッシュを表示";
 - "N : 追跡したいアドレス n を指定";
 - "P : ブレイクポイント(メモリアドレス)の設定"
 - "R : 最後まで一気に実行"
  
以下のように使います.
```bash
s;g;c;l # ";"で区切って複数命令を指定(スペースは入れないで)
P[4320] # asmファイルの中の ##4320 がある行が次に実行される状態へ飛ぶ
m[0,300,440];C[3,4] #コンマの後にスペースは入れてはいけません
```
