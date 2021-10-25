
# PowerPC 32bit Simulator
 
PowerPC 32bit版のシミュレータです.

アセンブリを読ませて実行します.
 
 
# Requirement
 
* gcc 11.1.0
 
# Usage
  
```bash
git clone git@github.com:Sooh317/cpu_experiment.git
cd cpu_experiment
```
"assembly.txt" には読ませたいアセンブリのファイル名を列挙してください.

_min_caml_start のラベルがついた命令から順に実行します.

```bash
make
```
make をすると "sim" という実行ファイルが生成されます.

実際に実行する場合は以下を参照してください.


# Option

実行時にいくつかのオプションを設定することができます.
****
 * -s : ステップ実行を行います.(stepのs)

-sを指定した場合、暗黙に-da, -dbが指定されます.

****

 * -j : 実行したいラベルまでjumpします.(jumpのj)

-s を指定した場合のみ有効ですが、-sを指定しなくてもシミュレータは動作します.

****

 * -da : 命令列をアセンブリで出力します.(display assemblyのda)



 * -db : 命令列をバイナリで出力します.(display binaryのdb)

-da及び-dbで表示されるバイナリは左側が上位(0)で右側が下位(31)になっています.

これはマニュアルに則した実装です.

***
 * -b : バイナリをbinary.txtから読ませます.(binaryのb)

***

 * -t : バイナリからアセンブリへの翻訳を行います.(translateのt)

-bと合わせることで、まとめて翻訳を行うことも可能です.


# Example

実行例です.

```bash
./sim 
```
実行結果だけ表示させます.(何を表示すべきかまだ決めてない)

```bash
./sim -s -j
```
飛びたいラベルを指定しながらステップ実行します.

ラベルに飛んだ後のステップ実行中には命令のアセンブリとバイナリが表示されます.

```bash
./sim -da > res.txt
```
実行したアセンブリをres.txtに格納します.


```bash
./sim -b -t > res.txt
```
res.txtにバイナリの翻訳結果を格納します.


# Note
 
実行巻き戻しも多分そのうち追加します.
