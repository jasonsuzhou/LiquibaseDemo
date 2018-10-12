If the change log is sql format, you must add below 2 comments line at the top of the file

```
--liquibase formatted sql
--changeset <author>:<version>
```

before you want to add new sql in the same sql file, you need add below 1 comment

```
--changeset <author>:<version>
```
