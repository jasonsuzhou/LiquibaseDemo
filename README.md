If the change log is sql format, you must add below 2 comments line at the top of the file

```
--liquibase formatted sql
--changeset <author>:<version>
```

before you want to add new sql in the same sql file, you need add below 1 comment

```
--changeset <author>:<version>
```

## 踩过的坑

pom没有加jpa的依赖导致liquibase老是不执行，需要配置引入jpa依赖和jpa配置

如果用sql文件的方式，一定要注意author:version之间不能有空格

## Q&A
- 如果提交的SQL在升级过程中遇到了错误怎么办？
```
  是否是SQL版本问题？删除databasechangelog对应的id数据，或者重新修改配置文件把原有的changeset删掉，新建一个可以跑成功的changeset，切忌不能修改原有的changeset，
  这会导致checksum不一样导致重跑继续失败。
```