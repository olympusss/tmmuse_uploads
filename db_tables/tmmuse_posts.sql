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
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    "titleTM" character varying,
    "titleRU" character varying,
    "descriptionTM" character varying,
    "descriptionRU" character varying,
    comment_of_admin character varying,
    status boolean,
    image character varying,
    promotion double precision,
    view_count integer,
    "like" integer,
    dislike integer,
    profile_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, "titleTM", "titleRU", "descriptionTM", "descriptionRU", comment_of_admin, status, image, promotion, view_count, "like", dislike, profile_id, created_at, updated_at) FROM stdin;
0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	2022-03-23 11:18:47.246412	2022-03-23 11:18:47.246424
9	Bahar mahabaty	Весенние акции			14.04	t	/uploads/posts/5a754d4c-16f9-4b7f-aa8c-0e328a805ad2.jpg	0	17	\N	\N	267	2022-04-14 09:55:24.437274	2022-04-19 10:34:08.122449
2	"Чарующих звуков красота"	"Чарующих звуков красота"	Konsert 30-njy aprelde sagat 18: 00-da M.Kuliýewanyň adyndaky Türkmenistanyň milli konserwatoriýasynda bolar. Giri mugt.	Концерт пройдёт в Большом зале ТНК им.М.Кулиевой 30 апреля в 18:00. Вход свободный	20.04	t	/uploads/posts/1449ce92-b0b4-4365-855b-f5ab79a6fd3a.jpg	0	216	\N	\N	288	2022-03-30 07:20:45.865645	2022-04-19 10:46:09.238912
10	Live Music	Live Music	Ajaýyp agşamlyk nahary, @enjoy_cover_band-dan halaýan aýdymlar we serginlediji kokteýller 🍹🥃	Вкусный ужин, любимые песни от @enjoy_cover_band и освежающие коктейли 🍹🥃	15.04	t	/uploads/posts/9bff3763-5e4c-482d-ab05-507aae4a3759.jpg	0	9	\N	\N	116	2022-04-15 10:49:20.562168	2022-04-15 10:49:53.706065
3	Täze kolleksiýasy	Новая коллекция	Tomus aýakgaplarynyň täze kolleksiýasy. \nBaha 550 manat.	Новая коллекция летних босоножек.\nСтоимость 550 манат	19.04	t	/uploads/posts/0a05f11a-44a5-4852-8b99-b71c7dad440f.jpg	0	112	\N	\N	103	2022-03-30 07:39:00.407708	2022-04-19 10:49:21.236414
5	pomodor	pomodor	Italian spec pizza	Italian spec pizza	31.03	t	/uploads/posts/c9037a91-d914-41a6-8d83-b1469cdfe2f9.jpg	15	97	\N	\N	127	2022-04-01 06:00:44.461604	2022-04-19 11:08:43.197972
8	Şireli burgerleri söýýänler üçin mahabat 🍔🤤	Акция для любителей сочных бургеров 🍔🤤	Islendik iki burger zakaz ediň we bir litr kola mugt get alyň🥤🍔🍔\n\nBurger bilen birlikde salat we fransuz gowurmalary (ýa-da saýlamak üçin ammar) comes gelýär🍟🥗	Закажи два любых бургера и получи литровую колу бесплатно 🥤🍔🍔\n\nВместе с бургером идет салатик и картошка фри (или аммар на выбор)🍟🥗	05,04	t	/uploads/posts/ccc995a8-6a0a-43d9-83d5-59ab31ad8888.jpg	10	86	\N	\N	85	2022-04-05 07:43:01.02552	2022-04-19 10:41:05.272692
4	𝗠𝗶𝘀𝘀𝗵𝗮 Gün şöhlelerinden goraýan ýüz krem ​​𝗦𝗮𝗳𝗲 𝗕𝗹𝗼𝗰𝗸 𝗥𝗫 cream cream cream 𝟱𝟬𝗺𝗹 	𝗠𝗶𝘀𝘀𝗵𝗮 солнцезащитный крем для лица 𝗦𝗮𝗳𝗲 𝗕𝗹𝗼𝗰𝗸 𝗥𝗫 𝗛𝘆𝗮𝗹𝘂𝗿𝗼𝗻 𝗦𝗼𝗼𝘁𝗵𝗶𝗻𝗴 𝗦𝘂𝗻 𝗦𝗣𝗙𝟱𝟬 𝟱𝟬𝗺𝗹	Missha Howpsuz Blok RX Hyaluron köşeşdiriji Gün SPF50 + PA ++++ derini täzelemek we UV şöhlelerinden we beýleki daşarky howplardan goramak üçin alty sany gialuron turşusyny öz içine alýar!\nAslynda, bu ýeňil formula ajaýyp öwüşgin berýär we gahar-gazap döretmezden ýa-da gözýaş dökmezden, ýyrtyklary ýumşadýar. Mundan başga-da, derini köşeşdirýär we infragyzyl şöhleleri ýa-da tozan bölejiklerini goşmak bilen birnäçe daşarky howplardan goraýar.\nSeresaplylyk bilen saýlanan maddalaryň arasynda ýüzüň gün şöhlesiniň az böleginde deriniň gowşak dokumalaryny güýçlendirmek bilen tanalýan Ceramide NP bar. Başgaça aýdylanda, epidermisiň tebigy gorag päsgelçiligini güýçlendirip, zyýanly erkin radikallaryň aralaşmagynyň öňüni alýar.\nDermatolog tarapyndan tassyklanan bu wariant, rif üçin amatly we oksibenzondan we oktinoksatdan azatdyr.\n4 görnüş\nTom 50 ml\nBahasy 800 manat 	Missha Safe Block RX Hyaluron Soothing Sun SPF50+PA++++ содержит комплекс из шести гиалуроновых кислот для освежения кожи и защиты от ультрафиолетовых лучей, а также других внешних угроз!\nНа самом деле, эта легкая формула обеспечивает прекрасное осветление, а также разглаживает морщины, не вызывая раздражения и не вызывая слез. Кроме того, он успокаивает кожу, а также защищает ее от ряда внешних угроз, включая инфракрасные лучи или мелкие частицы пыли.\nСреди тщательно отобранных ингредиентов небольшая часть солнцезащитного крема для лица содержит Ceramide NP, известный тем, что укрепляет уязвимые ткани кожи. Другими словами, он способствует укреплению естественного защитного барьера эпидермиса, препятствуя проникновению вредных свободных радикалов.\nОдобренный дерматологами, этот вариант также подходит для рифов и не содержит оксибензона и октиноксата.\n4 вида\nОбъем 50 мл\nЦена 800 манат	31.03	t	/uploads/posts/b4f94af0-5882-4778-83ad-24ed255621b8.jpg	0	106	\N	\N	132	2022-03-31 11:26:57.151534	2022-04-19 10:41:55.173259
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 10, true);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: ix_posts_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_posts_id ON public.posts USING btree (id);


--
-- Name: posts posts_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- PostgreSQL database dump complete
--

