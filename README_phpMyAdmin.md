# MySQLハンズオン(phpMyAdmin版)

1. Dockerの起動
```
docker compose up -d
```

2. ブラウザを開く
```
http://localhost:8088
```

3. phpMyAdminにログインする
```
ユーザ名:root
パスワード:rootpassword
```

4. 左の「sql_circuit」データベースをクリック


5. 上の「SQL」タブをクリック


5. Dockerを停止
```
docker compose down -v
```

6. Dockerのクリア
```
docker system prune -a
```