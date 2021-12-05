
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
binary_to_assemblyではbinary.txt内のバイナリをアセンブリに直してassembly.txtに結果を出力します.

binary_to_assemblyではassembly.s内のバイナリをアセンブリに直してbinary.txtに結果を出力します.

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
 - s : 次の命令の実行
 - S : 複数命令先までスキップ
 - g : 汎用レジスタ(gpr)の表示
 - f : 浮動小数点レジスタ(fpr)の表示
 - l : リンクレジスタ(lr)の表示
 - c : コンディションレジスタ(cr)の表示
 - t : カウントレジスタ(ctr)の表示
 - m : 指定した数字近辺のメモリ状況の表示
 - M : 指定した範囲のメモリ状況の表示

以下のように使います.
```bash
sgcl #複数の命令をまとめて書いて良い
m    #S,m,Mを指定すると以下のように詳細を聞かれます
メモリアドレスをbyte単位で指定してください(ex: 100, 12, 300)
100, 40, 80
```

# Note
 
実行巻き戻しも多分そのうち追加します.
