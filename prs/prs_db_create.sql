-- create and select the database
drop database if exists prs;
create database prs;
use prs;

-- this db will have 5 tables
-- create the User table #1
create table User (
	ID 				int 			primary key auto_increment,
    UserName 		varchar(20) 	not null unique,
    Password 		varchar(10) 	not null,
    FirstName 		varchar(20) 	not null,
	LastName 		varchar(20) 	not null,
	PhoneNumber 	varchar(12) 	not null,
	Email 			varchar(75) 	not null,
    IsReviewer		tinyint			not null,
    IsAdmin			tinyint			not null
    );
    
 -- create the Vendor table #2  
create table Vendor (
	ID 				int 			primary key auto_increment,
	Code		 	varchar(10)		not null unique,
	Name 			varchar(255) 	not null,
	Address			varchar(255) 	not null,
	City 			varchar(255) 	not null,
	State 			varchar(2) 		not null,
	Zip 			varchar(5) 		not null,
	PhoneNumber 	varchar(12) 	not null,
	Email 			varchar(100) 	not null 
    -- foreign key (AccountID) references Account(ID)
    );
    
    -- create the Request table #3
    create table Request (
	ID 					int 			primary key auto_increment,
	UserID		 		int				not null,
	Description			varchar(100) 	not null,
	Justification		varchar(255) 	not null,
	DateNeeded 			date 			not null,
	DeliveryMode		varchar(25) 	not null,
	Status 				varchar(20) 	not null,
	Total		 		decimal(10,2) 	not null,
    SubmittedDate		datetime		not null,
	ReasonForRejection 	varchar(100), 
    Foreign key (userID) references user(ID)
    );
    
     -- create the Product table #4
    create table Product (
	ID 					int 			primary key auto_increment,
	VendorID		 	int				not null,
	PartNumber			varchar(50) 	not null,
	Name				varchar(150) 	not null,
	Price	 			decimal(10,2) 	not null,
	Unit				varchar(255),
	PhotoPath 			varchar(255),
    Foreign key (VendorID) references Vendor(ID),
    Constraint vendor_part unique (VendorID, PartNumber)
    );

    -- create the LineItem table #5
    create table LineItem (
	ID 					int 			primary key auto_increment,
	RequestID		 	int				not null,
	ProductID		 	int				not null,
	Quantity		 	int				not null,
    Foreign key (ProductID) references Product(ID),
    Foreign key (RequestID) references Request(ID),
    constraint req_pdt unique (RequestID, ProductID)
    );



-- insert records
-- insert Account (ID, accountHolder, birthdate, balance, fees) Values (1,'Alina Ivannikov', '1999-01-01', 8888.00, 250.00);


    
    