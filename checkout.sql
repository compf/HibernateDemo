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

ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
DROP SEQUENCE public.person_seq;
DROP TABLE public.person;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    dtype character varying(31) NOT NULL,
    id integer NOT NULL,
    housenr character varying(255),
    postcode character varying(255),
    street character varying(255),
    birthdate date,
    firstname character varying(255),
    lastname character varying(255),
    matrnumber integer
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
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person (dtype, id, housenr, postcode, street, birthdate, firstname, lastname, matrnumber) FROM stdin;
Person	1	9	49824	Hauptweg	2022-07-10	Gerda	Musterfrau	\N
Student	2	6	49080	Jahnplatz	1997-12-03	Timo	Schoemaker	978621
\.


--
-- Name: person_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_seq', 51, true);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

