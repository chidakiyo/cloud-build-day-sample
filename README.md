# cloud-build-day-sample
Cloud Build Dayのデモ用

## 実行方法

- 事前に必要なこと
    - GCPプロジェクトの作成
    - GCSバケットの作成
    - gcloud コマンドのインストール及び初期設定(Cloud Buildコンポーネント)
    - 環境変数として `PROJECT_ID`, `BUCKET` の設定が必要
    - Cloud Build の IAM に `Storage Owner` の権限

### サンプル 1

```
make run-sample1
```

実際に実行するコマンド

```
gcloud builds submit --config sample1/cloud-build.yaml --project $(PROJECT_ID) --substitutions _BUCKET=$(BUCKET) .
```
