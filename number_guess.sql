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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    tries integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 29, 518);
INSERT INTO public.games VALUES (2, 29, 1000);
INSERT INTO public.games VALUES (3, 30, 801);
INSERT INTO public.games VALUES (4, 30, 825);
INSERT INTO public.games VALUES (5, 29, 557);
INSERT INTO public.games VALUES (6, 29, 274);
INSERT INTO public.games VALUES (7, 29, 777);
INSERT INTO public.games VALUES (8, 31, 480);
INSERT INTO public.games VALUES (9, 31, 472);
INSERT INTO public.games VALUES (10, 32, 262);
INSERT INTO public.games VALUES (11, 32, 537);
INSERT INTO public.games VALUES (12, 31, 788);
INSERT INTO public.games VALUES (13, 31, 947);
INSERT INTO public.games VALUES (14, 31, 605);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1713813996287');
INSERT INTO public.users VALUES (2, 'user_1713813996286');
INSERT INTO public.users VALUES (3, 'user_1713814350970');
INSERT INTO public.users VALUES (4, 'user_1713814350969');
INSERT INTO public.users VALUES (5, 'user_1713814365358');
INSERT INTO public.users VALUES (6, 'user_1713814365357');
INSERT INTO public.users VALUES (7, 'user_1713814531445');
INSERT INTO public.users VALUES (8, 'user_1713814531444');
INSERT INTO public.users VALUES (9, 'user_1713814581802');
INSERT INTO public.users VALUES (10, 'user_1713814581801');
INSERT INTO public.users VALUES (11, 'user_1713814584559');
INSERT INTO public.users VALUES (12, 'user_1713814584558');
INSERT INTO public.users VALUES (13, 'user_1713814705769');
INSERT INTO public.users VALUES (14, 'user_1713814705768');
INSERT INTO public.users VALUES (15, 'user_1713814715598');
INSERT INTO public.users VALUES (16, 'user_1713814715597');
INSERT INTO public.users VALUES (17, 'Sam');
INSERT INTO public.users VALUES (18, 'user_1713814864729');
INSERT INTO public.users VALUES (19, 'user_1713814864728');
INSERT INTO public.users VALUES (20, 'user_1713815177388');
INSERT INTO public.users VALUES (21, 'user_1713815177387');
INSERT INTO public.users VALUES (22, 'user_1713815252849');
INSERT INTO public.users VALUES (23, 'user_1713815252848');
INSERT INTO public.users VALUES (24, 'SAm');
INSERT INTO public.users VALUES (25, 'user_1713815307425');
INSERT INTO public.users VALUES (26, 'user_1713815307423');
INSERT INTO public.users VALUES (27, 'user_1713815408339');
INSERT INTO public.users VALUES (28, 'user_1713815408338');
INSERT INTO public.users VALUES (29, 'user_1713815455255');
INSERT INTO public.users VALUES (30, 'user_1713815455254');
INSERT INTO public.users VALUES (31, 'user_1713815588658');
INSERT INTO public.users VALUES (32, 'user_1713815588657');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 14, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 32, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

