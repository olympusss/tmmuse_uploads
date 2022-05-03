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
-- Name: interest_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.interest_items (
    id integer NOT NULL,
    "titleTM" character varying,
    "titleRU" character varying,
    interest_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.interest_items OWNER TO postgres;

--
-- Name: interest_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.interest_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.interest_items_id_seq OWNER TO postgres;

--
-- Name: interest_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.interest_items_id_seq OWNED BY public.interest_items.id;


--
-- Name: interest_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interest_items ALTER COLUMN id SET DEFAULT nextval('public.interest_items_id_seq'::regclass);


--
-- Data for Name: interest_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.interest_items (id, "titleTM", "titleRU", interest_id, created_at, updated_at) FROM stdin;
123	hytaýaňky	китайская	25	2022-04-12 12:22:34.230191	2022-04-12 12:22:34.230212
124	fast-food	 фаст-фуд	25	2022-04-12 12:22:34.251859	2022-04-12 12:22:34.251867
125	ewropaňky	европейская	25	2022-04-12 12:22:34.269086	2022-04-12 12:22:34.269093
126	milli	национальная	25	2022-04-12 12:22:34.282439	2022-04-12 12:22:34.282446
127	ýaponiýaňky	японская	25	2022-04-12 12:22:34.293269	2022-04-12 12:22:34.293277
128	türkiýaňky	турецкая	25	2022-04-12 12:22:34.304076	2022-04-12 12:22:34.304083
129	deňiz önümleri	морепродукты	25	2022-04-12 12:22:34.31529	2022-04-12 12:22:34.315298
130	Hereket	боевик	26	2022-04-12 12:24:40.408193	2022-04-12 12:24:40.408202
131	 triller	триллер	26	2022-04-12 12:24:40.422447	2022-04-12 12:24:40.422459
132	 elhençlik	ужастик	26	2022-04-12 12:24:40.438685	2022-04-12 12:24:40.438697
133	 drama	драма	26	2022-04-12 12:24:40.454595	2022-04-12 12:24:40.454602
134	 animasiýa	мультик	26	2022-04-12 12:24:40.465512	2022-04-12 12:24:40.46552
140	çagalar	детская	28	2022-04-12 12:27:36.9951	2022-04-12 12:27:36.995109
141	 erkekler	мужская	28	2022-04-12 12:27:37.005633	2022-04-12 12:27:37.005641
142	 aýallar	женская	28	2022-04-12 12:27:37.015591	2022-04-12 12:27:37.015598
143	 aýakgaplar	обувь	28	2022-04-12 12:27:37.027791	2022-04-12 12:27:37.027799
144	 sport aýakgaplary	спортивная обувь	28	2022-04-12 12:27:37.038927	2022-04-12 12:27:37.038934
145	 içki eşikler	нижнее бельё	28	2022-04-12 12:27:37.049151	2022-04-12 12:27:37.049159
146	salon	салон	27	2022-04-21 09:31:41.257766	2022-04-21 09:31:41.257779
147	 kirpikler	ресницы	27	2022-04-21 09:31:41.292217	2022-04-21 09:31:41.292225
148	 kosmetika	косметика	27	2022-04-21 09:31:41.301907	2022-04-21 09:31:41.301916
149	 şahsy ideg	уход за собой	27	2022-04-21 09:31:41.312565	2022-04-21 09:31:41.312583
150	 sport	спорт	27	2022-04-21 09:31:41.323769	2022-04-21 09:31:41.323777
\.


--
-- Name: interest_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.interest_items_id_seq', 150, true);


--
-- Name: interest_items interest_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interest_items
    ADD CONSTRAINT interest_items_pkey PRIMARY KEY (id);


--
-- Name: ix_interest_items_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_interest_items_id ON public.interest_items USING btree (id);


--
-- Name: interest_items interest_items_interest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interest_items
    ADD CONSTRAINT interest_items_interest_id_fkey FOREIGN KEY (interest_id) REFERENCES public.interests(id);


--
-- PostgreSQL database dump complete
--

