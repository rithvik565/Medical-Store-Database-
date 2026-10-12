create database medical_store;
use medical_store;

CREATE TABLE medicines (
    medicine_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(100),
    dosage VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    expiry_date DATE,
    supplier_id INT
);
alter table medicines add FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id);


INSERT INTO medicines VALUES
(1,'Paracetamol','Tablet','Crocin','500mg',20,120,'2026-12-01',1),
(2,'Ibuprofen','Tablet','Brufen','400mg',35,90,'2026-10-15',2),
(3,'Amoxicillin','Capsule','Mox','250mg',55,70,'2026-09-10',3),
(4,'Azithromycin','Tablet','Azee','500mg',80,60,'2026-08-20',4),
(5,'Cetrizine','Tablet','Cetzine','10mg',15,200,'2027-01-01',5),
(6,'Pantoprazole','Tablet','Pantocid','40mg',60,110,'2026-11-05',6),
(7,'Metformin','Tablet','Glycomet','500mg',25,150,'2026-12-25',7),
(8,'Atorvastatin','Tablet','Lipitor','10mg',75,80,'2026-07-30',8),
(9,'ORS Powder','Powder','Electral','Sachet',18,250,'2027-03-15',9),
(10,'Antacid Syrup','Liquid','Gelusil','200ml',120,55,'2026-06-01',10),
(11,'Dolo 650','Tablet','Dolo','650mg',30,180,'2026-12-31',11),
(12,'Insulin','Injection','Humulin','10ml',550,25,'2026-08-01',12),
(13,'Vitamin D3','Capsule','Calcirol','60000IU',45,95,'2026-11-11',13),
(14,'Iron Tablets','Tablet','Feronia','100mg',28,140,'2027-02-20',14),
(15,'Calcium','Tablet','Shelcal','500mg',35,130,'2027-01-10',15),
(16,'Cough Syrup','Syrup','Benadryl','100ml',95,75,'2026-09-18',16),
(17,'Antibiotic','Capsule','Augmentin','625mg',120,65,'2026-10-22',17),
(18,'Pain Relief Gel','Gel','Volini','30g',85,90,'2027-03-01',18),
(19,'Eye Drops','Drops','Refresh','10ml',150,40,'2026-12-05',19),
(20,'Nasal Spray','Spray','Otrivin','15ml',110,50,'2026-08-28',20),
(21,'Anti Allergy','Tablet','Allegra','120mg',70,60,'2026-11-19',21),
(22,'BP Medicine','Tablet','Amlong','5mg',40,120,'2027-01-25',22),
(23,'Diabetes','Tablet','Glimepiride','2mg',55,100,'2026-10-12',23),
(24,'Thyroid','Tablet','Thyronorm','50mcg',65,90,'2027-02-01',24),
(25,'Multivitamin','Capsule','Revital','Daily',150,80,'2026-12-15',25),
(26,'Antifungal','Cream','Candid','20g',75,70,'2026-09-05',26),
(27,'Antiseptic','Liquid','Dettol','100ml',60,150,'2027-03-30',27),
(28,'Hand Sanitizer','Liquid','Lifebuoy','50ml',45,200,'2027-04-10',28),
(29,'Protein Powder','Powder','Protinex','200g',350,30,'2026-11-28',29),
(30,'Baby Lotion','Lotion','Johnson','100ml',180,60,'2027-05-01',30);



CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100),
    contact_number VARCHAR(15),
    address TEXT
);
INSERT INTO suppliers VALUES
(1,'Sun Pharma','9810010001','Delhi'),
(2,'Cipla Ltd','9810010002','Mumbai'),
(3,'Dr Reddy Labs','9810010003','Hyderabad'),
(4,'Lupin Pharma','9810010004','Pune'),
(5,'Aurobindo Pharma','9810010005','Visakhapatnam'),
(6,'Zydus Lifesciences','9810010006','Ahmedabad'),
(7,'Torrent Pharma','9810010007','Ahmedabad'),
(8,'Glenmark Pharma','9810010008','Mumbai'),
(9,'Alkem Labs','9810010009','Mumbai'),
(10,'Mankind Pharma','9810010010','Delhi'),
(11,'Biocon Ltd','9810010011','Bangalore'),
(12,'Intas Pharma','9810010012','Ahmedabad'),
(13,'Abbott India','9810010013','Mumbai'),
(14,'Pfizer India','9810010014','Mumbai'),
(15,'Novartis India','9810010015','Mumbai'),
(16,'Sanofi India','9810010016','Mumbai'),
(17,'GSK Pharma','9810010017','Mumbai'),
(18,'Cadila Pharma','9810010018','Ahmedabad'),
(19,'Wockhardt Ltd','9810010019','Mumbai'),
(20,'Ipca Labs','9810010020','Mumbai'),
(21,'Alembic Pharma','9810010021','Vadodara'),
(22,'Panacea Biotec','9810010022','Delhi'),
(23,'Eris Lifesciences','9810010023','Ahmedabad'),
(24,'Strides Pharma','9810010024','Bangalore'),
(25,'Natco Pharma','9810010025','Hyderabad'),
(26,'Granules India','9810010026','Hyderabad'),
(27,'Hetero Drugs','9810010027','Hyderabad'),
(28,'Micro Labs','9810010028','Bangalore'),
(29,'La Renon Healthcare','9810010029','Mumbai'),
(30,'MedPlus Health','9810010030','Hyderabad');

select  * from suppliers;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    phone VARCHAR(15),
    age INT,
    gender VARCHAR(10)
);
INSERT INTO customers VALUES
(1,'Ravi Kumar','9000010001',25,'Male'),
(2,'Amit Singh','9000010002',30,'Male'),
(3,'Priya Sharma','9000010003',28,'Female'),
(4,'Neha Gupta','9000010004',32,'Female'),
(5,'Rahul Verma','9000010005',35,'Male'),
(6,'Anjali Mehta','9000010006',27,'Female'),
(7,'Vikas Yadav','9000010007',29,'Male'),
(8,'Pooja Mishra','9000010008',31,'Female'),
(9,'Sandeep Kumar','9000010009',40,'Male'),
(10,'Kiran Patel','9000010010',38,'Female'),
(11,'Arjun Reddy','9000010011',26,'Male'),
(12,'Sneha Kapoor','9000010012',33,'Female'),
(13,'Manish Tiwari','9000010013',45,'Male'),
(14,'Ritu Singh','9000010014',36,'Female'),
(15,'Deepak Sharma','9000010015',42,'Male'),
(16,'Nisha Jain','9000010016',34,'Female'),
(17,'Rajesh Khanna','9000010017',50,'Male'),
(18,'Meena Devi','9000010018',48,'Female'),
(19,'Gaurav Joshi','9000010019',37,'Male'),
(20,'Sunita Verma','9000010020',41,'Female'),
(21,'Rohit Agarwal','9000010021',39,'Male'),
(22,'Kavita Gupta','9000010022',44,'Female'),
(23,'Nitin Saxena','9000010023',46,'Male'),
(24,'Shalini Roy','9000010024',35,'Female'),
(25,'Ajay Kumar','9000010025',52,'Male'),
(26,'Rekha Sharma','9000010026',49,'Female'),
(27,'Pankaj Singh','9000010027',43,'Male'),
(28,'Geeta Yadav','9000010028',47,'Female'),
(29,'Aakash Verma','9000010029',28,'Male'),
(30,'Divya Patel','9000010030',31,'Female');



CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    role VARCHAR(50),
    salary DECIMAL(10,2),
    contact_number VARCHAR(15)
);
INSERT INTO employees VALUES
(1,'Rajesh Kumar','Pharmacist',25000,'8000010001'),
(2,'Anil Gupta','Cashier',18000,'8000010002'),
(3,'Sunita Sharma','Store Manager',35000,'8000010003'),
(4,'Rakesh Singh','Assistant Pharmacist',22000,'8000010004'),
(5,'Pooja Verma','Inventory Manager',27000,'8000010005'),
(6,'Amit Yadav','Sales Executive',20000,'8000010006'),
(7,'Neha Jain','Customer Support',19500,'8000010007'),
(8,'Vikas Mishra','Billing Executive',21000,'8000010008'),
(9,'Kiran Patel','Store Supervisor',26000,'8000010009'),
(10,'Sanjay Gupta','Purchase Manager',30000,'8000010010'),
(11,'Deepak Kumar','Warehouse Manager',28000,'8000010011'),
(12,'Ritu Sharma','Accountant',29000,'8000010012'),
(13,'Manoj Singh','Delivery Coordinator',23000,'8000010013'),
(14,'Sneha Gupta','Quality Checker',24000,'8000010014'),
(15,'Arvind Yadav','Medical Representative',26000,'8000010015'),
(16,'Priya Kapoor','Front Desk Executive',21000,'8000010016'),
(17,'Rahul Jain','Store Assistant',19000,'8000010017'),
(18,'Meena Singh','HR Executive',27000,'8000010018'),
(19,'Aakash Sharma','IT Support',30000,'8000010019'),
(20,'Divya Gupta','Data Entry Operator',18000,'8000010020'),
(21,'Nitin Kumar','Security Officer',17000,'8000010021'),
(22,'Geeta Verma','Housekeeping Staff',16000,'8000010022'),
(23,'Pankaj Mishra','Logistics Manager',31000,'8000010023'),
(24,'Kavita Singh','Marketing Executive',28000,'8000010024'),
(25,'Ajay Gupta','Procurement Officer',29500,'8000010025'),
(26,'Rekha Sharma','Compliance Officer',32000,'8000010026'),
(27,'Suresh Yadav','Maintenance Technician',20000,'8000010027'),
(28,'Alok Jain','Training Coordinator',27500,'8000010028'),
(29,'Ravi Patel','Operations Manager',34000,'8000010029'),
(30,'Nisha Verma','Receptionist',18500,'8000010030');



CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    employee_id INT,
    sale_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2),

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
INSERT INTO sales VALUES
(1,1,1,NOW(),210),(2,2,2,NOW(),320),(3,3,3,NOW(),180),
(4,4,4,NOW(),450),(5,5,5,NOW(),275),(6,6,6,NOW(),390),
(7,7,7,NOW(),410),(8,8,8,NOW(),220),(9,9,9,NOW(),360),
(10,10,10,NOW(),500),(11,11,11,NOW(),260),(12,12,12,NOW(),310),
(13,13,13,NOW(),420),(14,14,14,NOW(),380),(15,15,15,NOW(),290),
(16,16,16,NOW(),330),(17,17,17,NOW(),440),(18,18,18,NOW(),360),
(19,19,19,NOW(),275),(20,20,20,NOW(),410),(21,21,21,NOW(),390),
(22,22,22,NOW(),470),(23,23,23,NOW(),350),(24,24,24,NOW(),280),
(25,25,25,NOW(),300),(26,26,26,NOW(),460),(27,27,27,NOW(),370),
(28,28,28,NOW(),410),(29,29,29,NOW(),520),(30,30,30,NOW(),600);
select * from sales ;

CREATE TABLE sale_items (
    sale_item_id INT PRIMARY KEY AUTO_INCREMENT,
    sale_id INT,
    medicine_id INT,
    quantity INT,
    price DECIMAL(10,2),
    total DECIMAL(10,2),

    FOREIGN KEY (sale_id) REFERENCES sales(sale_id),
    FOREIGN KEY (medicine_id) REFERENCES medicines(medicine_id)
);
INSERT INTO sale_items VALUES
(1,1,1,2,20,40),
(2,2,5,3,15,45),
(3,3,3,1,55,55),
(4,4,10,2,120,240),
(5,5,2,4,35,140),
(6,6,7,2,25,50),
(7,7,8,1,75,75),
(8,8,4,2,80,160),
(9,9,9,5,18,90),
(10,10,6,3,60,180),
(11,11,11,2,30,60),
(12,12,12,1,550,550),
(13,13,13,2,45,90),
(14,14,14,3,28,84),
(15,15,15,2,35,70),
(16,16,16,1,95,95),
(17,17,17,2,120,240),
(18,18,18,1,85,85),
(19,19,19,2,150,300),
(20,20,20,1,110,110),
(21,21,21,3,70,210),
(22,22,22,2,40,80),
(23,23,23,2,55,110),
(24,24,24,1,65,65),
(25,25,25,2,150,300),
(26,26,26,1,75,75),
(27,27,27,3,60,180),
(28,28,28,4,45,180),
(29,29,29,1,350,350),
(30,30,30,2,180,360);




CREATE TABLE purchases (
    purchase_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_id INT,
    purchase_date DATE,
    total_amount DECIMAL(10,2),

    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);
INSERT INTO purchases VALUES
(1,1,'2026-01-02',1250),
(2,2,'2026-01-05',2100),
(3,3,'2026-01-08',1850),
(4,4,'2026-01-10',2400),
(5,5,'2026-01-12',2750),
(6,6,'2026-01-15',3200),
(7,7,'2026-01-18',2900),
(8,8,'2026-01-20',3600),
(9,9,'2026-01-22',4100),
(10,10,'2026-01-25',3850),
(11,11,'2026-01-28',4500),
(12,12,'2026-02-01',4700),
(13,13,'2026-02-04',5200),
(14,14,'2026-02-07',4950),
(15,15,'2026-02-10',5600),
(16,16,'2026-02-13',6100),
(17,17,'2026-02-16',5800),
(18,18,'2026-02-19',6400),
(19,19,'2026-02-22',7000),
(20,20,'2026-02-25',6750),
(21,21,'2026-02-28',7200),
(22,22,'2026-03-02',7600),
(23,23,'2026-03-05',8100),
(24,24,'2026-03-08',7900),
(25,25,'2026-03-11',8500),
(26,26,'2026-03-14',9000),
(27,27,'2026-03-17',8800),
(28,28,'2026-03-20',9400),
(29,29,'2026-03-23',9900),
(30,30,'2026-03-26',10500);

CREATE TABLE purchase_items (
    purchase_item_id INT PRIMARY KEY AUTO_INCREMENT,
    purchase_id INT,
    medicine_id INT,
    quantity INT,
    cost_price DECIMAL(10,2),

    FOREIGN KEY (purchase_id) REFERENCES purchases(purchase_id),
    FOREIGN KEY (medicine_id) REFERENCES medicines(medicine_id)
);
INSERT INTO purchase_items VALUES
(1,1,1,100,8),
(2,2,2,120,10),
(3,3,3,90,30),
(4,4,4,80,50),
(5,5,5,150,7),
(6,6,6,110,25),
(7,7,7,130,15),
(8,8,8,95,45),
(9,9,9,200,10),
(10,10,10,85,60),
(11,11,11,160,12),
(12,12,12,50,400),
(13,13,13,140,20),
(14,14,14,170,18),
(15,15,15,180,22),
(16,16,16,120,40),
(17,17,17,100,70),
(18,18,18,90,55),
(19,19,19,60,100),
(20,20,20,75,85),
(21,21,21,110,35),
(22,22,22,130,20),
(23,23,23,125,28),
(24,24,24,105,32),
(25,25,25,95,120),
(26,26,26,115,50),
(27,27,27,140,25),
(28,28,28,160,18),
(29,29,29,70,250),
(30,30,30,85,130);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    sale_id INT,
    method VARCHAR(50),
    status VARCHAR(50),
    FOREIGN KEY (sale_id) REFERENCES sales(sale_id)
    
);
ALTER TABLE payments ADD amount DECIMAL(10,2);
INSERT INTO payments (payment_id, sale_id, method, status, amount) VALUES
(1,1,'Cash','Completed',210),
(2,2,'UPI','Completed',320),
(3,3,'Card','Completed',180),
(4,4,'Cash','Completed',450),
(5,5,'UPI','Completed',275),
(6,6,'Card','Completed',390),
(7,7,'Cash','Completed',410),
(8,8,'UPI','Completed',220),
(9,9,'Card','Completed',360),
(10,10,'Cash','Completed',500),
(11,11,'UPI','Completed',260),
(12,12,'Card','Completed',310),
(13,13,'Cash','Completed',420),
(14,14,'UPI','Completed',380),
(15,15,'Card','Completed',290),
(16,16,'Cash','Completed',330),
(17,17,'UPI','Completed',440),
(18,18,'Card','Completed',360),
(19,19,'Cash','Completed',275),
(20,20,'UPI','Completed',410),
(21,21,'Card','Completed',390),
(22,22,'Cash','Completed',470),
(23,23,'UPI','Completed',350),
(24,24,'Card','Completed',280),
(25,25,'Cash','Completed',300),
(26,26,'UPI','Completed',460),
(27,27,'Card','Completed',370),
(28,28,'Cash','Completed',410),
(29,29,'UPI','Completed',520),
(30,30,'Card','Completed',600);




















