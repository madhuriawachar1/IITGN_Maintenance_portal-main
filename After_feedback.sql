use maintenance_portal;
desc Complaint;
ALTER TABLE Complaint add column Area varchar(50); 
ALTER TABLE Complaint add column number varchar(20); 
ALTER TABLE Complaint add column Date varchar(50);

# after feedback 2 
Alter TABLE Complaint add column time DATE DEFAULT(CURRENT_TIME);

select time,User_ID from Complaint;
