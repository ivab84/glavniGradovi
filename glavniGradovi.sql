--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: adresa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adresa (
    "drzavaISO" character varying(3) NOT NULL,
    "imeGrada" character varying(50) NOT NULL,
    ulica character varying(50) NOT NULL,
    "postBroj" character varying(10)
);


ALTER TABLE public.adresa OWNER TO postgres;

--
-- Name: drzava; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.drzava (
    "ISOoznakaDrz" character varying(3) NOT NULL,
    "imeDrzave" character varying NOT NULL,
    "sluzbeniJezikISO" character varying(2) NOT NULL,
    "valutaISO" character varying(3) NOT NULL
);


ALTER TABLE public.drzava OWNER TO postgres;

--
-- Name: grad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grad (
    "imeGrada" text NOT NULL,
    "drzavaISO" character varying(3) NOT NULL,
    "brojStanovnika" bigint,
    "povrsinaKm2" double precision
);


ALTER TABLE public.grad OWNER TO postgres;

--
-- Name: jezik; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jezik (
    "ISOoznakaJezik" character varying(2) NOT NULL,
    "imeJezika" character varying NOT NULL
);


ALTER TABLE public.jezik OWNER TO postgres;

--
-- Name: valuta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.valuta (
    "ISOoznakaValuta" character varying(3) NOT NULL,
    "imeValute" character varying NOT NULL
);


ALTER TABLE public.valuta OWNER TO postgres;

--
-- Name: znamenitost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.znamenitost (
    "imeZnam" character varying(50) NOT NULL,
    "imeGrada" character varying NOT NULL,
    "drzavaISO" character varying(3),
    "stoljeceGradnje" integer,
    "postBroj" character varying(10)
);


ALTER TABLE public.znamenitost OWNER TO postgres;

--
-- Data for Name: adresa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.adresa ("drzavaISO", "imeGrada", ulica, "postBroj") FROM stdin;
AUT	Beč	Prinz Eugen-Straße 27	1030
AUT	Beč	Stephansplatz 4	1010
DEU	Berlin	Pariser Platz	10117
HRV	Zagreb	Trg Sv. Marka 5	10000
HUN	Budimpešta	Szent György tér 2	1014
RUS	Moskva	Red Square	109012
FRA	Pariz	Champ de Mars, 5 Av. Anatole France	75007
FRA	Pariz	6 Parvis Notre-Dame - Pl. Jean-Paul II	75004 
ITA	Rim	Piazza del Colosseo, 1	00184 
ESP	Madrid	C. de Bailén, s/n	28071 
FRA	Pariz	Rue de Rivoli	75001 
POL	Varšava	plac Defilad 1	00-901
ESP	Madrid	Pl. Mayor	28012 
DEU	Berlin	Platz der Republik	11011
ITA	Rim	Piazza di Trevi	00187
SVN	Ljubljana	Prešernov trg 1	1000 
POL	Varšava	Grzybowska 79	00-844
HRV	Zagreb	Rooseveltov trg 5	10000
HUN	Budimpešta	Kossuth Lajos tér 1-3	1055
SVN	Ljubljana	Resljeva cesta 2	1000
\.


--
-- Data for Name: drzava; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.drzava ("ISOoznakaDrz", "imeDrzave", "sluzbeniJezikISO", "valutaISO") FROM stdin;
AUT	Austrija	de	EUR
DEU	Njemačka	de	EUR
ESP	Španjolska	es	EUR
FRA	Francuska	fr	EUR
HRV	Hrvatska	hr	HRK
HUN	Mađarska	hu	HUF
ITA	Italija	it	EUR
POL	Poljska	pl	PLN
SVN	Slovenija	sl	EUR
RUS	Rusija	ru	RUB
\.


--
-- Data for Name: grad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grad ("imeGrada", "drzavaISO", "brojStanovnika", "povrsinaKm2") FROM stdin;
Beč	AUT	1897000	414.6
Berlin	DEU	3645000	891.8
Budimpešta	HUN	1756000	525.2
Ljubljana	SVN	279631	163.8
Madrid	ESP	3223000	604.3
Moskva	RUS	11920000	2511
Pariz	FRA	2161000	105.4
Rim	ITA	2873000	1285
Varšava	POL	1765000	517.2
Zagreb	HRV	806341	641
\.


--
-- Data for Name: jezik; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jezik ("ISOoznakaJezik", "imeJezika") FROM stdin;
hr	hrvatski
hu	mađarski
de	njemački
fr	francuski
it	talijankski
es	španjolski
pl	poljski
sl	slovenski
ru	ruski
\.


--
-- Data for Name: valuta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.valuta ("ISOoznakaValuta", "imeValute") FROM stdin;
EUR	euro
HRK	hrvatska kuna
HUF	mađarska forinta
PLN	poljski zloti
RUB	ruska rublja
\.


--
-- Data for Name: znamenitost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.znamenitost ("imeZnam", "imeGrada", "drzavaISO", "stoljeceGradnje", "postBroj") FROM stdin;
Katedrala Notre-Dame	Pariz	FRA	12	75004 
Kolosej	Rim	ITA	1	00184 
Kraljevska palača	Madrid	ESP	18	28071 
Louvre	Pariz	FRA	18	75001 
Palača kulture i znanosti	Varšava	POL	20	00-901
Plaza Mayor	Madrid	ESP	17	28012 
Reichstag	Berlin	DEU	19	11011
Fontana di Trevi	Rim	ITA	18	00187 
Prešeren Square	Ljubljana	SVN	17	1000 
Muzej Varšavskog ustanka	Varšava	POL	20	00-844
Muzej Mimara	Zagreb	HRV	19	10000
Zgrada mađarskog parlamenta	Budimpešta	HUN	19	1055 
Zmajski most	Ljubljana	SVN	20	1000 
Katedrala sv. Vasilija Blaženog	Moskva	RUS	16	109012
Bečka katedrala (Katedrala Sv. Stjepana)	Beč	AUT	13	1010
Brandenburška vrata	Berlin	DEU	18	10117
Budimski dvorac	Budimpešta	HUN	13	1014
Crkva sv. Marka	Zagreb	HRV	14	10000
Crveni trg	Moskva	RUS	16	109012
Dvorac Belvedere	Beč	AUT	18	1030
Eiffelov toranj	Pariz	FRA	19	75007
\.


--
-- Name: adresa adresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresa
    ADD CONSTRAINT adresa_pkey PRIMARY KEY ("drzavaISO", "imeGrada", ulica);


--
-- Name: drzava država_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drzava
    ADD CONSTRAINT "država_pkey" PRIMARY KEY ("ISOoznakaDrz");


--
-- Name: grad grad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grad
    ADD CONSTRAINT grad_pkey PRIMARY KEY ("imeGrada", "drzavaISO");


--
-- Name: jezik jezik_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jezik
    ADD CONSTRAINT jezik_pkey PRIMARY KEY ("ISOoznakaJezik");


--
-- Name: valuta valuta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.valuta
    ADD CONSTRAINT valuta_pkey PRIMARY KEY ("ISOoznakaValuta");


--
-- Name: znamenitost znamenitost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.znamenitost
    ADD CONSTRAINT znamenitost_pkey PRIMARY KEY ("imeZnam", "imeGrada");


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO pg_write_server_files;


--
-- PostgreSQL database dump complete
--

