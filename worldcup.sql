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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (140, 2018, 'Final', 162, 163, 4, 2);
INSERT INTO public.games VALUES (141, 2018, 'Third Place', 164, 165, 2, 0);
INSERT INTO public.games VALUES (142, 2018, 'Semi-Final', 163, 165, 2, 1);
INSERT INTO public.games VALUES (143, 2018, 'Semi-Final', 162, 164, 1, 0);
INSERT INTO public.games VALUES (144, 2018, 'Quarter-Final', 163, 166, 3, 2);
INSERT INTO public.games VALUES (145, 2018, 'Quarter-Final', 165, 167, 2, 0);
INSERT INTO public.games VALUES (146, 2018, 'Quarter-Final', 164, 168, 2, 1);
INSERT INTO public.games VALUES (147, 2018, 'Quarter-Final', 162, 169, 2, 0);
INSERT INTO public.games VALUES (148, 2018, 'Eighth-Final', 165, 170, 2, 1);
INSERT INTO public.games VALUES (149, 2018, 'Eighth-Final', 167, 171, 1, 0);
INSERT INTO public.games VALUES (150, 2018, 'Eighth-Final', 164, 172, 3, 2);
INSERT INTO public.games VALUES (151, 2018, 'Eighth-Final', 168, 173, 2, 0);
INSERT INTO public.games VALUES (152, 2018, 'Eighth-Final', 163, 174, 2, 1);
INSERT INTO public.games VALUES (153, 2018, 'Eighth-Final', 166, 175, 2, 1);
INSERT INTO public.games VALUES (154, 2018, 'Eighth-Final', 169, 176, 2, 1);
INSERT INTO public.games VALUES (155, 2018, 'Eighth-Final', 162, 177, 4, 3);
INSERT INTO public.games VALUES (156, 2014, 'Final', 178, 177, 1, 0);
INSERT INTO public.games VALUES (157, 2014, 'Third Place', 179, 168, 3, 0);
INSERT INTO public.games VALUES (158, 2014, 'Semi-Final', 177, 179, 1, 0);
INSERT INTO public.games VALUES (159, 2014, 'Semi-Final', 178, 168, 7, 1);
INSERT INTO public.games VALUES (160, 2014, 'Quarter-Final', 179, 180, 1, 0);
INSERT INTO public.games VALUES (161, 2014, 'Quarter-Final', 177, 164, 1, 0);
INSERT INTO public.games VALUES (162, 2014, 'Quarter-Final', 168, 170, 2, 1);
INSERT INTO public.games VALUES (163, 2014, 'Quarter-Final', 178, 162, 1, 0);
INSERT INTO public.games VALUES (164, 2014, 'Eighth-Final', 168, 181, 2, 1);
INSERT INTO public.games VALUES (165, 2014, 'Eighth-Final', 170, 169, 2, 0);
INSERT INTO public.games VALUES (166, 2014, 'Eighth-Final', 162, 182, 2, 0);
INSERT INTO public.games VALUES (167, 2014, 'Eighth-Final', 178, 183, 2, 1);
INSERT INTO public.games VALUES (168, 2014, 'Eighth-Final', 179, 173, 2, 1);
INSERT INTO public.games VALUES (169, 2014, 'Eighth-Final', 180, 184, 2, 1);
INSERT INTO public.games VALUES (170, 2014, 'Eighth-Final', 177, 171, 1, 0);
INSERT INTO public.games VALUES (171, 2014, 'Eighth-Final', 164, 185, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (162, 'France');
INSERT INTO public.teams VALUES (163, 'Croatia');
INSERT INTO public.teams VALUES (164, 'Belgium');
INSERT INTO public.teams VALUES (165, 'England');
INSERT INTO public.teams VALUES (166, 'Russia');
INSERT INTO public.teams VALUES (167, 'Sweden');
INSERT INTO public.teams VALUES (168, 'Brazil');
INSERT INTO public.teams VALUES (169, 'Uruguay');
INSERT INTO public.teams VALUES (170, 'Colombia');
INSERT INTO public.teams VALUES (171, 'Switzerland');
INSERT INTO public.teams VALUES (172, 'Japan');
INSERT INTO public.teams VALUES (173, 'Mexico');
INSERT INTO public.teams VALUES (174, 'Denmark');
INSERT INTO public.teams VALUES (175, 'Spain');
INSERT INTO public.teams VALUES (176, 'Portugal');
INSERT INTO public.teams VALUES (177, 'Argentina');
INSERT INTO public.teams VALUES (178, 'Germany');
INSERT INTO public.teams VALUES (179, 'Netherlands');
INSERT INTO public.teams VALUES (180, 'Costa Rica');
INSERT INTO public.teams VALUES (181, 'Chile');
INSERT INTO public.teams VALUES (182, 'Nigeria');
INSERT INTO public.teams VALUES (183, 'Algeria');
INSERT INTO public.teams VALUES (184, 'Greece');
INSERT INTO public.teams VALUES (185, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 171, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 185, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

