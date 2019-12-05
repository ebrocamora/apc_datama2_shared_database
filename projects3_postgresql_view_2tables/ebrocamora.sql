--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-05 08:57:03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- TOC entry 385 (class 1259 OID 23443)
-- Name: food; Type: TABLE; Schema: ebrocamora; Owner: datama2mi181
--

CREATE TABLE ebrocamora.food (
    id integer NOT NULL,
    food_type character varying(10) NOT NULL,
    porter_id integer
);


ALTER TABLE ebrocamora.food OWNER TO datama2mi181;

--
-- TOC entry 384 (class 1259 OID 23429)
-- Name: porter; Type: TABLE; Schema: ebrocamora; Owner: datama2mi181
--

CREATE TABLE ebrocamora.porter (
    id integer NOT NULL,
    porter_lastname character varying(10) NOT NULL,
    porter_firstname character varying(10) NOT NULL,
    porter_age integer NOT NULL
);


ALTER TABLE ebrocamora.porter OWNER TO datama2mi181;

--
-- TOC entry 395 (class 1259 OID 24969)
-- Name: foods; Type: VIEW; Schema: ebrocamora; Owner: datama2mi181
--

CREATE VIEW ebrocamora.foods AS
 SELECT food.id,
    food.food_type,
    porter.porter_lastname,
    porter.porter_firstname,
    porter.porter_age
   FROM (ebrocamora.food
     JOIN ebrocamora.porter ON ((food.porter_id = porter.id)));


ALTER TABLE ebrocamora.foods OWNER TO datama2mi181;

--
-- TOC entry 3440 (class 0 OID 23443)
-- Dependencies: 385
-- Data for Name: food; Type: TABLE DATA; Schema: ebrocamora; Owner: datama2mi181
--

INSERT INTO ebrocamora.food VALUES (4444, 'meal', 1313);
INSERT INTO ebrocamora.food VALUES (5555, 'meal', 1414);
INSERT INTO ebrocamora.food VALUES (6666, 'Drinks', 1515);
INSERT INTO ebrocamora.food VALUES (7777, 'meal', 1616);
INSERT INTO ebrocamora.food VALUES (8888, 'drinks', 1717);


--
-- TOC entry 3439 (class 0 OID 23429)
-- Dependencies: 384
-- Data for Name: porter; Type: TABLE DATA; Schema: ebrocamora; Owner: datama2mi181
--

INSERT INTO ebrocamora.porter VALUES (1313, 'salvio', 'cienna', 51);
INSERT INTO ebrocamora.porter VALUES (1414, 'rocamora', 'eunace', 55);
INSERT INTO ebrocamora.porter VALUES (1515, 'Ordonez', 'Justin', 54);
INSERT INTO ebrocamora.porter VALUES (1616, 'Cruz', 'Jb', 60);
INSERT INTO ebrocamora.porter VALUES (1717, 'Santos', 'Mark', 51);


--
-- TOC entry 3296 (class 2606 OID 23447)
-- Name: food food_pkey; Type: CONSTRAINT; Schema: ebrocamora; Owner: datama2mi181
--

ALTER TABLE ONLY ebrocamora.food
    ADD CONSTRAINT food_pkey PRIMARY KEY (id);


--
-- TOC entry 3294 (class 2606 OID 23433)
-- Name: porter porter_pkey; Type: CONSTRAINT; Schema: ebrocamora; Owner: datama2mi181
--

ALTER TABLE ONLY ebrocamora.porter
    ADD CONSTRAINT porter_pkey PRIMARY KEY (id);


--
-- TOC entry 3297 (class 2606 OID 23448)
-- Name: food porter_id; Type: FK CONSTRAINT; Schema: ebrocamora; Owner: datama2mi181
--

ALTER TABLE ONLY ebrocamora.food
    ADD CONSTRAINT porter_id FOREIGN KEY (porter_id) REFERENCES ebrocamora.porter(id);


-- Completed on 2019-12-05 08:57:03

--
-- PostgreSQL database dump complete
--

