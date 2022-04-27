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
-- Name: profiles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profiles (
    id integer NOT NULL,
    "nameTM" character varying,
    "nameRU" character varying,
    "short_descTM" character varying,
    "short_descRU" character varying,
    "like" integer,
    dislike integer,
    instagram character varying,
    site character varying,
    location character varying,
    address character varying,
    is_cash boolean,
    is_terminal boolean,
    work_hours character varying,
    delivery boolean,
    "cousineTM" character varying,
    "cousineRU" character varying,
    average_check double precision,
    is_active_card boolean,
    tm_muse_card double precision,
    is_certificate boolean,
    "is_VIP" integer,
    is_promo boolean,
    "WiFi" boolean,
    status integer,
    category_id integer,
    cinema_id integer,
    view_count integer,
    promo_count integer,
    "descriptionTM" character varying,
    "descriptionRU" character varying,
    order_in_list integer,
    free_time character varying,
    required_promotion boolean,
    own_promotion double precision,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.profiles OWNER TO postgres;

--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_id_seq OWNER TO postgres;

--
-- Name: profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;


--
-- Name: profiles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profiles (id, "nameTM", "nameRU", "short_descTM", "short_descRU", "like", dislike, instagram, site, location, address, is_cash, is_terminal, work_hours, delivery, "cousineTM", "cousineRU", average_check, is_active_card, tm_muse_card, is_certificate, "is_VIP", is_promo, "WiFi", status, category_id, cinema_id, view_count, promo_count, "descriptionTM", "descriptionRU", order_in_list, free_time, required_promotion, own_promotion, created_at, updated_at) FROM stdin;
0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	f	\N	f	\N	\N	\N	f	\N	f	\N	f	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2022-03-09 14:21:45.541368	2022-03-09 14:21:45.541415
251	France Oil Parfume	France Oil Parfume			0	0	parfumer_tm			SM «Berkarar», SM «Aşgabad ýalkymy», SM «Altyn zaman», SM«Gulzemin»$ТРЦ «Беркарар», ТРЦ «Ашхабад Ялкымы», ТРЦ «Алтын Заман», ТРЦ «Гульземин»	f	f	10:00-22:00	f			0	f	0	f	0	f	f	1	5	0	2	0			0		f	0	2022-04-12 10:25:09.649403	2022-04-12 10:25:09.649415
217	Wok food	Wok food			0	0	wok_food_tm			diňe dostawka$только доставка	t	t	09:00-21:00	t	ýaponiýaňky	японская	150	f	0	f	0	f	f	1	4	0	57	0			0		f	0	2022-04-07 09:41:33.380964	2022-04-07 09:41:33.380989
98	"Dynamics GYM for Ladies" Fitnes merkezi	Фитнес центр "Dynamics GYM for Ladies"			1	0	dinamika_sport_kluby			ýaşaýyş jaýy Gurtly, jaý 31 $жилой массив Гуртлы, дом 31	f	f	09:00-22:30	f			0	f	10	f	0	f	f	1	6	0	12	0			22		f	0	2022-03-24 10:14:10.535198	2022-03-24 10:14:10.535209
119	Rahat	Rahat			0	0	rahat_brasserie			SM "Berkarar", 2 etaž$ТРЦ "Беркарар", 2 этаж	t	t	09:00-23:00	t	ewropeýanky	европейская	150	f	0	f	0	f	t	1	4	0	3	0			0		f	0	2022-03-29 11:20:25.378026	2022-03-29 11:20:25.378046
190	Şa kofe	Şa kofe			0	0	shacoffee			“Ylham” alleýa, SM “Berkarar” 3 gat$“Ylham” аллея, ТЦ “Berkarar” 3 этаж	t	t	08:00 – 23:00 	t	ewropeýanky	европейская	170	f	0	f	0	f	t	1	4	0	10	0			0		f	0	2022-04-05 12:36:20.050338	2022-04-05 12:36:20.050353
180	Melhem	Melhem			0	0	melhem7017			Hudaýberdiyew köç. 4 kiçi etrapçasy$ул.Худайбердыева 4-й мкр 	t	t	10:00-22:00	t	mangal	мангал	150	f	10	f	0	f	t	1	4	0	14	0			0		f	0	2022-04-05 10:14:07.54628	2022-04-05 10:14:07.546293
141	Geek Space	Geek Space			3	0	geekspace.dev	geelspace.dev			f	f	09:00-18:00	f			0	f	0	f	0	f	f	1	3	0	65	0			0		f	0	2022-04-04 07:40:19.990747	2022-04-04 07:40:19.990761
259	Run street	Run street			0	0	run.street			SM"Berkarar", 2 gat, C31 B$ТРЦ Беркарар,  2 этаж, C31 B	f	f	10:00-22:00	f			0	f	0	f	0	f	f	1	5	0	3	0			0		f	0	2022-04-12 11:28:10.467872	2022-04-12 11:28:10.467896
248	le’ Pretty	le’ Pretty			0	0	lepretty_tm			SM "Berkarar",2 gat,C24$ТРЦ Беркарар, 2 этаж, С24	f	f	11:00-22:00	f			0	f	0	f	0	f	f	1	5	0	2	0			0		f	0	2022-04-12 09:56:00.220196	2022-04-12 09:56:00.220209
67	Coffee CHI	Coffee CHI			1	0	coffeechitm			Surikow köç., Baýramhan seýilgähi$ул. Сурикова, аллея Байрамхан	t	t	08:00-22:00	t	kofeýnýa	кофейня	80	f	10	f	1	f	f	1	4	0	17	0			1		f	0	2022-03-23 09:12:02.458332	2022-03-23 09:12:02.458345
206	Soltan	Soltan			0	0	soltanrestoran_official			SM "Berkarar" 3 gat, D-17, D-2$ТРЦ Беркарар 3-й этаж D-17 и D-2	t	t	8:00-23:00	t	milli,türkiýaňky	национальная,турецкая	150	f	0	f	0	f	f	1	4	0	1	0			0		f	0	2022-04-06 12:52:20.842378	2022-04-06 12:52:20.842395
228	Distance	Distance	Aýal-gyzlaryň aýakgaplary -50% arzanladyş we 6 aý möhlet bilen Öňünden töleg ýok	Женская обувь со скидкой -50% и в Рассрочку на 6 Месяцев Без Предоплаты	0	0	distance.shoes			SM "Berkarar" 2 gat$ТРЦ "Berkarar" 2 этаж	f	f	09:00-22:00	f			0	f	0	f	0	f	f	1	5	0	6	0			0		f	0	2022-04-08 07:21:14.483523	2022-04-08 07:21:14.483536
219	Mavi	Mavi			0	0	mavi_turkmenistan			SM"Berkarar", 2 gat$ТРЦ "Беркарар", 2 этаж	t	t	10:00-22:00	t			0	f	0	f	0	f	f	1	5	0	3	0			0		f	50	2022-04-07 11:50:05.076623	2022-04-07 11:50:05.07664
109	Melbourne Grill Cafe	Melbourne Grill Cafe			0	0	melbourne_grill.tm			SM "Berkarar", 3 etaž$ТРЦ Беркарар, 3 этаж	t	t	09:00-23:00	t	ewropaly	европейская	300	f	0	f	0	f	f	1	4	0	0	0			0		f	0	2022-03-28 08:02:02.804243	2022-03-28 08:02:02.80426
197	Saraý pub	Saraý pub			0	0	saraypub			SM "Aşgabadyň Ýalkymy", Görogly köç. 122 jaý$ТРЦ «Ашгабыдын Ялкымы», ул. Героглы, дом 122	t	t	09:00-23:00	t	ewropeýaňky	европейская	150	f	0	f	0	f	f	1	4	0	24	0			0		f	0	2022-04-06 09:50:44.295201	2022-04-06 09:50:44.295216
88	Sushi time	Sushi time			2	0	sushi_time___			diňe dostawka$только доставка	t	t	08:00-08:00	t	ýaponiýa	японская	150	f	10	f	0	f	f	1	4	0	23	0			12		f	0	2022-03-23 12:01:28.29194	2022-03-23 12:01:28.291957
128	Erzurum	Erzurum			3	3	erzurum_restaurant/			Görögly köç,15$ул. Героглы 15	t	f	10:00-22:00	t	türkiýaňky	турецкая	150	f	0	f	0	f	f	1	4	0	30	0			0		f	0	2022-03-31 10:12:26.725578	2022-03-31 10:12:26.725592
162	 Awangard/Caravella	Awangard/Caravella			0	0	awangard_caravella_fitness			köç. 1958, 78/1$ул. 1958, 78/1	f	f	10:00-22:00	f			0	f	0	f	0	f	f	1	6	0	6	0			0		f	0	2022-04-04 11:23:13.663877	2022-04-04 11:23:13.663894
151	Päk nesil	Päk nesil			0	0	pak_nesil			köç. 72 ýaşly Andaliba, Türkmenbalyk söwda merkezi 3 gat; köç. 54 ýaşly Y.Durdiýew, "Ýüpek ýoly", 2 gat; köç. 25 ýaşly Ankara, Rysgal banky, 6-njy gat $ул. Андалиба, 72, ТЦ “Turkmenbalyk”, 3 этаж ул. Й.Дурдыев, 54, “Ýüpek ýoly”, 2 этаж ул. Анкара, 25, Rysgal банк, 6 этаж	f	f	09:00-21:00	f			0	f	0	f	0	f	f	1	3	0	11	0			0		f	0	2022-04-04 09:44:33.787288	2022-04-04 09:44:33.787301
100	Cazador	Cazador			0	1	cazador_store			SM"Berkarar" 2 etaž (ç23a) $ТЦ ”Berkarar” 2 этаж(c23a)	f	f	11:00-22:00	f			0	f	10	f	0	f	f	1	5	0	12	0			24		f	0	2022-03-24 11:16:11.579556	2022-03-24 11:16:11.579575
275	Андро и Сандро	Андро и Сандро	Spektakl 17/04 19: 00-da başlar.	Спектакль начинается 17/04 в 19:00.	0	0	pushkin_1799_06_06			Mahtumkuli köç.,142$ул.Махтумкули, 142	f	f		f			0	f	0	f	0	f	f	1	1	0	2	0			0		f	0	2022-04-15 09:53:50.032147	2022-04-15 09:53:50.032161
135	Möjegim	Мой волк	2D   16+	2D   16+	3	0	berkarar_cinema	01/04/2022-03/04/2022(10:05,12:35,16:10,19:30)*		Berkarar cinema$Berkarar cinema	f	f		f			40	f	0	t	0	f	f	1	2	3	160	0	th	thtre	0		t	0	2022-04-01 11:51:54.344577	2022-04-01 11:51:54.344589
211	Tigirli coffee	Tigirli coffee			0	0	tigirli_coffee			SM Gülistan,6$ТЦ Гулистан, 6 	t	t	08:00-20:00	t	kofeýnya	кофейня	100	f	0	f	0	f	f	1	4	0	11	0			0		f	0	2022-04-07 07:34:31.694947	2022-04-07 07:34:31.694961
181	Mr Cook	Mr Cook			0	0	mr.cook_cafe			Magtymguly  köç.1 park$ул. Махтумкули 1 парк	t	t	09:00-23:00	t	ewropeýaňky	европейская	150	f	0	f	0	f	f	1	4	0	0	0			0		f	0	2022-04-05 10:42:41.370081	2022-04-05 10:42:41.370092
80	  Рыбажарка	Rybajarka			0	0	rybajarka			"Şanly kerwen" binasy$"Şanly kerwen" здание(объездная))	t	t	11:00-22:00	t	deňiz önümleri restorany 	рыбный ресторан	150	f	15	f	1	f	f	1	4	0	2	0			4		f	0	2022-03-23 10:38:24.888712	2022-03-23 10:38:24.888725
163	Jana	Jana			1	1	restaurant.jana			Parahat şaýoly 4/2, "Santa barbara" binasy $проспект Парахат 4/2, здание «Santa barbara»	t	t	10:00-23:00	t	milli,ewropeýaňky	национальная,европейская	150	f	0	f	0	f	f	1	4	0	11	0			0		f	0	2022-04-04 11:53:39.361521	2022-04-04 11:53:39.361538
276	Böwenjik	Колобок	Spektakl 23/04 19:00-da başlar.	Спектакль начинается 23/04 в 19:00.	0	0	pushkin_1799_06_06			Mahtumkuli köç.,142$ул.Махтумкули, 142	f	f		f			0	f	0	f	0	f	f	1	1	0	6	0			0		f	0	2022-04-15 10:00:18.630102	2022-04-15 10:00:18.630114
77	Pizza№1	Pizza№1			0	0	pizza.n_1			diňe dostawka$доставка только	t	t	10:00-21:30	t	fast-food	fast-food	150	f	15	f	1	f	f	1	4	0	15	0			2		f	0	2022-03-23 10:07:45.692856	2022-03-23 10:07:45.692871
120	La Tartine	La Tartine			0	0	latartine_tm			SM "Berkarar", 3 etaž$ТРЦ "Беркарар", 3 этаж	t	t	10:00-22:00	t	pizzeriýa	пиццерия	150	f	0	f	0	f	t	1	4	0	1	0			0		f	0	2022-03-29 11:26:04.630982	2022-03-29 11:26:04.630995
249	LETIQUE 🍃 КОСМЕТИКА 🍃 АШХАБАД	LETIQUE 🍃 КОСМЕТИКА 🍃 АШХАБАД			0	0	letique.tm			diňe dostawka$только на доставку	f	f	10:00-22:00	f			0	f	0	f	0	f	f	1	5	0	2	0			0		f	0	2022-04-12 09:59:40.206385	2022-04-12 09:59:40.206396
207	Soltan	Soltan			0	0	soltanrestoran_official			Andalib köç.80B, 2-3 gat (Santa-Barbara)$ул. Андалиба 80Б, 2-3 этаж (Санта-Барбара мир-4)	t	t	09:00 – 23:00 	t	türkiýaňky,gruzinyňky, milli,ewropeýaňky	Турецкая, грузинская, национальная и европейская	200	f	0	f	0	f	t	1	4	0	11	0			0		f	0	2022-04-07 06:56:49.509838	2022-04-07 06:56:49.50985
142	Gujurly nesil	Gujurly nesil			0	0	gujurlybilim_merkezi	gujurlynesil.edu.tm		Magtymguly şaýoly 73 jaý$ул.Махтумкули,73	f	f	09:00-18:00	f			0	f	0	f	0	f	f	1	3	0	3	0			0		f	0	2022-04-04 07:52:03.175901	2022-04-04 07:52:03.175915
229	Дочки сыночки	Дочки сыночки			1	0				SM "Berkarar", 3 gat, D54$ТРЦ Беркарар, 3 этаж, D54	f	f	10:00- 22:30	f			0	f	0	f	0	f	f	1	5	0	6	0			0		f	0	2022-04-08 07:30:11.024883	2022-04-08 07:30:11.024899
101	Bambi	Bambi			2	2	bambitkm			"Berkarar" SM 1 gat B24, söwda merkezi. "ASHGABAT" 0 gat blok-C 12 mag.  $ТЦ ”Berkarar” 1 эт. В24,ТЦ. «АШХАБАД» 0 эт. блок-C 12 маг.	f	f	11:00-22:00	f			0	f	10	f	0	f	f	1	5	0	14	0			25		f	0	2022-03-24 11:44:34.310622	2022-03-24 11:44:34.310637
129	Gurman loft	Gurman loft			3	3	gurman.loft.resto			Ostrowskiý köç.$ул. Островского	t	t	10:00-22:00	t	türkiýaňky	турецкая	150	f	0	f	0	f	f	1	4	0	13	0			0		f	0	2022-03-31 10:27:16.902373	2022-03-31 10:27:16.902385
198	Saraýly house	Saraýly house			0	0	_sarayly_house/			Magtymguly köç. 72A$ул. Махтумкули, 72А	t	t	09:00–22:30	t	ewropeýaňky	европейская	150	f	0	f	0	f	t	1	4	0	1	0			0		f	0	2022-04-06 09:59:17.117342	2022-04-06 09:59:17.117355
152	Readistore	Readistore			0	0	readitstore			SEC "Aşgabat" 0 gat $ТРЦ "Ашхабад" 0 этаж	f	f	10:00-21:00	f			0	f	0	f	0	f	f	1	3	0	5	0			0		f	0	2022-04-04 09:48:52.588628	2022-04-04 09:48:52.588641
89	Altyn ada	Altyn ada			0	0	altynadapub			Parahat 1/1, Molodežnaýa köç, 48 jaý$Мир 1/1, ул.Молодежная, дом 48	t	t	10:00-22:00	t	ewropeýskaýa	европейская	200	f	10	f	0	f	t	1	4	0	17	0			13		f	0	2022-03-23 12:08:38.113625	2022-03-23 12:08:38.113642
110	Mᴇʟʙᴏᴜʀɴᴇ Bᴜʀɢᴇʀ	Mᴇʟʙᴏᴜʀɴᴇ Bᴜʀɢᴇʀ			0	0	melbourne_burger.tm			Mahtumkuli köç/$ул. Махтумкули	t	t	09:00-23:00	t	ewropaly	европейская	300	f	0	f	0	f	f	1	4	0	0	0			0		f	0	2022-03-28 08:05:25.825524	2022-03-28 08:05:25.82554
218	Yaki Tori	Yaki Tori			4	1	yakitori_ashgabat			Parahat 5, "Harman" restoran$Парахат 5, ресторан «Harman»	t	t	12:00-22:00	t	ýaponiýaňky	японская	150	f	0	f	0	f	f	1	4	0	100	0			0		f	0	2022-04-07 09:57:21.804019	2022-04-07 09:57:21.804032
191	Şa ýyldyz	Şa ýyldyz			0	0	shayyldyz_tmt			Türkmenbaşi ş.$ул. Туркменбаши, 40 А	t	t	08:00–23:00 	t	türekiýaňky,milli	турецкая,национальная	150	f	0	f	0	f	t	1	4	0	8	0			0		f	0	2022-04-05 12:46:18.438694	2022-04-05 12:46:18.438707
99	Himiki arassalaýyş  "Mayam"	Химчистка "Mayam"			1	0	mayam.co	www.mayam.co		"Joşgun" söwda merkezi, 1-nji gat "Gek Bazar" söwda merkezi, Taslama köçesiniň 10-njy jaýy (M3 bazary) $ТЦ «Джошгун», 1 этаж ТЦ «Гек Базар», 10  Ул.Таслама(Маркет M3)	f	f	08:00-20:00	f			0	f	20	f	0	f	f	1	3	0	10	0			23		f	0	2022-03-24 10:31:08.673445	2022-03-24 10:31:08.673462
114	Ginko platan	Ginko platan			0	0	ginko_platan			Bitarap/Oguzhan köç."Gül zaman"$ул.Битарап/Огузхан 140,  «Gül Zaman»	t	t	10:00-23:00	t	ewropaly	европейская	200	f	0	f	0	f	t	1	4	0	1	0			0		f	0	2022-03-28 09:59:41.543834	2022-03-28 09:59:41.543851
90	Alfredo coffee	Alfredo coffee			1	0	alfredocoffee_			Parahat 2/1, Ýunus Emre Biznes sentr$Мир 2/1, ул.Юнус-Эмре, международный БЦ	t	t	08:00-18:00	t	kofeýnýa	кофейня	70	f	15	f	0	f	f	1	4	0	15	0			14		f	0	2022-03-23 12:16:10.879393	2022-03-23 12:16:10.879406
143	Hukuk we biznes	Hukuk we biznes			0	0	business_school.tm			Moskowskiý prospekti, 10 ýyl Abadançilik, jaý 151 $Московский проспект, ул.10 йыл Абаданчылык, дом 151	f	f	09:00-20:00	f			0	f	0	f	0	f	f	1	3	0	0	0			0		f	0	2022-04-04 08:06:16.905614	2022-04-04 08:06:16.905661
111	Bazetti	Bazetti			0	0	bazetti_coffee			Moskowskiý  köç., Aýbölek jaý/$ул. Московского, дом Айболек	t	t	08:30-22:00	t	ewropaly	европейская	100	f	0	f	0	f	t	1	4	0	2	0			0		f	0	2022-03-28 08:12:22.508549	2022-03-28 08:12:22.508564
81	Chaplin	Chaplin			0	0	chaplin__cafe			Kemine-Shaumýana köç$ул.Кемине-Шаумяна	t	t	10:00-23:00	t	европейская	ewropeýskaýa	250	f	10	f	1	f	t	1	4	0	6	0			5		f	0	2022-03-23 10:51:04.914588	2022-03-23 10:51:04.914604
130	Maraton	Maraton			1	0	maraton.shoes	www.brandshop.com.tm		Berkarar SDAM. 2 etaž$ТРЦ Беркарар, 2 этаж	f	f	09:00-22:00	f			0	f	0	f	1	f	f	1	5	0	20	0			0		f	30	2022-03-31 10:38:21.350469	2022-03-31 10:38:21.350481
250	MB shoes	MB shoes			0	0	mb_shoestm			SM "Berkarar" 2 gat; "Nowruz haly" binasy, 2 gat$ТРЦ Беркарар, 2 этаж; здание «Новруз халы» 2 этаж	f	f	10:00-21:00	f			0	f	0	f	0	f	f	1	5	0	1	0			0		f	0	2022-04-12 10:08:58.965292	2022-04-12 10:08:58.965305
164	Leg lek	Leg lek			1	0	leglek_cafe			diňe dostawka$только доставка	t	t	11:30-21:30	t	fast-food	fast-food	150	f	0	f	0	f	f	1	4	0	10	0			0		f	0	2022-04-04 12:16:42.478548	2022-04-04 12:16:42.478563
220	U.S.Polo	U.S.Polo			0	0	polo_ashgabad			Magtymguly köç. SM "Univermag"$ул.Махтумкули, ТЦ "Универмаг"	f	f	10:00-21:00	f			0	f	0	f	0	f	f	1	5	0	3	0			0		f	0	2022-04-07 12:08:51.710309	2022-04-07 12:08:51.710323
253	Ramsey	Ramsey			0	0	ramsey_turkmenistan			SM "Berkarar" 1 gat$ТРЦ "Беркарар" 1 этаж	f	f	11:00-22:00	f			0	f	0	f	0	f	f	1	5	0	0	0			0		f	0	2022-04-12 10:47:08.868325	2022-04-12 10:47:08.868381
230	ELLE	ELLE			0	0	elle_berkarar			SM"Berkarar "2 gat, C9$ТРЦ Беркарар, 2 этаж, С9	f	f	09:00-22:00	f			0	f	0	f	0	f	f	1	5	0	4	0			0		f	0	2022-04-08 07:36:04.470681	2022-04-08 07:36:04.470698
192	Sada coffee	Sada coffee			0	0	sada_coffee_houses			 Parahat 3 (stoýanka);Gulshat wedding house$Мир3 стоянка;Gulshat wedding house	t	t	07:00 – 22:00 	t	kofeýnya	кофейня	100	f	0	f	0	f	t	1	4	0	9	0			0		f	0	2022-04-05 12:55:39.982842	2022-04-05 12:55:39.982857
153	Super kids	Super kids			0	0	superkidstm			Parahat köç. $прсп. Парахат	f	f	10:00-18:00	f			0	f	0	f	0	f	f	1	3	0	5	0			0		f	0	2022-04-04 09:53:48.270313	2022-04-04 09:53:48.270326
208	Sushihouse	Sushihouse			1	0	sushihouse.tm			diňe dostawka$только доставка	t	t	11:00–23:00 	t	ýaponiýaňky	японская	150	f	0	f	1	f	f	1	4	0	13	0			14		f	0	2022-04-07 07:06:59.079924	2022-04-07 07:06:59.079941
277	Восемь любящих женщин	Восемь любящих женщин	Spektakl 23/04 19: 00-da başlar.	Спектакль начинается 23/04 в 19:00.	0	0	pushkin_1799_06_06			Mahtumkuli köç.,142$ул.Махтумкули, 142	f	f		f			0	f	0	f	0	f	f	1	1	0	4	0			0		f	0	2022-04-15 10:05:33.90437	2022-04-15 10:05:33.904384
122	Argentina steak house	Argentina steak house			0	0	argentina__steak_house			A.Niýazow köç, 84 jaý$ул. А. Ниязова 84	t	t	10:00-23:00	t	aziýaňky, ewropeýaňky	Азиатская, европейская	200	f	0	f	0	f	t	1	4	0	0	0			0		f	0	2022-03-29 11:57:30.236842	2022-03-29 11:57:30.236855
121	Altyn luw	Altyn luw			0	0	altynluw			Parahat köç, 78 jaý$ул. Мир 1, дом 78	t	t	10:00-22:00	t	aziýaňky, ewropeýaňky	Азиатская, европейская	150	f	0	f	0	f	t	1	4	0	2	0			0		f	0	2022-03-29 11:50:24.459867	2022-03-29 11:50:24.459882
102	Mannol tkm	Mannol tkm			0	0	mannolturkmen	www.mannol.tm		N. Gulaýew 1 köç. (BMW merkeziniň çäginde)$ул. Н.Гулаев 1 (Объездная, на территории BMW центра)	f	f	09:00-22:00	f			0	f	15	f	0	f	f	1	3	0	11	0			27		f	0	2022-03-24 12:00:47.463129	2022-03-24 12:00:47.463145
78	Sezam	Sezam			0	0	sezam.tm.dostawka			Öwezberdi Kuliyewa 6 köç.$ул. Овезберды Кулиева	t	t	10:00-22:00	t	fast-food	fast-food	70	f	10	f	1	f	f	1	4	0	10	0			3		f	0	2022-03-23 10:20:22.4915	2022-03-23 10:20:22.491516
199	Sawanna	Sawanna			0	0	sawanna_coffee			Aýtakow köç. "Gümmez gurluşyk" jaý$ул. Айтакова дом "Gùmmez Gurlyşyk"	t	t	10:00-23:00	t	ewropeýaňky	европейская	150	f	0	f	0	f	t	1	4	0	0	0			0		f	0	2022-04-06 10:12:16.537661	2022-04-06 10:12:16.537674
159	Fitnes merkezi "Görogly fitness"	Фитнес центр "Görogly fitness"			0	0	goroglyfitness			SM Uniwermag 2 gat  $ТЦ. Универмаг, 2 этаж	f	f	08:00-22:30	f			0	f	0	f	0	f	f	1	6	0	18	0			0		f	0	2022-04-04 10:53:32.789236	2022-04-04 10:53:32.789256
185	Obam	Obam			0	0	restoran_obam			G.Kuliýew köç. 89 "Rowaç ýoly"$ул. Г.Кулиева, здание 89, «Ровач Елы»	t	t	09:00-21:30	t	milli,ewropeýaňky	национальная,европейская	120	f	0	f	0	f	f	1	4	0	7	0			0		f	0	2022-04-05 11:36:23.876993	2022-04-05 11:36:23.877004
231	Emay cosmetics	Emay cosmetics			0	0	emaycosmetics.tm			diňe dostawka$только доставка	f	f	10:00-22:00	f			0	f	0	f	0	f	f	1	5	0	6	0			0		f	0	2022-04-08 07:46:36.033384	2022-04-08 07:46:36.033402
183	Mukam	Mukam			0	0	mukamclub			Mahtumkuli köç. 1 park$ул.Махтумкули 1 парк	t	t	11:00-23:00	t	mangal	мангал	200	f	0	f	0	f	t	1	4	0	3	0			0		f	0	2022-04-05 10:54:54.600419	2022-04-05 10:54:54.600433
123	Bamboo restaurant	Bamboo restaurant			0	1	bambuk_resto.tm			Parahat 5, 74/2$Парахат 5, 74/2	t	t	10:00-23:00	t	aziýaňky, hytaýyňky	Азиатская, китайская	150	f	0	f	0	f	t	1	4	0	3	0			0		f	0	2022-03-29 12:30:08.018228	2022-03-29 12:30:08.018244
112	BURGERZ | STREET FOOD	BURGERZ | STREET FOOD			0	0	burgerzzone	www.delivery.belgi.com.tm/burgerzone/app		SM "Berkarar", 3 etaž$ТРЦ "Беркарар",3этаж	t	t	09:00-22:30	t	fast-food	fast-food	150	f	0	f	0	f	t	1	4	0	2	0			0		f	0	2022-03-28 09:30:08.111208	2022-03-28 09:30:08.111221
103	MiuMiu	MiuMiu			1	0	miumiu_love__			SM "Berkarar" 2, etaž, Optowka 2 etaž(218-B)$Т.Ц "Berkarar" ( 2 этаж ),Оптовый, 2 этаж ( 218-В ) 	f	f	10:00-22:00	f			0	f	15	f	0	f	f	1	5	0	26	0			26		f	0	2022-03-24 12:34:49.612422	2022-03-24 12:34:49.612438
209	Sweet story	Sweet story			1	0	sweet_story_tm			diňe dostawka$только доставка	t	t	09:00–23:00 	t	tortlar,desertlar	торты,десерты	0	f	0	f	0	f	f	1	3	0	8	0			0		f	0	2022-04-07 07:19:04.549887	2022-04-07 07:19:04.549901
213	Trattoria	Trattoria			0	0	restaurant.trattoria			SM "Berkarar", 3 gat$ТРЦ "Беркарар", 3 этаж	t	t	08:30-23:00	t	Italiýaňky,aziýaňky	итальянская,азиатская	250	f	0	f	0	f	f	1	4	0	4	0			0		f	0	2022-04-07 08:48:20.498987	2022-04-07 08:48:20.498999
154	Sweet memories	Sweet memories			0	0				diňe dostawka $только доставка	f	f	10:00-22:00	f			0	f	0	f	0	f	f	1	3	0	5	0			0		f	0	2022-04-04 10:01:30.139019	2022-04-04 10:01:30.139036
252	Pijama lux	Pijama lux			0	0	pijamylux_tm			dostawka$доставка	f	f	10:00-22:00	f			0	f	0	f	0	f	f	1	5	0	3	0			0		f	0	2022-04-12 10:40:07.549135	2022-04-12 10:40:07.549148
200	Şa lezzet	Şa lezzet			0	0	sha_lezzet			30 kiçi etr., “Syÿahat” otel$30 мкр, отель “Syÿahat”	t	t	10:00-23:00	t	ewropeýaňky	европейская	200	f	0	f	0	f	f	1	4	0	4	0			0		f	0	2022-04-06 10:22:49.337597	2022-04-06 10:22:49.33761
278	Приключения Буратино	Приключения Буратино	Spektakl 24/04 13:00-da başlar.	Спектакль начинается 24/04 в 13:00.	0	0	pushkin_1799_06_06			Mahtumkuli köç.,142$ул.Махтумкули, 142	f	f		f			0	f	0	f	0	f	f	1	1	0	10	0			0		f	0	2022-04-15 10:15:50.488762	2022-04-15 10:15:50.488773
221	Pierre Cardin	Pierre Cardin			1	0	polo_ashgabad			Magtymguly köç. SM "Univermag"$ул.Махтумкули, ТЦ "Универмаг"	f	f	10:00-22:00	f			0	f	0	f	0	f	f	1	5	0	5	0			0		f	0	2022-04-07 12:16:22.179703	2022-04-07 12:16:22.179714
131	KIDS plaza	KIDS plaza			2	0	kids_plaza_tm	www.kidsplaza.tm		Berkarar SDAM. 2 etaž, c23b$ТРЦ Беркарар, 2 этаж, магазин c23b	f	f	10:00-22:30	f			0	f	0	f	1	f	f	1	5	0	20	0			0		f	0	2022-03-31 11:04:04.303128	2022-03-31 11:04:04.30314
184	Novada	Novada			0	0	novada_steakhouse	https://novada.aqulas.me/		 Görögly köç 17$ул. Гороглы, 17	t	t	11:00-23:00	t	Steak-house	Steak-house	200	f	0	f	0	f	t	1	4	0	16	0			0		f	0	2022-04-05 11:03:22.740994	2022-04-05 11:03:22.741009
179	MB Patisserie	MB Patisserie			0	0	mb.patisserie			SM "Berkarar" 2 gat$ТРЦ "Berkarar" 2 этаж	t	t	09:00-23:00	t	türkiýaňky,ewropeýaňky,milli	турецкая,европейская,национальная	150	f	0	f	0	f	f	1	4	0	4	0			0		f	0	2022-04-05 09:57:06.229601	2022-04-05 09:57:06.229614
92	Gözellik salony "LUX"	Салон красоты "LUX"			0	0	turkmenlux			Gurbannazar Ezizow köç.9 (Gül Bal)$ул.Гурбанназар Эзизов, 9 (Gül Bal)	f	f	09:00-22:00	f			0	f	20	f	0	f	f	1	6	0	9	0			15		f	0	2022-03-24 07:08:59.907184	2022-03-24 07:08:59.907199
132	Beauty shop Korea	Beauty shop Korea			28	27	tm_beauty_shop_korea	www.bsktkm.com		Berkarar SDAM. 1 etaž$ТРЦ Беркарар, 1 этаж	f	f	10:00-22:30	f			0	f	0	f	0	f	f	1	5	0	35	0			0		f	20	2022-03-31 11:24:06.860983	2022-03-31 11:24:06.860997
254	Wildcraft	Wildcraft			0	0	wildcrafttm			SM"Berkarar", 2 gat, C34a$ТРЦ "Беркарар" 2 этаж, С34а	f	f	11:00-22:00	f			0	f	0	f	0	f	f	1	5	0	1	0			0		f	0	2022-04-12 10:50:59.08998	2022-04-12 10:50:59.089996
269	Кинофильм "Человек-паук: Нет пути домой"	Кинофильм "Человек-паук: Нет пути домой"	Кинофильм   2021 ‧ Boýewik ‧ 2 sagat 30 minut	Кинофильм   2021 г. ‧ Боевик/Приключения ‧ 2 ч 30 мин	0	0	berkarar_cinema	14/04/2022-30/04/2022(10:35,13:15,17:50,20:30)*		SM "Berkarar" 3 gat, "Berkararcinema"$ТРЦ "Berkarar" 3 этаж, "Berkararcinema"	f	f		f			40	f	0	f	0	f	f	1	2	0	32	0	Mysterio Örümçiniň şahsyýetini dünýä mälim edende, Piter Parkeriň durmuşy we abraýy howp astyndadyr. Situationagdaýy düzetmek üçin Piter kömek soramak üçin Stiwen Strange ýüzlenýär, ýöne tiz wagtdan has howply bolýar.	Жизнь и репутация Питера Паркера оказываются под угрозой, поскольку Мистерио раскрыл всему миру тайну личности Человека-паука. Пытаясь исправить ситуацию, Питер обращается за помощью к Стивену Стрэнджу, но вскоре всё становится намного опаснее.	0		f	0	2022-04-14 10:27:41.823654	2022-04-14 10:27:41.823668
124	Berk pub	Berk pub			0	0	berk.gardenpub			Bomako köç, 1934$ул. Бомако, 1934 (базар 100 фонтанов)	t	t	10:00-23:00	t	BBQ	BBQ	150	f	0	f	0	f	f	1	4	0	10	0			0		f	0	2022-03-29 12:36:19.904139	2022-03-29 12:36:19.904157
222	Cacharel	Cacharel			0	0	polo_ashgabad			Atabaýewa köç.,24$ул. Атабаева, 24	f	f	10:00-20:00	f			0	f	0	f	0	f	f	1	5	0	2	0			0		f	0	2022-04-07 12:23:24.235257	2022-04-07 12:23:24.235273
113	Chatma Restaurant & Lounge	Chatma Restaurant & Lounge			0	0	chatma_official			Azadi köç. 1 park$ул. Азади, 1 парк	t	t	10:00-23:00	t	ewropaly	европейская	200	f	0	f	0	f	t	1	4	0	0	0			0		f	0	2022-03-28 09:48:20.089197	2022-03-28 09:48:20.089209
104	Awtoryň şokolady "Infinity" 	Авторский шоколад "Infinity"			0	0	chokolad_infinity_tm			diňe dostawka$только доставка	f	f	10:00-20:00	f			0	f	15	f	0	f	f	1	3	0	16	0			27		f	0	2022-03-24 12:46:28.005156	2022-03-24 12:46:28.005169
155	Zehin ýoly	Zehin ýoly			0	0	zehinyoly			köç. Oguzhan, 7/1, Hezzet restoran binasy $ул. Огузхан, 7/1, здание Хеззет ресторана	f	f	10:00-22:00	f			0	f	0	f	0	f	f	1	3	0	10	0			0		f	0	2022-04-04 10:06:56.93217	2022-04-04 10:06:56.932187
210	Terrace	Terrace			0	0	restaurant_terrace_ashgabat			Alişşera Nawoýi köç, SM "Altyn zaman"$ул. Алишера Навои, ТЦ. "Altyn Zaman"	t	t	10:00-23:00	t	ewropeýaňky	европейская	150	f	0	f	0	f	f	1	4	0	14	0			0		f	0	2022-04-07 07:28:59.355544	2022-04-07 07:28:59.35556
93	Gözellik studiýasy "Selbi"	Студия красоты "Selbi"			0	0	selbi_beauty_studiotm			Atamyrat Niýazow köç.,19$ул.Атамырата Ниязова(Чехова),19	f	f	10:00-22:00	f			0	f	10	f	0	f	f	1	6	0	11	0			16		f	0	2022-03-24 07:47:44.472281	2022-03-24 07:47:44.472292
201	Şabaz	Şabaz			0	0	shabazcoffee			Parahat 2,FOK$Парахат 2, ФОК	t	t	07:00-23:00	t	kofeýnýa	кофейня	150	f	0	f	0	f	f	1	4	0	19	0			0		f	0	2022-04-06 11:00:57.926277	2022-04-06 11:00:57.926291
83	Detox BOX	Detox BOX			0	0	detoxboxtm	www.detoxboxtm.com		diňe dostawka$только доставка	t	t	10:00-22:00	t	ПП	ПП	150	f	10	f	1	f	t	1	4	0	7	0			6		f	0	2022-03-23 10:58:25.023222	2022-03-23 10:58:25.023237
94	Gözellik studiýasy "Gunya`s Sugar studio"	Бьюти студия "Gunya`s Sugar studio"			0	0	gunya_sugar_studio			Dzežinskiý köç.,(köne zoopark)$ул. Дзержинского (старый зоопарк)	f	f	09:00-20:00	f			0	f	10	f	0	f	f	1	6	0	7	0			17		f	0	2022-03-24 07:56:28.345745	2022-03-24 07:56:28.345758
223	Altin Yildiz Classics	Altin Yildiz Classics			0	0	altinyildiz_classics.turkm			SM "Berkarar",2 gat,C-63 $ТРЦ Беркарар, 2 этаж, С63	f	f	10:00-22:00	f			0	f	0	f	0	f	f	1	5	0	2	0			0		f	0	2022-04-07 12:37:36.56583	2022-04-07 12:37:36.565848
288	Концерт \\n"Чарующих звуков красота"	Концерт \\n"Чарующих звуков красота"	Konsert 30-njy aprelde 18: 00-da bolar	Концерт пройдет 30 апреля в 18:00	1	0	tahir_atayev_string_orchestra			M. Kuliýewanyň adyndaky Türkmen milli konserwatoriýasy$Туркменская национальная консерватория им. М.Кулиевой	f	f		f			0	f	0	f	0	f	f	1	1	0	5	0	Konsert 30-njy aprelde sagat 18: 00-da M.Kuliýewanyň adyndaky TNK-nyň Uly zalynda bolar. Mugt giriş\nTahir Ataewiň orkestri\nDirijor, N. Halmammedowyň ady bilen geçirilen halkara bäsleşigiň ýeňijisi Baýmurad Gutlymyradow	Концерт пройдёт в Большом зале ТНК им.М.Кулиевой 30 апреля в 18:00. Вход свободный\nОркестр Тахира Атаева\nДирижер лауреат Международного конкурса им.Н.Халмаммедова,Баймурад Гутлымырадов	0		f	0	2022-04-19 10:30:51.364786	2022-04-19 10:30:51.364801
105	HJ"Haytek"	HJ"Haytek"			0	0	hjhaytek	http://haytek.club/		Kuliýew köç., 96 jaý, "Peykam" binasy$ ул. Кулиева (Обьездная), дом 96, здание "Peykam"	f	f	09:00-18:00	f			0	f	10	f	0	f	f	1	3	0	21	0			28		f	0	2022-03-24 12:54:02.387544	2022-03-24 12:54:02.38756
156	Gözellik salony "Agora"	Салон красоты "Agora"			0	0	agoraashgabat			Parahat 2/3, Yu. Emre köç.  jaý 7$Мир 2/3, ул.Ю. Эмре д. 7	f	f	09:00-20:00	f			0	f	0	f	0	f	f	1	6	0	3	0			0		f	0	2022-04-04 10:33:30.884491	2022-04-04 10:33:30.884509
84	Overbrinks	Overbrinks			0	0	overbrinkstm			BS "Oguzkent"$БЦ "Огузкент"	t	t	08:00-22:00	t	kofeýnýa	кофейня	150	f	20	f	1	f	t	1	4	0	5	0			7		f	0	2022-03-23 11:09:36.788649	2022-03-23 11:09:36.788664
125	Berk pub	Berk pub			16	4	berk_gard_kupalka			Perwomaý köç. "Delfin" park$ул. Первомайского, парк "Дельфин"	t	t	10:00-22:30	t	BBQ	BBQ	150	f	0	f	0	f	f	1	4	0	16	0			0		f	0	2022-03-29 12:42:26.186041	2022-03-29 12:42:26.186058
289	cvxbxcbv	xcvbxcv	xcvxcv	xzcvcxv	0	0					f	f		f			0	f	0	f	0	f	f	1	3	0	0	0			0		f	0	2022-04-24 13:31:30.387007	2022-04-24 13:31:30.38702
115	Kopetdag pizza	Kopetdag pizza			0	0	kopetdag_pizzeria			A.Nawoýi köç."Altyn zaman", 2 etaž$ул. Алишера Навои, ТЦ Altyn zaman, 2 этаж	t	t	09:00-23:00	t	italiýaňky	итальянская	200	f	0	f	0	f	t	1	4	0	7	0			0		f	0	2022-03-28 10:10:04.593474	2022-03-28 10:10:04.593487
148	Moonlight	Moonlight			0	0	moonlight_presents_tm			Diňe dostawka$только на доставку	f	f	10:00-20:00	f			0	f	0	f	0	f	f	1	3	0	3	0			0		f	0	2022-04-04 08:29:19.115349	2022-04-04 08:29:19.115362
212	Fast food by Turkmenistan Limited	Fast food by Turkmenistan Limited			0	0	tmlimited_fastfood			dostawka$на доставку	t	t	09:00-22:00	t	fast-food	фаст-фуд	100	f	0	f	0	f	f	1	4	0	5	0			0		f	0	2022-04-07 07:46:53.283002	2022-04-07 07:46:53.283015
202	Şohle	Şohle			0	0				Görogly köç.6(WDNH)$ул. Героглы 6 (ВДНХ со стороны ул. Шевченко)	t	t	10:00-23:00	t	ewropeýaňky	европейская	150	f	0	f	0	f	f	1	4	0	1	0			0		f	0	2022-04-06 11:11:48.65815	2022-04-06 11:11:48.658163
146	Studio ceramic	Studio ceramic			0	0	studio_ceramic_tm			Bagtyýarlyk sport toplumy (öňki köne haýwanat bagy)$Багтыярлык спорт комплекс (бывший старый зоопарк).	f	f	10:00-19:00	f			0	f	0	f	0	f	f	1	3	0	4	0			0		f	0	2022-04-04 08:16:20.527816	2022-04-04 08:16:20.527832
186	Capital lounge bar	Capital lounge bar			0	0	capital_lounge__bar			Magtymguly köç. "Paýtagt"otel$ул.Махтумкули, отель "Paytagt"	t	t	09:00-22:00	t	mangal,ewropeýaňky	мангал,европейская	130	f	0	f	0	f	f	1	4	0	7	0			0		f	0	2022-04-05 11:41:51.047336	2022-04-05 11:41:51.04735
272	Дюймовочка	Дюймовочка	Spektakl 16/04  13:00-da başlar.	Спектакль начинается 16/04 в 13:00.	0	0	pushkin_1799_06_06			Magtynguly köç.,142$ул.Махтумкули, 142	f	f		f			0	f	0	f	0	f	f	1	1	0	4	0			0		f	0	2022-04-15 09:32:31.453885	2022-04-15 09:32:31.453899
256	Zenana	Zenana			0	0	zenana.store			SM "Berkarar" 0 gat$ТРЦ "Беркарар" 0 этаж	f	f	11:00-22:00	f			0	f	0	f	0	f	f	1	5	0	3	0			0		f	0	2022-04-12 11:11:41.117447	2022-04-12 11:11:41.117458
134	Boutique line	Boutique line			0	0	boutique_line_turkmenistan/			SM Uniwermag, 2 etaž$ТЦ Универмаг, 2 этаж	f	f	10:00-19:00	f			0	f	0	f	0	f	f	1	5	0	8	0			0		f	0	2022-03-31 12:41:13.715937	2022-03-31 12:41:13.71595
126	Black bar	Black bar			0	1	blackbar_official			Mahtumkuli köç. (köne Ashgabat otel)$ул. Махтумкули (бывш.Ашгабат отель))	t	t	11:00-23:00	t	ewropeýaňky	европейская	200	f	0	f	0	f	f	1	4	0	7	0			0		f	0	2022-03-29 12:54:06.0626	2022-03-29 12:54:06.062613
106	A-coffee	A-coffee			0	0	acoffee.tm			Çehow köç., "Metbugat Çapary" bina$ул. Чехова, дом ( Metbugat Çapary )	t	t	08:30-23:00	t	kofehause	кофейня	100	f	0	f	0	f	f	1	4	0	4	0			0		f	0	2022-03-25 12:34:11.293742	2022-03-25 12:34:11.293759
280	Кинофильм  \\n"Смерть на Ниле"	Кинофильм \\n"Смерть на Ниле"	Кинофильм     2022 ‧ Detektiv / Jenaýat ‧ 2 sagat 7 minut	Кинофильм  2022 г. ‧ Детективный фильм/Криминал ‧ 2 ч 7 мин	0	0		18/04/2022-30/04/2022(12:45,14:25,20:45)*		SM "Berkarar" 3 gat, "Berkararcinema"$ТРЦ "Berkarar" 3 этаж, "Berkararcinema"	f	f		f			50	f	0	f	0	f	f	1	2	3	13	0	Bu gezek dynç alyşyndan daşlaşdyrylan syrly ganhorlygy derňemek zerurlygy, Nil derýasynyň boýundaky kaşaň kruiz gämisinde Poirotdan öňe geçýär.	На этот раз необходимость расследовать загадочное убийство, отвлекаясь от собственного отдыха, настигает Пуаро на борту роскошного круизного парохода, следующего вдоль по Нилу.	0		f	0	2022-04-18 10:48:09.548128	2022-04-18 10:48:09.548141
268	Кинофильм \\n"Лулу и Бриггс"	Кинофильм \\n"Лулу и Бриггс"	Кинофильм  2022 ý. Komediýa  ‧ 1 sag 41 min	Кинофильм   2022 г. ‧ Комедия/Роуд-муви ‧ 1 ч 41 мин  	0	0	berkarar_cinema	14/04/2022-30/04/2022(10:20,17:05,18:45,21:00)*\n		SM "Berkarar" 3 gat, "Berkararcinema"$ТРЦ "Berkarar" 3 этаж, "Berkararcinema"	f	f		f			40	f	0	f	0	f	f	1	2	0	30	0	Marine Briggs, Lulu atly hyzmat itini Kaliforniýa eltmeli. Bu ýumuş gaty kyn bolýar. Theuwaş ummanyň kenaryndaky ýeňil syýahat, kimiň kime äkidilýändigi belli bolmadyk ýerde heläkçilige öwrülýär.	Морской пехотинец Бриггс должен доставить в Калифорнию служебную собаку по кличке Лулу. Задание оказывается с подвохом. Лайтовая поездка вдоль Тихоокеанского побережья превращается в адское путешествие, где непонятно, кто кого везёт.	0		f	0	2022-04-14 10:24:06.615737	2022-04-14 10:24:06.615752
116	Караоке-Бар “Meshhur New York”	Караоке-Бар “Meshhur New York”			0	0	meshhur_newyork			SM "Berkarar",3  etaž$ТРЦ Беркарар, 3 этаж	t	t	10:00-23:00	t	ýewropeýanky	европейская	200	f	0	f	0	f	t	1	4	0	10	0			0		f	0	2022-03-28 10:55:10.384224	2022-03-28 10:55:10.384237
224	Koton kids	Koton kids			0	0	koton_turkmenistan			SM "Berkarar", 2 gat$ТЦ "Беркарар", 2 этаж 	f	f	10:00-22:00	f			0	f	0	f	0	f	f	1	5	0	1	0			0		f	0	2022-04-07 12:44:08.02304	2022-04-07 12:44:08.023052
214	Umyt grill lounge	Umyt grill lounge			0	0	umytgrillounge			"Altyn asyr" SM (bäşaýak),7 gat$ТЦ «Алтын Асыр» (Пятиножка), 7 этаж 	t	t	11:00–23:00 	t	ýaponiýaňky,fast-food	японская,фаст-фуд	250	f	0	f	0	f	f	1	4	0	10	0			0		f	0	2022-04-07 08:59:14.893718	2022-04-07 08:59:14.89374
85	Ammar	Ammar			0	0	ammarcafetm			Şewçenko köç, "Çinar" dükan$ул. Шевченко "Чынар" магазин 	t	t	10:00-22:00	t	ewropeýskiý	европейская	150	f	10	f	0	f	t	1	4	0	15	0			8		f	0	2022-03-23 11:16:39.27224	2022-03-23 11:16:39.272254
147	Konditoria	Konditoria			0	0	konditoria_tm			Diňe dostawka$только на доставку	f	f	10:00-20:00	f			0	f	0	f	0	f	f	1	3	0	2	0			0		f	0	2022-04-04 08:22:09.180403	2022-04-04 08:22:09.180419
95	Gözellik salony "PersonaLAB"	Салон красоты "PersonaLAB"			0	0	personalabtm_turkmenistan			Alişera-Nawoýi köç.,"Altyn Zaman", 1 etaž$ул.Алишера-Навои, "Altyn Zaman", 1 этаж	f	f	09:00-20:00	f			0	f	20	f	0	f	f	1	6	0	7	0			18		f	0	2022-03-24 08:08:37.898882	2022-03-24 08:08:37.898896
158	Gözellik studiýa "Emily beauty"	Салон красоты "Emily beauty"			0	0	_emily_beauty_			Türkmenbaşy köç., Olimpiýa myhmanhanasy  $ул.Туркменбаши, отель Olimpiya	f	f	10:00-18:00	f			0	f	0	f	0	f	f	1	6	0	3	0			0		f	0	2022-04-04 10:47:40.186631	2022-04-04 10:47:40.186644
203	Sim Sim	Sim Sim			0	0	simsim_ashgabat			Andalib köç.  50/1$ул.Андалиба, 50/1	t	t	11:00-23:00	t	Ortaýer deňzi	средиземноморская	250	f	0	f	0	f	f	1	4	0	6	0			0		f	0	2022-04-06 11:23:23.072987	2022-04-06 11:23:23.073002
187	Pizza 88	Pizza 88			0	0	pizza88_tm			Parahat 4/2 köç.$Мир 4/2(Санта-Барбара)	t	t	09:00-23:00	t	türkiýaňky	турецкая	130	f	0	f	0	f	f	1	4	0	4	0			0		f	0	2022-04-05 12:00:28.971564	2022-04-05 12:00:28.971577
188	Plaza coffee	Plaza coffee			0	0	plazacoffee_tm			Görögly köç. "Turist" otel$ул. Гёроглы отель «Турист»	t	t	08:00-22:30	t	kofeýnýa	кофейня	100	f	0	f	0	f	t	1	4	0	6	0			0		f	0	2022-04-05 12:07:10.084945	2022-04-05 12:07:10.084957
225	Lady`s room	Lady`s room			0	0	ladys_.room			A.Nawoýi köç, SM "Altyn Zaman" 3 gat$ул.А.Навои, ТЦ "Altyn Zaman" 3 этаж	f	f	11:00-19:00	f			0	f	0	f	0	f	f	1	5	0	1	0			0		f	0	2022-04-07 12:52:59.658464	2022-04-07 12:52:59.658477
160	Mahri permanent make-up	Mahri permanent make-up			0	0	mari.arti955			10 ýyl abadançylyk köç, 151 jaý Hasar $ул. 10 йыл Абаданчылык, 151 дом Hasar	f	f	09:00-21:00	f			0	f	0	f	0	f	f	1	6	0	2	0			0		f	0	2022-04-04 11:11:53.193238	2022-04-04 11:11:53.19325
96	Fitnes klub "Kolizeý"	Фитнес клуб "Kolizeý"			0	0	kolizey.fit.club			Täjir köç.(DOSAAF), 1 jaý$ул.Таджир (проезд Досааф), д.1	f	f	08:00-22:30	f			0	f	10	f	0	f	f	1	6	0	5	0			20		f	0	2022-03-24 09:34:39.864175	2022-03-24 09:34:39.864187
127	Pomodor	Pomodor			23	21	pomodor_o/			Görögly köç,19$ул.Героглы, 19	t	f	10:00-21:30	t	Pizza	pizza	150	f	15	f	1	f	f	1	4	0	65	0			26		f	0	2022-03-30 07:30:15.397931	2022-03-30 07:30:15.397944
86	В кабаке "У Амули"	В кабаке "У Амули"			0	0	kabak.amuli			diňe dostawka$только доставка	t	t	12:00-22:00	t	BBQ	BBQ	200	f	15	f	0	f	f	1	4	0	5	0			9		f	0	2022-03-23 11:28:49.650636	2022-03-23 11:28:49.65065
149	ms│studio	ms│studio			2	0	mirzoev.sergey			"Joşgun" söwda merkezi 1 gat $ТЦ «Джошгун»1 этаж	f	f	10:00-20:00	f			0	f	0	f	0	f	f	1	3	0	8	0			0		f	0	2022-04-04 09:20:19.233188	2022-04-04 09:20:19.233201
117	Ýalta coffee	Ýalta coffee			0	0	yalta_coffee			Öwezberdy Kuliýew köç$ул. Овезберды Кулиева	t	t	08:00-21:00	t	kofe house	coffee house	70	f	0	f	0	f	t	1	4	0	3	0			0		f	0	2022-03-28 11:11:56.144254	2022-03-28 11:11:56.144267
107	Altyn çaýhana	Altyn çaýhana			0	0	altyncayhana			urbansoltan eje şaýoly, 168.$ул. Гурбансолтан эдже, 168	t	t	09:00-23:00	t	fast-food	fast-food	150	f	0	f	0	f	f	1	4	0	1	0			0		f	0	2022-03-25 12:42:06.547112	2022-03-25 12:42:06.547125
215	Üzüm	Üzüm			0	0	uzum_cafe			Mežlauka köç. 13$ул. Межлаука, 13	t	t	08:30–23:00 	t	ewropeýaňky,türkiýaňky,italiýaňky,aziýadyňky,fast-food	Европейская, турецкая, итальянская, азиатская, фаст-фуд	200	f	0	f	0	f	f	1	4	0	5	0			0		f	0	2022-04-07 09:17:24.443777	2022-04-07 09:17:24.44379
204	Smile sushi bar	Smile sushi bar			0	0	smile_sushi_baar			SM"Altyn asyr",7 $ТЦ «Алтын Асыр» (Пятиножка), 7 этаж	t	t	08:00-08:00	t	ýaponiýaňky	японская	170	f	0	f	0	f	f	1	4	0	8	0			0		f	0	2022-04-06 11:56:20.346105	2022-04-06 11:56:20.346118
273	Ханума	Ханума	Spektakl 16/04 19: 00-da başlar.	Спектакль начинается 16/04 в 19:00.	0	0	pushkin_1799_06_06			Mahtumkuli köç.,142$ул.Махтумкули, 142	f	f		f			0	f	0	f	0	f	f	1	1	0	3	0			0		f	0	2022-04-15 09:45:33.82689	2022-04-15 09:45:33.826902
267	"Berkarar" kinoteatry	Кинотеатр "Berkarar"			0	0	berkarar_cinema			SM "Berkarar", 3 gat$ТРЦ "Berkarar" 3 этаж	f	f	09:00-23:00	f			0	f	0	f	0	f	f	1	3	0	9	0			0		f	0	2022-04-14 10:03:21.070369	2022-04-14 10:03:21.070381
87	Online food	Online food			0	0	onlinefood.tm			diňe dostawka$только доставка	t	t	10:00-22:00	t	ýaponiýa	японская	170	f	15	f	0	f	f	1	4	0	7	0			11		f	0	2022-03-23 11:54:00.256202	2022-03-23 11:54:00.256218
150	Notebook service	Notebook service			0	0	notebook_merkezi			köç. Bomako, Älemgoşar bazary dükany 115 $ул. Бомако, базар «Älemgoşar» магазин 115	f	f	10:00-19:00	f			0	f	0	f	0	f	f	1	3	0	2	0			0		f	0	2022-04-04 09:25:45.483378	2022-04-04 09:25:45.483392
189	Red coffee	Red coffee			0	0	redcoffeetm			"Bagtyýarlyk" SM, 0 gat$ТЦ «Багтыярлык» цокольный этаж	t	t	08:00-23:00	t	kofeýnya	кофейня	70	f	0	f	0	f	t	1	4	0	4	0			0		f	0	2022-04-05 12:19:06.777601	2022-04-05 12:19:06.777614
274	Аладдин и волшебная лампа	Аладдин и волшебная лампа	Spektakl 17/04 13:00-da başlar.	Спектакль начинается 17/04 в 13:00.	0	0	pushkin_1799_06_06			Mahtumkuli köç.,142$ул.Махтумкули, 142	f	f		f			0	f	0	f	0	f	f	1	1	0	1	0			0		f	0	2022-04-15 09:49:56.985092	2022-04-15 09:49:56.985103
118	Shabaz Pizzeria•Patisserie	Shabaz Pizzeria•Patisserie			0	0	shabazcoffee			Parahat 2$Парахат 2	t	t	07:00-23:00	t	kofehouse	kofehouse	150	f	0	f	0	f	t	1	4	0	2	0			0		f	0	2022-03-29 11:05:15.601818	2022-03-29 11:05:15.601833
108	Altyn dan	Altyn dan			0	0	altyn_dan_tm			diňe dostawka.$только доставка	t	t	10:00-22:00	t	fast-food	fast-food	150	f	0	f	0	f	f	1	4	0	5	0			0		f	0	2022-03-25 12:57:23.599545	2022-03-25 12:57:23.599559
205	Soltan Loft	Soltan Loft			0	0	soltan_loft_			2127 (G.Kulyýew) köç.jaý 72$(Г.Кулиев)2127, 72 дом	t	t	09:00-22:30	t	türkiýaňky	турецкая	180	f	0	f	0	f	f	1	4	0	4	0			0		f	0	2022-04-06 12:10:39.957031	2022-04-06 12:10:39.957078
161	"Awangard" gözellik salony	Салон красоты Awangard			0	0	awangard_salon			köç. 1958, 78/1$ул. 1958, 78/1	f	f	09:00-21:00	f			0	f	0	f	0	f	f	1	6	0	5	0			0		f	0	2022-04-04 11:17:05.915343	2022-04-04 11:17:05.915356
216	Venice restoclub	Venice restoclub			0	0	venice_restoclub			Andalib/G.Kuliýew köç.$ул. Н. Андалиба / Г. Кулиева	t	t	11:00–23:00 	t	ýewropeýaňky	европейская	200	f	0	f	0	f	f	1	4	0	18	0			0		f	0	2022-04-07 09:33:28.679497	2022-04-07 09:33:28.67951
227	Disney	Disney			0	0				SM "Berkarar", 3 gat, D 52$ТЦ Беркарар, 3 этаж, D 52	t	t	10:00 – 22:30	t			150	f	0	f	0	f	f	1	5	0	1	0			0		f	0	2022-04-08 07:00:18.541415	2022-04-08 07:00:18.541433
97	"Dynamics GYM" Fitnes merkezi	Фитнес центр "Dynamics GYM"			1	0	dinamika_sport_kluby			ýaşaýyş jaýy Gurtly, jaý 21 $жилой массив Гуртлы, дом 21	f	f	09:00-22:30	f			0	f	10	f	0	f	f	1	6	0	4	0			21		f	0	2022-03-24 10:07:59.139319	2022-03-24 10:07:59.139336
157	Fitnes klub "Amazonka"	Фитнес клуб "Amazonka"			0	0	amazonka_fitness_club			10 ýyllyk abadançylyk köç, Hasar öýi $ул. 10 Йыл Абаданчылик, дом Hasar	f	f	10:00 – 22:00 	f			0	f	0	f	0	f	f	1	6	0	3	0			0		f	0	2022-04-04 10:38:32.062437	2022-04-04 10:38:32.06245
247	Pit stop	Pit stop			0	0	pitstoptm			Hoja Ahmet Yasаwy (Griboyedowa)$Ходжа Ахмет Ясавы	t	t	10:00-22:00	t	ewropaňky	европейская	200	f	0	f	0	f	f	1	4	0	6	0			0		f	0	2022-04-12 09:03:20.379773	2022-04-12 09:03:20.379786
226	Han et	Han et			3	1	han_et_steakhouse			Parahat4/, "Türkmenbalyk" binasy$Парахат 4/1, здание «Turkmenbalyk»	t	t	10:00-23:00	t	steak-house	steak-house	150	f	0	f	1	f	f	1	4	0	53	0			15		f	0	2022-04-08 06:49:55.83316	2022-04-08 06:49:55.833173
270	Мультфильм "Я краснею"	Мультфильм "Я краснею"	Multfilm  2022 ‧ Çagalar üçin / Komediýa ‧ 1 sag 40 min	Мультфильм   2022 г. ‧ Детский/Комедия ‧ 1 ч 40 мин	0	0	berkarar_cinema/	14/04/2022-30/04/2022(10:50,12:30,15:55,19;05)*		SM "Berkarar" 3 gat, "Berkararcinema"$ТРЦ "Berkarar" 3 этаж, "Berkararcinema"	f	f		f			40	f	0	f	0	f	f	1	2	0	164	0	Ynamly, 13 ýaşly Mei Li yhlasly we gulak asýan enäniň gyzy bolmak bilen ýetginjeklikdäki bulam-bujarlygy ýeňip geçmegiň arasynda ýyrtylýar. Gyzyklanmalarynda, gatnaşyklarynda we ýetginjekleriniň öz bedenindäki üýtgemelerinde eýýäm üýtgeşiklik bar ýaly, ýöne ýok - haçan-da bir alada galsa (hemişe ýetginjek bilen bolup geçýär), derrew ullakan gyzyl panda öwrülýär.	Уверенная в себе 13-летняя Мэй Ли разрывается между тем, чтобы оставаться прилежной и послушной маминой дочкой и справиться с хаосом подросткового возраста. И, казалось бы, перемен в её интересах, отношениях и подростковых изменений в собственном теле и так достаточно, но нет — всякий раз, когда она слишком волнуется (что с подростком случается практически всегда), она моментально превращается в гигантскую красную панду.	0		f	0	2022-04-14 10:31:14.219601	2022-04-14 10:31:14.219612
279	Trening	Тренинг	"Häzirki zaman dünýäsinde karýerany döretmekde ýaşlaryň kynçylyklary"	"Трудности молодежи при построении карьеры в современном мире"	0	0	ish_nokady_			BM "Berkarar", 10 gat, J1 blok$БЦ «Беркарар», 10 этаж, блок J1.	f	f	09:00-21:00	f			0	f	0	f	0	f	f	1	1	0	8	0	Razy, her birimiz öz karýeramyzy gurmak ýa-da öz işimizi açmak üçin dürli meseleler bilen ýüzbe-ýüz boldukmy? Emma hiç kim bize bu meseleleri nädip çözmelidigini ýa-da ýüzbe-ýüz bolmajakdygyna göz ýetirmeýär.\n22-nji aprelde, esasanam 15-25 ýaş aralygyndaky ýaşlar üçin gurnaýan okuwymyzda bu mowzugy has jikme-jik öwrenmek isleýäris.\nBu mowzugy açmak üçin ýokary hünärli psihology çagyrdyk we indi bu hakda azajyk gürleşeris;\nAkýewa Nýazik, BMG we Türkmenistan hökümeti tarapyndan durmuşa geçirilýän “incerli derejede öz içine alyjy ýokary hilli sosial hyzmatlary ornaşdyrmak arkaly sosial gorag ulgamyny kämilleşdirmek” programmasynda sosial psiholog.\nOzal uniwersiteti gutardy - TDU. Makhtumkuli Psihologiýa hünäri. Nyazik-iň bu hünäri boýunça şahadatnamalary we baý tejribesi bar.\nOkuwda gaty gyzykly mowzukdan başga-da, gyzykly interaktiw oýun, gatnaşyk gurmak üçin oýunlar we özüňizi beýan etmek mümkinçiligini taparsyňyz.\n22-nji aprelde, 18: 30-da, Iš Nokady hyzmatdaş merkezinde.	Согласитесь каждый из нас сталкивался с различным родом проблем на пути построения своей карьеры или открытии собственного дела? Но никто не говорит нам о том, как же решить эти проблемы или сделать так, чтобы с ними не сталкиваться.\n22 апреля мы хотим более детально рассмотреть эту тему на тренинге, который мы организуем специально для молодых людей от 15 до 25 лет.\nМы пригласили высококвалифицированного психолога для раскрытия данной темы и сейчас немного расскажем о ней;\nАкыева Нязик - социальный психолог в программе «Совершенствование системы социальной защиты путем внедрения инклюзивных качественных социальных услуг на местном уровне», реализуемой ООН и Правительством Туркменистана.\nРанее окончила ВУЗ - ТГУ им. Махтумкули по специальности «Психолог». Также Нязик имеет сертификаты и большой опыт работы по данной специальности.\nПомимо очень интересной темы на тренинге вас ждёт увлекательный интерактив, игры на налаживание отношений и возможность проявить себя.\nМы ждём вас 22 апреля, в 18:30, в коворкинг-центре «Iš Nokady».	0		f	0	2022-04-15 11:28:06.505298	2022-04-15 11:28:06.50531
281	Кинофильм \\nПроект «Адам»	Кинофильм \\nПроект «Адам»	Кинофильм  2022 ‧ Sci-Fi\\nDrama ‧ 1 sagat 46 minut	Кинофильм  2022 г. ‧ Научная фантастика\\nДрама ‧ 1 ч 46 мин	0	0		18/04/2022-30/04/2022(15:05,16:45)*		SM "Berkarar" 3 gat, "Berkararcinema"$ТРЦ "Berkarar" 3 этаж, "Berkararcinema"	f	f		f			50	f	0	f	0	f	f	1	2	0	19	0	“Adam Taslamasy” Şon Lewiniň re directedissýorlyk eden we Jonatan Tropper, T. S. Nowlin, Jennifer Flakett we Mark Lewin tarapyndan ýazylan Amerikan ylmy fantastiki hereket komediýa filmidir. Aktrisalar: Raýan Reynolds, Mark Ruffalo, Jennifer Garner, Walker Skobell, Katrin Keener we Zoe Saldana	Проект „Адам“» — американский комедийный научно-фантастический боевик режиссёра Шона Леви и сценаристов Джонатана Троппера, Т. С. Наулина, Дженнифер Флэкетт и Марка Левина. В главных ролях: Райан Рейнольдс, Марк Руффало, Дженнифер Гарнер, Уолкер Скобелл, Кэтрин Кинер и Зои Салдана	0		f	0	2022-04-18 10:52:56.922963	2022-04-18 10:52:56.922978
\.


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profiles_id_seq', 289, true);


--
-- Name: profiles profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);


--
-- Name: ix_profiles_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_profiles_id ON public.profiles USING btree (id);


--
-- Name: profiles profiles_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- PostgreSQL database dump complete
--

