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
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    id integer NOT NULL,
    username character varying,
    password character varying,
    token character varying,
    notif_token character varying,
    type integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- Name: admin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_id_seq OWNER TO postgres;

--
-- Name: admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_id_seq OWNED BY public.admin.id;


--
-- Name: admin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin (id, username, password, token, notif_token, type, created_at, updated_at) FROM stdin;
1	admin	admin	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFkbWluIiwicGFzc3dvcmQiOiJhZG1pbiJ9.5q0UgohNs_wIjB_xiORFhavphXzYfX3yaClnl7Yd2_4	\N	1	2022-03-17 11:46:01.981362	2022-03-17 11:46:01.981375
2	cinema	cinema	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImNpbmVtYSIsInBhc3N3b3JkIjoiY2luZW1hIn0.fDK4pBf5UYyE52DNgZloCIYwMiiWl4zuqabD9coMVas	f9avflj9QkudRT_FcnB7lq:APA91bE52kn3Gs5Az9D4SDllbNBA-rROidoyuedkIjWS6oqYB-7cTYGMCpYX7mplfgDY8iGfJjnym8dCZnlPAQp_W9mcLOZoTo4wWAH_R7tWbSmv7ateHXunxUbnXQxn0wMex1JQXxqw	5	2022-03-21 12:20:25.287985	2022-03-21 12:20:25.287999
3	Berkararcinema	cinema	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6IkJlcmthcmFyY2luZW1hIiwicGFzc3dvcmQiOiJjaW5lbWEifQ.PAM6QftT29g_pi0j44oqhNeOyo_ZRjxLuaPDB39uS_U	f9avflj9QkudRT_FcnB7lq:APA91bE52kn3Gs5Az9D4SDllbNBA-rROidoyuedkIjWS6oqYB-7cTYGMCpYX7mplfgDY8iGfJjnym8dCZnlPAQp_W9mcLOZoTo4wWAH_R7tWbSmv7ateHXunxUbnXQxn0wMex1JQXxqw	5	2022-03-21 15:23:45.162519	2022-03-21 15:23:45.162535
\.


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_id_seq', 3, true);


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);


--
-- Name: ix_admin_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_admin_id ON public.admin USING btree (id);


--
-- Name: admin admin_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_type_fkey FOREIGN KEY (type) REFERENCES public.admin_type(id);


--
-- PostgreSQL database dump complete
--

