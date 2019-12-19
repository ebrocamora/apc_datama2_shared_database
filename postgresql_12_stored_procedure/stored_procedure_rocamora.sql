-- Drop table

-- DROP TABLE "MI181_ebrocamora".food;

CREATE TABLE "MI181_ebrocamora".food (
	id int4 NOT NULL,
	food_type varchar(10) NOT NULL,
	porter_id int4 NULL,
	CONSTRAINT food_pkey PRIMARY KEY (id),
	CONSTRAINT food_fk FOREIGN KEY (porter_id) REFERENCES porter(id)
);

-- Permissions

ALTER TABLE "MI181_ebrocamora".food OWNER TO datama2mi181;
GRANT ALL ON TABLE "MI181_ebrocamora".food TO datama2mi181;

-- Drop table

-- DROP TABLE "MI181_ebrocamora".porter;

CREATE TABLE "MI181_ebrocamora".porter (
	id int4 NOT NULL,
	porter_lastname varchar(10) NOT NULL,
	porter_firstname varchar(10) NOT NULL,
	porter_age int4 NOT NULL,
	porter_bonus int4 NULL,
	CONSTRAINT porter_pkey PRIMARY KEY (id)
);

-- Permissions

ALTER TABLE "MI181_ebrocamora".porter OWNER TO datama2mi181;
GRANT ALL ON TABLE "MI181_ebrocamora".porter TO datama2mi181;
