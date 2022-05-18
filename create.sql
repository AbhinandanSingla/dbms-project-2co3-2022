-- Create Table --

create table Route(Route_ID int primary key,
Source_city varchar(20),
Source_platform int,
Destination_city varchar(20),
Destination_platform int);

create table Train(Train_No int primary key,
Train_name varchar(20),
Arrival_time timestamp,
Departure_time timestamp,
Total_seats int,
Available_seats int,
Route_ID int,
CONSTRAINT FK_Route_ID FOREIGN KEY (Route_ID)
REFERENCES Route(Route_ID));

create table Passenger(Passenger_ID int primary key,
Firstname varchar(20),
Lastname varchar(20),
Email varchar(30),
Mobile number(10),
Address varchar(50),
Train_No int,
CONSTRAINT FK_Train_No FOREIGN KEY (Train_No)
REFERENCES Train(Train_No));

create table Ticket(Ticket_ID int primary key,
Train_time timestamp,
Train_date date,
Price number(10),
Passenger_ID int,
CONSTRAINT FK_Passenger_ID FOREIGN KEY (Passenger_ID)
REFERENCES Passenger(Passenger_ID));