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

6. 左の「sql_circuit」データベースをクリック

7. 上の「SQL」タブをクリック

8. Docker を停止

```
docker compose down -v
```

9. Docker のクリア

```
docker system prune -a
```
