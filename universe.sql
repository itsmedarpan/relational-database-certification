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
    name character varying(255) NOT NULL,
    diameter numeric(10,2) NOT NULL,
    distance_from_earth integer,
    distance_from_sun integer,
    has_life boolean,
    can_life_exist boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    diameter numeric(10,2) NOT NULL,
    distance_from_earth integer,
    distance_from_sun integer,
    has_life boolean,
    can_life_exist boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    diameter numeric(10,2) NOT NULL,
    distance_from_earth integer,
    distance_from_sun integer,
    has_life boolean,
    can_life_exist boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: spaceship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceship (
    name character varying(255),
    spaceship_id integer NOT NULL,
    size integer NOT NULL,
    length integer NOT NULL
);


ALTER TABLE public.spaceship OWNER TO freecodecamp;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spaceship_spaceship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spaceship_spaceship_id_seq OWNER TO freecodecamp;

--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spaceship_spaceship_id_seq OWNED BY public.spaceship.spaceship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    diameter numeric(10,2) NOT NULL,
    distance_from_earth integer,
    distance_from_sun integer,
    has_life boolean,
    can_life_exist boolean,
    galaxy_id integer NOT NULL,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: spaceship spaceship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship ALTER COLUMN spaceship_id SET DEFAULT nextval('public.spaceship_spaceship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 105700.50, 0, 0, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000.00, 2500000, 2500000, false, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000.00, 3000000, 3000000, false, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 76000.00, 23000000, 23000000, false, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 50000.00, 29000000, 29000000, false, false);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 150000.00, 50000000, 50000000, false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474.00, 384400, 384400, false, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 22.00, 78000000, 78000000, false, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 12.00, 78000000, 78000000, false, false, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 3121.00, 628300000, 628300000, false, true, 1);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5268.00, 628300000, 628300000, false, false, 1);
INSERT INTO public.moon VALUES (6, 'Callisto', 4821.00, 628300000, 628300000, false, false, 1);
INSERT INTO public.moon VALUES (7, 'Prox-moon-1', 500.00, 40000, 40000, false, false, 4);
INSERT INTO public.moon VALUES (8, 'Prox-moon-2', 600.00, 40000, 40000, false, false, 4);
INSERT INTO public.moon VALUES (9, 'Sirius-moon-A', 2000.00, 81000, 81000, false, false, 6);
INSERT INTO public.moon VALUES (10, 'Sirius-moon-B', 1500.00, 81000, 81000, false, false, 6);
INSERT INTO public.moon VALUES (11, 'Rigel-A1', 1200.00, 863000, 863000, false, false, 7);
INSERT INTO public.moon VALUES (12, 'Rigel-A2', 1400.00, 863000, 863000, false, false, 7);
INSERT INTO public.moon VALUES (13, 'Rigel-B1', 1000.00, 864000, 864000, false, false, 8);
INSERT INTO public.moon VALUES (14, 'Rigel-B2', 1100.00, 864000, 864000, false, false, 8);
INSERT INTO public.moon VALUES (15, 'Betel-A1', 3000.00, 548000, 548000, false, false, 9);
INSERT INTO public.moon VALUES (16, 'Betel-A2', 3100.00, 548000, 548000, false, false, 9);
INSERT INTO public.moon VALUES (17, 'Betel-B1', 3200.00, 549000, 549000, false, false, 10);
INSERT INTO public.moon VALUES (18, 'Vega-Alpha-1', 4000.00, 25000, 25000, false, false, 11);
INSERT INTO public.moon VALUES (19, 'Vega-Alpha-2', 4500.00, 25000, 25000, false, false, 11);
INSERT INTO public.moon VALUES (20, 'Vega-Beta-1', 3000.00, 25050, 25050, false, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12742.00, 0, 0, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 6779.00, 78000000, 78000000, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 12104.00, 41000000, 41000000, false, false, 1);
INSERT INTO public.planet VALUES (4, 'Proxima b', 11900.00, 40000, 40000, false, true, 2);
INSERT INTO public.planet VALUES (5, 'Proxima c', 13000.00, 42000, 42000, false, false, 2);
INSERT INTO public.planet VALUES (6, 'Sirius b1', 5000.00, 81000, 81000, false, false, 3);
INSERT INTO public.planet VALUES (7, 'Rigel-1', 22000.00, 863000, 863000, false, true, 4);
INSERT INTO public.planet VALUES (8, 'Rigel-2', 23000.00, 864000, 864000, false, false, 4);
INSERT INTO public.planet VALUES (9, 'Betelgeuse-A', 50000.00, 548000, 548000, false, false, 5);
INSERT INTO public.planet VALUES (10, 'Betelgeuse-B', 45000.00, 549000, 549000, false, false, 5);
INSERT INTO public.planet VALUES (11, 'Vega-Alpha', 18000.00, 25000, 25000, false, true, 6);
INSERT INTO public.planet VALUES (12, 'Vega-Beta', 19000.00, 25050, 25050, false, false, 6);


--
-- Data for Name: spaceship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceship VALUES ('Falcon', 1, 50, 300);
INSERT INTO public.spaceship VALUES ('Enterprise', 2, 120, 900);
INSERT INTO public.spaceship VALUES ('Serenity', 3, 30, 150);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1.39, 0, 0, false, true, 1, NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 0.15, 40000, 40000, false, false, 1, NULL);
INSERT INTO public.star VALUES (3, 'Sirius', 2.02, 81000, 81000, false, false, 1, NULL);
INSERT INTO public.star VALUES (4, 'Rigel', 70.00, 863000, 863000, false, false, 2, NULL);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 950.00, 548000, 548000, false, false, 2, NULL);
INSERT INTO public.star VALUES (6, 'Vega', 2.36, 25000, 25000, false, false, 3, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: spaceship_spaceship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spaceship_spaceship_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: spaceship spaceship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_name_key UNIQUE (name);


--
-- Name: spaceship spaceship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_pkey PRIMARY KEY (spaceship_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

