
### DBの説明  
#### 利用者テーブル  
|クラス名|型|制限|
|:--|:--|:--|
|id|varchar(10)|primary key,not null制約|
|pass|varchar(64)||
|name|varchar(20)||



#### 解答テーブル  
|クラス名|型|制限|
|:--|:--|:--|
|mid|integer||
|id|varchar(10)|primary key,not null制約|
|title|varchar(20)||
|mondai|varchar(500)||
|age|varchar(20)||
|kaitou|varchar(500)||
|pass|varchar(64)||  


#### 問題テーブル 
|クラス名|型|制限|
|:--|:--|:--| 
|mid|integer|primary key,not null制約|
|id|varchar(10)||
|title|varchar(20)||
|age|varchar(20)||
|mondai|varchar(500)||