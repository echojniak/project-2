CREATE TABLE contacts (
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL
);

SELECT * FROM contacts;

CREATE TABLE category (
	category_id CHAR(4) NOT NULL PRIMARY KEY,
	category VARCHAR(15) NOT NULL
);

SELECT * FROM category;

CREATE TABLE subcategory (
	subcategory_id VARCHAR(8) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(30)
);

SELECT * FROM subcategory;

CREATE TABLE campaign (
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(15) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(3) NOT NULL,
	currency VARCHAR(3)NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id CHAR(4) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(8) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign;










