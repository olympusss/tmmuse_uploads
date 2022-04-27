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
-- Data for Name: galleries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.galleries (id, medium_image, large_image, profile_id, created_at, updated_at) VALUES (153, '/uploads/galleries/medium_images/65bf249a-9e26-4f70-a6c6-e19a9bbd37dc.jpg', '/uploads/galleries/large_images/5d146984-0e15-4e36-a703-8073bc82df0e.jpg', 278, '2022-04-24 13:42:14.728663', '2022-04-24 13:42:14.728674');


--
-- Name: galleries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galleries_id_seq', 153, true);


--
-- PostgreSQL database dump complete
--

