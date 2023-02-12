
create table DevelopmentProject (
DName varchar(30) NOT NULL PRIMARY KEY,
Location varchar(20) NOT NULL
);

create table BrokerCompany (
BNumber varchar(11) NOT NULL PRIMARY KEY,
BName varchar(20) NOT NULL,
Address varchar(50)
);

create table Agent (
Email varchar(320) NOT NULL PRIMARY KEY,
ANumber float,
FName varchar(20) NOT NULL,
LName varchar(20) NOT NULL,
BrokerCompany varchar(11),
FOREIGN KEY(BrokerCompany) REFERENCES BrokerCompany(BNumber)
);

create table Property (
ID char(8) NOT NULL PRIMARY KEY,
NbBedroom integer,
NbBathroom integer,
PType varchar(20) NOT NULL,
DownPayment float,
Area varchar(15) NOT NULL,
Location varchar(30),
Development varchar(30),
Price float,
ListingDate date,
PaymentMethod varchar(15),
AgentMail varchar(320) NOT NULL,
PDescription varchar(500),

FOREIGN KEY(Development) REFERENCES DevelopmentProject(DName)
ON DELETE SET NULL ON UPDATE CASCADE,
FOREIGN KEY(AgentMail) REFERENCES Agent(Email)
ON DELETE RESTRICT ON UPDATE CASCADE
);

create table PropertyAmenities (
PropertyID char(8) NOT NULL,
Amenities varchar(20),
FOREIGN KEY(PropertyID) REFERENCES Property(ID)
);


create table AppUser (
FName varchar(20) NOT NULL,
LName varchar(20) NOT NULL,
Username varchar(25) NOT NULL PRIMARY KEY,
Gender char(1) NOT NULL,
Email varchar(320),
Birthdate date
);

create table AppUserFocus (
AppUserUsername varchar(25),
Focus varchar(50),
FOREIGN KEY(AppUserUsername) REFERENCES AppUser(Username)
ON DELETE RESTRICT ON UPDATE CASCADE
);

create table Review (
AppUserUsername varchar(25),
AgentEmail varchar(320),
Rating integer,
TextualRating varchar(300),
FOREIGN KEY(AppUserUsername) REFERENCES AppUser(Username)
ON DELETE SET NULL ON UPDATE CASCADE,
FOREIGN KEY(AgentEmail) REFERENCES Agent(Email)
ON DELETE SET NULL ON UPDATE CASCADE
)



