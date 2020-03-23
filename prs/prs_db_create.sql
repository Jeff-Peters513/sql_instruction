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
    -- datetime = yyyy-mm-dd hh:mm:ss
	ReasonForRejection 	varchar(100), 
    Foreign key (UserID) references User(ID)
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
    Constraint Vendor_part unique (VendorID, PartNumber)
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



-- insert User info
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin) 
Values (1, 'JPeters', 'jp1001', 'Jeff', 'Peters', '513-305-1268', 'PetersJeff288@gmail.com', 1, 1) ;
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin) 
Values (2, 'SBlessing', 'sb1002', 'Sean', 'Blessing', '513-600-7096', 'SeanBlessing@gmail.com', 1, 0);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin) 
Values (3, 'SWilliams', 'sw2001', 'Sarah', 'Williams', '513-777-8989', 'SarahWilliams@gmail.com', 0, 0);
Insert User (ID, UserName, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin) 
Values (4, 'HFord', 'hf4030', 'Harrison', 'Ford', '614-333-1978', 'HarrisonFord@gmail.com', 0, 0) ;



-- Insert Vendor
Insert Vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email) 
Values ( 1, 'BB-101', 'Best Buy', '9871 Waterstone Blvd', 'Mason', 'OH', '45249', "513-683-7777", 'S-000494-Leaders@bestbuy.com');
Insert Vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email) 
Values ( 2, 'WM-1441', 'WalMart', '5303 Bowen Drive', 'Mason', 'OH', '45040', "513-583-9330", 'WM-1441Leaders@WalMart.com');
Insert Vendor (ID, Code, Name, Address, City, State, Zip, PhoneNumber, Email) 
Values ( 3, 'TG-45069', 'Target', '7644 Voice of America Centre Dr', 'West Chester Township', 'OH', '45069', '513-712-1001', 'Target-45069@target.com');




-- Insert Request
Insert Request (ID, UserID, Description, Justification, DateNeeded, DeliveryMode, Status, Total, SubmittedDate, ReasonForRejection) 
Values ( 1 , 1 , 'Computer', 'Now Employee hired - needs computer', '2020-03-25','Pick up at Store', 'Order placed', 1545.62, '2020-03-22 09:15:07', 'None');


-- Insert Product
Insert Product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) 
		Values ( 1, 1, 'SKU:6373039', 'Dell - Inspiron 15.6" 7000 2-in-1 Touch-Screen Laptop - Intel Core i7 - 12GB Memory - 512GB SSD + 32GB Optane - Silver',
			1199.99, 
            'Each','');
Insert Product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) 
		Values ( 2, 1, 'SKU:6219205',
        'HP - 27f 27" IPS LED FHD FreeSync Monitor - Natural Silver',
			249.99, 'Each','');
            
Insert Product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) 
		Values ( 3, 1, 'SKU:6366560',
        'Logitech - MX Keys Advanced Wireless Illuminated Keyboard - Black',
			99.99, 'Each','');
            
Insert Product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) 
		Values ( 4, 1, 'SKU:6360418',
        'Logitech - MX Anywhere 2S Wireless Laser Mouse - Black',
			59.99, 'Each','');
Insert Product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) 
		Values ( 5, 1, 'SKU:4607807',
        'Office Star Products - ProGrid Mesh Manager Chair - Black',
			133.99, 'Each','');
            
Insert Product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) 
		Values ( 6, 3, 'XXX',
        'Cottonelle Clean Care Toilet Paper - 18 Mega Rolls',
			16.49, 'Each','');
Insert Product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) 
		Values ( 7, 3, 'SKU:025500204215',
        'Folgers Classic Medium Roast Ground Coffee - 30.5oz',
			7.19, 'Each','');
Insert Product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) 
		Values ( 8, 3, 'SKU: filter',
        'Melitta 8-12cup Super Premium Coffee Filters 200ct',
			4.99, 'Each','');
Insert Product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) 
		Values ( 9, 2, 'WMT: 553751816',
        'BIC Round Stic Xtra Life Ball Pen, Medium Point (1.0mm), Black, 60 Count',
			6.47, 'Each','');
Insert Product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) 
		Values ( 10, 2, 'WMT: 55085879',
        'Tripp Lite TLP74RB 7-Outlet Surge Protector',
			16.73, 'Each','');
Insert Product (ID, VendorID, PartNumber, Name, Price, Unit, PhotoPath) 
		Values ( 11, 2, 'WMT: 553175755',
        'BLACK+DECKER 12-Cup* Thermal Coffeemaker, Black/Stainless Steel, CM2035B',
			47.64, 'Each','');
            
 
-- Insert LineItem 
Insert LineItem (RequestID, ProductID, Quantity) 
Values (1, 1, 1);
            
   
            
            
            
