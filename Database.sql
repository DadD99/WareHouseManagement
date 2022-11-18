create database Quanlykho
go

use Quanlykho
go


create table Units
(
	Id int identity(1,1) primary key,
	DisplayName nvarchar(100)
)
go

create table Suppliers
(
	Id int identity(1,1) primary key,
	DisplayName nvarchar(100),
	Address nvarchar(100),
	Phone nvarchar(20),
	Email nvarchar(200),
	MoreInfo nvarchar(max),
	ContractDate DateTime
)
go

create table Customers
(
	Id int identity(1,1) primary key,
	DisplayName nvarchar(100),
	Address nvarchar(100),
	Phone nvarchar(20),
	Email nvarchar(200),
	MoreInfo nvarchar(max),
	ContractDate DateTime
)
go

Create table Objects
(
	Id nvarchar(128) primary key,
	DisplayName nvarchar(200),
	IdUnit int not null,
	IdSupplier int not null,
	QRCode nvarchar(max),
	BarCode nvarchar(max)

	foreign key (IdUnit) references Units(Id),
	foreign key (IdSupplier) references Suppliers(Id)
)
go

create table UserRole
(
	Id int identity(1,1) primary key,
	DisplayName nvarchar(max)
)
go

create table Users
(
	Id int identity(1,1) primary key,
	DisplayName nvarchar(200),
	UserName nvarchar(100),
	Password nvarchar(100),
	IdRole int not null

	foreign key (IdRole) references UserRole(Id)
)
go

create table Input
(
	Id nvarchar(128) primary key,
	DateInput DateTime
)
go

create table InputInfo
(
	Id nvarchar(128) primary key,
	IdObject nvarchar(128) not null,
	IdInput nvarchar(128) not null,
	Count int,
	InputPrice float default 0,
	OutputPrice float default 0,
	Status nvarchar(max)

	foreign key (IdObject) references Objects(Id),
	foreign key (IdInput) references Input(Id)
)
go

create table Output
(
	Id nvarchar(128) primary key,
	DateOutput DateTime
)
go

create table OutputInfo
(
	Id nvarchar(128) primary key,
	IdObject nvarchar(128) not null,
	IdOutput nvarchar(128),
	IdInputInfo nvarchar(128) not null,
	Count int,
	IdCustomer int not null,
	Status nvarchar(max)

	foreign key (IdOutput) references Output(Id),
	foreign key (IdObject) references Objects(Id),
	foreign key (IdInputInfo) references InputInfo(Id),
	foreign key (IdCustomer) references Customers(Id)
)
go