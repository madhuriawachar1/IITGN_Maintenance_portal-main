create database maintenance_portal;
use maintenance_portal;


 create table User(Email_ID varchar(50) not NULL,
 Name varchar(40) not NULL,
 Contact_No varchar(15) not NULL,
 password varchar(20),
 primary key (Email_ID));
 
 
 describe User;
 
 create table Complaint(Comp_Id varchar(40) not NULL,
 User_ID varchar(50) not null,
Subject varchar(50), 
Domain varchar(50) not null, 
Sub_Domain1 varchar(100) not null, 
Sub_Domain2 varchar(100), 
Location varchar(50) not null, 
Specific_Location varchar(50), 
Availability varchar(20) not null, 
Complaint_Status varchar(30) not null, 
Image longblob,
Caption varchar(100),
PRIMARY KEY(Comp_Id),
FOREIGN KEY(User_ID) REFERENCES User(Email_ID) ON DELETE CASCADE);

describe Complaint;
select * from Complaint;

 
 create table Student(Roll_No varchar(20) not NULL, 
 Student_Email_ID varchar(50) not NULL,
 PRIMARY KEY(Roll_no),
 FOREIGN KEY (Student_Email_ID) REFERENCES User (Email_ID) ON DELETE CASCADE);
 
 describe Student;
 
 create table Employee(Employee_ID varchar(20) not NULL, 
 Employee_Email_ID varchar(50) not NULL,
 PRIMARY KEY(Employee_ID),
 FOREIGN KEY (Employee_Email_ID) REFERENCES User (Email_ID) ON DELETE CASCADE);
 
 describe Employee; 
 
 create table Hostel(Hostel_Name varchar(25) not NULL,
 Room_No varchar(15) not NULL,
 Student_Email_ID varchar(50) not NULL,
PRIMARY KEY(Hostel_Name,Room_No),
FOREIGN KEY (Student_Email_ID) REFERENCES User (Email_ID) ON DELETE CASCADE);

describe Hostel;
 
 create table Housing(Block_Name varchar(15) not NULL, 
 Apartment_No varchar(10) not NULL,
 Email_ID varchar(50) not NULL,
PRIMARY KEY(Block_Name,Apartment_No),
constraint FOREIGN KEY (Email_ID) REFERENCES User (Email_ID) ON DELETE cascade);

describe Housing;
 
 create table Guest_House(Floor varchar(50) not NULL, 
 Room_No varchar(50) not NULL,
 Email_ID varchar(100) not NULL,
 PRIMARY KEY(Floor,Room_No),
 FOREIGN KEY (Email_ID)REFERENCES User (Email_ID) ON DELETE CASCADE);
 
 describe Guest_House;
 

INSERT INTO User(Email_ID,Name,Contact_No, password) VALUES
('sam@iitgn.ac.in','Sam','9235545345','SAM12'),
('david@iitgn.ac.in','David','8363636385','DAVID12'),
('john@iitgn.ac.in','John','7463535257','JOHN12'),
('mark@iitgn.ac.in','Mark',6363579621,'MARK12'),
('paul@iitgn.ac.in','Paul','7467477479','PAUL12'),
('tony@iitgn.ac.in','Tony','5478213654','TONY12'),
('stark@iitgn.ac.in','Stark','7894562135','STARK12'),
('steve@iitgn.ac.in','Steve','7845123265','STEVE12'),
('smith@iitgn.ac.in','Smith','5614953627','SMITH12'),
('warner@iitgn.ac.in','Warner','4512365234','WARNER12'),
('marsh@iitgn.ac.in','Marsh','7841256398','MARSH12'),
('sammy@iitgn.ac.in','Sammy','6548723415','SAMMY12'),
('marky@iitgn.ac.in','marky','9432561234','MARKY12');

select * from User;

SET FOREIGN_KEY_CHECKS=0;

INSERT INTO Complaint(Comp_id,User_ID,Subject,Domain,Sub_Domain1,Sub_Domain2,Location,Specific_Location,Availability,Complaint_Status) VALUES
('34552','sam@iitgn.ac.in','Broken Wall','Civil','Painting Work','Repair of Wall','Jurqia','J-115','2 pm','Pending'),
('42525','david@iitg.ac.in','Bulb Fuse','Electrical','Internal Electrical','Light not working','AB-1','AB 1/101','12 pm','Pending'),
('55336','john@iitgn.ac.in','MCB is Tripping','Electrical','Internal Electrical','MCB Tripping','A Block','A-102','3 pm','Done'),
('12334','mark@iitgn.ac.in','AC not working','Air-Conditioning','Air-Conditioning','AC not working','Kyzeel','K-228','6 pm','In Progress'),
('75775','paul@iitgn.ac.in','Water is not cooling','Water Cooler','Water Cooler','Water not cooling','AB-7','Ground Floor','11 am','Pending'),
('54126','tony@iitgn.ac.in','Floor Cracks ','Civil','Mason Work','Repair flooring','B Block','B-321','5 pm','Done'),
('78941','stark@iitgn.ac.in','Street light issue','Electrical','External','Hostel court light','Aiban','A-214','3 pm','Pending'),
('21468','steve@iitgn.ac.in','AC not working','Air-Conditioning','Air-Conditioning','AC not working','Kyzeel','k-115','1 pm','In Progress'),
('74365','smith@iitgn.ac.in','Broken Wall','Civil','Painting Work','Repair of Wall','Beauki','B-115','11 am','Pending'),
('12489','warner@iitgn.ac.in','Bulb Fuse','Electrical','Internal Electrical','Light not working','C Block','C-132','11 am','Done'),
('98416','marsh@iitgn.ac.in','Tubelight Fuse','Electrical','Internal Electrical','Light not working','Guest House','2/34','7 pm','Pending');

select * from Complaint;

INSERT INTO Student(Roll_No,Student_Email_ID) VALUES
('22120047','sam@iitgn.ac.in'),
('22120048','mark@iitgn.ac.in'),
('22120037','stark@iitgn.ac.in'),
('22120041','steve@iitgn.ac.in'),
('21214710','smith@iitgn.ac.in');

select * from Student;

INSERT INTO Employee(Employee_ID,Employee_Email_ID) VALUES
('22120045','john@iitg.ac.in'),
('22120043','david@iitgn.ac.in'),
('22120050','paul@iitg.ac.in'),
('54789321','tony@iitgn.ac.in'),
('47158964','warner@iitgn.ac.in'),
('45621134','marsh@iitgn.ac.in');

select * from Employee;

INSERT INTO Hostel(Hostel_Name,Room_No,Student_Email_ID) VALUES
('Jurqia','J-115','sam@iitgn.ac.in'),
('Kyzeel','K-223','mark@iitgn.ac.in'),
('Aiban','A-214','stark@iitgn.ac.in'),
('Kyzeel','k-115','steve@iitgn.ac.in'),
('Beauki','B-115','smith@iitgn.ac.in');

select * from Hostel;

INSERT INTO Housing(Block_Name,Apartment_No,Email_ID) VALUES
('A Block','A-102','john@iitgn.ac.in'),
('B Block','B-203','david@iitgn.ac.in'),
('C Block','C-201','paul@iitgn.ac.in'),
('B Block','B-321','tony@iitgn.ac.in'),
('C Block','C-132','warner@iitgn.ac.in'),
('Guest House','2/34','marsh@iitgn.ac.in');






