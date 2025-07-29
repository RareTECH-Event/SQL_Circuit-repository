# SQL サーキット

## セットアップ方法

1. リポジトリをクローン

```
git clone git@github.com:RareTECH-Event/SQL_Circuit-repository.git
```

2. ディレクトリに移動

```
cd SQL_Circuit-repository
```

3. Docker の起動

```
docker compose up -d
```

4. ブラウザを開く

```
http://localhost:8088
```

5. phpMyAdmin にログインする

```
ユーザ名:root
パスワード:rootpassword
```
<img width="803" height="593" alt="image" src="https://github.com/user-attachments/assets/dc85b89b-6180-484a-bc40-a8532cc6a95e" />

6. 左の「sql_circuit」データベースをクリック

<img width="1611" height="792" alt="スクリーンショット 2025-07-29 17 33 35" src="https://github.com/user-attachments/assets/77099819-bd6c-4e8d-abf4-45f0731655b7" />

7. 上の「SQL」タブをクリック

<img width="1611" height="768" alt="スクリーンショット 2025-07-29 17 35 29" src="https://github.com/user-attachments/assets/958e527e-1fe4-4936-a5e2-9cc107a98d28" />



## サーキットが終わったら・・・
8 . Docker を停止

```
docker compose down -v
```

9. Docker のクリア

```
docker system prune -a
```
