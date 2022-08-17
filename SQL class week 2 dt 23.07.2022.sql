-- Joining tables when there are two tables using Inner Join & Outer Join(Left , Right ) conditions
use learnsql;
create table ds18_cst1
(
cid int,
cname char(100),
oid int
);

insert into ds18_cst1 (cid,cname,oid)
values (001,'RAM',12),(002,'Rohan',13),(003,'Rajesh',15),(006,'Ranjan',21);

select * from ds18_cst1;

create table ds_order1
(
oid int,
odate char(100),
item char(20)
);

insert into ds_order1 (oid,odate,item)
values (12,'2008-09-07','soap'),(13,'2008-09-08','shampoo'),(18,'2008-10-08','lays');

select * from ds_order1;

select * from ds18_cst1 inner join ds_order1 on ds18_cst1.oid=ds_order1.oid;
select * from ds18_cst1 left join ds_order1 on ds18_cst1.oid=ds_order1.oid;
select * from ds18_cst1 right join ds_order1 on ds18_cst1.oid=ds_order1.oid;

create table cust1
(
cid int,
cname char(100)
);
insert into cust1 (cid,cname)
values (1,'Hello'),
(2,'Hii');

create table ord
(
oid int,
oname char(100)
);
insert into ord (oid,oname)
values (3,'PUSH'),
(4,'POP');

select * from cust1;  
select * from ord;
select * from cust1 cross join ord;

create table table1
(
tname char(10),
tid int,
titem varchar(10)
);

insert into table1 (tname,tid,titem)
values ('name',001,'t01'),('name2',002,'t02'),('name3',003,'t03'),
('name4',004,'t04');

create table tabletwo
(
tname char(10),
tid int,
titem varchar(10)
);

insert into tabletwo (tname,tid,titem)
values ('noname',007,'t07'),('noname8',008,'t08'),('noname9',009,'t09');

select tname from table1
union
select tname from tabletwo;

select tname from table1
union all
select tname from tabletwo;



create table test13
(
fname char(100),
col1 int,
col2 int
);

insert into test13 values ('hello',10,20);
insert into test13 values ('hi',30,40);

select * from test13;

select fname,col1,col2,col1+col2 from test13;
select fname,col1,col2,col1-col2 from test13;
select fname,col1,col2,col1*col2 from test13;
select fname,col1,col2,col1/col2 from test13;
select * from test13 where col1=10;
select * from test13 where col1>10;
select * from test13 where col1<=10;
select * from test13 where col1!=10;



create table test14
(
fname char(100),
col1 int,
col2 int
);

insert into test14 values ('PUSH',60,70);
insert into test14 values ('POP',100,80);

select * from test14;

