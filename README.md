# 情報システム開発演習



## DB設計

### USER_INFO_META DB設計
|ID |NAME|PASSWORD|PHONE|ADDRESS|
|---|----|--------|-----|-------|

```
CREATE TABLE USER_INFO_META (ID INTEGER(10) AUTO_INCREMENT NOT NULL, NAME VARCHAR(64), PASSWORD VARCHAR(32) NOT NULL, PHONE_NUMBER VARCHAR(32), ADDRESS VARCHAR(255), PRIMARY KEY (ID));
```



### USER_INFO DB設計
|ID | POINT | HISTORY | 
|---|-------|---------|
```
CREATE TABLE USER_INFO_META (ID INTEGER(10) NOT NULL, POINT INTEGER(10) DEFAULT 0, HISTORY VARCHAR(65535) DEFAULT 0);
```