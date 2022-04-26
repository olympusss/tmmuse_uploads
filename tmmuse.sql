--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    id integer NOT NULL,
    username character varying,
    password character varying,
    token character varying,
    notif_token character varying,
    type integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- Name: admin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_id_seq OWNER TO postgres;

--
-- Name: admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_id_seq OWNED BY public.admin.id;


--
-- Name: admin_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_type (
    id integer NOT NULL,
    type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.admin_type OWNER TO postgres;

--
-- Name: admin_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_type_id_seq OWNER TO postgres;

--
-- Name: admin_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_type_id_seq OWNED BY public.admin_type.id;


--
-- Name: ads; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ads (
    id integer NOT NULL,
    "nameTM" character varying,
    "nameRU" character varying,
    comment_of_admin character varying,
    image character varying,
    is_main boolean,
    site_url character varying,
    profile_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.ads OWNER TO postgres;

--
-- Name: ads2profile_count; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ads2profile_count (
    id integer NOT NULL,
    user_id integer,
    profile_id integer,
    ads_id integer,
    type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.ads2profile_count OWNER TO postgres;

--
-- Name: ads2profile_count_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ads2profile_count_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ads2profile_count_id_seq OWNER TO postgres;

--
-- Name: ads2profile_count_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ads2profile_count_id_seq OWNED BY public.ads2profile_count.id;


--
-- Name: ads_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ads_id_seq OWNER TO postgres;

--
-- Name: ads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ads_id_seq OWNED BY public.ads.id;


--
-- Name: ads_view; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ads_view (
    id integer NOT NULL,
    user_id integer,
    profile_id integer,
    ads_id integer,
    type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.ads_view OWNER TO postgres;

--
-- Name: ads_view_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ads_view_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ads_view_id_seq OWNER TO postgres;

--
-- Name: ads_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ads_view_id_seq OWNED BY public.ads_view.id;


--
-- Name: answered_messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answered_messages (
    id integer NOT NULL,
    title character varying,
    message character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.answered_messages OWNER TO postgres;

--
-- Name: answered_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answered_messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answered_messages_id_seq OWNER TO postgres;

--
-- Name: answered_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.answered_messages_id_seq OWNED BY public.answered_messages.id;


--
-- Name: answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answers (
    id integer NOT NULL,
    answered_msg_id integer,
    inbox_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.answers OWNER TO postgres;

--
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answers_id_seq OWNER TO postgres;

--
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;


--
-- Name: app_visitors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_visitors (
    id integer NOT NULL,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.app_visitors OWNER TO postgres;

--
-- Name: app_visitors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_visitors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_visitors_id_seq OWNER TO postgres;

--
-- Name: app_visitors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_visitors_id_seq OWNED BY public.app_visitors.id;


--
-- Name: banners; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banners (
    id integer NOT NULL,
    image character varying,
    link character varying,
    "order" integer,
    comment_of_admin character varying,
    profile_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.banners OWNER TO postgres;

--
-- Name: banners_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.banners_id_seq OWNER TO postgres;

--
-- Name: banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banners_id_seq OWNED BY public.banners.id;


--
-- Name: card_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_users (
    id integer NOT NULL,
    date_of_birth date,
    expired date,
    gender integer,
    email character varying,
    is_sms boolean,
    status integer,
    card_id character varying,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.card_users OWNER TO postgres;

--
-- Name: card_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.card_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.card_users_id_seq OWNER TO postgres;

--
-- Name: card_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.card_users_id_seq OWNED BY public.card_users.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certificates (
    id integer NOT NULL,
    amount double precision,
    status integer,
    profile_id integer,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.certificates OWNER TO postgres;

--
-- Name: certificates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.certificates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certificates_id_seq OWNER TO postgres;

--
-- Name: certificates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.certificates_id_seq OWNED BY public.certificates.id;


--
-- Name: constants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.constants (
    id integer NOT NULL,
    "titleTM" character varying,
    "titleRU" character varying,
    "contentTM" character varying,
    "contentRU" character varying,
    "contentTM_dark" character varying,
    "contentRU_dark" character varying,
    type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.constants OWNER TO postgres;

--
-- Name: constants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.constants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constants_id_seq OWNER TO postgres;

--
-- Name: constants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.constants_id_seq OWNED BY public.constants.id;


--
-- Name: galleries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galleries (
    id integer NOT NULL,
    medium_image character varying,
    large_image character varying,
    profile_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.galleries OWNER TO postgres;

--
-- Name: galleries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galleries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galleries_id_seq OWNER TO postgres;

--
-- Name: galleries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galleries_id_seq OWNED BY public.galleries.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id integer NOT NULL,
    small_image character varying,
    large_image character varying,
    "isVR" boolean,
    profile_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.images OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: inbox; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inbox (
    id integer NOT NULL,
    title character varying,
    message character varying,
    is_all boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.inbox OWNER TO postgres;

--
-- Name: inbox_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inbox_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inbox_id_seq OWNER TO postgres;

--
-- Name: inbox_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inbox_id_seq OWNED BY public.inbox.id;


--
-- Name: interest_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.interest_items (
    id integer NOT NULL,
    "titleTM" character varying,
    "titleRU" character varying,
    interest_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.interest_items OWNER TO postgres;

--
-- Name: interest_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.interest_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.interest_items_id_seq OWNER TO postgres;

--
-- Name: interest_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.interest_items_id_seq OWNED BY public.interest_items.id;


--
-- Name: interests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.interests (
    id integer NOT NULL,
    "titleTM" character varying,
    "titleRU" character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.interests OWNER TO postgres;

--
-- Name: interests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.interests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.interests_id_seq OWNER TO postgres;

--
-- Name: interests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.interests_id_seq OWNED BY public.interests.id;


--
-- Name: join_category_ads; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.join_category_ads (
    id integer NOT NULL,
    ads_id integer,
    category_id integer
);


ALTER TABLE public.join_category_ads OWNER TO postgres;

--
-- Name: join_category_ads_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.join_category_ads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.join_category_ads_id_seq OWNER TO postgres;

--
-- Name: join_category_ads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.join_category_ads_id_seq OWNED BY public.join_category_ads.id;


--
-- Name: number_socket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.number_socket (
    id integer NOT NULL,
    phone_number character varying,
    code character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.number_socket OWNER TO postgres;

--
-- Name: number_socket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.number_socket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.number_socket_id_seq OWNER TO postgres;

--
-- Name: number_socket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.number_socket_id_seq OWNED BY public.number_socket.id;


--
-- Name: phone_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.phone_numbers (
    id integer NOT NULL,
    phone_number character varying,
    profile_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.phone_numbers OWNER TO postgres;

--
-- Name: phone_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.phone_numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.phone_numbers_id_seq OWNER TO postgres;

--
-- Name: phone_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.phone_numbers_id_seq OWNED BY public.phone_numbers.id;


--
-- Name: pop_up; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pop_up (
    id integer NOT NULL,
    comment_of_admin character varying,
    image character varying,
    site_url character varying,
    "titleTM" character varying,
    "titleRU" character varying,
    "descriptionTM" character varying,
    "descriptionRU" character varying,
    profile_id integer,
    posts_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.pop_up OWNER TO postgres;

--
-- Name: pop_up_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pop_up_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pop_up_id_seq OWNER TO postgres;

--
-- Name: pop_up_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pop_up_id_seq OWNED BY public.pop_up.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    "titleTM" character varying,
    "titleRU" character varying,
    "descriptionTM" character varying,
    "descriptionRU" character varying,
    comment_of_admin character varying,
    status boolean,
    image character varying,
    promotion double precision,
    view_count integer,
    "like" integer,
    dislike integer,
    profile_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: profile_view; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile_view (
    id integer NOT NULL,
    user_id integer,
    profile_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.profile_view OWNER TO postgres;

--
-- Name: profile_view_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profile_view_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_view_id_seq OWNER TO postgres;

--
-- Name: profile_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profile_view_id_seq OWNED BY public.profile_view.id;


--
-- Name: profiles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profiles (
    id integer NOT NULL,
    "nameTM" character varying,
    "nameRU" character varying,
    "short_descTM" character varying,
    "short_descRU" character varying,
    "like" integer,
    dislike integer,
    instagram character varying,
    site character varying,
    location character varying,
    address character varying,
    is_cash boolean,
    is_terminal boolean,
    work_hours character varying,
    delivery boolean,
    "cousineTM" character varying,
    "cousineRU" character varying,
    average_check double precision,
    is_active_card boolean,
    tm_muse_card double precision,
    is_certificate boolean,
    "is_VIP" integer,
    is_promo boolean,
    "WiFi" boolean,
    status integer,
    category_id integer,
    cinema_id integer,
    view_count integer,
    promo_count integer,
    "descriptionTM" character varying,
    "descriptionRU" character varying,
    order_in_list integer,
    free_time character varying,
    required_promotion boolean,
    own_promotion double precision,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.profiles OWNER TO postgres;

--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_id_seq OWNER TO postgres;

--
-- Name: profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;


--
-- Name: promo_codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.promo_codes (
    id integer NOT NULL,
    promo_code character varying,
    status integer,
    profile_id integer,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.promo_codes OWNER TO postgres;

--
-- Name: promo_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.promo_codes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.promo_codes_id_seq OWNER TO postgres;

--
-- Name: promo_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.promo_codes_id_seq OWNED BY public.promo_codes.id;


--
-- Name: search_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.search_history (
    id integer NOT NULL,
    text character varying,
    count integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.search_history OWNER TO postgres;

--
-- Name: search_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.search_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.search_history_id_seq OWNER TO postgres;

--
-- Name: search_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.search_history_id_seq OWNED BY public.search_history.id;


--
-- Name: send_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.send_user (
    id integer NOT NULL,
    is_read boolean,
    user_id integer,
    inbox_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.send_user OWNER TO postgres;

--
-- Name: send_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.send_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.send_user_id_seq OWNER TO postgres;

--
-- Name: send_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.send_user_id_seq OWNED BY public.send_user.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    "tagTM" character varying,
    "tagRU" character varying,
    category_id integer,
    profile_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: ticket_bron; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticket_bron (
    id integer NOT NULL,
    cinema_id integer,
    profile_id integer,
    user_id integer,
    movie_date date,
    movie_time time without time zone,
    ticket_count integer,
    ticket_price double precision,
    ticket_discount double precision,
    status integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.ticket_bron OWNER TO postgres;

--
-- Name: ticket_bron_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticket_bron_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticket_bron_id_seq OWNER TO postgres;

--
-- Name: ticket_bron_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ticket_bron_id_seq OWNED BY public.ticket_bron.id;


--
-- Name: user_interests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_interests (
    id integer NOT NULL,
    interest_item_id integer,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.user_interests OWNER TO postgres;

--
-- Name: user_interests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_interests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_interests_id_seq OWNER TO postgres;

--
-- Name: user_interests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_interests_id_seq OWNED BY public.user_interests.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    fullname character varying,
    phone_number character varying,
    token character varying,
    notif_token character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: admin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);


--
-- Name: admin_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_type ALTER COLUMN id SET DEFAULT nextval('public.admin_type_id_seq'::regclass);


--
-- Name: ads id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ads ALTER COLUMN id SET DEFAULT nextval('public.ads_id_seq'::regclass);


--
-- Name: ads2profile_count id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ads2profile_count ALTER COLUMN id SET DEFAULT nextval('public.ads2profile_count_id_seq'::regclass);


--
-- Name: ads_view id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ads_view ALTER COLUMN id SET DEFAULT nextval('public.ads_view_id_seq'::regclass);


--
-- Name: answered_messages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answered_messages ALTER COLUMN id SET DEFAULT nextval('public.answered_messages_id_seq'::regclass);


--
-- Name: answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);


--
-- Name: app_visitors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_visitors ALTER COLUMN id SET DEFAULT nextval('public.app_visitors_id_seq'::regclass);


--
-- Name: banners id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners ALTER COLUMN id SET DEFAULT nextval('public.banners_id_seq'::regclass);


--
-- Name: card_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_users ALTER COLUMN id SET DEFAULT nextval('public.card_users_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: certificates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificates ALTER COLUMN id SET DEFAULT nextval('public.certificates_id_seq'::regclass);


--
-- Name: constants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.constants ALTER COLUMN id SET DEFAULT nextval('public.constants_id_seq'::regclass);


--
-- Name: galleries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galleries ALTER COLUMN id SET DEFAULT nextval('public.galleries_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: inbox id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inbox ALTER COLUMN id SET DEFAULT nextval('public.inbox_id_seq'::regclass);


--
-- Name: interest_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interest_items ALTER COLUMN id SET DEFAULT nextval('public.interest_items_id_seq'::regclass);


--
-- Name: interests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interests ALTER COLUMN id SET DEFAULT nextval('public.interests_id_seq'::regclass);


--
-- Name: join_category_ads id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.join_category_ads ALTER COLUMN id SET DEFAULT nextval('public.join_category_ads_id_seq'::regclass);


--
-- Name: number_socket id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.number_socket ALTER COLUMN id SET DEFAULT nextval('public.number_socket_id_seq'::regclass);


--
-- Name: phone_numbers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_numbers ALTER COLUMN id SET DEFAULT nextval('public.phone_numbers_id_seq'::regclass);


--
-- Name: pop_up id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pop_up ALTER COLUMN id SET DEFAULT nextval('public.pop_up_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: profile_view id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile_view ALTER COLUMN id SET DEFAULT nextval('public.profile_view_id_seq'::regclass);


--
-- Name: profiles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);


--
-- Name: promo_codes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promo_codes ALTER COLUMN id SET DEFAULT nextval('public.promo_codes_id_seq'::regclass);


--
-- Name: search_history id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search_history ALTER COLUMN id SET DEFAULT nextval('public.search_history_id_seq'::regclass);


--
-- Name: send_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.send_user ALTER COLUMN id SET DEFAULT nextval('public.send_user_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: ticket_bron id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket_bron ALTER COLUMN id SET DEFAULT nextval('public.ticket_bron_id_seq'::regclass);


--
-- Name: user_interests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_interests ALTER COLUMN id SET DEFAULT nextval('public.user_interests_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);


--
-- Name: admin_type admin_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_type
    ADD CONSTRAINT admin_type_pkey PRIMARY KEY (id);


--
-- Name: ads2profile_count ads2profile_count_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ads2profile_count
    ADD CONSTRAINT ads2profile_count_pkey PRIMARY KEY (id);


--
-- Name: ads ads_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_pkey PRIMARY KEY (id);


--
-- Name: ads_view ads_view_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ads_view
    ADD CONSTRAINT ads_view_pkey PRIMARY KEY (id);


--
-- Name: answered_messages answered_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answered_messages
    ADD CONSTRAINT answered_messages_pkey PRIMARY KEY (id);


--
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- Name: app_visitors app_visitors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_visitors
    ADD CONSTRAINT app_visitors_pkey PRIMARY KEY (id);


--
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);


--
-- Name: card_users card_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_users
    ADD CONSTRAINT card_users_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: certificates certificates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT certificates_pkey PRIMARY KEY (id);


--
-- Name: constants constants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.constants
    ADD CONSTRAINT constants_pkey PRIMARY KEY (id);


--
-- Name: galleries galleries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galleries
    ADD CONSTRAINT galleries_pkey PRIMARY KEY (id);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: inbox inbox_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inbox
    ADD CONSTRAINT inbox_pkey PRIMARY KEY (id);


--
-- Name: interest_items interest_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interest_items
    ADD CONSTRAINT interest_items_pkey PRIMARY KEY (id);


--
-- Name: interests interests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interests
    ADD CONSTRAINT interests_pkey PRIMARY KEY (id);


--
-- Name: join_category_ads join_category_ads_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.join_category_ads
    ADD CONSTRAINT join_category_ads_pkey PRIMARY KEY (id);


--
-- Name: number_socket number_socket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.number_socket
    ADD CONSTRAINT number_socket_pkey PRIMARY KEY (id);


--
-- Name: phone_numbers phone_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_numbers
    ADD CONSTRAINT phone_numbers_pkey PRIMARY KEY (id);


--
-- Name: pop_up pop_up_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pop_up
    ADD CONSTRAINT pop_up_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: profile_view profile_view_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile_view
    ADD CONSTRAINT profile_view_pkey PRIMARY KEY (id);


--
-- Name: profiles profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);


--
-- Name: promo_codes promo_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promo_codes
    ADD CONSTRAINT promo_codes_pkey PRIMARY KEY (id);


--
-- Name: search_history search_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.search_history
    ADD CONSTRAINT search_history_pkey PRIMARY KEY (id);


--
-- Name: send_user send_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.send_user
    ADD CONSTRAINT send_user_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: ticket_bron ticket_bron_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket_bron
    ADD CONSTRAINT ticket_bron_pkey PRIMARY KEY (id);


--
-- Name: user_interests user_interests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_interests
    ADD CONSTRAINT user_interests_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: ix_admin_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_admin_id ON public.admin USING btree (id);


--
-- Name: ix_admin_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_admin_type_id ON public.admin_type USING btree (id);


--
-- Name: ix_ads2profile_count_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_ads2profile_count_id ON public.ads2profile_count USING btree (id);


--
-- Name: ix_ads_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_ads_id ON public.ads USING btree (id);


--
-- Name: ix_ads_view_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_ads_view_id ON public.ads_view USING btree (id);


--
-- Name: ix_answered_messages_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_answered_messages_id ON public.answered_messages USING btree (id);


--
-- Name: ix_answers_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_answers_id ON public.answers USING btree (id);


--
-- Name: ix_app_visitors_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_app_visitors_id ON public.app_visitors USING btree (id);


--
-- Name: ix_banners_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_banners_id ON public.banners USING btree (id);


--
-- Name: ix_card_users_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_card_users_id ON public.card_users USING btree (id);


--
-- Name: ix_categories_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_categories_id ON public.categories USING btree (id);


--
-- Name: ix_certificates_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_certificates_id ON public.certificates USING btree (id);


--
-- Name: ix_constants_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_constants_id ON public.constants USING btree (id);


--
-- Name: ix_galleries_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_galleries_id ON public.galleries USING btree (id);


--
-- Name: ix_images_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_images_id ON public.images USING btree (id);


--
-- Name: ix_inbox_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_inbox_id ON public.inbox USING btree (id);


--
-- Name: ix_interest_items_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_interest_items_id ON public.interest_items USING btree (id);


--
-- Name: ix_interests_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_interests_id ON public.interests USING btree (id);


--
-- Name: ix_join_category_ads_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_join_category_ads_id ON public.join_category_ads USING btree (id);


--
-- Name: ix_number_socket_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_number_socket_id ON public.number_socket USING btree (id);


--
-- Name: ix_phone_numbers_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_phone_numbers_id ON public.phone_numbers USING btree (id);


--
-- Name: ix_pop_up_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_pop_up_id ON public.pop_up USING btree (id);


--
-- Name: ix_posts_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_posts_id ON public.posts USING btree (id);


--
-- Name: ix_profile_view_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_profile_view_id ON public.profile_view USING btree (id);


--
-- Name: ix_profiles_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_profiles_id ON public.profiles USING btree (id);


--
-- Name: ix_promo_codes_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_promo_codes_id ON public.promo_codes USING btree (id);


--
-- Name: ix_search_history_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_search_history_id ON public.search_history USING btree (id);


--
-- Name: ix_send_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_send_user_id ON public.send_user USING btree (id);


--
-- Name: ix_tags_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_tags_id ON public.tags USING btree (id);


--
-- Name: ix_ticket_bron_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_ticket_bron_id ON public.ticket_bron USING btree (id);


--
-- Name: ix_user_interests_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_user_interests_id ON public.user_interests USING btree (id);


--
-- Name: ix_users_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_users_id ON public.users USING btree (id);


--
-- Name: admin admin_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_type_fkey FOREIGN KEY (type) REFERENCES public.admin_type(id);


--
-- Name: ads ads_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- Name: answers answers_answered_msg_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_answered_msg_id_fkey FOREIGN KEY (answered_msg_id) REFERENCES public.answered_messages(id);


--
-- Name: answers answers_inbox_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_inbox_id_fkey FOREIGN KEY (inbox_id) REFERENCES public.inbox(id);


--
-- Name: banners banners_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banners
    ADD CONSTRAINT banners_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- Name: card_users card_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_users
    ADD CONSTRAINT card_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: certificates certificates_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT certificates_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- Name: certificates certificates_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT certificates_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: galleries galleries_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galleries
    ADD CONSTRAINT galleries_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- Name: images images_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- Name: interest_items interest_items_interest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interest_items
    ADD CONSTRAINT interest_items_interest_id_fkey FOREIGN KEY (interest_id) REFERENCES public.interests(id);


--
-- Name: join_category_ads join_category_ads_ads_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.join_category_ads
    ADD CONSTRAINT join_category_ads_ads_id_fkey FOREIGN KEY (ads_id) REFERENCES public.ads(id);


--
-- Name: join_category_ads join_category_ads_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.join_category_ads
    ADD CONSTRAINT join_category_ads_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: phone_numbers phone_numbers_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_numbers
    ADD CONSTRAINT phone_numbers_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- Name: pop_up pop_up_posts_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pop_up
    ADD CONSTRAINT pop_up_posts_id_fkey FOREIGN KEY (posts_id) REFERENCES public.posts(id);


--
-- Name: pop_up pop_up_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pop_up
    ADD CONSTRAINT pop_up_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- Name: posts posts_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- Name: profiles profiles_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: promo_codes promo_codes_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promo_codes
    ADD CONSTRAINT promo_codes_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- Name: promo_codes promo_codes_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promo_codes
    ADD CONSTRAINT promo_codes_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: send_user send_user_inbox_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.send_user
    ADD CONSTRAINT send_user_inbox_id_fkey FOREIGN KEY (inbox_id) REFERENCES public.inbox(id);


--
-- Name: send_user send_user_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.send_user
    ADD CONSTRAINT send_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: tags tags_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: tags tags_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- Name: ticket_bron ticket_bron_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket_bron
    ADD CONSTRAINT ticket_bron_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profiles(id);


--
-- Name: ticket_bron ticket_bron_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket_bron
    ADD CONSTRAINT ticket_bron_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: user_interests user_interests_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_interests
    ADD CONSTRAINT user_interests_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

