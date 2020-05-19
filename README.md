# Rental-Database-Project

## Purpose: 
This project aims to create a data model and design a complete database for rental property management system. It aims to cover the whole business model of a rental property management system which deals with different users who are going to use this database.

## Approach: 
I have followed Forward Engineering approach and designed EER model diagram first by defining tables and their attributes, established relationships and database objects like tables schema is populated. 
Here is the below approach to design an EER model 
a)	Building Details table – Consists of details of different buildings in the vicinity or on a street. 
b)	Unit Details table – consists of details of the unit like unit number, resident id, no of bedrooms, no of washrooms, pet allowed, in unit laundry facility available.
c)	Staff Table – Management Staff and Maintenance Staff are responsible for overall management of units in respective buildings. Management staff takes care of lease details, payments, inspection checks and maintenance requests logged, if any. Maintenance Staff is responsible for servicing or repairing items found during maintenance requests logged or during inspection checks.
d)	Appointment schedules – Residents can schedule an appointment with management staff for either logging maintenance requests or any other inquiries/concerns they have during the stay.
e)	Inspection checks – This table is designed to serve the purpose that all inspection checks are tracked and if any observation is found then they can be used for corrections or warnings to be given to residents.
f)	Maintenance Requests – This table helps to keep track of maintenance requests logged and ensure that they are being serviced by the maintenance staff on time.
g)	Lease Details: It keeps a track of lease details agreed between management company and resident Id. It has attributes like lease id, lease term, lease start and end date etc. 
h)	Lease Payment Details:  This helps in keeping track of payment details such as monthly rent, deposit, pet deposit, total payment amount etc. 
i)	Security deposit returns: This helps in keeping track of expired leases and management company is now responsible for repayment of security deposits which they took from the residents during the start of the lease. 
j)	Role Table: This defines different roles of people here. 

### Database Objects: 

1)	Tables – This has been described above. 
2)	Views – 
viewLeaseDetails : This view helps in seeing all the lease and lease payment details.

viewResidentialDetails : This view helps in viewing Residential Data

3)	Functions – calculateTotalAmount(). This function helps in determining total amount received by management staff for the lease.
4)	Stored Procedures – usp_AddDatatoSecurityDepositReturns()
5)	Triggers – 
negative_value : This trigger helps in validating the data for negative values entered on number of bedrooms in LeaseDetails table. 

negative_value_bathrooms : This trigger helps in validating the data for negative values entered on number of bathrooms in LeaseDetails table. 

6)	Transactions – transactionView

### Users :
1)	User 1: This user is part of management staff who can login and check maintenance requests logged, appointment schedules, inspection checks. 
2)	User 2 : This user is part of maintenance staff who can check maintenance requests.
3)	User 3 : This is a resident staying in that locality. They can login and check all the details related to them and maintenance requests logged by them. 
