-- Drop table if exists
DROP TABLE campaign;
DROP TABLE contacts;
DROP TABLE category;
DROP TABLE subcategory;

-- Create new category table
CREATE TABLE category (
category_id varchar PRIMARY Key, 
category varchar 
);

-- Create new subcategory table
CREATE TABLE subcategory (
subcategory_id varchar PRIMARY Key, 
subcategory varchar 
);

-- Create new contacts table
CREATE TABLE contacts (
contact_id int PRIMARY Key, 
first_name varchar,
last_name varchar,
email varchar
);


-- Create new campaign table
CREATE TABLE campaign (
cf_id int PRIMARY KEY,
contact_id int ,
company_name varchar,
description varchar,
goal float,
pledged float,
outcome varchar,
backers_count int,
country varchar,
currency varchar,
launched_date date,
end_date date,
category_id varchar, 
subcategory_id varchar,
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

select * from category
select * from subcategory
select * from contacts
select * from campaign




