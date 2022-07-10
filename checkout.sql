--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE demodb;
--
-- Name: demodb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE demodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'German_Germany.1252';


ALTER DATABASE demodb OWNER TO postgres;

\connect demodb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    id integer NOT NULL,
    housenr character varying(255),
    postcode character varying(255),
    street character varying(255)
);


ALTER TABLE public.address OWNER TO postgres;

--
-- Name: address_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.address_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_seq OWNER TO postgres;

--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    id integer NOT NULL,
    housenr character varying(255),
    postcode character varying(255),
    street character varying(255),
    birthdate date,
    firstname character varying(255),
    lastname character varying(255)
);


ALTER TABLE public.person OWNER TO postgres;

--
-- Name: person_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.person_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_seq OWNER TO postgres;

--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    matrnumber integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.address (id, housenr, postcode, street) FROM stdin;
1	9	49824	Hauptweg
2	6	49080	Jahnplatz
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person (id, housenr, postcode, street, birthdate, firstname, lastname) FROM stdin;
1	9	49824	Hauptweg	2022-07-10	Gerda	Musterfrau
2	6	49080	Jahnplatz	1997-12-03	Timo	Schoemaker
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (matrnumber, id) FROM stdin;
978621	2
\.


--
-- Name: address_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_seq', 51, true);


--
-- Name: person_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_seq', 51, true);


--
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- Name: student fk3bkmp4kohbl54m14tb2fcqya3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT fk3bkmp4kohbl54m14tb2fcqya3 FOREIGN KEY (id) REFERENCES public.person(id);


--
-- PostgreSQL database dump complete
--

