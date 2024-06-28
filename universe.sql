--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(50) NOT NULL,
    characteristics text,
    size integer,
    age_in_billion numeric(4,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(50),
    is_moon_is_there boolean NOT NULL,
    no_of_moons character varying(10) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(50),
    galaxy_id integer,
    radius_in_km integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(50),
    avg_solar_mass numeric(2,1),
    no_of_stars integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_star boolean NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Black Eye Galaxy', 'bizarre internal motion', 53800, 13.28);
INSERT INTO public.galaxy VALUES (2, 'Cigar Galaxy', 'an edge-on spiral undergoing a massive burst', 37000, 13.30);
INSERT INTO public.galaxy VALUES (3, 'Eye Of God', 'looks like an eye', 650, 10.60);
INSERT INTO public.galaxy VALUES (4, 'Milky Way Galaxy', 'looks like spinning pinwheel', 100000, 13.61);
INSERT INTO public.galaxy VALUES (5, 'Spider Galaxy', 'a central bulge of older stars', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Fireworks Galaxy', 'medium_sized, face-on spiral', 87300, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (101, 1, NULL, false, '0');
INSERT INTO public.moon VALUES (102, 2, NULL, false, '0');
INSERT INTO public.moon VALUES (103, 3, NULL, true, '1');
INSERT INTO public.moon VALUES (104, 4, NULL, true, '2');
INSERT INTO public.moon VALUES (105, 5, NULL, true, '95');
INSERT INTO public.moon VALUES (106, 6, NULL, true, '146');
INSERT INTO public.moon VALUES (107, 7, NULL, true, '27');
INSERT INTO public.moon VALUES (108, 8, NULL, true, '16');
INSERT INTO public.moon VALUES (109, 9, NULL, true, '2');
INSERT INTO public.moon VALUES (110, 10, NULL, false, '0');
INSERT INTO public.moon VALUES (111, 11, NULL, false, '0');
INSERT INTO public.moon VALUES (112, 12, NULL, false, '0');
INSERT INTO public.moon VALUES (113, 10, NULL, false, '0');
INSERT INTO public.moon VALUES (114, 11, NULL, false, '0');
INSERT INTO public.moon VALUES (115, 12, NULL, false, '0');
INSERT INTO public.moon VALUES (116, 10, NULL, false, '0');
INSERT INTO public.moon VALUES (117, 11, NULL, false, '0');
INSERT INTO public.moon VALUES (118, 12, NULL, false, '0');
INSERT INTO public.moon VALUES (119, 10, NULL, false, '0');
INSERT INTO public.moon VALUES (120, 11, NULL, false, '0');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 2, 'Mercury', 4, 2440);
INSERT INTO public.planet VALUES (2, 2, 'Venus', 4, 6051);
INSERT INTO public.planet VALUES (3, 2, 'Earth', 4, 6371);
INSERT INTO public.planet VALUES (4, 2, 'Mars', 4, 3390);
INSERT INTO public.planet VALUES (5, 2, 'Jupiter', 4, 69911);
INSERT INTO public.planet VALUES (6, 2, 'saturn', 4, 58232);
INSERT INTO public.planet VALUES (7, 2, 'Uranus', 4, 25362);
INSERT INTO public.planet VALUES (8, 2, 'Neptune', 4, 24622);
INSERT INTO public.planet VALUES (9, 2, 'Pluto', 4, 1189);
INSERT INTO public.planet VALUES (10, 2, NULL, 4, NULL);
INSERT INTO public.planet VALUES (11, 2, NULL, 4, NULL);
INSERT INTO public.planet VALUES (12, 2, NULL, 4, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 4, NULL, 0.2, 10000000);
INSERT INTO public.star VALUES (4, 5, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 6, NULL, NULL, NULL);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'sun', true);
INSERT INTO public.sun VALUES (2, 'sun', true);
INSERT INTO public.sun VALUES (3, 'sun', true);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_id_unique UNIQUE (sun_id);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

