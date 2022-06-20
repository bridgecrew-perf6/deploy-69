--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Debian 10.5-2.pgdg90+1)
-- Dumped by pg_dump version 14.3 (Ubuntu 14.3-0ubuntu0.22.04.1)

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

--
-- Name: analyzer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.analyzer (
    analyzer_id bigint NOT NULL,
    installation_date timestamp without time zone,
    serial_number character varying(255),
    service_support_life integer,
    service_visit_frequency integer,
    warranty_duration integer,
    anlz_model_analyzermodel_id bigint,
    customr_customer_id bigint
);


ALTER TABLE public.analyzer OWNER TO postgres;

--
-- Name: analyzer_model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.analyzer_model (
    analyzermodel_id bigint NOT NULL,
    analyzer_name character varying(255),
    analyzer_product_number character varying(255),
    anlz_type_anlz_type_id bigint,
    manufact_manufact_id bigint
);


ALTER TABLE public.analyzer_model OWNER TO postgres;

--
-- Name: analyzer_service_visits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.analyzer_service_visits (
    analyzer_analyzer_id bigint NOT NULL,
    service_visits_visit_id bigint NOT NULL
);


ALTER TABLE public.analyzer_service_visits OWNER TO postgres;

--
-- Name: analyzer_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.analyzer_type (
    anlz_type_id bigint NOT NULL,
    anlz_type character varying(255)
);


ALTER TABLE public.analyzer_type OWNER TO postgres;

--
-- Name: authority; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authority (
    authority_id bigint NOT NULL,
    authority character varying(255),
    user_id bigint,
    user_account_id bigint
);


ALTER TABLE public.authority OWNER TO postgres;

--
-- Name: contact_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_person (
    contact_person_id bigint NOT NULL,
    has_authority boolean,
    name character varying(255),
    notes character varying(255),
    phone_number character varying(255),
    vip boolean,
    customr_customer_id bigint
);


ALTER TABLE public.contact_person OWNER TO postgres;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_id bigint NOT NULL,
    address character varying(255),
    is_customer_vip boolean,
    name character varying(255),
    zip_code character varying(255)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: manufacturer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manufacturer (
    manufact_id bigint NOT NULL,
    manufacturer_name character varying(255),
    primary_vendor boolean,
    support_number character varying(255),
    websiteurl character varying(255)
);


ALTER TABLE public.manufacturer OWNER TO postgres;

--
-- Name: service_sparepart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_sparepart (
    part_id bigint NOT NULL,
    visit_id bigint NOT NULL
);


ALTER TABLE public.service_sparepart OWNER TO postgres;

--
-- Name: service_visit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_visit (
    visit_id bigint NOT NULL,
    note character varying(255),
    service_visit_date timestamp without time zone,
    anlz_analyzer_id bigint,
    srvc_visit_type_srvc_visit_type_id bigint,
    user_id bigint,
    user_account_id bigint
);


ALTER TABLE public.service_visit OWNER TO postgres;

--
-- Name: service_visit_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.service_visit_type (
    srvc_visit_type_id bigint NOT NULL,
    service_visit_type_name character varying(255)
);


ALTER TABLE public.service_visit_type OWNER TO postgres;

--
-- Name: servicetracker_public_analyzer_model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servicetracker_public_analyzer_model (
    c1 text
);


ALTER TABLE public.servicetracker_public_analyzer_model OWNER TO postgres;

--
-- Name: servicetracker_public_analyzer_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servicetracker_public_analyzer_type (
    c1 text
);


ALTER TABLE public.servicetracker_public_analyzer_type OWNER TO postgres;

--
-- Name: servicetracker_public_analyzer_type_1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servicetracker_public_analyzer_type_1 (
    c1 text
);


ALTER TABLE public.servicetracker_public_analyzer_type_1 OWNER TO postgres;

--
-- Name: spare_part; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.spare_part (
    part_id bigint NOT NULL,
    sparepart_name character varying(255),
    sparepart_number character varying(255),
    sparepart_price numeric(19,2)
);


ALTER TABLE public.spare_part OWNER TO postgres;

--
-- Name: user_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_accounts (
    id bigint NOT NULL,
    confirm_password character varying(255),
    employee_position character varying(255),
    enabled boolean NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    password character varying(255),
    phone character varying(255),
    username character varying(255),
    email character varying(255),
    role character varying(255),
    user_name character varying(255)
);


ALTER TABLE public.user_accounts OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    confirm_password character varying(255),
    employee_position character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    password character varying(255),
    phone character varying(255),
    username character varying(255),
    enabled boolean NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: analyzer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.analyzer (analyzer_id, installation_date, serial_number, service_support_life, service_visit_frequency, warranty_duration, anlz_model_analyzermodel_id, customr_customer_id) FROM stdin;
9	2022-06-11 23:45:55.807	456988	\N	\N	\N	6	7
10	2022-06-11 23:46:04.09	4528	\N	\N	\N	5	7
11	2022-06-17 08:49:31.554	758964	\N	\N	\N	29	8
\.


--
-- Data for Name: analyzer_model; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.analyzer_model (analyzermodel_id, analyzer_name, analyzer_product_number, anlz_type_anlz_type_id, manufact_manufact_id) FROM stdin;
5	CA-560	PN 56843	1	4
6	Access 2	LS45680w	2	3
29	Start Max 	PN 45334	27	28
\.


--
-- Data for Name: analyzer_service_visits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.analyzer_service_visits (analyzer_analyzer_id, service_visits_visit_id) FROM stdin;
\.


--
-- Data for Name: analyzer_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.analyzer_type (anlz_type_id, anlz_type) FROM stdin;
1	Hemostasis
2	Immunochemistry
27	Bacteriolgy
\.


--
-- Data for Name: authority; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authority (authority_id, authority, user_id, user_account_id) FROM stdin;
\.


--
-- Data for Name: contact_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact_person (contact_person_id, has_authority, name, notes, phone_number, vip, customr_customer_id) FROM stdin;
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customer_id, address, is_customer_vip, name, zip_code) FROM stdin;
7	papanina 220	f	Hospital #4	050008
8	Rozybakieva 234	f	Policlinica 3	05036
30	Shevchenko 100	t	President Hosptila	050008
\.


--
-- Data for Name: manufacturer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manufacturer (manufact_id, manufacturer_name, primary_vendor, support_number, websiteurl) FROM stdin;
3	Beckman Coulter	t	234-4567	www.beckman.com
4	Siemens	f	555-55555	www.siemens.com
28	Stago	f	1800-344-45	www.beckman.com
\.


--
-- Data for Name: service_sparepart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_sparepart (part_id, visit_id) FROM stdin;
100	12
100	13
101	13
101	14
101	15
101	16
101	17
101	18
100	19
\.


--
-- Data for Name: service_visit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_visit (visit_id, note, service_visit_date, anlz_analyzer_id, srvc_visit_type_srvc_visit_type_id, user_id, user_account_id) FROM stdin;
12	\N	2022-06-11 23:48:05	11	200	\N	\N
13	\N	2022-06-11 23:48:31	11	200	\N	\N
14	\N	2022-06-11 23:48:56	9	200	\N	\N
15	\N	2022-06-12 13:08:26	10	200	\N	\N
16	\N	2022-06-12 14:05:34	11	200	\N	\N
17	asdf	2022-06-12 14:07:55	10	200	\N	\N
18		2022-06-12 19:22:20	9	200	\N	\N
19	I have changed power supply!	2022-06-12 21:39:21	9	200	\N	\N
\.


--
-- Data for Name: service_visit_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.service_visit_type (srvc_visit_type_id, service_visit_type_name) FROM stdin;
200	Paid
\.


--
-- Data for Name: servicetracker_public_analyzer_model; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.servicetracker_public_analyzer_model (c1) FROM stdin;
create table analyzer_model
(
    analyzermodel_id        bigint not null
        primary key,
    analyzer_name           varchar(255),
    analyzer_product_number varchar(255),
    anlz_type_anlz_type_id  bigint
        constraint fknuw75yisg88cdn6e0jrv61qo2
            references analyzer_type,
    manufact_manufact_id    bigint
        constraint fkpifkm65plsr5crjc24npwlogx
            references manufacturer
);
\N
alter table analyzer_model
    owner to postgres;
\N
INSERT INTO public.analyzer_model (analyzermodel_id, analyzer_name, analyzer_product_number, anlz_type_anlz_type_id, manufact_manufact_id) VALUES (3, 'ca 560', '45aq2345', 2, 1);
\.


--
-- Data for Name: servicetracker_public_analyzer_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.servicetracker_public_analyzer_type (c1) FROM stdin;
create table analyzer_type
(
    anlz_type_id bigint not null
        primary key,
    anlz_type    varchar(255)
);
\N
alter table analyzer_type
    owner to postgres;
\N
INSERT INTO public.analyzer_type (anlz_type_id, anlz_type) VALUES (2, 'Hemostasis');
\.


--
-- Data for Name: servicetracker_public_analyzer_type_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.servicetracker_public_analyzer_type_1 (c1) FROM stdin;
create table analyzer_type
(
    anlz_type_id bigint not null
        primary key,
    anlz_type    varchar(255)
);
\N
alter table analyzer_type
    owner to postgres;
\N
INSERT INTO public.analyzer_type (anlz_type_id, anlz_type) VALUES (2, 'Hemostasis');
\.


--
-- Data for Name: spare_part; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spare_part (part_id, sparepart_name, sparepart_number, sparepart_price) FROM stdin;
100	Power Supply	PM34	100.00
101	syrynge	lklkj	45.00
\.


--
-- Data for Name: user_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_accounts (id, confirm_password, employee_position, enabled, first_name, last_name, password, phone, username, email, role, user_name) FROM stdin;
20	\N	\N	t	\N	\N	$2a$10$p18R.KijuWDISXig8GOKxuRxGuRDT5fx2sKcojYVdAf01jXSkgjMK	\N	\N	r@r.kz	ROLE_USER	\N
21	\N	\N	t	\N	\N	$2a$10$oQIdc82DC/5KKAM2.NW6.O2okiIoQAH5hjW5U4jxXhsQN.v0xGj/u	\N	\N	r@gmail.com	ROLE_USER	\N
22	\N	\N	t	\N	\N	$2a$10$cFjVgPlfzmIKd5f6kvYOMOD.wh23IQCIIUlXt/mnP/Ns2SS9EkR0u	\N	\N	r@gmail.com	\N	\N
23	\N	\N	t	\N	\N	$2a$10$y5AnZwpGO12Mu/66bhm2PeTkKSC0LWA8KGaLuduuKuFF18BWcK8FO	\N	\N	r	ROLE_AMIN	\N
24	\N	\N	t	\N	\N	$2a$10$uuVeIZb21cmHjtgPNQeyWO9fNTE33RJojZS0xXeLFIXjS8.NCHIz2	\N	g	g	\N	\N
25	\N	\N	t	\N	\N	$2a$10$qu1hMNFIQmbt2/CjmabXlug2KU0p4qOldqliVFGq4mGaZk9UW142W	\N	radmin	r	ROLE_ADMIN	\N
26	\N	\N	t	\N	\N	$2a$10$0CxPrG8ponC.kZ27ZbOoquppe.Y0zjMslXS2iSihy7URnmqJpucTe	\N	rmanager	r	ROLE_MANGER	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, confirm_password, employee_position, first_name, last_name, password, phone, username, enabled) FROM stdin;
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 30, true);


--
-- Name: analyzer_model analyzer_model_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analyzer_model
    ADD CONSTRAINT analyzer_model_pkey PRIMARY KEY (analyzermodel_id);


--
-- Name: analyzer analyzer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analyzer
    ADD CONSTRAINT analyzer_pkey PRIMARY KEY (analyzer_id);


--
-- Name: analyzer_type analyzer_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analyzer_type
    ADD CONSTRAINT analyzer_type_pkey PRIMARY KEY (anlz_type_id);


--
-- Name: authority authority_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authority
    ADD CONSTRAINT authority_pkey PRIMARY KEY (authority_id);


--
-- Name: contact_person contact_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_person
    ADD CONSTRAINT contact_person_pkey PRIMARY KEY (contact_person_id);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- Name: manufacturer manufacturer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT manufacturer_pkey PRIMARY KEY (manufact_id);


--
-- Name: service_visit service_visit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_visit
    ADD CONSTRAINT service_visit_pkey PRIMARY KEY (visit_id);


--
-- Name: service_visit_type service_visit_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_visit_type
    ADD CONSTRAINT service_visit_type_pkey PRIMARY KEY (srvc_visit_type_id);


--
-- Name: spare_part spare_part_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.spare_part
    ADD CONSTRAINT spare_part_pkey PRIMARY KEY (part_id);


--
-- Name: analyzer_service_visits uk_k7i6vrw40yqcnu0rjk7ld4cdj; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analyzer_service_visits
    ADD CONSTRAINT uk_k7i6vrw40yqcnu0rjk7ld4cdj UNIQUE (service_visits_visit_id);


--
-- Name: user_accounts user_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts
    ADD CONSTRAINT user_accounts_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: contact_person fk8pt013bu78pcgl984mk02iexa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_person
    ADD CONSTRAINT fk8pt013bu78pcgl984mk02iexa FOREIGN KEY (customr_customer_id) REFERENCES public.customer(customer_id);


--
-- Name: authority fk9t8dg7p7bpec7tcx8wq1fj6hj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authority
    ADD CONSTRAINT fk9t8dg7p7bpec7tcx8wq1fj6hj FOREIGN KEY (user_account_id) REFERENCES public.user_accounts(id);


--
-- Name: analyzer fkaj8q32ddsx0rrw0ac71uedle2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analyzer
    ADD CONSTRAINT fkaj8q32ddsx0rrw0ac71uedle2 FOREIGN KEY (customr_customer_id) REFERENCES public.customer(customer_id);


--
-- Name: service_sparepart fkarifekqb3c2yjrnespdsh6mpw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_sparepart
    ADD CONSTRAINT fkarifekqb3c2yjrnespdsh6mpw FOREIGN KEY (part_id) REFERENCES public.spare_part(part_id);


--
-- Name: service_visit fkb5pe9bt417y8th2i2d3t4n92s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_visit
    ADD CONSTRAINT fkb5pe9bt417y8th2i2d3t4n92s FOREIGN KEY (srvc_visit_type_srvc_visit_type_id) REFERENCES public.service_visit_type(srvc_visit_type_id);


--
-- Name: analyzer_service_visits fkifcj275fjuaj9lafj7v9ncp8g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analyzer_service_visits
    ADD CONSTRAINT fkifcj275fjuaj9lafj7v9ncp8g FOREIGN KEY (analyzer_analyzer_id) REFERENCES public.analyzer(analyzer_id);


--
-- Name: analyzer fkin4f9359c8rjks9qafryovwku; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analyzer
    ADD CONSTRAINT fkin4f9359c8rjks9qafryovwku FOREIGN KEY (anlz_model_analyzermodel_id) REFERENCES public.analyzer_model(analyzermodel_id);


--
-- Name: authority fkka37hl6mopj61rfbe97si18p8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authority
    ADD CONSTRAINT fkka37hl6mopj61rfbe97si18p8 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: service_visit fknb954ojvms2bywikcfqlevmxw; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_visit
    ADD CONSTRAINT fknb954ojvms2bywikcfqlevmxw FOREIGN KEY (user_account_id) REFERENCES public.user_accounts(id);


--
-- Name: service_visit fknp4l41pi7i2dj0r2rfw6bff5r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_visit
    ADD CONSTRAINT fknp4l41pi7i2dj0r2rfw6bff5r FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: analyzer_model fknuw75yisg88cdn6e0jrv61qo2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analyzer_model
    ADD CONSTRAINT fknuw75yisg88cdn6e0jrv61qo2 FOREIGN KEY (anlz_type_anlz_type_id) REFERENCES public.analyzer_type(anlz_type_id);


--
-- Name: analyzer_service_visits fkojuwhl9191wimlpefw1ba84pt; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analyzer_service_visits
    ADD CONSTRAINT fkojuwhl9191wimlpefw1ba84pt FOREIGN KEY (service_visits_visit_id) REFERENCES public.service_visit(visit_id);


--
-- Name: analyzer_model fkpifkm65plsr5crjc24npwlogx; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analyzer_model
    ADD CONSTRAINT fkpifkm65plsr5crjc24npwlogx FOREIGN KEY (manufact_manufact_id) REFERENCES public.manufacturer(manufact_id);


--
-- Name: service_visit fkqc7vi514v80ssxbs4o0jc4vug; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_visit
    ADD CONSTRAINT fkqc7vi514v80ssxbs4o0jc4vug FOREIGN KEY (anlz_analyzer_id) REFERENCES public.analyzer(analyzer_id);


--
-- Name: service_visit fkqfut6qe121qmqw3tnweoo3ybh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_visit
    ADD CONSTRAINT fkqfut6qe121qmqw3tnweoo3ybh FOREIGN KEY (user_id) REFERENCES public.user_accounts(id);


--
-- Name: authority fkqkdml8o6grtilp3xu2jyeniax; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authority
    ADD CONSTRAINT fkqkdml8o6grtilp3xu2jyeniax FOREIGN KEY (user_id) REFERENCES public.user_accounts(id);


--
-- Name: service_sparepart fks85ed60ihyagtvox8x9xejhuo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.service_sparepart
    ADD CONSTRAINT fks85ed60ihyagtvox8x9xejhuo FOREIGN KEY (visit_id) REFERENCES public.service_visit(visit_id);


--
-- PostgreSQL database dump complete
--

