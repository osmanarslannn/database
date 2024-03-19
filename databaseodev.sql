--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-03-19 15:54:58

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
-- TOC entry 215 (class 1259 OID 24736)
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    birthdate date
);


ALTER TABLE public.authors OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24741)
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.authors ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 24742)
-- Name: book_authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book_authors (
    id integer NOT NULL,
    author_id integer NOT NULL,
    book_id integer NOT NULL
);


ALTER TABLE public.book_authors OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24745)
-- Name: book_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.book_authors ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.book_authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 24746)
-- Name: book_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book_categories (
    id integer NOT NULL,
    category_id integer NOT NULL,
    book_id integer NOT NULL
);


ALTER TABLE public.book_categories OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 24749)
-- Name: book_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.book_categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.book_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 24750)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    book_id integer NOT NULL,
    user_id integer NOT NULL,
    order_date date
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24753)
-- Name: book_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.book_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 24754)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    id integer NOT NULL,
    publisher_id integer NOT NULL,
    isbn integer NOT NULL,
    book_name character varying NOT NULL,
    book_page integer,
    price double precision
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24759)
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.books ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 24760)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 24765)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 24766)
-- Name: order_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_details (
    id integer NOT NULL,
    order_id integer NOT NULL,
    book_id integer NOT NULL,
    unit_price double precision,
    quantity integer
);


ALTER TABLE public.order_details OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 24769)
-- Name: order_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.order_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 24770)
-- Name: publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publishers (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.publishers OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 24775)
-- Name: publishers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.publishers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.publishers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 24776)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 24781)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4844 (class 0 OID 24736)
-- Dependencies: 215
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authors (id, name, surname, birthdate) FROM stdin;
\.


--
-- TOC entry 4846 (class 0 OID 24742)
-- Dependencies: 217
-- Data for Name: book_authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book_authors (id, author_id, book_id) FROM stdin;
\.


--
-- TOC entry 4848 (class 0 OID 24746)
-- Dependencies: 219
-- Data for Name: book_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book_categories (id, category_id, book_id) FROM stdin;
\.


--
-- TOC entry 4852 (class 0 OID 24754)
-- Dependencies: 223
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (id, publisher_id, isbn, book_name, book_page, price) FROM stdin;
\.


--
-- TOC entry 4854 (class 0 OID 24760)
-- Dependencies: 225
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name) FROM stdin;
\.


--
-- TOC entry 4856 (class 0 OID 24766)
-- Dependencies: 227
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_details (id, order_id, book_id, unit_price, quantity) FROM stdin;
\.


--
-- TOC entry 4850 (class 0 OID 24750)
-- Dependencies: 221
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, book_id, user_id, order_date) FROM stdin;
\.


--
-- TOC entry 4858 (class 0 OID 24770)
-- Dependencies: 229
-- Data for Name: publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.publishers (id, name) FROM stdin;
\.


--
-- TOC entry 4860 (class 0 OID 24776)
-- Dependencies: 231
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, surname, email, password) FROM stdin;
\.


--
-- TOC entry 4867 (class 0 OID 0)
-- Dependencies: 216
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authors_id_seq', 1, false);


--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 218
-- Name: book_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.book_authors_id_seq', 1, false);


--
-- TOC entry 4869 (class 0 OID 0)
-- Dependencies: 220
-- Name: book_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.book_categories_id_seq', 1, false);


--
-- TOC entry 4870 (class 0 OID 0)
-- Dependencies: 222
-- Name: book_orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.book_orders_id_seq', 1, false);


--
-- TOC entry 4871 (class 0 OID 0)
-- Dependencies: 224
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_seq', 1, false);


--
-- TOC entry 4872 (class 0 OID 0)
-- Dependencies: 226
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- TOC entry 4873 (class 0 OID 0)
-- Dependencies: 228
-- Name: order_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_details_id_seq', 1, false);


--
-- TOC entry 4874 (class 0 OID 0)
-- Dependencies: 230
-- Name: publishers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.publishers_id_seq', 1, false);


--
-- TOC entry 4875 (class 0 OID 0)
-- Dependencies: 232
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 4675 (class 2606 OID 24783)
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- TOC entry 4677 (class 2606 OID 24785)
-- Name: book_authors book_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_authors
    ADD CONSTRAINT book_authors_pkey PRIMARY KEY (id);


--
-- TOC entry 4679 (class 2606 OID 24787)
-- Name: book_categories book_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_categories
    ADD CONSTRAINT book_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 4681 (class 2606 OID 24789)
-- Name: orders book_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT book_orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4683 (class 2606 OID 24791)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- TOC entry 4685 (class 2606 OID 24793)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 4687 (class 2606 OID 24795)
-- Name: order_details order_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);


--
-- TOC entry 4689 (class 2606 OID 24797)
-- Name: publishers publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_pkey PRIMARY KEY (id);


--
-- TOC entry 4691 (class 2606 OID 24799)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4698 (class 2606 OID 24800)
-- Name: books FK_BOOKS_TO_PUBLISHERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT "FK_BOOKS_TO_PUBLISHERS" FOREIGN KEY (publisher_id) REFERENCES public.publishers(id) NOT VALID;


--
-- TOC entry 4692 (class 2606 OID 24805)
-- Name: book_authors FK_BOOK_AUTHORS_TO_AUTHORS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_authors
    ADD CONSTRAINT "FK_BOOK_AUTHORS_TO_AUTHORS" FOREIGN KEY (author_id) REFERENCES public.authors(id) NOT VALID;


--
-- TOC entry 4693 (class 2606 OID 24810)
-- Name: book_authors FK_BOOK_AUTHORS_TO_BOOKS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_authors
    ADD CONSTRAINT "FK_BOOK_AUTHORS_TO_BOOKS" FOREIGN KEY (book_id) REFERENCES public.books(id) NOT VALID;


--
-- TOC entry 4694 (class 2606 OID 24815)
-- Name: book_categories FK_BOOK_CATEGORIES_TO_BOOKS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_categories
    ADD CONSTRAINT "FK_BOOK_CATEGORIES_TO_BOOKS" FOREIGN KEY (book_id) REFERENCES public.books(id) NOT VALID;


--
-- TOC entry 4695 (class 2606 OID 24820)
-- Name: book_categories FK_BOOK_CATEGORIES_TO_CATEGORIES; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_categories
    ADD CONSTRAINT "FK_BOOK_CATEGORIES_TO_CATEGORIES" FOREIGN KEY (category_id) REFERENCES public.categories(id) NOT VALID;


--
-- TOC entry 4696 (class 2606 OID 24825)
-- Name: orders FK_ORDERS_TO_BOOKS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "FK_ORDERS_TO_BOOKS" FOREIGN KEY (book_id) REFERENCES public.books(id) NOT VALID;


--
-- TOC entry 4697 (class 2606 OID 24830)
-- Name: orders FK_ORDERS_TO_USERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "FK_ORDERS_TO_USERS" FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 4699 (class 2606 OID 24835)
-- Name: order_details FK_ORDER_DETAILS_TO_BOOKS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT "FK_ORDER_DETAILS_TO_BOOKS" FOREIGN KEY (book_id) REFERENCES public.books(id) NOT VALID;


--
-- TOC entry 4700 (class 2606 OID 24840)
-- Name: order_details FK_ORDER_DETAILS_TO_ORDERS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT "FK_ORDER_DETAILS_TO_ORDERS" FOREIGN KEY (order_id) REFERENCES public.orders(id) NOT VALID;


-- Completed on 2024-03-19 15:54:58

--
-- PostgreSQL database dump complete
--

