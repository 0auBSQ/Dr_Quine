# Quines Nadeshiko
## なでしこで自分自身を表示するプログラム

Learn Japanese with programming !
The following quines are writen in Nadeshiko and can be executed with the nadeshiko3 interpreter :
```
npm install -g nadeshiko3
cnako3 [file.nako]
```
I will traduce some parts for better understanding.

## Nadeshiko basics

(From the nadeshiko tutorial https://nadesi.com/doc3/index.php?%E6%96%87%E5%AD%97%E5%88%97%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6 in japanese)
Print litteral :
```
「こんにちは」と表示。
# 「kon'nichiwa」 to hyouji
# Displays "こんにちは"
```
Declare variable :
```
値段は300
# Nedan wa 300 (sanbyaku)
```
Display variable (in brackets) :
```
「りんごは{値段}円」と表示。
# 「Ringo ha {nedan} en」 to hyouji
# Displays "りんごは300円"
```
With strings :
```
値段は「SAN-BYAKU」
# 「りんごは{値段}円」と表示。
# Displays "りんごはSAN-BYAKU円"
```
Litteral in thick brackets doesn't expand variables :
```
『りんごは{値段}円』と表示。
# Displays "りんごは{値段}円"
```
Declare multi-line string and multiple variables on the same line :
```
点数は35。評価は「A」。
成績表は、S{{{★成績表★
・彼の点数は{点数}。
・評価は｛評価｝。}}}
成績表を表示。
#
# Tensuu wa 35. Hyouka wa 「A」.
# Seiseki-hyou wa, S{{{★ Seiseki-hyou ★
# ・ Kare no Tensuu wa {Tensuu}
# ・ Hyouka wa {Hyouka}.}}}
# Seiseki-hyou wo hyouji.
# 
# Note that it still works if we put more than 3 brackets
# We can also replace S{{{...}}} by R{{{...}}} to not expand variables (And write {Tensuu} and {Hyouka} directly in the previous example
```
Avaliable brackets :
```
With expansion : " “” 「」
Without expansion : ' 『』
```
Avaliable operations :
```
Set : = は
Add : +
Substract : -
Multiply : x *
Divide : ÷ /
Modulo : %
Pow : ^
Concat : &
Bit-shift : << >> >>>
```
Comparaison :
```
Equal : = は
Not equal : ≠ != <>
Supérior or equal : ≧ >=
Superior : >
Inferior : <
Inferior or equal : ≧ <=
And : かつ &&
Or : または ||
```
Arrays :
```
評価は[「A」,「B」,「C」,「D」,「F」]
評価[0]を表示。
評価[1]を表示。
```
JSON dicts :
```
点数は{「A」:100, 「B」:80, 「C」:50, 「D」:20, 「F」:0}
点数[「B」]を表示。
点数[「D」]を表示。
# Can also combine with the nedan tab
点数[評価[2]]を表示。
点数[評価[3]]を表示。
```
We can also declare arrays/dicts with the `@` operator :
```
天気は空配列
天気@0は「暑い」
天気@1は「温かい」
天気@2は「寒い」
天気@「暑い」は「溶ける」
天気@1を表示。
天気[1]を表示。
天気[天気@0]を表示。
```
Replace in a string :
```
# Nengappi wa「2017/03/16」no「/」wo「|」ni chikan
年月日は「2017/03/16」の「/」を「|」に置換
# We can also imbricate functions with して (shite)
# 「2017/03/16」no「/」o「-」ni chikan shite hyouji
「2017/03/16」の「/」を「-」に置換して表示。

```
We can replace "して" by "す。" to make the code more readable :
```
30に5を足して2を掛けて表示。
30に5を足す。それに2を掛ける。それを表示。
# 30 ni 5 o tashite 2 wo kakete hyouji
# 30 ni 5 o tasu. sore ni 2 wo kakeru. sore o hyouji
```
Condition :
```
もし、(評価[0]は「B」)ならば
　　「OK」を表示。
違えば
　　「Not OK」を表示。
ここまで
# Displays "OK" if Nedan[0] is "B", else displays "Not OK"
もし、(評価[0]は「A」)ならば、「A da yo」を表示。
# If the condition stands in one line, we can omit ここまで (koko made)
もし、(評価[0]は「C」)でなければ、「C dewanai」を表示。
# We can negate the condition with でなければ (denakereba)
```
Loops :
```
3回、ここから
　　「こんにちは」と表示。
ここまで。
# Displays こんにちは 3 times, 、ここから (, koko kara) can be omitted
N=3
(N)回
　　「やぁ。{回数}回目」と表示。
ここまで。
# Displays やぁ。 N times (here 3) followed by the iteration number (回数 variable)
Nで３から５まで繰り返す、ここから
　　Nを表示
ここまで
# For n = 3 to 5, displays 3 4 5
A=1
(A<=5)の間、ここから
　　Aを表示
　　A=A+1
ここまで
# While A<=5 loop, displays from 1 to 5
[1,2,3]を反復、ここから
　　対象を表示。
ここまで。
# Array foreach, displays 1 2 3, {対象} is current value
Nで[1,2,3]を反復
　　Nを表示。
ここまで。
# Array foreach with custom variable name
OBJ = {"Jan":1, "Feb":2, "Mar":3, "Apr":4 }
OBJを反復
　　「{対象キー} = {対象}月」を表示
ここまで。
# JSON Dict foreach, {対象キー} is key and {対象} value
```
Functions :
```
●(AとBの)加算処理とは
　　（A+B）を戻す
ここまで
30と7の加算処理して表示。
Cは30と7の加算処理。
Cを表示。
#
# Function definition :
# ●(arg1とarg2とarg3と...argnの)function nameとは
#	(function contents)
#	(return result)を戻す
# ここまで
#
# Function call :
# arg1とarg2とarg3と...argnのfunction name
# Print function result :
# arg1とarg2とarg3と...argnのfunction nameして表示。
# Set to variable
# variable nameはarg1とarg2とarg3と...argnのfunction name
#
# It's possible to set a それ variable in the function
# For exemple それはA+B
# Returning with only 戻る will return the それ value
# The function will also return それ if we omit the 戻る keyword
●空白完全除去処理(Sを)
　　Sの「{タブ}」を「」に置換。
　　「{改行}」を「」に置換。
　　「　」を「」に置換。# 全角スペース
　　「 」を「」に置換。# 半角スペース
ここまで
「　　ab	 c　　」を空白完全除去処理して表示。
# Example with a function which removes all whitespaces in a string
# 空白完全除去処理 is the function name
# Sを Means the S value is as the same time input and output
●(VをAのBで)階乗計算とは
　　もし、Bが0以下ならば、Vを戻す。
　　(V*A)をAの(B-1)で階乗計算して戻す。
ここまで。
1を2の3で階乗計算して表示。
1を2の5で階乗計算して表示。
# We can also define recursive functions
# It's possible to get the arguments in a array (variable 引数) like in javascript, 引数[0] is the first argument
(関数)には(引数)
  # Function contents
ここまで。
# Anonymous functions
3秒後には
  「こんにちは」と表示。
ここまで。
# Wait function (3秒後 : 3 seconds after)
A=[1,10,100]
Aを配列カスタムソートするには、(a, b)
　それ=b-a
ここまで
Aを表示。
# Custom sort function
F = ●(a, b)
  # Function contents
ここまで
# Set an anonymous function to variable
```
Variables keywords :
```
G=30 # G is a variable, global scope
Aとは変数 # A is a variable, local scope
Bとは定数 # B is a constant, local scope
```
Return to line in code :
```
A = 1 + 1 + 1 + _
    2 + 2 + 2 + _
    3 + 3 + 3
Aを表示。
# The _ operator let you continue your instruction at the next line
```
Web specific :
```
逐次実行
　先に、「い」と表示。
　次に、「ろ」と表示。
　次に、「は」と表示。
ここまで。
# Asyncronnous call, 先に is the beginning state, 次に is equivalent to a ".then()" call
# It's possible to wait with 次に、1秒待機。 (1秒待機 : Waiting 1 second)
ZIP＝「221-0824」
API＝「https://api.aoikujira.com/zip/zip.php?fmt=json&zn={ZIP}」
逐次実行
　先に、APIをHTTP取得。
　次に、対象をJSONデコードして結果に代入。
　次に、結果["result"]を表示。
ここまで。
# Ajax request, here returns the Japan address with 221-0824 as zip code (Here a Yokohama location)
```
Usefull plugins :
```
https://nadesi.com/doc3/index.php?plugin_system
https://nadesi.com/v3/doc/index.php?%E5%91%BD%E4%BB%A4%E4%B8%80%E8%A6%A7%2F%E6%A9%9F%E8%83%BD%E9%A0%86
```
JavaScript integration :
```
JS{{{console.log("こんにちは")}}}
# All code inside the JS{{{...}}} tag have to be pure js, so no japanese brackets (「」)
```
Import module :
```
!「nadesiko3-hoge」を取り込む
3と5をHOGE足して表示。
# Example with hoge (npm install nadesiko3-hoge) unit test module
```

## Colleen

With the `ナデシコする` call, I evaluate strings with non-expand quotes, I write them directly with the `CHR()` call and the `『』` unicode values

## Grace

All the interesting unicode chars :
```
# {CHR(0x300E)} 『
# {CHR(0x300F)} 』
# {CHR(0x300C)} 「
# {CHR(0x300D)} 」
# {CHR(0x0022)} ""
# {CHR(0x007B)} {
# {CHR(0x007D)} }
```
This one was especially difficult since there is no documented function to create a file in Nadeshiko, I had to use a system call (`起動`)
Contains 3 anonymous functions (since Nadeshiko doesn't have macros)

## Sully