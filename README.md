# 環境
## 環境構築
### エディター
- android studio
- xcode

### リポジトリの用意
```
git clone -b master git@github.com:rajibhossainpavel/old-communtiy.git
```

### dart
use: 2.13.1

インストール
```
brew tap dart-lang/dart
brew install dart@2.13
```

環境変数の登録
``` 
brew info dart@2.13
```
提示されるexportのコマンドを利用

### fvm

インストール
```
dart pub global activate fvm
brew tap leoafarias/fvm
brew install fvm
```

環境変数の設定
```
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

FYI.
```
https://fvm.app/docs/getting_started/installation
```

#### doctor
```
fvm flutter doctor
```

##### trouble shooting
- Unable to find bundled Java version.

```
cd /Applications/Android\ Studio.app/Contents/jre 
ln -s ../jre jdk               
ln -s "/Library/Internet Plug-Ins/JavaAppletPlugin.plugin" jdk
cd {oshiruco_app_home}
fvm flutter doctor
```

- Android license status unknown

```
flutter doctor --android-licenses
```
> Exception in thread "main" java.lang.NoClassDefFoundError: javax/xml/bind/annotation/XmlSchema

これを言われたら以下のURLを参考に解決
```
https://zenn.dev/captain_blue/articles/flutter-android-licenses-classnotfound
```


### ios setting
FYI.
```
https://docs.flutter.dev/get-started/install/macos#ios-setup
```
do belows.
- Install Xcode
- Set up the iOS simulator

if, you do not have cocoapods, do below.
- Deploy to iOS devices

FYI. (especially apple m1 machine)
- https://qiita.com/yoshinyan/items/2c9a59e5a3bd80b9bdbd
- https://stackoverflow.com/questions/64901180/running-cocoapods-on-apple-silicon-m1


### cocoapods setting
```
cd {oshiruco_app_home}
pod repo update
```

FYI.
- https://stackoverflow.com/questions/66037493/pod-install-error-on-m1-mac-flutter-project-with-native-code-like-shared-prefe/66037887

### android
#### java
##### jenvインストール
###### anyenvがインストールされている場合
```
anyenv install jenv
```
###### anyenvがない場合
```
brew install jenv
```
##### 環境設定
[jenv](https://github.com/jenv/jenv)のHPを参照して行う


#### android studio設定
メニューよりTools -> SDK managerを選択し、以下にチェックを入れて適宜ダウンロードする。
- SDK Platforms
   - Android API 32
- SDK Tools
   - Android SDK Build-Tools 32.1-rc1
   - NDK
   - Android SDK Command-line Tools
   - Android Emulator
   - Android SDK

#### androidのエミュレーター登録
1. メニューよりTools -> AVD Managerを選択
2. Create Virtual Deviceから、使用するDeviceを選択
3. 使用するOSを選択し、Download
4. 名前などを変更したい場合は次の画面で設定し、Finish
5. 起動する際はTools -> AVD Managerを選択し、緑色の再生マークを押す


### iOS/androidのエミューレーター起動
一つだけエミュレーターを起動している場合
```
ff run --dart-define=FLAVOR=staging 
```

複数エミュレーターを起動している場合
```
ff run --dart-define=FLAVOR=staging -d {エミュレーターのID}
```

#### トラブルシューティング
flutterプロジェクトにあるgradleを利用、バージョンの確認はプロジェクトルートで以下のコマンド。
```
./android/gradlew -v
```
gradlewが存在しない場合は`flutter build apk`を実行する。完了するとエラーが出るが現時点では無視する。


# 開発
## 基本構成
- freezed
- state-notifier
- hooks_riverpod

## Router
- routemaster (将来Web版に対応出来るように使用しましたが、予定がなければ置き換えて良さそうです)

## Assets
- flutter_gen
### 画像追加方法
1. 画像追加する
2. pubspec.yamlのassetsにpathを登録する
3. `make build-runner` を実行する

## Flavor
- prod
- staging
- development

### 実行方法
- argumanetに `--dart-define=FLAVOR=staging` をつけて実行する
- `make build-staging` でも実行できます

# ビルド方法
## Staging
1. `make ipa-stg` を実行する
2. 生成されたipaファイルを[Firesbase Distribution](https://console.firebase.google.com/project/ohiruco/appdistribution/app/ios:jp.cayto.oshiruco.ios.stg/releases?hl=ja)にアップロードする

### 実行できない場合
1. fvm flutter build ios --dart-define=FLAVOR=staging
1. xcodeを開く
1. Runnerを`Any iOS Device` に設定する
1. menu > Product > Archive を選択し、アーカイブされるのを待つ
1. Archivesのダイアログが開いたらDistribute Appを選択
1. Developを選択しnext
1. 以下の設定でnext
   1. App Thinning: none
   1. Rebuild from Bitcode✅
   1. Strip Swift symbols✅
   1. そのほかチェックしない
1. Automatically manage signing を選択しnext
1. Exportをクリックし、出力先を選択する

## Production
1. `make build-prod` を実行する
2. 生成されたipaファイルを手動でアップロードする

### 実行できない場合
1. fvm flutter build ios --dart-define=FLAVOR=prod
1. xcodeを開く
1. Runnerを`Any iOS Device` に設定する
1. menu > Product > Archive を選択し、アーカイブされるのを待つ
1. Archivesのダイアログが開いたらValidate Appを選択
1. ValidateがOKだったら、Distribute Appを選択
1. App Store Connectを選択しnext
1. Uploadを選択しnext
1. 以下の設定でnext
   1. Strip Swift symbols✅
   1. Upload your app's symbols✅
   1. Manage Version and Build Number✅
1. Automatically manage signing を選択しnext
1. Uploadをクリック
1. App Store Connectで `輸出コンプライアンスがありません` から回答し、完了するとTestFlightでテスト版が使用可能になる
