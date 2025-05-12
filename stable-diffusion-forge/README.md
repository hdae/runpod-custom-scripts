# Custom script for [Stable Diffusion Forge](https://runpod.io/console/deploy?template=whdfh5h5d4&ref=oxrbnozc)

テンプレートをより柔軟に使えるようにします。

## モデルを追加する

環境変数`MODEL_LIST_URL`にスクリプトのURLを指定することで、ダウンロードするモデル一覧を上書きできます。

実際の例は`model_list.sh`ファイルを参照してください。

モデルのダウンロードはバックグラウンドで行われるため、WebUIの起動完了とダウンロードの完了のタイミングは一致しないことに注意してください。  
ダウンロード状況はログに表示されます。

また、Civitaiは一部モデルのダウンロードにトークンが求められるので、`CIVITAI_TOKEN`などで設定出来るようにしておくと良いでしょう。  
このようなケースのために、JSONではなくShellScriptで書く必要がありました。

## 起動スクリプトをカスタムする

環境変数`CUSTOM_SCRIPT_URL`にスクリプトのURLを指定することで、起動時の処理を追加できます。

実際の例は`custom_script.sh`ファイルを参照してください。

ファイルのダウンロードには`git`や`curl`が使えます。  
ユーザー権限で動作するので、システムパッケージの追加などは出来ません。
