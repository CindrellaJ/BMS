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

-- customer reference info

