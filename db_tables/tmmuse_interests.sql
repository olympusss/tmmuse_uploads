--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: interests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.interests (
    id integer NOT NULL,
    "titleTM" character varying,
    "titleRU" character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.interests OWNER TO postgres;

--
-- Name: interests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.interests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.interests_id_seq OWNER TO postgres;

--
-- Name: interests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.interests_id_seq OWNED BY public.interests.id;


--
-- Name: interests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interests ALTER COLUMN id SET DEFAULT nextval('public.interests_id_seq'::regclass);


--
-- Data for Name: interests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.interests (id, "titleTM", "titleRU", created_at, updated_at) FROM stdin;
25	Iýmit	Еда	2022-04-12 12:22:34.181442	2022-04-12 12:22:34.181457
26	Kino	Кино	2022-04-12 12:24:40.368842	2022-04-12 12:24:40.368854
28	Eşik	Одежда	2022-04-12 12:27:36.931084	2022-04-12 12:27:36.931095
27	Gözellik	Красота	2022-04-12 12:26:30.407954	2022-04-12 12:26:30.40797
\.


--
-- Name: interests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.interests_id_seq', 28, true);


--
-- Name: interests interests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interests
    ADD CONSTRAINT interests_pkey PRIMARY KEY (id);


--
-- Name: ix_interests_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_interests_id ON public.interests USING btree (id);


--
-- PostgreSQL database dump complete
--

