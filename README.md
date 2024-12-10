# MeiseiUniv-LyX-Layout
LyX layout file for graduation thesis of Department of Economics at Meisei University, Tokyo

明星大学経済学部卒業論文の様式に沿ったLyX用レイアウトファイルです。

組織名を変更したい場合には、レイアウトファイル中のPreamble1行目の\organizationの定義を変更してください。

JLreq reportをベーススタイルとして使用しています。

使用法（その１）
- Windowsの場合、卒業論文スターター for Windows.exeを使用して、レイアウト等のインストールを行います。このスターターは、下記の
  「使用法（その２）」と同じ操作をする他、卒業論文のひな型をインストールします。
- MacOSの場合、卒業論文スターター for MacOS.appを使用して、同様の操作を行います。Zip形式で圧縮されているので、解凍してから使用してください。

使用法（その２）
- レイアウトファイルを以下のLyXのリソースディレクトリに置きます。
    - Windowsの場合：C:\Users\(ユーザー名)\AppData\Roaming\lyx(version番号)\layouts
      （AppDataは隠しフォルダなので、エクスプローラーには通常表示されません。エクスプローラー上部のアドレス入力欄から
      　直接フォルダ名を入力してください。）
    - Macの場合：\~/Library/Application Support/LyX-(version番号)/layouts
      （\~/Libraryはファインダでは通常表示されません。ファインダでCommand+Shift+Gを押して、ディレクトリ名を入力して
      　アクセスしてください。なお、~はユーザーフォルダのこと（別名）です。通常は/Users/(ユーザー名)を指します。）
- LyXメニューの 文書→設定→文書クラス の文書クラスドロップダウンに「明星大学経済学部卒業論文」と出るのでそれを選択します。
- 上記で出ない場合は、ツール→環境構成 を実行して、LyXを再起動してください。

使用法（その３）
- 明星大学経済学部卒業論文.layout を任意の場所に置き、LyX中の文書→設定→ローカルのレイアウト からそのファイルを指定します。
  レイアウトファイルを移動すると、指定のし直しが必要です。
