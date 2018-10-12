--liquibase formatted sql
--changeset jason:createuser
create table t_user(id bigint(20) primary key auto_increment);