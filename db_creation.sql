drop DATABASE BMS_DB;

create database BMS_DB;

use BMS_DB;

show databases;

-- CUSTOMER Personal Information

CREATE Table customer_personal_info
(
	customer_id varchar(5),
    customer_name varchar(30),
	date_of_birth date,
    guardian_name varchar(30),
    address varchar(50),
	contact_no bigint(10),
    mail_id varchar(30),
    gender char(1),
    marital_status varchar(10),
    identification_doc_type varchar(20),
	constraint cost_per_info_pk PRIMARY KEY (customer_id)
);

commit;

-- customer reference info

create table customer_reference_info
(
	customer_id varchar(5),
    reference_acc_name varchar(20),
    reference_acc_no bigint(16),
    reference_acc_address varchar(50),
    relation varchar(25),
    constraint cust_ref_info_pk primary key(customer_id),
    constraint cust_ref_info_fk foreign key(customer_id) references customer_personal_info(customer_id)
);

commit;

show tables;

-- bank info

create table bank_info
(
	ifsc_code varchar(15),
    bank_name varchar(25),
    branch_name varchar(25),
    constraint bank_info_pk primary key(ifsc_code)
);

-- account info

create table account_info
(
	account_no bigint(16),
    customer_id varchar(5),
    account_type varchar(10),
    registration_date date,
    activation_date date,
    ifsc_code varchar(10),
    interest decimal(7,2),
    initial_deposit bigint(10),
    constraint acc_info_pk primary key(account_no),
    constraint acc_info_pers_pk foreign key(customer_id) references customer_personal_info(customer_id),
    constraint acc_info_bank_fk foreign key(ifsc_code) references bank_info(ifsc_code)
);

commit;

show tables;