--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric,
    has_life boolean,
    description text,
    galaxy_type integer,
    planet_type integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    name character varying(30) NOT NULL,
    galaxy_types_id integer NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric,
    has_life boolean,
    description text,
    planet_type integer,
    galaxy_type integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric,
    has_life boolean,
    description text,
    galaxy_type integer,
    planet_type integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric,
    has_life boolean,
    description text,
    planet_type integer,
    galaxy_type integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', NULL, NULL, 'a', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'b', NULL, NULL, 'b', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'c', NULL, NULL, 'c', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'd', NULL, NULL, 'd', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'e', NULL, NULL, 'e', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'f', NULL, NULL, 'f', NULL, NULL);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES ('a', 1, 'a');
INSERT INTO public.galaxy_types VALUES ('b', 2, 'b');
INSERT INTO public.galaxy_types VALUES ('c', 3, 'c');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', NULL, NULL, 'a', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'b', NULL, NULL, 'b', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'c', NULL, NULL, 'c', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'j', NULL, NULL, 'j', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'k', NULL, NULL, 'k', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'l', NULL, NULL, 'l', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'g', NULL, NULL, 'g', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'h', NULL, NULL, 'h', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'i', NULL, NULL, 'i', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'm', NULL, NULL, 'm', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'n', NULL, NULL, 'n', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'n', NULL, NULL, 'n', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'o', NULL, NULL, 'o', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'p', NULL, NULL, 'p', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'q', NULL, NULL, 'q', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'r', NULL, NULL, 'r', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 's', NULL, NULL, 's', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'd', NULL, NULL, 'd', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'e', NULL, NULL, 'e', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'f', NULL, NULL, 'f', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', NULL, NULL, 'a', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'b', NULL, NULL, 'b', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'c', NULL, NULL, 'c', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'd', NULL, NULL, 'd', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'e', NULL, NULL, 'e', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'f', NULL, NULL, 'f', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'd', NULL, NULL, 'd', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'e', NULL, NULL, 'e', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'f', NULL, NULL, 'f', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'j', NULL, NULL, 'j', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'k', NULL, NULL, 'k', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'l', NULL, NULL, 'l', NULL, NULL, NULL);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'a', 'a');
INSERT INTO public.planet_types VALUES (2, 'b', 'b');
INSERT INTO public.planet_types VALUES (3, 'c', 'c');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', NULL, NULL, 'a', NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'b', NULL, NULL, 'b', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'c', NULL, NULL, 'c', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'd', NULL, NULL, 'd', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'e', NULL, NULL, 'e', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'f', NULL, NULL, 'f', NULL, NULL, NULL);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_galaxy_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_types_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_planet_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_planet_types_id_key UNIQUE (planet_types_id);


--
-- Name: star star_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_key UNIQUE (galaxy_id);


--
-- Name: star star_galaxy_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_key1 UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

