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
-- Name: banners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banners (
    id integer NOT NULL,
    image character varying,
    link character varying,
    "order" integer,
    comment_of_admin character varying,
    profile_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.banners OWNER TO postgres;

--
-- Name: banners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banners_id_seq OWNER TO postgres;

--
-- Name: banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banners_id_seq OWNED BY public.banners.id;


--
-- Name: banners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);


--
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banners (id, image, link, "order", comment_of_admin, profile_id, created_at, updated_at) FROM stdin;
26	/uploads/banners/3921de22-a1b7-4b33-b72a-973bbe6cafad.jpg		0	19/04	288	2022-04-02 11:46:32.952785	2022-04-02 11:46:32.952799
25	/uploads/banners/e8cd15fa-7cd2-4eb1-b8d3-b97d87affc13.jpg		2	19/04	85	2022-03-31 11:29:39.590605	2022-03-31 11:29:39.590619
28	/uploads/banners/2ab8a53b-975e-47ca-940b-1d4167ba8e76.jpg		0	19/04	83	2022-04-19 11:02:33.813716	2022-04-19 11:02:33.81373
29	/uploads/banners/6972d8f0-673a-4d08-a9a4-9a1c92138e06.jpg		4	19/04	221	2022-04-19 11:04:39.145355	2022-04-19 11:04:39.145369
\.


--
-- Name: banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banners_id_seq', 30, true);


--
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);


--
-- Name: ix_banners_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_banners_id ON public.banners USING btree (id);


--
-- Name: banners banners_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- PostgreSQL database dump complete
--

