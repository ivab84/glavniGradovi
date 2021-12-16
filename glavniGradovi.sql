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
    "imeGrada" character varying NOT NULL,
    ulica character varying NOT NULL,
    "postBroj" character varying NOT NULL
);


ALTER TABLE public.adresa OWNER TO postgres;

--
-- Name: drzava; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.drzava (
    "ISOoznaka" character varying(3) NOT NULL,
    ime character varying NOT NULL,
    "sluzbeniJezikISO" character varying(2) NOT NULL,
    "valutaISO" character varying(3) NOT NULL
);


ALTER TABLE public.drzava OWNER TO postgres;

--
-- Name: grad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grad (
    "drzavaISO" character varying(3) NOT NULL,
    ime character varying NOT NULL,
    "brojStanovnika" integer,
    "povrsinaKm2" double precision
);


ALTER TABLE public.grad OWNER TO postgres;

--
-- Name: jezik; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jezik (
    "ISOoznaka" character varying(2) NOT NULL,
    ime character varying NOT NULL
);


ALTER TABLE public.jezik OWNER TO postgres;

--
-- Name: valuta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.valuta (
    "ISOoznaka" character varying(3) NOT NULL,
    ime character varying NOT NULL
);


ALTER TABLE public.valuta OWNER TO postgres;

--
-- Name: znamenitost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.znamenitost (
    ime character varying NOT NULL,
    "imeGrada" character varying NOT NULL,
    "drzavaISO" character varying(3) NOT NULL,
    "stoljeceGradnje" integer NOT NULL,
    "postBroj" character varying NOT NULL,
    ulica character varying NOT NULL
);


ALTER TABLE public.znamenitost OWNER TO postgres;

--
-- Data for Name: adresa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.adresa ("drzavaISO", "imeGrada", ulica, "postBroj") FROM stdin;
AUT	Beč	Prinz Eugen-Straße 27	1030
AUT	Beč	Stephansplatz 4	1010
DEU	Berlin	Pariser Platz	10117
DEU	Berlin	Platz der Republik	11011
ESP	Madrid	C. de Bailén, s/n	28071 
ESP	Madrid	Pl. Mayor	28012 
FRA	Pariz	6 Parvis Notre-Dame - Pl. Jean-Paul II	75004 
FRA	Pariz	Champ de Mars, 5 Av. Anatole France	75007
FRA	Pariz	Rue de Rivoli	75001 
HRV	Zagreb	Rooseveltov trg 5	10000
HRV	Zagreb	Trg Sv. Marka 5	10000
HUN	Budimpešta	Kossuth Lajos tér 1-3	1055
HUN	Budimpešta	Szent György tér 2	1014
ITA	Rim	Piazza del Colosseo, 1	00184 
ITA	Rim	Piazza di Trevi	00187
POL	Varšava	Grzybowska 79	00-844
POL	Varšava	plac Defilad 1	00-901
RUS	Moskva	Red Square	109012
SVN	Ljubljana	Resljeva cesta 2	1000
SVN	Ljubljana	Prešernov trg 1	1000 
\.


--
-- Data for Name: drzava; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.drzava ("ISOoznaka", ime, "sluzbeniJezikISO", "valutaISO") FROM stdin;
AUT	Austrija	de	EUR
DEU	Njemačka	de	EUR
ESP	Španjolska	es	EUR
FRA	Francuska	fr	EUR
HRV	Hrvatska	hr	HRK
HUN	Mađarska	hu	HUF
ITA	Italija	it	EUR
POL	Poljska	pl	PLN
RUS	Rusija	ru	RUB
SVN	Slovenija	sl	EUR
\.


--
-- Data for Name: grad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grad ("drzavaISO", ime, "brojStanovnika", "povrsinaKm2") FROM stdin;
AUT	Beč	1897000	414.6
DEU	Berlin	3645000	891.8
HUN	Budimpešta	1756000	525.2
SVN	Ljubljana	279631	163.8
ESP	Madrid	3223000	604.3
RUS	Moskva	11920000	2511
FRA	Pariz	2161000	105.4
ITA	Rim	2873000	1285
POL	Varšava	1765000	517.2
HRV	Zagreb	806341	641
\.


--
-- Data for Name: jezik; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jezik ("ISOoznaka", ime) FROM stdin;
de	njemački
es	španjolski
fr	francuski
hr	hrvatski
hu	mađarski
it	talijanski
pl	poljski
ru	ruski
sl	slovenski
\.


--
-- Data for Name: valuta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.valuta ("ISOoznaka", ime) FROM stdin;
EUR	euro
HRK	hrvatska kuna
HUF	mađarska forinta
PLN	poljski zloti
RUB	ruska rublja
\.


--
-- Data for Name: znamenitost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.znamenitost (ime, "imeGrada", "drzavaISO", "stoljeceGradnje", "postBroj", ulica) FROM stdin;
Prešeren Square	Ljubljana	SVN	17	1000 	Prešernov trg 1
Bečka katedrala (Katedrala Sv. Stjepana)	Beč	AUT	13	1010	Stephansplatz 4
Brandenburška vrata	Berlin	DEU	18	10117	Pariser Platz
Budimski dvorac	Budimpešta	HUN	13	1014	Szent György tér 2
Crkva sv. Marka	Zagreb	HRV	14	10000	Trg Sv. Marka 5
Crveni trg	Moskva	RUS	16	109012	Red Square
Dvorac Belvedere	Beč	AUT	18	1030	Prinz Eugen-Straße 27
Eiffelov toranj	Pariz	FRA	19	75007	Champ de Mars, 5 Av. Anatole France
Fontana di Trevi	Rim	ITA	18	00187	Piazza di Trevi
Katedrala Notre-Dame	Pariz	FRA	12	75004 	6 Parvis Notre-Dame - Pl. Jean-Paul II
Katedrala sv. Vasilija Blaženog	Moskva	RUS	16	109012	Red Square
Kolosej	Rim	ITA	1	00184 	Piazza del Colosseo, 1
Kraljevska palača	Madrid	ESP	18	28071 	C. de Bailén, s/n
Louvre	Pariz	FRA	18	75001 	Rue de Rivoli
Muzej Mimara	Zagreb	HRV	19	10000	Rooseveltov trg 5
Muzej Varšavskog ustanka	Varšava	POL	20	00-844	Grzybowska 79
Palača kulture i znanosti	Varšava	POL	20	00-901	plac Defilad 1
Plaza Mayor	Madrid	ESP	17	28012 	Pl. Mayor
Reichstag	Berlin	DEU	19	11011	Platz der Republik
Zgrada mađarskog parlamenta	Budimpešta	HUN	19	1055	Kossuth Lajos tér 1-3
Zmajski most	Ljubljana	SVN	20	1000	Resljeva cesta 2
\.


--
-- Name: adresa adresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresa
    ADD CONSTRAINT adresa_pkey PRIMARY KEY ("drzavaISO", "imeGrada", ulica, "postBroj");


--
-- Name: drzava drzava_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drzava
    ADD CONSTRAINT drzava_pkey PRIMARY KEY ("ISOoznaka");


--
-- Name: grad grad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grad
    ADD CONSTRAINT grad_pkey PRIMARY KEY ("drzavaISO", ime);


--
-- Name: jezik jezik_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jezik
    ADD CONSTRAINT jezik_pkey PRIMARY KEY ("ISOoznaka");


--
-- Name: valuta valuta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.valuta
    ADD CONSTRAINT valuta_pkey PRIMARY KEY ("ISOoznaka");


--
-- Name: znamenitost znamenitost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.znamenitost
    ADD CONSTRAINT znamenitost_pkey PRIMARY KEY (ime, "imeGrada", "drzavaISO", "stoljeceGradnje", "postBroj", ulica);


--
-- Name: fki_FK_adresa_grad; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_FK_adresa_grad" ON public.adresa USING btree ("imeGrada", "drzavaISO");


--
-- Name: fki_FK_drzavaISO; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_FK_drzavaISO" ON public.adresa USING btree ("drzavaISO");


--
-- Name: fki_FK_grad_drzavaISO; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_FK_grad_drzavaISO" ON public.grad USING btree ("drzavaISO");


--
-- Name: fki_FK_sluzbeniJezikISO; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_FK_sluzbeniJezikISO" ON public.drzava USING btree ("sluzbeniJezikISO");


--
-- Name: fki_FK_valutaISO; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_FK_valutaISO" ON public.drzava USING btree ("valutaISO");


--
-- Name: fki_FK_znamenitost_adresa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_FK_znamenitost_adresa" ON public.znamenitost USING btree ("drzavaISO", "imeGrada", "postBroj", ulica);


--
-- Name: fki_FK_znamenitost_drzava; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_FK_znamenitost_drzava" ON public.znamenitost USING btree ("drzavaISO");


--
-- Name: fki_FK_znamenitost_grad; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_FK_znamenitost_grad" ON public.znamenitost USING btree ("imeGrada", "drzavaISO");


--
-- Name: adresa FK_adresa_drzava; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresa
    ADD CONSTRAINT "FK_adresa_drzava" FOREIGN KEY ("drzavaISO") REFERENCES public.drzava("ISOoznaka") NOT VALID;


--
-- Name: adresa FK_adresa_grad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresa
    ADD CONSTRAINT "FK_adresa_grad" FOREIGN KEY ("imeGrada", "drzavaISO") REFERENCES public.grad(ime, "drzavaISO") NOT VALID;


--
-- Name: drzava FK_drzava_jezik; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drzava
    ADD CONSTRAINT "FK_drzava_jezik" FOREIGN KEY ("sluzbeniJezikISO") REFERENCES public.jezik("ISOoznaka") NOT VALID;


--
-- Name: drzava FK_drzava_valuta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drzava
    ADD CONSTRAINT "FK_drzava_valuta" FOREIGN KEY ("valutaISO") REFERENCES public.valuta("ISOoznaka") NOT VALID;


--
-- Name: grad FK_grad_drzava; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grad
    ADD CONSTRAINT "FK_grad_drzava" FOREIGN KEY ("drzavaISO") REFERENCES public.drzava("ISOoznaka") NOT VALID;


--
-- Name: znamenitost FK_znamenitost_adresa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.znamenitost
    ADD CONSTRAINT "FK_znamenitost_adresa" FOREIGN KEY ("drzavaISO", "imeGrada", "postBroj", ulica) REFERENCES public.adresa("drzavaISO", "imeGrada", "postBroj", ulica) NOT VALID;


--
-- Name: znamenitost FK_znamenitost_drzava; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.znamenitost
    ADD CONSTRAINT "FK_znamenitost_drzava" FOREIGN KEY ("drzavaISO") REFERENCES public.drzava("ISOoznaka") NOT VALID;


--
-- Name: znamenitost FK_znamenitost_grad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.znamenitost
    ADD CONSTRAINT "FK_znamenitost_grad" FOREIGN KEY ("imeGrada", "drzavaISO") REFERENCES public.grad(ime, "drzavaISO") NOT VALID;


--
-- PostgreSQL database dump complete
--

