
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
 * -s : ステップ実行を行います.

-sを指定した場合、暗黙に-dが指定されます.

****

 * -j : 実行したいラベルまでjumpします.

-s を指定した場合のみ有効ですが、-sを指定しなくてもシミュレータは動作します.

****

 * -d : 命令列をアセンブリとバイナリの順でターミナルに表示させます.

表示されるバイナリは左側が上位(0)で右側が下位(31)になっています.

これはマニュアルに則した実装です.

***

# Example

実行例です.

```bash
./sim -d -s
```

# Note
 
実行巻き戻しも多分そのうち追加します.
