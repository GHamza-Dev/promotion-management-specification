CREATE DATABASE akaMarket;


-- ADMIN Table
CREATE TABLE super_admin(
    id SERIAL PRIMARY KEY,
    email VARCHAR(50) UNIQUE NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- MARKET-ADMIN Table
CREATE TABLE market_admin(
    id SERIAL PRIMARY KEY,
    email VARCHAR(50) UNIQUE NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);


-- DEPARTEMENT-MANAGER Table
CREATE TABLE departement_manager(
    id SERIAL PRIMARY KEY,
    email VARCHAR(50) UNIQUE NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- MARKET Table
CREATE TABLE market(
    id SERIAL PRIMARY KEY,
    city VARCHAR(50)
);

-- market_admin <-> admin constraint
ALTER TABLE market_admin
    ADD COLUMN market_id Integer;

ALTER TABLE market_admin
    ADD CONSTRAINT fk_market_marketadmin
    FOREIGN KEY(market_id) 
	REFERENCES market(id) 
	ON DELETE CASCADE ON UPDATE CASCADE;

-- CATEGORY Table
CREATE TABLE category(
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(50)
);

-- category <-> departement_manager constraint
ALTER TABLE departement_manager
    ADD COLUMN category_id VARCHAR(50);

ALTER TABLE departement_manager
    ALTER COLUMN category_id TYPE Integer USING category_id::integer;    

ALTER TABLE departement_manager
    ADD CONSTRAINT fk_departementmanager_category
    FOREIGN KEY(category_id) 
	REFERENCES category(id) 
	ON DELETE CASCADE ON UPDATE CASCADE;


-- SUBCATEGORY Table
CREATE TABLE subcategory(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) DEFAULT 'UNKNOWEN',
    category_id Integer,

    FOREIGN KEY(category_id) 
	REFERENCES category(id) 
	ON DELETE CASCADE ON UPDATE CASCADE
);    


CREATE TABLE promotion(
    id SERIAL PRIMARY KEY,
    sub_cat_id Integer,
    market_admin Integer,
    percentage Float,
    loyalty_pts Integer DEFAULT 0,
    status VARCHAR(30) DEFAULT 'new',
    created_at DATE DEFAULT CURRENT_DATE,
    av_untile DATE,
    deptManagerComment VARCHAR(50),

    FOREIGN KEY(sub_cat_id) 
	REFERENCES category(id) 
	ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY(market_admin) 
	REFERENCES market_admin(id) 
	ON DELETE CASCADE ON UPDATE CASCADE
);