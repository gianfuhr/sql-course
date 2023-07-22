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
    age_in_million integer,
    has_life boolean,
    gtype_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: gtype; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gtype (
    gtype_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.gtype OWNER TO freecodecamp;

--
-- Name: gtype_gtype_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.gtype_gtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gtype_gtype_id_seq OWNER TO freecodecamp;

--
-- Name: gtype_gtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.gtype_gtype_id_seq OWNED BY public.gtype.gtype_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    age_in_million integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_million integer,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    age_in_million integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: gtype gtype_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gtype ALTER COLUMN gtype_id SET DEFAULT nextval('public.gtype_gtype_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10010, false, 1);
INSERT INTO public.galaxy VALUES (2, 'Whirlpool', 400, false, 2);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 13610, true, 3);
INSERT INTO public.galaxy VALUES (4, 'LMC', 1101, false, 4);
INSERT INTO public.galaxy VALUES (5, 'SMC', 6500, false, 4);
INSERT INTO public.galaxy VALUES (6, 'Canis Major Dwarf', 7000, false, 4);


--
-- Data for Name: gtype; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gtype VALUES (1, 'Elliptical', 'Ellipsoidal in shape');
INSERT INTO public.gtype VALUES (2, 'Spiral', 'Spiral arms');
INSERT INTO public.gtype VALUES (3, 'Barred-spiral', 'Linear band of stars at the centre');
INSERT INTO public.gtype VALUES (4, 'Irregular', 'Lack of structure');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 4530, 'a');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 200, 'b');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 2700, 'c');
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, 4500, 'd');
INSERT INTO public.moon VALUES (5, 'Callisto', 5, 4500, 'e');
INSERT INTO public.moon VALUES (6, 'Io', 5, 4500, 'f');
INSERT INTO public.moon VALUES (7, 'Europa', 5, 4500, 'g');
INSERT INTO public.moon VALUES (8, 'Mimas', 6, 4500, 'h');
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 4500, 'i');
INSERT INTO public.moon VALUES (10, 'Thetys', 6, 4500, 'j');
INSERT INTO public.moon VALUES (11, 'Dione', 6, 4500, 'k');
INSERT INTO public.moon VALUES (12, 'Rhea', 6, 4500, 'l');
INSERT INTO public.moon VALUES (13, 'Titan', 6, 4500, 'm');
INSERT INTO public.moon VALUES (14, 'Iapetus', 6, 4500, 'n');
INSERT INTO public.moon VALUES (15, 'Hyperion', 6, 4500, 'o');
INSERT INTO public.moon VALUES (16, 'Phoebe', 6, 4500, 'p');
INSERT INTO public.moon VALUES (17, 'Janus', 6, 4500, 'q');
INSERT INTO public.moon VALUES (18, 'Epimetheus', 6, 4500, 'r');
INSERT INTO public.moon VALUES (19, 'Prometheus', 6, 4500, 's');
INSERT INTO public.moon VALUES (20, 'Pandora', 6, 4500, 't');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 4503, 91, 1);
INSERT INTO public.planet VALUES (2, 'Venus', true, 4503, 61, 1);
INSERT INTO public.planet VALUES (3, 'Earth', false, 4543, 0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 4603, 225, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 4603, 715, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 4503, 1427, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 4503, 2900, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 4503, 4500, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 4600, 7500, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', false, 4560, 420, 1);
INSERT INTO public.planet VALUES (11, 'Eris', false, 4503, 14313, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', false, 4500, 7487, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 3, 4603, 'a');
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 3, 4853, 'b');
INSERT INTO public.star VALUES (3, 'Rigil Kentaurus', 3, 9200, 'c');
INSERT INTO public.star VALUES (4, 'Toliman', 3, 5300, 'd');
INSERT INTO public.star VALUES (5, 'Sirius A', 3, 242, 'e');
INSERT INTO public.star VALUES (6, 'Altair', 3, 630, 'f');


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 6, true);


--
-- Name: gtype_gtype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.gtype_gtype_id_seq', 4, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 20, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 12, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 6, true);


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
-- Name: gtype gtype_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gtype
    ADD CONSTRAINT gtype_name_key UNIQUE (name);


--
-- Name: gtype gtype_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gtype
    ADD CONSTRAINT gtype_pkey PRIMARY KEY (gtype_id);


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
-- Name: galaxy galaxy_gtype_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_gtype_id_fkey FOREIGN KEY (gtype_id) REFERENCES public.gtype(gtype_id);


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

