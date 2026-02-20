--
-- PostgreSQL database dump
--

\restrict rK2jLlvJtpulWzadwYlLAzFHTUQTDr06hd0klkRciABlNCmNSmO180YtA3r5Bfx

-- Dumped from database version 14.21 (Homebrew)
-- Dumped by pg_dump version 14.21 (Homebrew)

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
-- Name: store; Type: TABLE; Schema: public; Owner: jn
--

CREATE TABLE public.store (
    store_id integer DEFAULT nextval('public.store_store_id_seq'::regclass) NOT NULL,
    manager_staff_id smallint NOT NULL,
    address_id smallint NOT NULL,
    last_update timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.store OWNER TO jn;

--
-- Data for Name: store; Type: TABLE DATA; Schema: public; Owner: jn
--

COPY public.store (store_id, manager_staff_id, address_id, last_update) FROM stdin;
1	1	1	2006-02-15 09:57:12
2	2	2	2006-02-15 09:57:12
\.


--
-- Name: store store_pkey; Type: CONSTRAINT; Schema: public; Owner: jn
--

ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_pkey PRIMARY KEY (store_id);


--
-- Name: idx_unq_manager_staff_id; Type: INDEX; Schema: public; Owner: jn
--

CREATE UNIQUE INDEX idx_unq_manager_staff_id ON public.store USING btree (manager_staff_id);


--
-- Name: store last_updated; Type: TRIGGER; Schema: public; Owner: jn
--

CREATE TRIGGER last_updated BEFORE UPDATE ON public.store FOR EACH ROW EXECUTE FUNCTION public.last_updated();


--
-- Name: store store_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: jn
--

ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.address(address_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: store store_manager_staff_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: jn
--

ALTER TABLE ONLY public.store
    ADD CONSTRAINT store_manager_staff_id_fkey FOREIGN KEY (manager_staff_id) REFERENCES public.staff(staff_id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

\unrestrict rK2jLlvJtpulWzadwYlLAzFHTUQTDr06hd0klkRciABlNCmNSmO180YtA3r5Bfx

