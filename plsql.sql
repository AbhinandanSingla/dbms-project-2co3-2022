-- PL/SQL Queries --
Declare
P_Firstname Passenger.Firstname%type;
P_Lastname Passenger.Lastname%type;
Mobile Passenger.Mobile%type;
Address Passenger.Address%type;
Cursor c IS select Firstname,Lastname,Mobile,Address from Passenger;
Begin
open c;
loop
fetch c into P_Firstname,P_Lastname,Mobile,Address;
exit when c%NOTFOUND;
dbms_output.put_line(P_Firstname||' '||P_Lastname||' '||Mobile||' '||Address);
end loop;
close c;
end;

-- Passenger that took highest fare ticket -+
declare
P_Firstname Passenger.Firstname%type;
P_Lastname Passenger.Lastname%type;
Mobile Passenger.Mobile%type;
Address Passenger.Address%type;
CustomerId Passenger.Passenger_ID%type;
Cursor c IS select P.Firstname,P.Lastname,P.Mobile,P.Address,T.Passenger_ID from
Passenger P,Ticket T where
Price=(select max(Price) from Ticket) and T.Passenger_ID=P.Passenger_ID;
begin
open c;
loop
fetch c into
P_Firstname,P_Lastname,Mobile,Address,CustomerId;
exit when c%NOTFOUND;
dbms_output.put_line(P_Firstname||' '||P_Lastname||' '||Mobile||' '||Address||'
'||CustomerId||' ');
end loop;
close c;
end;

-- Passenger whose train is evening declare --
declare
P_Firstname Passenger.Firstname%type;
P_Lastname Passenger.Lastname%type;
Mobile Passenger.Mobile%type;
Address Passenger.Address%type;
Train_No Passenger.Train_No%type;
Cursor c IS select P.Firstname,P.Lastname,P.Mobile,P.Address,T.Train_No from
Passenger P,Train T where
to_char(T.Arrival_time,'pm')='pm' and T.Train_No=P.Train_No;
begin
open c;
loop
fetch c into
P_Firstname,P_Lastname,Mobile,Address,Train_No;
exit when c%NOTFOUND;
dbms_output.put_line(P_Firstname||' '||P_Lastname||' '||Mobile||' '||Address||' '||Train_No||'
');
end loop;
close c;
end;

-- Exception Handling --
declare
P_Email Passenger.Email%type;
P_Passenger_ID Passenger.Passenger_ID%type;
e_invalid_ID EXCEPTION;
begin
update Passenger
set Email = 'random@gmail.com'
where P_Passenger_ID = 2;
if SQL%NOTFOUND then
raise e_invalid_ID;
End if;
commit;
EXCEPTION
When no_data_found then
dbms_output.put_line('No such record');
When too_many_rown then
dbms_output.put_line('More than one record found');
When e_invalid_ID then
dbms_output.put_line('No such passenger exists');
When others then
dbms_output.put_line('Some error found');
end;

-- Add route --
create or replace procedure add_route
(R_ID in Route.Route_ID%type,
S_city in Route.Source_city%type,
S_platform in Route.Source_platform%type,
D_city in Route.Destination_city%type,
D_platform in Route.Destination_platform%type)
is
begin
insert into Route values (R_ID, S_city, S_platform, D_city, D_platform);
dbms_output.put_line('Route added.');
end;
execute add_route(6,'Patiala',4,'Hydrabad',8);
select * from route;