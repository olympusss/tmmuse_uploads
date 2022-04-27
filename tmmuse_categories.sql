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

--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories (id, name, created_at, updated_at) VALUES (1, 'Theatre', '2022-03-09 14:21:45.679319', '2022-03-09 14:21:45.679375');
INSERT INTO public.categories (id, name, created_at, updated_at) VALUES (2, 'Movies', '2022-03-09 14:21:45.679319', '2022-03-09 14:21:45.679375');
INSERT INTO public.categories (id, name, created_at, updated_at) VALUES (3, 'Interesting', '2022-03-09 14:21:45.679319', '2022-03-09 14:21:45.679375');
INSERT INTO public.categories (id, name, created_at, updated_at) VALUES (4, 'Cafe and Restaurants', '2022-03-09 14:21:45.679319', '2022-03-09 14:21:45.679375');
INSERT INTO public.categories (id, name, created_at, updated_at) VALUES (5, 'Shops', '2022-03-09 14:21:45.679319', '2022-03-09 14:21:45.679375');
INSERT INTO public.categories (id, name, created_at, updated_at) VALUES (6, 'Beauty and Sport', '2022-03-09 14:21:45.679319', '2022-03-09 14:21:45.679375');
INSERT INTO public.categories (id, name, created_at, updated_at) VALUES (7, 'News', '2022-03-09 14:21:45.679319', '2022-03-09 14:21:45.679375');


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 7, true);


--
-- PostgreSQL database dump complete
--

