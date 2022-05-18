INSERT INTO Route VALUES(1, 'Delhi', 2, 'Patiala', 3);
INSERT INTO Route VALUES(2, 'Mumbai', 1, 'Kolkata', 6);
INSERT INTO Route VALUES(3, 'Chennai', 4, 'Ahemdabad', 4);
INSERT INTO Route VALUES(4, 'Shimla', 7, 'Bhopal', 5);
INSERT INTO Route VALUES(5, 'Goa', 3, 'Bengluru', 8);

Select * from Route;


INSERT INTO Train VALUES(123,'PTL Express','10-Jun-2022 07:20:00am','9-Jun-2022
10:30:00pm',1000,843,1);
INSERT INTO Train VALUES(666,'BLR Shatabdi','19-May-2022 08:05:00pm','18-Jan2022
12:35:00am',500,321,5);
INSERT INTO Train VALUES(341,'Bengal EXP','22-May-2022 11:30:00am','21-May-2022
02:30:30pm',500,254,2);
INSERT INTO Train VALUES(101,'MP EXP','26-May-2022 11:30:00pm','26-May-2022
02:30:30pm',1000,754,4);
INSERT INTO Train VALUES(255,'GUJ Express','31-May-2022 09:30:00am','30-May-2022
12:30:30pm',500,254,3);
Select * from Train;
INSERT INTO Passenger VALUES(124, 'Ishan', 'Jain', 'ijain@gmail.com', 9899898812, 'Model
Town, Ludhiana', 123);
INSERT INTO Passenger VALUES(73, 'Raj', 'Gupta', 'rgupta@gmail.com', 9873654812, 'Mall
road, Shimla', 101);
INSERT INTO Passenger VALUES(492, 'Rohit', 'Thapar', 'rthapar@gmail.com', 8899898833,
'Ashok Vihar, Delhi', 123);
INSERT INTO Passenger VALUES(44, 'Riya', 'Rampal', 'rrampal@gmail.com', 7645898812,
'Beach road, Goa', 666);
INSERT INTO Passenger VALUES(317, 'Ishani', 'Sharma', 'isharma@gmail.com', 6439894313,
'Chennai', 255);

Select * from Passenger;
INSERT INTO Ticket VALUES(2819542664,'26-May-2022 02:30:30pm','26-May-2022',1500,
73);
INSERT INTO Ticket VALUES(1817642634,'9-Jun-2022 10:30:00pm','09-Jun-2022',500, 1);
INSERT INTO Ticket VALUES(2961542333,'9-Jun-2022 10:30:00pm','09-Jun-2022',1250,
492);
INSERT INTO Ticket VALUES(1613742677,'30-May-2022 12:30:30pm','30-May-2022',400,
317);
INSERT INTO Ticket VALUES(1939542312,'18-Jan-2022 12:35:00am','18-Jan-2022',15000,
44);
