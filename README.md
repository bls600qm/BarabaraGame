## これだけは抑えておくポイント
- var timer: Timer!のようにタイマーを使うと，時間によって動くものを作れる．
- 値の保存をするときにはUserDefaultsを使うとアプリを閉じても保存される．  
  keyとなる文字列を設定すれば同じアプリ内からどこからでも呼び出すことができる．

```
let defaults: UserDefaults = UserDefaults.standard
```
- UIScreen.main.bounds.sizeを使うと，現在のiPhoneの画面サイズを取得できる．
```
let width: CGFloat = UIScreen.main.bounds.size
```
## Swiftの言語特性
- 配列の宣言
```
var 変数名: [変数の型] = [1,1,1]
```

## エラーが起きたところの原因，解決法
- func up()メソッドを書く部分で，Argument of '#selector' refers to instance method 'startDownloadTask()' that is not exposed to Objective-Cのエラーが出た．  
  これは@objcを文頭に追加したら解決した．


## テキストの改善点
- 先ほど書いたupメソッドを呼び出すと書かれている部分があるが，その時点ではまだupメソッド書いてないので順を入れ替えた方が良い．
- 関連付けをしよう!の画面のスクショで,まだ作ってないはずのretryやtoTopが載っているのは混乱を招くと思う．
  
