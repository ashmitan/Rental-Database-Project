-- use current database --
use propertymanagementdatabase;
-- show tables --
show tables;

-- selecting data from roles table --
select * from role;

-- inserting data into role table --
INSERT INTO role values(1,"Management Staff");
INSERT INTO role values(2,"Maintenance Staff");

-- selecting data from Building Details --
select * from BuildingDetails;

-- inserting data into Building Details --
INSERT INTO BuildingDetails values(1,"Parking available","Gym available");
INSERT INTO BuildingDetails values(2,"Parking available","Gym not available");
INSERT INTO BuildingDetails values(3,"Parking available","Gym not available");
INSERT INTO BuildingDetails values(4,"Parking available","Gym not available");
INSERT INTO BuildingDetails values(5,"Parking available","Gym not available");
INSERT INTO BuildingDetails values(6,"Parking available","Gym available");
INSERT INTO BuildingDetails values(7,"Street parking","Gym not available");
INSERT INTO BuildingDetails values(8,"Street Parking","Gym not available");
INSERT INTO BuildingDetails values(9,"Parking available","Gym not available");
INSERT INTO BuildingDetails values(10,"Parking available","Gym available");

-- selecting columns from StaffDetails Table --
select * from StaffDetails;

-- inserting data into StaffDetails table -- 
INSERT INTO StaffDetails(Staff_First_Name,Staff_Last_Name,Role_RoleId)
VALUES('Yana','Simpson',2);

-- selecting columns from residential details table --
select * from residential_details;

-- inserting values in residential details table --
INSERT INTO residential_details(Resident_First_Name,Resident_Last_Name,Resident_Email_Address,Home_Phone,Mobile_Phone)
values('Ashmita','Nigam','ashmitan@gmail.com','9','90');
INSERT INTO residential_details(Resident_First_Name,Resident_Last_Name,Resident_Email_Address,Home_Phone,Mobile_Phone)
values('Ria','Rajput','rrajput@hotmail.com','9920055780','9867227460');
INSERT INTO residential_details(Resident_First_Name,Resident_Last_Name,Resident_Email_Address,Home_Phone,Mobile_Phone)
values('Jessica','Simpson','jsimpson@hotmail.com','8572631098','8572891100');
INSERT INTO residential_details(Resident_First_Name,Resident_Last_Name,Resident_Email_Address,Home_Phone,Mobile_Phone)
values('Wang','Wei','wangwei@yahoo.com','8761234980','866690056');
INSERT INTO residential_details(Resident_First_Name,Resident_Last_Name,Resident_Email_Address,Home_Phone,Mobile_Phone)
values('Jennifer','Goddard','jenniferg@gmail.com','7074119097','7074119097');

-- selecting columns from appointment schedule table --
select * from appointment_schedules;

-- inserting values in appointment schedule table --
INSERT INTO appointment_schedules(Scheduled_Date,StaffId,Resident_Id,MeetingNotes,Is_MR_Logged,MR_notes)
values('2018-12-13',1,2,'Payment queries solved','N','');
INSERT INTO appointment_schedules(Scheduled_Date,StaffId,Resident_Id,MeetingNotes,Is_MR_Logged,MR_notes)
values('2018-12-13',3,1,'Maintenance Request','Y','Service the taps in washrooms.');
INSERT INTO appointment_schedules(Scheduled_Date,StaffId,Resident_Id,MeetingNotes,Is_MR_Logged,MR_notes)
values('2018-12-13',2,2,'Feedback','N','');
INSERT INTO appointment_schedules(Scheduled_Date,StaffId,Resident_Id,MeetingNotes,Is_MR_Logged,MR_notes)
values('2018-12-14',4,3,'Raised a Maintenance Request','Y','Water in sink doesnot drain');
INSERT INTO appointment_schedules(Scheduled_Date,StaffId,Resident_Id,MeetingNotes,Is_MR_Logged,MR_notes)
values('2018-12-14',1,3,'','N','');

-- selecting data from inspection check -- 
select * from inspection_check;
-- inserting data into inspection check table --
INSERT INTO inspection_check(Date_logged,Inspected_By,NoOfUnits,Unit_id_number,No_of_devices_damaged)
VALUES('2018-12-13',1,09,1,0)
INSERT INTO inspection_check(Date_logged,Inspected_By,NoOfUnits,Unit_id_number,No_of_devices_damaged)
VALUES('2018-12-13',2,02,3,1)
INSERT INTO inspection_check(Date_logged,Inspected_By,NoOfUnits,Unit_id_number,No_of_devices_damaged)
VALUES('2018-12-13',3,05,2,0)
INSERT INTO inspection_check(Date_logged,Inspected_By,NoOfUnits,Unit_id_number,No_of_devices_damaged)
VALUES('2018-12-13',4,01,4,0)
INSERT INTO inspection_check(Date_logged,Inspected_By,NoOfUnits,Unit_id_number,No_of_devices_damaged)
VALUES('2018-12-13',1,7,5,3)

 -- select * from unit details table --
 select * from unitdetails;
 
 -- inserting values in unitdetails table --
INSERT INTO unitdetails(unit_number, building_no,unit_type,in_Unit_laundry,pets_allowed,no_of_bedrooms,no_of_bathrooms,Current_Resident)
VALUES(1,1,'1BK','Y','N',1,1,2);
INSERT INTO unitdetails(unit_number,building_no,unit_type,in_Unit_laundry,pets_allowed,no_of_bedrooms,no_of_bathrooms,Current_Resident)
VALUES(2,1,'1BK','Y','N',1,1,1);
INSERT INTO unitdetails(unit_number, building_no,unit_type,in_Unit_laundry,pets_allowed,no_of_bedrooms,no_of_bathrooms,Current_Resident)
VALUES(3,2,'2BK','N','N',1,1,3);
INSERT INTO unitdetails(unit_number, building_no,unit_type,in_Unit_laundry,pets_allowed,no_of_bedrooms,no_of_bathrooms,Current_Resident)
VALUES(4,2,'2BK','N','Y',1,1,4);
INSERT INTO unitdetails(unit_number, building_no,unit_type,in_Unit_laundry,pets_allowed,no_of_bedrooms,no_of_bathrooms,Current_Resident)
VALUES(5,3,'2BHK','Y','N',2,2,5);

-- selecting data from maintenance requests -- 
select * from maintenance_requests;

-- inserting data from maintenance_requests
INSERT INTO maintenance_requests(Logged_By,Reported_to_staff_id,MR_notes,Priority,Date_Logged,Status,Due_Date)
VALUES(1,1,'Check smoke alarms','High','2018-12-11','Active','2018-12-11');

INSERT INTO maintenance_requests(Logged_By,Reported_to_staff_id,MR_notes,Priority,Date_Logged,Status,Due_Date)
VALUES(2,1,'Repair leaking taps','Medium','2018-12-12','Active','2018-12-13');

INSERT INTO maintenance_requests(Logged_By,Reported_to_staff_id,MR_notes,Priority,Date_Logged,Status,Due_Date)
VALUES(3,2,'Repair AC','Medium','2018-12-12','Active','2018-12-12');

INSERT INTO maintenance_requests(Logged_By,Reported_to_staff_id,MR_notes,Priority,Date_Logged,Status,Due_Date)
VALUES(1,1,'Put platform in closet','Low','2018-12-13','Active','2018-12-15');

INSERT INTO maintenance_requests(Logged_By,Reported_to_staff_id,MR_notes,Priority,Date_Logged,Status,Due0_Date)
VALUES(1,1,'Put rods in washrooms','Low','2018-12-13','Active','2018-12-15');

-- selecting data from lease details table --
select * from leasedetails;

-- inserting data into lease details --
INSERT INTO leasedetails(Resident_Building_Number,Resident_Unit_Number,Upcoming_Resident,Lease_Date,LeaseStartDate,LeaseEndDate,LeaseTerm,MonthlyRent,SecurityDepositAmount,Pet_Deposit,Lease_Status)
VALUES(1,1,1,'2018-09-01','2018-09-01','2019-08-31',12,2250,2250,0,'Active');
INSERT INTO leasedetails(Resident_Building_Number,Resident_Unit_Number,Upcoming_Resident,Lease_Date,LeaseStartDate,LeaseEndDate,LeaseTerm,MonthlyRent,SecurityDepositAmount,Pet_Deposit,Lease_Status)
VALUES(1,1,2,'2018-09-01','2018-09-01','2019-08-31',12,2250,2250,0,'Active');
INSERT INTO leasedetails(Resident_Building_Number,Resident_Unit_Number,Upcoming_Resident,Lease_Date,LeaseStartDate,LeaseEndDate,LeaseTerm,MonthlyRent,SecurityDepositAmount,Pet_Deposit,Lease_Status)
VALUES(1,2,3,'2018-09-01','2018-09-01','2019-08-31',12,2250,2250,0,'Active');
INSERT INTO leasedetails(Resident_Building_Number,Resident_Unit_Number,Upcoming_Resident,Lease_Date,LeaseStartDate,LeaseEndDate,LeaseTerm,MonthlyRent,SecurityDepositAmount,Pet_Deposit,Lease_Status)
VALUES(1,2,4,'2018-09-01','2018-09-01','2019-08-31',12,2250,2250,0,'Active');
INSERT INTO leasedetails(Resident_Building_Number,Resident_Unit_Number,Upcoming_Resident,Lease_Date,LeaseStartDate,LeaseEndDate,LeaseTerm,MonthlyRent,SecurityDepositAmount,Pet_Deposit,Lease_Status)
VALUES(1,3,2,'2018-09-01','2018-09-01','2019-08-31',12,2500,2500,100,'Active');
INSERT INTO leasedetails(Resident_Building_Number,Resident_Unit_Number,Upcoming_Resident,Lease_Date,LeaseStartDate,LeaseEndDate,LeaseTerm,MonthlyRent,SecurityDepositAmount,Pet_Deposit,Lease_Status)
VALUES(2,3,5,'2018-12-11','2019-01-01','2020-12-31',12,2700,2700,150,'Active');
INSERT INTO leasedetails(Resident_Building_Number,Resident_Unit_Number,Upcoming_Resident,Lease_Date,LeaseStartDate,LeaseEndDate,LeaseTerm,MonthlyRent,SecurityDepositAmount,Pet_Deposit,Lease_Status)
VALUES(2,3,6,'2018-12-11','2017-01-01','2018-06-30',06,2700,2700,150,'Expired');

-- selecting data from lease payment details --
select * from leasepayment;

-- inserting data into lease payment details --
INSERT INTO leasepayment(PaymentType,PaymentDate,PaymentAmount,LeaseId,Late_Fees,Paid_By) VALUES('Check','2018-12-01',2250,1,0,1);
INSERT INTO leasepayment(PaymentType,PaymentDate,PaymentAmount,LeaseId,Late_Fees,Paid_By) VALUES('Cash','2018-12-01',2250,2,0,2);
INSERT INTO leasepayment(PaymentType,PaymentDate,PaymentAmount,LeaseId,Late_Fees,Paid_By) VALUES('Online','2018-12-01',2700,3,100,3);
INSERT INTO leasepayment(PaymentType,PaymentDate,PaymentAmount,LeaseId,Late_Fees,Paid_By) VALUES('Check','2018-12-01',2500,4,0,4);
INSERT INTO leasepayment(PaymentType,PaymentDate,PaymentAmount,LeaseId,Late_Fees,Paid_By) VALUES('Check','2018-12-01',2700,5,0,5);

-- selecting data from security deposit returns -- 
select * from securitydepositreturns;

-- inserting data into security deposit returns -- 
INSERT INTO securitydepositreturns(Return_Date,SecurityDepositAmount,Amount_returned_after_lease,Leaving_Res_BldgNo,Unit_No,Leaving_Resident)
VALUES('2018-08-31',2500,2450,2,3,6)








