CREATE TABLE lesson9 (
	CustomerID serial primary key,
	CustomerName varchar(255) not null,
	Address varchar(255) not null,
	City varchar(255) not null,
	PostalCode varchar(255) not null,
	Country varchar(255) not null,
	Email varchar(255) not null
);

select*from lesson9;

insert into lesson9(CustomerName, Address) values('Udon', 'New Jersey');
insert into lesson9(CustomerName, Address) values('Tony', 'Rio de Janeiro');
insert into lesson9(CustomerName, Address) values('Bogey', 'New York');

update lesson9 set postalcode = '12356';

delete from lesson9 where customername = 'Udon';
