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
    name character varying NOT NULL,
    column1 integer NOT NULL,
    column2 text,
    column3 numeric,
    column4 boolean NOT NULL,
    column5 boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_g_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_g_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_g_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    column1 integer NOT NULL,
    column2 text,
    column3 boolean NOT NULL,
    column4 boolean NOT NULL,
    column5 numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    star_id integer,
    column1 integer NOT NULL,
    column2 text,
    column3 boolean NOT NULL,
    column4 boolean NOT NULL,
    column5 numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.planet_id;


--
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying NOT NULL,
    column1 integer NOT NULL,
    column2 text,
    column3 boolean NOT NULL,
    column4 boolean NOT NULL,
    column5 numeric
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: species_sp_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.species_sp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_sp_id_seq OWNER TO freecodecamp;

--
-- Name: species_sp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.species_sp_id_seq OWNED BY public.species.species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    column1 integer NOT NULL,
    column2 text,
    column3 boolean NOT NULL,
    column4 boolean NOT NULL,
    column5 numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_id_seq OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_g_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: species species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species ALTER COLUMN species_id SET DEFAULT nextval('public.species_sp_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 100, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 200, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 300, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (5, 'Milky Way1', 100, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (6, 'Andromeda2', 200, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (7, 'Sombrero3', 300, NULL, NULL, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 7, 100, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (2, 'b', 8, 200, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (3, 'c', 9, 300, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (4, 'a1', 7, 100, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (5, 'b1', 8, 200, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (6, 'c1', 9, 300, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (7, 'a12', 7, 100, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (8, 'b12', 8, 200, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (9, 'c12', 9, 300, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (10, 'a123', 7, 100, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (11, 'b123', 8, 200, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (12, 'c123', 9, 300, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (13, 'a1234', 7, 100, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (14, 'b1234', 8, 200, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (15, 'c1234', 9, 300, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (16, 'a12345', 7, 100, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (17, 'b12345', 8, 200, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (18, 'c12345', 9, 300, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (19, 'a123456', 7, 100, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (20, 'b123456', 8, 200, NULL, true, true, NULL);
INSERT INTO public.moon VALUES (21, 'c123456', 9, 300, NULL, true, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 'earth', 4, 100, NULL, true, true, NULL);
INSERT INTO public.planet VALUES (8, 'mars', 5, 200, NULL, true, true, NULL);
INSERT INTO public.planet VALUES (9, 'pluto', 6, 300, NULL, true, true, NULL);
INSERT INTO public.planet VALUES (10, 'earth1', 4, 100, NULL, true, true, NULL);
INSERT INTO public.planet VALUES (11, 'mars1', 5, 200, NULL, true, true, NULL);
INSERT INTO public.planet VALUES (12, 'pluto1', 6, 300, NULL, true, true, NULL);
INSERT INTO public.planet VALUES (13, 'earth12', 4, 100, NULL, true, true, NULL);
INSERT INTO public.planet VALUES (14, 'mars12', 5, 200, NULL, true, true, NULL);
INSERT INTO public.planet VALUES (15, 'pluto12', 6, 300, NULL, true, true, NULL);
INSERT INTO public.planet VALUES (16, 'earth123', 4, 100, NULL, true, true, NULL);
INSERT INTO public.planet VALUES (17, 'mars123', 5, 200, NULL, true, true, NULL);
INSERT INTO public.planet VALUES (18, 'pluto123', 6, 300, NULL, true, true, NULL);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'a', 100, NULL, true, true, NULL);
INSERT INTO public.species VALUES (2, 'b', 200, NULL, true, true, NULL);
INSERT INTO public.species VALUES (3, 'c', 300, NULL, true, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'Sun', 2, 100, NULL, true, true, NULL);
INSERT INTO public.star VALUES (5, 'blue sun', 2, 200, NULL, true, true, NULL);
INSERT INTO public.star VALUES (6, 'red sun', 2, 300, NULL, true, true, NULL);
INSERT INTO public.star VALUES (7, 'Sun1', 2, 100, NULL, true, true, NULL);
INSERT INTO public.star VALUES (8, 'blue sun1', 2, 200, NULL, true, true, NULL);
INSERT INTO public.star VALUES (9, 'red sun1', 2, 300, NULL, true, true, NULL);


--
-- Name: galaxy_g_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_g_id_seq', 7, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 21, true);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 18, true);


--
-- Name: species_sp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_sp_id_seq', 3, true);


--
-- Name: star_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_id_seq', 9, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: species species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_name_key UNIQUE (name);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_p_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_p_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_s_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_s_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_g_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_g_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

