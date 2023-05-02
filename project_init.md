# Project init

## pubspec.yamlの変更

## Flutterのセッティング
1. /flutter/をプロジェクトコードに変更
2. `cd /projectcode/`
2. `fvm use x.y.z --force`
3. `fvm flutter create --org com.iori.champagnejulep --platforms ios,android .`を実行
4. 変更した/champagnejulep/を/flutter/に変更

### keyの生成
1. ```keytool -genkey -v -keystore flutter/android/app/release.jks -alias key0 -keyalg RSA -keysize 2048 -validity 10000```
3. ```keytool -importkeystore -srckeystore flutter/android/app/release.jks -destkeystore flutter/android/app/release.jks -deststoretype pkcs12```
4. $PASSを設定し、`$PASS = "password"; $PATH = "flutter/android/key.properties"; echo "storePassword=$PASS" > $PATH; echo "keyPassword=$PASS" >> $PATH; echo "keyAlias=key0" >> $PATH; echo "storeFile=release.jks" >> $PATH; echo "serviceAccountFile=service_account_for_pub.json" >> $PATH;`を実行
5. `base64 -w 0 android/app/release.jks > android/app/encoded_release.txt`をGithubのSettingのActions secrets / New secretに"KEYSTORE_BASE64"として登録
6. "storePassword" > "KEYSTORE_PASSWORD", "keyAlias" > "KEY_ALIAS", "keyPassword" > "KEY_PASSWORD"に同様に登録
7. GCPからpublish用サービスアカウントkey(google-play-developer@pc-api-5816750925541526910-426.iam.gserviceaccount.com)をダウンロードし、android/app/service_account_for_pub.jsonとして保存
8. `base64 -w 0 android/app/service_account_for_pub.json > android/app/encoded_service_account_for_pub.txt`を"SERVICE_ACCOUNT_KEY_JSON"に同様に登録
9. `cat flutter/android/app/service_account_for_pub.json` の値をSERVICE_ACCOUNT_KEY_JSON_PLAINに登録

## chore/projectInitブランチで実行

### Firebaseの接続
1. "https://console.firebase.google.com/u/0/"に移動して本番用/開発用プロジェクトをそれぞれ作成
2. `dart pub global activate flutterfire_cli`を実行
3. `flutterfire configure --out lib/config/firebase_options_dev.dart --project com-iori-champagnejulep-dev --android-package-name com.iori.champagnejulep.dev --ios-bundle-id com.iori.champagnejulep.dev`を実行
4. `flutterfire configure --out lib/config/firebase_options.dart --project com-iori-champagnejulep --android-package-name com.iori.champagnejulep --ios-bundle-id com.iori.champagnejulep`を実行

### Icon/Splash/labelの設定
1. flutter\assets\images\ic_launcher.pngを上書き(512×512)
2. `flutter pub run flutter_launcher_icons:main`
3. 背景色を指定して、`flutter pub run flutter_native_splash:create`
4. android:labelの設定

### 初回ビルドとアプリ設定
1. flutter clean
2. projectInitをpullRequest
3. ビルドされたartifactをダウンロード
4. playConsoleで必要な情報を記載して製品版としてリリース
5. 設定 > 詳細設定から非公開に設定