CREATE TABLE weblinks (
	ID serial primary key,
	url varchar(255) not null,
	name varchar(255) not null,
	description varchar(255)
);

select*from weblinks;

insert into weblinks(url, name) values('www.google.com', 'Google');
insert into weblinks(url, name) values('www.youtube.com', 'Youtube');
insert into weblinks(url, name) values('www.amazon.com', 'Amazon');
insert into weblinks(url, name) values('www.ign.com', 'IGN');
insert into weblinks(url, name) values('www.cuny.com', 'CUNY');

CREATE TABLE copy_table(like weblinks);
select*from copy_table;

update weblinks set description = 'Website for all your shopping needs' where name like 'Amazon%';
update weblinks set description = 'Website for videos' where name like 'Y%';
update weblinks set description = 'Website for search' where name like 'G%';
update weblinks set description = 'Website' where name like 'C%';

update weblinks set description = url;
--description column shows the urls from column url

select*from weblinks;

update weblinks set description = 'Empty Description';
--description column updated to the string 

delete from weblinks where name = 'CUNY';
--row name CUNY is deleted 