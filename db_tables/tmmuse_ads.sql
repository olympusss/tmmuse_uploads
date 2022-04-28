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
-- Name: ads; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ads (
    id integer NOT NULL,
    "nameTM" character varying,
    "nameRU" character varying,
    comment_of_admin character varying,
    image character varying,
    is_main boolean,
    site_url character varying,
    profile_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.ads OWNER TO postgres;

--
-- Name: ads_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ads_id_seq OWNER TO postgres;

--
-- Name: ads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ads_id_seq OWNED BY public.ads.id;


--
-- Name: ads id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ads ALTER COLUMN id SET DEFAULT nextval('public.ads_id_seq'::regclass);


--
-- Data for Name: ads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ads (id, "nameTM", "nameRU", comment_of_admin, image, is_main, site_url, profile_id, created_at, updated_at) FROM stdin;
7	оапр	рпао	еуые	/uploads/ads/aa3abc70-e383-4c42-b809-9b30f2c2734c.jpg	f		98	2022-03-24 12:02:29.819363	2022-03-24 12:02:29.819376
14	gfdgfdg	fdgfd	fdsfds	/uploads/ads/a6889dcc-44c0-4dc1-917b-5e1bf47a114c.jpg	t	https://www.geeksforgeeks.org/ripple-effect-on-android-button/	0	2022-04-08 13:58:44.567379	2022-04-08 13:58:44.567389
13	fdsf	dsfds	fdsfds	/uploads/ads/75a8991f-6ca0-440b-b174-7c7b8758e8f9.jpg	f		151	2022-04-08 13:42:12.782423	2022-04-08 13:42:12.782432
12	gfdsgf	gfdsfds	fds	/uploads/ads/0c0d5cb7-715c-4aad-bb6b-f34efba1fe2c.jpg	f		219	2022-04-08 13:41:55.658327	2022-04-08 13:41:55.65834
11	Bet ads	Bet ads	dfssd	/uploads/ads/60df0557-a9c3-472e-a2c1-27b899fc0f11.jpg	f		141	2022-04-08 13:41:41.625169	2022-04-08 13:41:41.625183
10	fdsfds	fds	fsdd	/uploads/ads/8d430dd0-9224-4a6e-81a8-520016ac2de3.jpg	f	https://www.geekspace.dev	0	2022-04-08 13:32:00.148657	2022-04-08 13:32:00.148672
\.


--
-- Name: ads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ads_id_seq', 14, true);


--
-- Name: ads ads_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_pkey PRIMARY KEY (id);


--
-- Name: ix_ads_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_ads_id ON public.ads USING btree (id);


--
-- Name: ads ads_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- PostgreSQL database dump complete
--

