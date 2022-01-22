
# PowerPC 32bit Simulator
 
PowerPC 32bit版のシミュレータです.

アセンブリを読ませて実行します.
 
 
# Requirement
 
* gcc 11.1.0
 
# Usage
  
```bash
git clone git@github.com:Sooh317/cpu_experiment.git
cd cpu_experiment
make install #重要
```
"assembly.txt" には読ませたいアセンブリのファイル名を列挙してください.

_min_caml_start のラベルがついた命令から順に実行します.

```bash
make
```
make をすると "sim" という実行ファイルが生成されます.
```bash
make binary_to_assembly
make assembly_to_binary
```
binary_to_assemblyではrun/bin内のバイナリをアセンブリに直してrun/asmに結果を出力します.

assembly_to_binaryではrun/assembly.txt内に列挙されたアセンブリファイルを読んでバイナリをrun/binに結果を出力します.

実際に実行する場合は以下を参照してください.


# Option

実行時にいくつかのオプションを設定することができます.
****
 * -s : ステップ実行を行います.(stepのs)

-sを指定した場合、暗黙に-da, -dbが指定されます.


****

 * -da : 命令列をアセンブリで出力しながら実行します.(display assemblyのda)


 * -db : 命令列をバイナリで出力しながら実行します.(display binaryのdb)

-da及び-dbで表示されるバイナリは左側が上位(0)で右側が下位(31)になっています.

これはマニュアルに則した実装です.

***

 * -ta : バイナリからアセンブリへの翻訳を行います.(to assemblyのta)
 * -tb : アセンブリからバイナリへの翻訳を行います.(to binaryのtb)

-aや-bと合わせることで、まとめて翻訳を行うことも可能です.
(branchまわりはバグりますが、他の翻訳はチェック済み)

***

 * -a : assembly.s からassemblyを読む

-tbの時だけ有効

***
 * -b : バイナリをbinary.txtから読ませます.(binaryのb)

(branchまわりの仕様がまだカスなのでバグります)
***

# Example

実行例です.

```bash
./sim 
```
実行結果だけ表示させます.(何を表示すべきかまだ決めてない)

```bash
./sim -s [-da] [-db]
```
飛びたいラベルを指定しながらステップ実行します.

ラベルに飛んだ後のステップ実行中には命令のアセンブリとバイナリが表示されます.

-daや-dbを指定しない場合は、アセンブリもバイナリも表示されます.

```bash
./sim -da > res.txt
```
プログラムを最後まで実行し、実行したアセンブリをres.txtに格納します.


```bash
./sim -ta [-b]
```
バイナリを入力としてアセンブリを吐くインタープリタとして動きます

-bを指定した場合は、binary.txtから読み込みます.

```bash
./sim -tb -a > res.txt
```
assembly.sに書いてあるアセンブリをバイナリに変換してres.txtに格納します.

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
 - "P : ブレイクポイント(file名,行数)/(ラベル名)/(メモリアドレス)の設定"
  
以下のように使います.
```bash
s;g;c;l # ";"で区切って複数命令を指定(スペースは入れないで)
P[4320] # asmファイルの中の ##4320 がある行が次に実行される状態へ飛ぶ
P[libmincaml.s,100] #libmincaml.Sの100行目が次に実行される状態へ飛ぶ(スペース気をつけて)
P[Lprint_int_gtzero] #ラベルも指定可能
m[0,300,440];C[3,4]
```

# Note
 
実行巻き戻しも多分そのうち追加します.
