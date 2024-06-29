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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_type text,
    has_planetary_systems boolean,
    galaxy_distance numeric,
    galaxy_num_stars integer,
    galaxy_age integer
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
    name character varying(60) NOT NULL,
    moon_type text,
    moon_has_atmosphere boolean,
    moon_size numeric,
    moon_num_craters integer,
    moon_surface_temperature integer,
    planet_id integer
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
    name character varying(60) NOT NULL,
    planet_type text,
    planet_has_atmosphere boolean,
    planet_size numeric,
    planet_gravity integer,
    planet_num_moons integer,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_type text,
    star_has_planets boolean,
    star_luminosity numeric,
    star_mass integer,
    star_int integer,
    galaxy_id integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 2);
INSERT INTO public.asteroid VALUES (2, 'Pallas', 2);
INSERT INTO public.asteroid VALUES (3, 'Vesta', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Spiral', true, 2537000, 1000000000, 10000000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Spiral', true, 0, 250000000, 13500000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', true, 3000000, 40000000, 10000000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical', true, 53000000, 2000000000, 13000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'Spiral', true, 29000000, 1000000000, 13000000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Spiral', true, 23000000, 1000000000, 13000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Natural Satellite', false, 0.27, 5000, -20, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 'Natural Satellite', true, 0.245, 0, -160, 2);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Natural Satellite', false, 0.01, 1000, -40, 2);
INSERT INTO public.moon VALUES (4, 'Luna', 'Natural Satellite', false, 0.2724, 5000, -20, 3);
INSERT INTO public.moon VALUES (5, 'Phobos', 'Natural Satellite', false, 0.015, 1000, -40, 4);
INSERT INTO public.moon VALUES (6, 'Deimos', 'Natural Satellite', false, 0.0081, 100, -40, 4);
INSERT INTO public.moon VALUES (7, 'Europa', 'Natural Satellite', true, 0.245, 0, -160, 7);
INSERT INTO public.moon VALUES (8, 'Ganymede', 'Natural Satellite', true, 0.413, 0, -160, 7);
INSERT INTO public.moon VALUES (9, 'Callisto', 'Natural Satellite', true, 0.378, 0, -160, 7);
INSERT INTO public.moon VALUES (10, 'Titan', 'Natural Satellite', true, 0.404, 0, -179, 4);
INSERT INTO public.moon VALUES (11, 'Rhea', 'Natural Satellite', false, 0.123, 0, -220, 4);
INSERT INTO public.moon VALUES (12, 'Iapetus', 'Natural Satellite', false, 0.115, 0, -143, 4);
INSERT INTO public.moon VALUES (13, 'Triton', 'Natural Satellite', true, 0.212, 0, -235, 6);
INSERT INTO public.moon VALUES (14, 'Charon', 'Natural Satellite', false, 0.1175, 0, -213, 5);
INSERT INTO public.moon VALUES (15, 'Miranda', 'Natural Satellite', false, 0.0368, 0, -187, 5);
INSERT INTO public.moon VALUES (16, 'Ariel', 'Natural Satellite', false, 0.134, 0, -213, 5);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Natural Satellite', false, 0.117, 0, -213, 5);
INSERT INTO public.moon VALUES (18, 'Dione', 'Natural Satellite', false, 0.105, 0, -186, 4);
INSERT INTO public.moon VALUES (19, 'Enceladus', 'Natural Satellite', true, 0.118, 0, -201, 4);
INSERT INTO public.moon VALUES (20, 'Mimas', 'Natural Satellite', false, 0.0375, 0, -193, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', true, 1.00, 10, 1, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 'Gas Giant', true, 11.21, 25, 79, 1);
INSERT INTO public.planet VALUES (3, 'Proxima Centauri b', 'Terrestrial', true, 1.17, 1, 0, 2);
INSERT INTO public.planet VALUES (4, 'Mercury', 'Terrestrial', false, 0.055, 4, 0, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 'Terrestrial', true, 0.815, 9, 0, 1);
INSERT INTO public.planet VALUES (6, 'Mars', 'Terrestrial', true, 0.107, 4, 2, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 'Gas Giant', true, 95.16, 10, 82, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 'Ice Giant', true, 14.54, 9, 27, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 'Ice Giant', true, 17.15, 11, 14, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 'Terrestrial', true, 1.11, 1, 0, 2);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 'Gas Giant', true, 1.32, 2, 0, 2);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 'Terrestrial', true, 0.85, 1, 0, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type main-sequence star (G2V)', true, 1.00, 1, 5778, 2);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'G-type main-sequence star (G2V)', true, 1.519, 1, 5790, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant', false, 126000, 20, 3500, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 'A-type main-sequence star (A1V)', true, 25.4, 2, 9940, 2);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 'K-type main-sequence star (K1V)', true, 0.45, 1, 5260, 2);
INSERT INTO public.star VALUES (6, 'Polaris', 'F-type supergiant', true, 2300, 5, 6000, 1);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_unique UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

