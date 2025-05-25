# Custom script for [Stable Diffusion Forge Template for RunPod](https://runpod.io/console/deploy?template=whdfh5h5d4&ref=oxrbnozc)

テンプレートをより柔軟に使えるようにします。

## モデルを追加する

環境変数`MODEL_LIST_URL`にスクリプトのURLを指定することで、ダウンロードするモデルリストを上書きできます。\
実際の例は`model_list.sh`ファイルを参照してください。

モデルのダウンロードはバックグラウンドで行われるため、WebUIの起動完了とダウンロードの完了のタイミングは一致しないことに注意してください。\
ダウンロード状況はログに表示されます。

また、Civitaiはモデルのダウンロードにトークンが求められることがあるので、`CIVITAI_TOKEN`などで設定出来るようにしておくと良いでしょう。\
このようなケースのために、モデルリストはJSONではなくShellScriptで書く必要がありました。

## 起動スクリプトをカスタムする

環境変数`CUSTOM_SCRIPT_URL`にスクリプトのURLを指定することで、起動時の処理を追加できます。\
実際の例は`custom_script.sh`ファイルを参照してください。

ファイルのダウンロードには`curl`や`axel`が使えます。\
このスクリプトはユーザー権限で動作するので、システムパッケージの追加などは出来ません。

## 例

この設定を使う場合は以下のように環境変数を設定します。

```
MODEL_LIST_URL=https://raw.githubusercontent.com/hdae/runpod-custom-scripts/refs/heads/main/stable-diffusion-forge/model_list.sh
CUSTOM_SCRIPT_URL=https://raw.githubusercontent.com/hdae/runpod-custom-scripts/refs/heads/main/stable-diffusion-forge/custom_script.sh
CIVITAI_TOKEN=[civitaiから発行したトークン]
```
