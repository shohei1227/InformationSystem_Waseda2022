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

### PRODUCT 
| number | productName | product | color | brand | name | material | size | image | price | 
|------|----------|----------|------|----------|----------------------|-----------------|-----|-------------|------|
| 1002 | 'Tシャツ' | 'Tシャツ' | '緑' | 'Adidos' | 'AdidosのTシャツ (緑)' | '綿、ポリエステル' | 'M' | '1002.jpeg' | 2000 | 
| 1003 | 'Tシャツ' | 'Tシャツ' | '緑' | 'Adidos' | 'AdidosのTシャツ (緑)' | '綿、ポリエステル' | 'S' | '1002.jpeg' | 2000 | 
| 1004 | 'Tシャツ' | 'Tシャツ' | '黒' | 'Adidos' | 'AdidosのTシャツ (黒)' | '綿、ポリエステル' | 'L' | '1003.jpeg' | 2000 | 
| 1005 | 'Tシャツ' | 'Tシャツ' | '白' | 'Adidos' | 'AdidosのTシャツ (白)' | '綿、ポリエステル' | 'M' | '1004.jpeg' | 2000 | 
| 1006 | 'Tシャツ' | 'Tシャツ' | '白' | 'Adidos' | 'AdidosのTシャツ (白)' | '綿、ポリエステル' | 'S' | '1004.jpeg' | 2000 | 
| 1007 | 'Tシャツ' | 'Tシャツ' | 'グレー' | 'Adidos' | 'AdidosのTシャツ (グレー)' | '綿、ポリエステル' | 'L' | '1005.jpeg' | 2000 | 
| 1008 | 'Tシャツ' | 'Tシャツ' | '黒' | 'Adidos' | 'AdidosのTシャツ (黒)' | '綿、ポリエステル' | 'L' | '1006.jpeg' | 2000 | 
| 1009 | 'Tシャツ' | 'Tシャツ' | '黒' | 'Adidos' | 'AdidosのTシャツ (黒)' | '綿、ポリエステル' | 'M' | '1006.jpeg' | 2000 | 
| 1010 | 'Tシャツ' | 'Tシャツ' | '黒' | 'NOVEMBRE' | 'NOVEMBREのTシャツ (黒)' | '綿、ポリエステル' | 'M' | '1007.jpeg' | 2000 | 
| 1011 | 'Tシャツ' | 'Tシャツ' | '白' | 'NOVEMBRE' | 'NOVEMBREのTシャツ (白)' | '綿、ポリエステル' | 'L' | '1008.jpeg' | 2000 | 
| 1012 | 'Tシャツ' | 'Tシャツ' | '白' | 'NOVEMBRE' | 'NOVEMBREのTシャツ (白)' | '綿、ポリエステル' | 'M' | '1008.jpeg' | 2000 | 
| 1013 | 'Tシャツ' | 'Tシャツ' | '白' | 'NOVEMBRE' | 'NOVEMBREのTシャツ (白)' | '綿、ポリエステル' | 'L' | '1009.jpeg' | 2000 | 
| 1014 | 'Tシャツ' | 'Tシャツ' | '白' | 'NOVEMBRE' | 'NOVEMBREのTシャツ (白)' | '綿、ポリエステル' | 'S' | '1009.jpeg' | 2000 | 
| 1015 | 'Tシャツ' | 'Tシャツ' | '白' | 'NOVEMBRE' | 'NOVEMBREのTシャツ (白)' | '綿、ポリエステル' | 'M' | '1010.jpeg' | 2000 | 
| 1016 | 'Tシャツ' | 'Tシャツ' | '白' | 'NOVEMBRE' | 'NOVEMBREのTシャツ (白)' | '綿、ポリエステル' | 'S' | '1010.jpeg' | 2000 | 
| 1017 | 'Tシャツ' | 'Tシャツ' | '黒' | 'NOVEMBRE' | 'NOVEMBREのTシャツ (黒)' | '綿、ポリエステル' | 'L' | '1011.jpeg' | 2000 | 
| 1018 | 'Tシャツ' | 'Tシャツ' | '黒' | 'NOVEMBRE' | 'NOVEMBREのTシャツ (黒)' | '綿、ポリエステル' | 'M' | '1011.jpeg' | 2000 | 
| 1019 | 'Tシャツ' | 'Tシャツ' | '青' | 'NOVEMBRE' | 'NOVEMBREのTシャツ (青)' | '綿、ポリエステル' | 'L' | '1012.jpeg' | 2000 | 
| 1020 | 'Tシャツ' | 'Tシャツ' | '青' | 'NOVEMBRE' | 'NOVEMBREのTシャツ (青)' | '綿、ポリエステル' | 'M' | '1012.jpeg' | 2000 | 
| 1021 | 'Tシャツ' | 'Tシャツ' | '白' | 'Beamer' | 'BeamerのTシャツ (白)' | '綿、ポリエステル' | 'M' | '1013.jpeg' | 2000 | 
| 1022 | 'Tシャツ' | 'Tシャツ' | '黒' | 'Beamer' | 'BeamerのTシャツ (黒)' | '綿、ポリエステル' | 'L' | '1014.jpeg' | 2000 | 
| 1023 | 'Tシャツ' | 'Tシャツ' | '白' | 'Beamer' | 'BeamerのTシャツ (白)' | '綿、ポリエステル' | 'L' | '1015.jpeg' | 2000 | 
| 1024 | 'Tシャツ' | 'Tシャツ' | '黒' | 'Beamer' | 'BeamerのTシャツ (黒)' | '綿、ポリエステル' | 'L' | '1016.jpeg' | 2000 | 
| 1025 | 'Tシャツ' | 'Tシャツ' | '赤' | 'Beamer' | 'BeamerのTシャツ (赤)' | '綿、ポリエステル' | 'M' | '1017.jpeg' | 2000 | 
| 1026 | 'Tシャツ' | 'Tシャツ' | '黒' | 'Beamer' | 'BeamerのTシャツ (黒)' | '綿、ポリエステル' | 'L' | '1018.jpeg' | 2000 | 
| 1027 | 'Tシャツ' | 'Tシャツ' | '白' | 'Pume' | 'PumeのTシャツ (白)' | '綿、ポリエステル' | 'L' | '1019.jpeg' | 2000 | 
| 1028 | 'Tシャツ' | 'Tシャツ' | '白' | 'Pume' | 'PumeのTシャツ (白)' | '綿、ポリエステル' | 'M' | '1019.jpeg' | 2000 | 
| 1029 | 'Tシャツ' | 'Tシャツ' | 'グレー' | 'Pume' | 'PumeのTシャツ (グレー)' | '綿、ポリエステル' | 'L' | '1020.jpeg' | 2000 | 
| 1030 | 'Tシャツ' | 'Tシャツ' | 'グレー' | 'Pume' | 'PumeのTシャツ (グレー)' | '綿、ポリエステル' | 'M' | '1020.jpeg' | 2000 | 
| 1031 | 'Tシャツ' | 'Tシャツ' | '白' | 'Cerina' | 'CerinaのTシャツ (白)' | '綿、ポリエステル' | 'M' | '1021.jpeg' | 2000 | 
| 1032 | 'Tシャツ' | 'Tシャツ' | '白' | 'Cerina' | 'CerinaのTシャツ (白)' | '綿、ポリエステル' | 'L' | '1022.jpeg' | 2000 | 
| 1033 | 'Tシャツ' | 'Tシャツ' | '白' | 'Cerina' | 'CerinaのTシャツ (白)' | '綿、ポリエステル' | 'L' | '1023.jpeg' | 2000 | 
| 1034 | 'シャツ' | 'シャツ' | '赤' | 'Adidos' | 'Adidosのシャツ (赤)' | '綿・ポリエステル' | 'L' | '1024.jpeg' | 2500 | 
| 1035 | 'シャツ' | 'シャツ' | '赤' | 'Adidos' | 'Adidosのシャツ (赤)' | '綿・ポリエステル' | 'M' | '1024.jpeg' | 2500 | 
| 1036 | 'シャツ' | 'シャツ' | '青' | 'Adidos' | 'Adidosのシャツ (青)' | '綿・ポリエステル' | 'L' | '1025.jpeg' | 2500 | 
| 1037 | 'シャツ' | 'シャツ' | '青' | 'Adidos' | 'Adidosのシャツ (青)' | '綿・ポリエステル' | 'M' | '1025.jpeg' | 2500 | 
| 1038 | 'シャツ' | 'シャツ' | '白' | 'Adidos' | 'Adidosのシャツ (白)' | '綿・ポリエステル' | 'L' | '1026.jpeg' | 2500 | 
| 1039 | 'シャツ' | 'シャツ' | '白' | 'Adidos' | 'Adidosのシャツ (白)' | '綿・ポリエステル' | 'M' | '1026.jpeg' | 2500 | 
| 1040 | 'シャツ' | 'シャツ' | '白' | 'Beamer' | 'Beamerのシャツ (白)' | '綿・ポリエステル' | 'M' | '1027.jpeg' | 2500 | 
| 1041 | 'シャツ' | 'シャツ' | '青' | 'Beamer' | 'Beamerのシャツ (青)' | '綿・ポリエステル' | 'M' | '1028.jpeg' | 2500 | 
| 1042 | 'シャツ' | 'シャツ' | '青' | 'Beamer' | 'Beamerのシャツ (青)' | '綿・ポリエステル' | 'L' | '1029.jpeg' | 2500 | 
| 1043 | 'シャツ' | 'シャツ' | '黒' | 'Beamer' | 'Beamerのシャツ (黒)' | '綿・ポリエステル' | 'L' | '1030.jpeg' | 2500 | 
| 1044 | 'シャツ' | 'シャツ' | '黒' | 'melon' | 'melonのシャツ (黒)' | '綿・ポリエステル' | 'M' | '1031.jpeg' | 2500 | 
| 1045 | 'シャツ' | 'シャツ' | '黒' | 'melon' | 'melonのシャツ (黒)' | '綿・ポリエステル' | 'L' | '1032.jpeg' | 2500 | 
| 1046 | 'シャツ' | 'シャツ' | '白' | 'melon' | 'melonのシャツ (白)' | '綿・ポリエステル' | 'L' | '1033.jpeg' | 2500 | 
| 1047 | 'シャツ' | 'シャツ' | '白' | 'Neki' | 'Nekiのシャツ (白)' | '綿・ポリエステル' | 'M' | '1034.jpeg' | '2500 | 
| 1048 | 'シャツ' | 'シャツ' | 'グレー' | 'Neki' | 'Nekiのシャツ (グレー)' | '綿・ポリエステル' | 'M' | '1035.jpeg' | 2500 | 
| 1049 | 'タンクトップ' | 'タンクトップ' | 'グレー' | 'GUP' | 'GUPのタンクトップ (グレー)' | 'コットン' | 'L' | '1036.jpeg' | 1200 | 
| 1050 | 'タンクトップ' | 'タンクトップ' | '白' | 'GUP' | 'GUPのタンクトップ (白)' | 'コットン' | 'L' | '1037.jpeg' | 1200 | 
| 1051 | 'タンクトップ' | 'タンクトップ' | '黒' | 'GUP' | 'GUPのタンクトップ (黒)' | 'コットン' | 'M' | '1038.jpeg' | 1200 | 
| 1052 | 'タンクトップ' | 'タンクトップ' | '白' | 'GUP' | 'GUPのタンクトップ (白)' | 'コットン' | 'M' | '1039.jpeg' | 1200 | 
| 1053 | 'ベルト' | 'ベルト' | '黒' | 'Cerina' | 'Cerinaのベルト (黒)' | 'レザー' | 'free' | '1040.jpeg' | 999 | 
| 1054 | 'ベルト' | 'ベルト' | '茶色' | 'Cerina' | 'Cerinaのベルト (茶色)' | 'レザー' | 'free' | '1041.jpeg' | 999 | 
| 1055 | 'ベルト' | 'ベルト' | '茶色' | 'Cerina' | 'Cerinaのベルト (茶色)' | 'レザー' | 'free' | '1042.jpeg' | 999 | 
| 1056 | 'サンダル' | 'サンダル' | '黒' | 'GUP' | 'GUPのサンダル (黒)' | '合成繊維' | 'L' | '1043.jpeg' | 1290 | 
| 1057 | 'サンダル' | 'サンダル' | '黒' | 'GUP' | 'GUPのサンダル (黒)' | '合成繊維' | 'M' | '1043.jpeg' | 1290 | 
| 1058 | 'サンダル' | 'サンダル' | '黒' | 'GUP' | 'GUPのサンダル (黒)' | '合成繊維' | 'S' | '1043.jpeg' | 1290 | 
| 1059 | 'サンダル' | 'サンダル' | '黒' | 'GUP' | 'GUPのサンダル (黒)' | '合成繊維' | 'L' | '1044.jpeg' | 1290 | 
| 1060 | 'サンダル' | 'サンダル' | '黒' | 'GUP' | 'GUPのサンダル (黒)' | '合成繊維' | 'M' | '1044.jpeg' | 1290 | 
| 1061 | 'サンダル' | 'サンダル' | '黒' | 'GUP' | 'GUPのサンダル (黒)' | '合成繊維' | 'S' | '1044.jpeg' | 1290 | 
| 1062 | 'サンダル' | 'サンダル' | '黒' | 'GUP' | 'GUPのサンダル (黒)' | '合成繊維' | 'L' | '1045.jpeg' | 1290 | 
| 1063 | 'サンダル' | 'サンダル' | '黒' | 'GUP' | 'GUPのサンダル (黒)' | '合成繊維' | 'M' | '1045.jpeg' | 1290 | 
| 1064 | 'サンダル' | 'サンダル' | '黒' | 'GUP' | 'GUPのサンダル (黒)' | '合成繊維' | 'S' | '1045.jpeg' | 1290 | 
| 1065 | 'スラックス' | 'スラックス' | '緑' | 'Neki' | 'Nekiのスラックス (緑)' | '綿、アクリル' | 'L' | '1046.jpeg' | 1600 | 
| 1066 | 'スラックス' | 'スラックス' | '緑' | 'Neki' | 'Nekiのスラックス (緑)' | '綿、アクリル' | 'M' | '1046.jpeg' | 1600 | 
| 1067 | 'スラックス' | 'スラックス' | '黄色' | 'Neki' | 'Nekiのスラックス (黄色)' | '綿、アクリル' | 'L' | '1047.jpeg' | 1600 | 
| 1068 | 'スラックス' | 'スラックス' | '緑' | 'Neki' | 'Nekiのスラックス (緑)' | '綿、アクリル' | 'M' | '1048.jpeg' | 1600 | 
| 1069 | 'スラックス' | 'スラックス' | 'ピンク' | 'Neki' | 'Nekiのスラックス (ピンク)' | '綿、アクリル' | 'L' | '1049.jpeg' | 1600 | 
| 1070 | 'スラックス' | 'スラックス' | '黒' | 'Adidos' | 'Adidosのスラックス (黒)' | '綿、アクリル' | 'L' | '1050.jpeg' | 1600 | 
| 1071 | 'スラックス' | 'スラックス' | '白' | 'Adidos' | 'Adidosのスラックス (ピンク)' | '綿、アクリル' | 'M' | '1051.jpeg' | 1600 | 
| 1072 | 'スラックス' | 'スラックス' | '白' | 'Adidos' | 'Adidosのスラックス (黒)' | '綿、アクリル' | 'S' | '1051.jpeg' | 1600 | 
| 1073 | 'スラックス' | 'スラックス' | '黒' | 'Adidos' | 'Adidosのスラックス (白)' | '綿、アクリル' | 'L' | '1052.jpeg' | 1600 | 
| 1074 | 'デニム' | 'デニム' | '青' | 'NOVEMBRE' | 'NOVEMBREのデニム (青)' | '綿、ポリエステル' | 'L' | '1053.jpeg' | 2500 | 
| 1075 | 'デニム' | 'デニム' | '青' | 'NOVEMBRE' | 'NOVEMBREのデニム (青)' | '綿、ポリエステル' | 'M' | '1053.jpeg' | 2500 | 
| 1076 | 'デニム' | 'デニム' | '青' | 'NOVEMBRE' | 'NOVEMBREのデニム (青)' | '綿、ポリエステル' | 'L' | '1054.jpeg' | 2500 | 
| 1077 | 'デニム' | 'デニム' | '青' | 'NOVEMBRE' | 'NOVEMBREのデニム (青)' | '綿、ポリエステル' | 'M' | '1054.jpeg' | 2500 | 
| 1078 | 'デニム' | 'デニム' | '青' | 'NOVEMBRE' | 'NOVEMBREのデニム (青)' | '綿、ポリエステル' | 'M' | '1055.jpeg' | 2500 | 
| 1079 | 'デニム' | 'デニム' | '青' | 'NOVEMBRE' | 'NOVEMBREのデニム (青)' | '綿、ポリエステル' | 'S' | '1055.jpeg' | 2500 | 
| 1080 | '短パン' | '短パン' | '黒' | 'Neki' | 'Nekiの短パン (黒)' | '綿、ポリエステル' | 'free' | '1056.jpeg' | 1000 | 
| 1081 | '短パン' | '短パン' | '緑' | 'Beamer' | 'Beamerの短パン (緑)' | '綿、ポリエステル' | 'free' | '1057.jpeg' | 1000 | 
| 1082 | '短パン' | '短パン' | '黒' | 'Beamer' | 'Beamerの短パン (黒)' | '綿、ポリエステル' | 'free' | '1058.jpeg' | 1000 | 
| 1083 | '短パン' | '短パン' | '青' | 'Cerina' | 'Cerinaの短パン (青)' | '綿、ポリエステル' | 'free' | '1059.jpeg' | 1000 | 
| 1084 | '短パン' | '短パン' | 'ピンク' | 'Cerina' | 'Cerinaの短パン (ピンク)' | '綿、ポリエステル' | 'free' | '1060.jpeg' | 1500 | 
| 1085 | '帽子' | '帽子' | '黒' | 'SOP' | 'SOPの帽子 (黒)' | 'ナイロン' | 'free' | '1061.jpeg' | 1500 | 
| 1086 | '帽子' | '帽子' | '黒' | 'SOP' | 'SOPの帽子 (黒)' | 'コットン' | 'free' | '1062.jpeg' | 1500 | 
| 1087 | '帽子' | '帽子' | '茶色' | 'Under' | 'Underの帽子 (茶色)' | 'コットン' | 'free' | '1063.jpeg' | 1500 | 
| 1088 | '帽子' | '帽子' | '青' | 'Under' | 'Underの帽子 (青)' | 'ポリエステル' | 'free' | '1064.jpeg' | 1500 | 
| 1089 | '帽子' | '帽子' | '青' | 'LIV' | 'LIVの帽子 (青)' | 'コットン' | 'free' | '1065.jpeg | 1500 |

- CREATE TABLE
```
CREATE TABLE PRODUCT(
PRODUCT_CODE BIGINT(19) NOT NULL,
PRODUCT_NAME VARCHAR(255),
CATEGORY_NAME VARCHAR(255),
COLOR VARCHAR(255),
MAKER_NAME VARCHAR(255), 
DETAIL VARCHAR(4096),
MATERIAL VARCHAR(255),
SIZE VARCHAR(255),
IMAGE VARCHAR(255),
PRICE BIGINT(19),
PRIMARY KEY (PRODUCT_CODE)
);
```

- INSEART DATA
```
INSERT INTO PRODUCT (PRODUCT_CODE, PRODUCT_NAME, CATEGORY_NAME, COLOR, MAKER_NAME, DETAIL, MATERIAL, SIZE, IMAGE, PRICE) 
VALUES (1001, 'Tシャツ', 'Tシャツ', '白', 'Adidos', 'AdidosのTシャツ (白)', '綿、ポリエステル' ,'L' ,'1001.jpeg', 2000);
```