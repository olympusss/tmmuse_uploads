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
-- Name: pop_up; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pop_up (
    id integer NOT NULL,
    comment_of_admin character varying,
    image character varying,
    site_url character varying,
    "titleTM" character varying,
    "titleRU" character varying,
    "descriptionTM" character varying,
    "descriptionRU" character varying,
    profile_id integer,
    posts_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.pop_up OWNER TO postgres;

--
-- Name: pop_up_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pop_up_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pop_up_id_seq OWNER TO postgres;

--
-- Name: pop_up_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pop_up_id_seq OWNED BY public.pop_up.id;


--
-- Name: pop_up id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pop_up ALTER COLUMN id SET DEFAULT nextval('public.pop_up_id_seq'::regclass);


--
-- Data for Name: pop_up; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pop_up (id, comment_of_admin, image, site_url, "titleTM", "titleRU", "descriptionTM", "descriptionRU", profile_id, posts_id, created_at, updated_at) FROM stdin;
3	Popup	/uploads/popup/1cb9759c-a126-407d-b79f-e5108544f412.jpg		Ygtybarly sanly çözgütler	Эффективные цифровые решения	“Geek Space” 2020-nji ýylyň başynda, Türkmenistanda MKT ulgamyny ösdürmek maksady bilen döredildi. Şu günki günde, MKT ulgamy dünýäde tiz depginde ösýär.	«Geek Space» была основана в начале 2020 года в целях содействия развитию ИКТ сектора в Туркменистане. Сегодня, ИКТ в мире развивается быстрыми темпами.	141	\N	2022-03-23 12:29:38.773263	2022-03-23 12:29:38.773275
\.


--
-- Name: pop_up_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pop_up_id_seq', 3, true);


--
-- Name: pop_up pop_up_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pop_up
    ADD CONSTRAINT pop_up_pkey PRIMARY KEY (id);


--
-- Name: ix_pop_up_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_pop_up_id ON public.pop_up USING btree (id);


--
-- Name: pop_up pop_up_posts_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pop_up
    ADD CONSTRAINT pop_up_posts_id_fkey FOREIGN KEY (posts_id) REFERENCES public.posts(id);


--
-- Name: pop_up pop_up_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pop_up
    ADD CONSTRAINT pop_up_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- PostgreSQL database dump complete
--

