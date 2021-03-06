PGDMP                     	    w         	   electoral    9.6.12    9.6.9    o           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            p           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            r           1262    16384 	   electoral    DATABASE     {   CREATE DATABASE electoral WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE electoral;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            s           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13311    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            t           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16416 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    16414    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    192    3            u           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    191            �            1259    16426    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    16424    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    3    194            v           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    193            �            1259    16408    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    16406    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    3    190            w           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    189            �            1259    16434 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    16444    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    16442    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    198    3            x           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    197            �            1259    16432    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    3    196            y           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    195            �            1259    16452    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    16450 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    200    3            z           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    199            �            1259    16569    candidates_category    TABLE     �   CREATE TABLE public.candidates_category (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    is_listless boolean NOT NULL,
    "order" integer NOT NULL,
    order_reports integer NOT NULL
);
 '   DROP TABLE public.candidates_category;
       public         postgres    false    3            �            1259    16567    candidates_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.candidates_category_id_seq;
       public       postgres    false    3    210            {           0    0    candidates_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.candidates_category_id_seq OWNED BY public.candidates_category.id;
            public       postgres    false    209            �            1259    16545    candidates_election    TABLE     �   CREATE TABLE public.candidates_election (
    id integer NOT NULL,
    description character varying(120),
    date date NOT NULL,
    current boolean NOT NULL,
    year integer NOT NULL
);
 '   DROP TABLE public.candidates_election;
       public         postgres    false    3            �            1259    16630    candidates_election_categories    TABLE     �   CREATE TABLE public.candidates_election_categories (
    id integer NOT NULL,
    election_id integer NOT NULL,
    category_id integer NOT NULL
);
 2   DROP TABLE public.candidates_election_categories;
       public         postgres    false    3            �            1259    16628 %   candidates_election_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_election_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.candidates_election_categories_id_seq;
       public       postgres    false    212    3            |           0    0 %   candidates_election_categories_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.candidates_election_categories_id_seq OWNED BY public.candidates_election_categories.id;
            public       postgres    false    211            �            1259    16543    candidates_election_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_election_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.candidates_election_id_seq;
       public       postgres    false    204    3            }           0    0    candidates_election_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.candidates_election_id_seq OWNED BY public.candidates_election.id;
            public       postgres    false    203            �            1259    16889    candidates_election_parties    TABLE     �   CREATE TABLE public.candidates_election_parties (
    id integer NOT NULL,
    election_id integer NOT NULL,
    party_id integer NOT NULL
);
 /   DROP TABLE public.candidates_election_parties;
       public         postgres    false    3            �            1259    16887 "   candidates_election_parties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_election_parties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.candidates_election_parties_id_seq;
       public       postgres    false    233    3            ~           0    0 "   candidates_election_parties_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.candidates_election_parties_id_seq OWNED BY public.candidates_election_parties.id;
            public       postgres    false    232            �            1259    16561    candidates_electorallist    TABLE       CREATE TABLE public.candidates_electorallist (
    id integer NOT NULL,
    name character varying(80) NOT NULL,
    party_id integer,
    current boolean NOT NULL,
    add_to_best boolean NOT NULL,
    head character varying(80) NOT NULL,
    "order" integer NOT NULL
);
 ,   DROP TABLE public.candidates_electorallist;
       public         postgres    false    3            �            1259    16559    candidates_electorallist_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_electorallist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.candidates_electorallist_id_seq;
       public       postgres    false    3    208                       0    0    candidates_electorallist_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.candidates_electorallist_id_seq OWNED BY public.candidates_electorallist.id;
            public       postgres    false    207            �            1259    16553    candidates_party    TABLE     �   CREATE TABLE public.candidates_party (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    address character varying(80) NOT NULL,
    color character varying(18) NOT NULL,
    city_id integer,
    "order" integer NOT NULL
);
 $   DROP TABLE public.candidates_party;
       public         postgres    false    3            �            1259    16551    candidates_party_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_party_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.candidates_party_id_seq;
       public       postgres    false    3    206            �           0    0    candidates_party_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.candidates_party_id_seq OWNED BY public.candidates_party.id;
            public       postgres    false    205            �            1259    16668    cities_city    TABLE     �   CREATE TABLE public.cities_city (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    department_id integer NOT NULL
);
    DROP TABLE public.cities_city;
       public         postgres    false    3            �            1259    16666    cities_city_id_seq    SEQUENCE     {   CREATE SEQUENCE public.cities_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cities_city_id_seq;
       public       postgres    false    218    3            �           0    0    cities_city_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cities_city_id_seq OWNED BY public.cities_city.id;
            public       postgres    false    217            �            1259    16660    cities_department    TABLE     �   CREATE TABLE public.cities_department (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    province_id integer NOT NULL
);
 %   DROP TABLE public.cities_department;
       public         postgres    false    3            �            1259    16658    cities_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cities_department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.cities_department_id_seq;
       public       postgres    false    216    3            �           0    0    cities_department_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.cities_department_id_seq OWNED BY public.cities_department.id;
            public       postgres    false    215            �            1259    16652    cities_province    TABLE     j   CREATE TABLE public.cities_province (
    id integer NOT NULL,
    name character varying(60) NOT NULL
);
 #   DROP TABLE public.cities_province;
       public         postgres    false    3            �            1259    16650    cities_province_id_seq    SEQUENCE        CREATE SEQUENCE public.cities_province_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cities_province_id_seq;
       public       postgres    false    3    214            �           0    0    cities_province_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cities_province_id_seq OWNED BY public.cities_province.id;
            public       postgres    false    213            �            1259    16849    dashboard_userdashboardmodule    TABLE        CREATE TABLE public.dashboard_userdashboardmodule (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    module character varying(255) NOT NULL,
    app_label character varying(255),
    "user" integer NOT NULL,
    "column" integer NOT NULL,
    "order" integer NOT NULL,
    settings text NOT NULL,
    children text NOT NULL,
    collapsed boolean NOT NULL,
    CONSTRAINT dashboard_userdashboardmodule_column_check CHECK (("column" >= 0)),
    CONSTRAINT dashboard_userdashboardmodule_user_check CHECK (("user" >= 0))
);
 1   DROP TABLE public.dashboard_userdashboardmodule;
       public         postgres    false    3            �            1259    16847 $   dashboard_userdashboardmodule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dashboard_userdashboardmodule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.dashboard_userdashboardmodule_id_seq;
       public       postgres    false    231    3            �           0    0 $   dashboard_userdashboardmodule_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.dashboard_userdashboardmodule_id_seq OWNED BY public.dashboard_userdashboardmodule.id;
            public       postgres    false    230            �            1259    16512    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    16510    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    3    202            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    201            �            1259    16398    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    16396    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    188    3            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    187            �            1259    16387    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    16385    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    186    3            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    185            �            1259    16776    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    16698    jet_bookmark    TABLE       CREATE TABLE public.jet_bookmark (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    "user" integer NOT NULL,
    date_add timestamp with time zone NOT NULL,
    CONSTRAINT jet_bookmark_user_check CHECK (("user" >= 0))
);
     DROP TABLE public.jet_bookmark;
       public         postgres    false    3            �            1259    16696    jet_bookmark_id_seq    SEQUENCE     |   CREATE SEQUENCE public.jet_bookmark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.jet_bookmark_id_seq;
       public       postgres    false    3    220            �           0    0    jet_bookmark_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.jet_bookmark_id_seq OWNED BY public.jet_bookmark.id;
            public       postgres    false    219            �            1259    16707    jet_pinnedapplication    TABLE     
  CREATE TABLE public.jet_pinnedapplication (
    id integer NOT NULL,
    app_label character varying(255) NOT NULL,
    "user" integer NOT NULL,
    date_add timestamp with time zone NOT NULL,
    CONSTRAINT jet_pinnedapplication_user_check CHECK (("user" >= 0))
);
 )   DROP TABLE public.jet_pinnedapplication;
       public         postgres    false    3            �            1259    16705    jet_pinnedapplication_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jet_pinnedapplication_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.jet_pinnedapplication_id_seq;
       public       postgres    false    3    222            �           0    0    jet_pinnedapplication_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.jet_pinnedapplication_id_seq OWNED BY public.jet_pinnedapplication.id;
            public       postgres    false    221            �            1259    16729    places_school    TABLE     �   CREATE TABLE public.places_school (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    address character varying(80) NOT NULL,
    city_id integer,
    gmap_location character varying(200)
);
 !   DROP TABLE public.places_school;
       public         postgres    false    3            �            1259    16966    places_school_assigned_to    TABLE     �   CREATE TABLE public.places_school_assigned_to (
    id integer NOT NULL,
    school_id integer NOT NULL,
    user_id integer NOT NULL
);
 -   DROP TABLE public.places_school_assigned_to;
       public         postgres    false    3            �            1259    16964     places_school_assigned_to_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_school_assigned_to_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.places_school_assigned_to_id_seq;
       public       postgres    false    3    235            �           0    0     places_school_assigned_to_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.places_school_assigned_to_id_seq OWNED BY public.places_school_assigned_to.id;
            public       postgres    false    234            �            1259    16727    places_school_id_seq    SEQUENCE     }   CREATE SEQUENCE public.places_school_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.places_school_id_seq;
       public       postgres    false    3    224            �           0    0    places_school_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.places_school_id_seq OWNED BY public.places_school.id;
            public       postgres    false    223            �            1259    16737    places_table    TABLE     �   CREATE TABLE public.places_table (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    school_id integer NOT NULL,
    elctors_qty integer,
    closed boolean NOT NULL,
    closed_by_id integer,
    reopen_by_id integer
);
     DROP TABLE public.places_table;
       public         postgres    false    3            �            1259    17054    places_table_election    TABLE     �   CREATE TABLE public.places_table_election (
    id integer NOT NULL,
    table_id integer NOT NULL,
    election_id integer NOT NULL
);
 )   DROP TABLE public.places_table_election;
       public         postgres    false    3            �            1259    17052    places_table_election_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_table_election_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.places_table_election_id_seq;
       public       postgres    false    3    239            �           0    0    places_table_election_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.places_table_election_id_seq OWNED BY public.places_table_election.id;
            public       postgres    false    238            �            1259    16735    places_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.places_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.places_table_id_seq;
       public       postgres    false    3    226            �           0    0    places_table_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.places_table_id_seq OWNED BY public.places_table.id;
            public       postgres    false    225            �            1259    17001    users_usuario    TABLE     �   CREATE TABLE public.users_usuario (
    id integer NOT NULL,
    dni character varying(10) NOT NULL,
    tel character varying(20) NOT NULL,
    user_id integer NOT NULL
);
 !   DROP TABLE public.users_usuario;
       public         postgres    false    3            �            1259    16999    users_usuario_id_seq    SEQUENCE     }   CREATE SEQUENCE public.users_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.users_usuario_id_seq;
       public       postgres    false    3    237            �           0    0    users_usuario_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.users_usuario_id_seq OWNED BY public.users_usuario.id;
            public       postgres    false    236            �            1259    16788 	   voto_voto    TABLE        CREATE TABLE public.voto_voto (
    id integer NOT NULL,
    created_date date NOT NULL,
    quantity integer NOT NULL,
    category_id integer NOT NULL,
    created_by_id integer NOT NULL,
    election_id integer NOT NULL,
    electoral_list_id integer,
    table_id integer NOT NULL
);
    DROP TABLE public.voto_voto;
       public         postgres    false    3            �            1259    16786    voto_voto_id_seq    SEQUENCE     y   CREATE SEQUENCE public.voto_voto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.voto_voto_id_seq;
       public       postgres    false    3    229            �           0    0    voto_voto_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.voto_voto_id_seq OWNED BY public.voto_voto.id;
            public       postgres    false    228                       2604    16419    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    191    192    192                       2604    16429    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    193    194                       2604    16411    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189    190                       2604    16437    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    195    196                       2604    16447    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197    198                       2604    16455    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200                       2604    16572    candidates_category id    DEFAULT     �   ALTER TABLE ONLY public.candidates_category ALTER COLUMN id SET DEFAULT nextval('public.candidates_category_id_seq'::regclass);
 E   ALTER TABLE public.candidates_category ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209    210                       2604    16548    candidates_election id    DEFAULT     �   ALTER TABLE ONLY public.candidates_election ALTER COLUMN id SET DEFAULT nextval('public.candidates_election_id_seq'::regclass);
 E   ALTER TABLE public.candidates_election ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203    204                       2604    16633 !   candidates_election_categories id    DEFAULT     �   ALTER TABLE ONLY public.candidates_election_categories ALTER COLUMN id SET DEFAULT nextval('public.candidates_election_categories_id_seq'::regclass);
 P   ALTER TABLE public.candidates_election_categories ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    211    212            ,           2604    16892    candidates_election_parties id    DEFAULT     �   ALTER TABLE ONLY public.candidates_election_parties ALTER COLUMN id SET DEFAULT nextval('public.candidates_election_parties_id_seq'::regclass);
 M   ALTER TABLE public.candidates_election_parties ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    233    233                       2604    16564    candidates_electorallist id    DEFAULT     �   ALTER TABLE ONLY public.candidates_electorallist ALTER COLUMN id SET DEFAULT nextval('public.candidates_electorallist_id_seq'::regclass);
 J   ALTER TABLE public.candidates_electorallist ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    208    208                       2604    16556    candidates_party id    DEFAULT     z   ALTER TABLE ONLY public.candidates_party ALTER COLUMN id SET DEFAULT nextval('public.candidates_party_id_seq'::regclass);
 B   ALTER TABLE public.candidates_party ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206            !           2604    16671    cities_city id    DEFAULT     p   ALTER TABLE ONLY public.cities_city ALTER COLUMN id SET DEFAULT nextval('public.cities_city_id_seq'::regclass);
 =   ALTER TABLE public.cities_city ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    218    218                        2604    16663    cities_department id    DEFAULT     |   ALTER TABLE ONLY public.cities_department ALTER COLUMN id SET DEFAULT nextval('public.cities_department_id_seq'::regclass);
 C   ALTER TABLE public.cities_department ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    215    216                       2604    16655    cities_province id    DEFAULT     x   ALTER TABLE ONLY public.cities_province ALTER COLUMN id SET DEFAULT nextval('public.cities_province_id_seq'::regclass);
 A   ALTER TABLE public.cities_province ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    214    214            )           2604    16852     dashboard_userdashboardmodule id    DEFAULT     �   ALTER TABLE ONLY public.dashboard_userdashboardmodule ALTER COLUMN id SET DEFAULT nextval('public.dashboard_userdashboardmodule_id_seq'::regclass);
 O   ALTER TABLE public.dashboard_userdashboardmodule ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230    231                       2604    16515    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202                       2604    16401    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    187    188    188                       2604    16390    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    186    186            "           2604    16701    jet_bookmark id    DEFAULT     r   ALTER TABLE ONLY public.jet_bookmark ALTER COLUMN id SET DEFAULT nextval('public.jet_bookmark_id_seq'::regclass);
 >   ALTER TABLE public.jet_bookmark ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219    220            $           2604    16710    jet_pinnedapplication id    DEFAULT     �   ALTER TABLE ONLY public.jet_pinnedapplication ALTER COLUMN id SET DEFAULT nextval('public.jet_pinnedapplication_id_seq'::regclass);
 G   ALTER TABLE public.jet_pinnedapplication ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    222    222            &           2604    16732    places_school id    DEFAULT     t   ALTER TABLE ONLY public.places_school ALTER COLUMN id SET DEFAULT nextval('public.places_school_id_seq'::regclass);
 ?   ALTER TABLE public.places_school ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    224    224            -           2604    16969    places_school_assigned_to id    DEFAULT     �   ALTER TABLE ONLY public.places_school_assigned_to ALTER COLUMN id SET DEFAULT nextval('public.places_school_assigned_to_id_seq'::regclass);
 K   ALTER TABLE public.places_school_assigned_to ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    235    235            '           2604    16740    places_table id    DEFAULT     r   ALTER TABLE ONLY public.places_table ALTER COLUMN id SET DEFAULT nextval('public.places_table_id_seq'::regclass);
 >   ALTER TABLE public.places_table ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    226    226            /           2604    17057    places_table_election id    DEFAULT     �   ALTER TABLE ONLY public.places_table_election ALTER COLUMN id SET DEFAULT nextval('public.places_table_election_id_seq'::regclass);
 G   ALTER TABLE public.places_table_election ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    239    239            .           2604    17004    users_usuario id    DEFAULT     t   ALTER TABLE ONLY public.users_usuario ALTER COLUMN id SET DEFAULT nextval('public.users_usuario_id_seq'::regclass);
 ?   ALTER TABLE public.users_usuario ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    236    237            (           2604    16791    voto_voto id    DEFAULT     l   ALTER TABLE ONLY public.voto_voto ALTER COLUMN id SET DEFAULT nextval('public.voto_voto_id_seq'::regclass);
 ;   ALTER TABLE public.voto_voto ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228    229            =          0    16416 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    192   �o      �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 4, true);
            public       postgres    false    191            ?          0    16426    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    194   �o      �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 84, true);
            public       postgres    false    193            ;          0    16408    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    190   �p      �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 97, true);
            public       postgres    false    189            A          0    16434 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    196   >u      C          0    16444    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    198    �      �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 71, true);
            public       postgres    false    197            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 84, true);
            public       postgres    false    195            E          0    16452    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    200   ͂      �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    199            O          0    16569    candidates_category 
   TABLE DATA               \   COPY public.candidates_category (id, name, is_listless, "order", order_reports) FROM stdin;
    public       postgres    false    210   �      �           0    0    candidates_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.candidates_category_id_seq', 9, true);
            public       postgres    false    209            I          0    16545    candidates_election 
   TABLE DATA               S   COPY public.candidates_election (id, description, date, current, year) FROM stdin;
    public       postgres    false    204   [�      Q          0    16630    candidates_election_categories 
   TABLE DATA               V   COPY public.candidates_election_categories (id, election_id, category_id) FROM stdin;
    public       postgres    false    212   ă      �           0    0 %   candidates_election_categories_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.candidates_election_categories_id_seq', 30, true);
            public       postgres    false    211            �           0    0    candidates_election_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.candidates_election_id_seq', 11, true);
            public       postgres    false    203            f          0    16889    candidates_election_parties 
   TABLE DATA               P   COPY public.candidates_election_parties (id, election_id, party_id) FROM stdin;
    public       postgres    false    233   �      �           0    0 "   candidates_election_parties_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.candidates_election_parties_id_seq', 86, true);
            public       postgres    false    232            M          0    16561    candidates_electorallist 
   TABLE DATA               k   COPY public.candidates_electorallist (id, name, party_id, current, add_to_best, head, "order") FROM stdin;
    public       postgres    false    208   ��      �           0    0    candidates_electorallist_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.candidates_electorallist_id_seq', 103, true);
            public       postgres    false    207            K          0    16553    candidates_party 
   TABLE DATA               V   COPY public.candidates_party (id, name, address, color, city_id, "order") FROM stdin;
    public       postgres    false    206   �      �           0    0    candidates_party_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.candidates_party_id_seq', 37, true);
            public       postgres    false    205            W          0    16668    cities_city 
   TABLE DATA               >   COPY public.cities_city (id, name, department_id) FROM stdin;
    public       postgres    false    218    �      �           0    0    cities_city_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cities_city_id_seq', 4143, true);
            public       postgres    false    217            U          0    16660    cities_department 
   TABLE DATA               B   COPY public.cities_department (id, name, province_id) FROM stdin;
    public       postgres    false    216   n�      �           0    0    cities_department_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.cities_department_id_seq', 94028, true);
            public       postgres    false    215            S          0    16652    cities_province 
   TABLE DATA               3   COPY public.cities_province (id, name) FROM stdin;
    public       postgres    false    214   ��      �           0    0    cities_province_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cities_province_id_seq', 95, true);
            public       postgres    false    213            d          0    16849    dashboard_userdashboardmodule 
   TABLE DATA               �   COPY public.dashboard_userdashboardmodule (id, title, module, app_label, "user", "column", "order", settings, children, collapsed) FROM stdin;
    public       postgres    false    231   ��      �           0    0 $   dashboard_userdashboardmodule_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.dashboard_userdashboardmodule_id_seq', 68, true);
            public       postgres    false    230            G          0    16512    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    202   1�      �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 393, true);
            public       postgres    false    201            9          0    16398    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    188    �      �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);
            public       postgres    false    187            7          0    16387    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    186   1�      �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 65, true);
            public       postgres    false    185            `          0    16776    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    227   H�      Y          0    16698    jet_bookmark 
   TABLE DATA               H   COPY public.jet_bookmark (id, url, title, "user", date_add) FROM stdin;
    public       postgres    false    220   ��      �           0    0    jet_bookmark_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.jet_bookmark_id_seq', 1, false);
            public       postgres    false    219            [          0    16707    jet_pinnedapplication 
   TABLE DATA               P   COPY public.jet_pinnedapplication (id, app_label, "user", date_add) FROM stdin;
    public       postgres    false    222   ��      �           0    0    jet_pinnedapplication_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.jet_pinnedapplication_id_seq', 1, true);
            public       postgres    false    221            ]          0    16729    places_school 
   TABLE DATA               R   COPY public.places_school (id, name, address, city_id, gmap_location) FROM stdin;
    public       postgres    false    224   ��      h          0    16966    places_school_assigned_to 
   TABLE DATA               K   COPY public.places_school_assigned_to (id, school_id, user_id) FROM stdin;
    public       postgres    false    235   ��      �           0    0     places_school_assigned_to_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.places_school_assigned_to_id_seq', 65, true);
            public       postgres    false    234            �           0    0    places_school_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.places_school_id_seq', 28, true);
            public       postgres    false    223            _          0    16737    places_table 
   TABLE DATA               l   COPY public.places_table (id, name, school_id, elctors_qty, closed, closed_by_id, reopen_by_id) FROM stdin;
    public       postgres    false    226   ��      l          0    17054    places_table_election 
   TABLE DATA               J   COPY public.places_table_election (id, table_id, election_id) FROM stdin;
    public       postgres    false    239   ��      �           0    0    places_table_election_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.places_table_election_id_seq', 236, true);
            public       postgres    false    238            �           0    0    places_table_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.places_table_id_seq', 239, true);
            public       postgres    false    225            j          0    17001    users_usuario 
   TABLE DATA               >   COPY public.users_usuario (id, dni, tel, user_id) FROM stdin;
    public       postgres    false    237   j�      �           0    0    users_usuario_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.users_usuario_id_seq', 39, true);
            public       postgres    false    236            b          0    16788 	   voto_voto 
   TABLE DATA               �   COPY public.voto_voto (id, created_date, quantity, category_id, created_by_id, election_id, electoral_list_id, table_id) FROM stdin;
    public       postgres    false    229   :�      �           0    0    voto_voto_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.voto_voto_id_seq', 53069, true);
            public       postgres    false    228            =           2606    16541    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    192    192            B           2606    16478 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    194    194    194            E           2606    16431 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    194    194            ?           2606    16421    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    192    192            8           2606    16464 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    190    190    190            :           2606    16413 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    190    190            M           2606    16449 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    198    198            P           2606    16493 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    198    198    198            G           2606    16439    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    196    196            S           2606    16457 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    200    200            V           2606    16507 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    200    200    200            J           2606    16535     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    196    196            d           2606    16574 ,   candidates_category candidates_category_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.candidates_category
    ADD CONSTRAINT candidates_category_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.candidates_category DROP CONSTRAINT candidates_category_pkey;
       public         postgres    false    210    210            f           2606    16647 ]   candidates_election_categories candidates_election_cate_election_id_category_id_74e7e1cd_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.candidates_election_categories
    ADD CONSTRAINT candidates_election_cate_election_id_category_id_74e7e1cd_uniq UNIQUE (election_id, category_id);
 �   ALTER TABLE ONLY public.candidates_election_categories DROP CONSTRAINT candidates_election_cate_election_id_category_id_74e7e1cd_uniq;
       public         postgres    false    212    212    212            j           2606    16635 B   candidates_election_categories candidates_election_categories_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.candidates_election_categories
    ADD CONSTRAINT candidates_election_categories_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.candidates_election_categories DROP CONSTRAINT candidates_election_categories_pkey;
       public         postgres    false    212    212            �           2606    16916 Z   candidates_election_parties candidates_election_parties_election_id_party_id_254fe7f8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.candidates_election_parties
    ADD CONSTRAINT candidates_election_parties_election_id_party_id_254fe7f8_uniq UNIQUE (election_id, party_id);
 �   ALTER TABLE ONLY public.candidates_election_parties DROP CONSTRAINT candidates_election_parties_election_id_party_id_254fe7f8_uniq;
       public         postgres    false    233    233    233            �           2606    16894 <   candidates_election_parties candidates_election_parties_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.candidates_election_parties
    ADD CONSTRAINT candidates_election_parties_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.candidates_election_parties DROP CONSTRAINT candidates_election_parties_pkey;
       public         postgres    false    233    233            \           2606    16550 ,   candidates_election candidates_election_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.candidates_election
    ADD CONSTRAINT candidates_election_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.candidates_election DROP CONSTRAINT candidates_election_pkey;
       public         postgres    false    204    204            b           2606    16566 6   candidates_electorallist candidates_electorallist_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.candidates_electorallist
    ADD CONSTRAINT candidates_electorallist_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.candidates_electorallist DROP CONSTRAINT candidates_electorallist_pkey;
       public         postgres    false    208    208            _           2606    16558 &   candidates_party candidates_party_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.candidates_party
    ADD CONSTRAINT candidates_party_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.candidates_party DROP CONSTRAINT candidates_party_pkey;
       public         postgres    false    206    206            r           2606    16673    cities_city cities_city_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cities_city
    ADD CONSTRAINT cities_city_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.cities_city DROP CONSTRAINT cities_city_pkey;
       public         postgres    false    218    218            n           2606    16665 (   cities_department cities_department_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.cities_department
    ADD CONSTRAINT cities_department_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.cities_department DROP CONSTRAINT cities_department_pkey;
       public         postgres    false    216    216            l           2606    16657 $   cities_province cities_province_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.cities_province
    ADD CONSTRAINT cities_province_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.cities_province DROP CONSTRAINT cities_province_pkey;
       public         postgres    false    214    214            �           2606    16859 @   dashboard_userdashboardmodule dashboard_userdashboardmodule_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.dashboard_userdashboardmodule
    ADD CONSTRAINT dashboard_userdashboardmodule_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.dashboard_userdashboardmodule DROP CONSTRAINT dashboard_userdashboardmodule_pkey;
       public         postgres    false    231    231            Y           2606    16521 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    202    202            3           2606    16405 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    188    188    188            5           2606    16403 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    188    188            1           2606    16395 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    186    186            �           2606    16783 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    227    227            t           2606    16704    jet_bookmark jet_bookmark_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.jet_bookmark
    ADD CONSTRAINT jet_bookmark_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.jet_bookmark DROP CONSTRAINT jet_bookmark_pkey;
       public         postgres    false    220    220            v           2606    16713 0   jet_pinnedapplication jet_pinnedapplication_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.jet_pinnedapplication
    ADD CONSTRAINT jet_pinnedapplication_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.jet_pinnedapplication DROP CONSTRAINT jet_pinnedapplication_pkey;
       public         postgres    false    222    222            �           2606    16971 8   places_school_assigned_to places_school_assigned_to_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.places_school_assigned_to
    ADD CONSTRAINT places_school_assigned_to_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.places_school_assigned_to DROP CONSTRAINT places_school_assigned_to_pkey;
       public         postgres    false    235    235            �           2606    16983 S   places_school_assigned_to places_school_assigned_to_school_id_user_id_e234beb7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.places_school_assigned_to
    ADD CONSTRAINT places_school_assigned_to_school_id_user_id_e234beb7_uniq UNIQUE (school_id, user_id);
 }   ALTER TABLE ONLY public.places_school_assigned_to DROP CONSTRAINT places_school_assigned_to_school_id_user_id_e234beb7_uniq;
       public         postgres    false    235    235    235            y           2606    16734     places_school places_school_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.places_school
    ADD CONSTRAINT places_school_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.places_school DROP CONSTRAINT places_school_pkey;
       public         postgres    false    224    224            �           2606    17059 0   places_table_election places_table_election_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.places_table_election
    ADD CONSTRAINT places_table_election_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.places_table_election DROP CONSTRAINT places_table_election_pkey;
       public         postgres    false    239    239            �           2606    17071 N   places_table_election places_table_election_table_id_election_id_eb729f8a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.places_table_election
    ADD CONSTRAINT places_table_election_table_id_election_id_eb729f8a_uniq UNIQUE (table_id, election_id);
 x   ALTER TABLE ONLY public.places_table_election DROP CONSTRAINT places_table_election_table_id_election_id_eb729f8a_uniq;
       public         postgres    false    239    239    239            |           2606    16742    places_table places_table_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.places_table
    ADD CONSTRAINT places_table_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.places_table DROP CONSTRAINT places_table_pkey;
       public         postgres    false    226    226            �           2606    17006     users_usuario users_usuario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users_usuario
    ADD CONSTRAINT users_usuario_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.users_usuario DROP CONSTRAINT users_usuario_pkey;
       public         postgres    false    237    237            �           2606    17008 '   users_usuario users_usuario_user_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.users_usuario
    ADD CONSTRAINT users_usuario_user_id_key UNIQUE (user_id);
 Q   ALTER TABLE ONLY public.users_usuario DROP CONSTRAINT users_usuario_user_id_key;
       public         postgres    false    237    237            �           2606    16793    voto_voto voto_voto_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.voto_voto
    ADD CONSTRAINT voto_voto_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.voto_voto DROP CONSTRAINT voto_voto_pkey;
       public         postgres    false    229    229            ;           1259    16542    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    192            @           1259    16479 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    194            C           1259    16480 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    194            6           1259    16465 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    190            K           1259    16495 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    198            N           1259    16494 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    198            Q           1259    16509 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    200            T           1259    16508 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    200            H           1259    16536     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    196            g           1259    16649 3   candidates_election_categories_category_id_4b3438d3    INDEX     �   CREATE INDEX candidates_election_categories_category_id_4b3438d3 ON public.candidates_election_categories USING btree (category_id);
 G   DROP INDEX public.candidates_election_categories_category_id_4b3438d3;
       public         postgres    false    212            h           1259    16648 3   candidates_election_categories_election_id_4bbfc592    INDEX     �   CREATE INDEX candidates_election_categories_election_id_4bbfc592 ON public.candidates_election_categories USING btree (election_id);
 G   DROP INDEX public.candidates_election_categories_election_id_4bbfc592;
       public         postgres    false    212            �           1259    16917 0   candidates_election_parties_election_id_deab3106    INDEX        CREATE INDEX candidates_election_parties_election_id_deab3106 ON public.candidates_election_parties USING btree (election_id);
 D   DROP INDEX public.candidates_election_parties_election_id_deab3106;
       public         postgres    false    233            �           1259    16918 -   candidates_election_parties_party_id_aa886550    INDEX     y   CREATE INDEX candidates_election_parties_party_id_aa886550 ON public.candidates_election_parties USING btree (party_id);
 A   DROP INDEX public.candidates_election_parties_party_id_aa886550;
       public         postgres    false    233            `           1259    16588 *   candidates_electorallist_party_id_556724c3    INDEX     s   CREATE INDEX candidates_electorallist_party_id_556724c3 ON public.candidates_electorallist USING btree (party_id);
 >   DROP INDEX public.candidates_electorallist_party_id_556724c3;
       public         postgres    false    208            ]           1259    17035 !   candidates_party_city_id_c5a4a4ac    INDEX     a   CREATE INDEX candidates_party_city_id_c5a4a4ac ON public.candidates_party USING btree (city_id);
 5   DROP INDEX public.candidates_party_city_id_c5a4a4ac;
       public         postgres    false    206            p           1259    16685 "   cities_city_department_id_30850c12    INDEX     c   CREATE INDEX cities_city_department_id_30850c12 ON public.cities_city USING btree (department_id);
 6   DROP INDEX public.cities_city_department_id_30850c12;
       public         postgres    false    218            o           1259    16679 &   cities_department_province_id_87dcc37e    INDEX     k   CREATE INDEX cities_department_province_id_87dcc37e ON public.cities_department USING btree (province_id);
 :   DROP INDEX public.cities_department_province_id_87dcc37e;
       public         postgres    false    216            W           1259    16532 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    202            Z           1259    16533 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    202                       1259    16785 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    227            �           1259    16784 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    227            �           1259    16984 ,   places_school_assigned_to_school_id_c94f6b32    INDEX     w   CREATE INDEX places_school_assigned_to_school_id_c94f6b32 ON public.places_school_assigned_to USING btree (school_id);
 @   DROP INDEX public.places_school_assigned_to_school_id_c94f6b32;
       public         postgres    false    235            �           1259    16985 *   places_school_assigned_to_user_id_8fefe4d8    INDEX     s   CREATE INDEX places_school_assigned_to_user_id_8fefe4d8 ON public.places_school_assigned_to USING btree (user_id);
 >   DROP INDEX public.places_school_assigned_to_user_id_8fefe4d8;
       public         postgres    false    235            w           1259    16754    places_school_city_id_fdfc46fb    INDEX     [   CREATE INDEX places_school_city_id_fdfc46fb ON public.places_school USING btree (city_id);
 2   DROP INDEX public.places_school_city_id_fdfc46fb;
       public         postgres    false    224            z           1259    16986 "   places_table_closed_by_id_642961a9    INDEX     c   CREATE INDEX places_table_closed_by_id_642961a9 ON public.places_table USING btree (closed_by_id);
 6   DROP INDEX public.places_table_closed_by_id_642961a9;
       public         postgres    false    226            �           1259    17073 *   places_table_election_election_id_ca5c88fe    INDEX     s   CREATE INDEX places_table_election_election_id_ca5c88fe ON public.places_table_election USING btree (election_id);
 >   DROP INDEX public.places_table_election_election_id_ca5c88fe;
       public         postgres    false    239            �           1259    17072 '   places_table_election_table_id_6c90d733    INDEX     m   CREATE INDEX places_table_election_table_id_6c90d733 ON public.places_table_election USING btree (table_id);
 ;   DROP INDEX public.places_table_election_table_id_6c90d733;
       public         postgres    false    239            }           1259    16992 "   places_table_reopen_by_id_d328f363    INDEX     c   CREATE INDEX places_table_reopen_by_id_d328f363 ON public.places_table USING btree (reopen_by_id);
 6   DROP INDEX public.places_table_reopen_by_id_d328f363;
       public         postgres    false    226            ~           1259    16748    places_table_school_id_7ee08782    INDEX     ]   CREATE INDEX places_table_school_id_7ee08782 ON public.places_table USING btree (school_id);
 3   DROP INDEX public.places_table_school_id_7ee08782;
       public         postgres    false    226            �           1259    16819    voto_voto_category_id_93088054    INDEX     [   CREATE INDEX voto_voto_category_id_93088054 ON public.voto_voto USING btree (category_id);
 2   DROP INDEX public.voto_voto_category_id_93088054;
       public         postgres    false    229            �           1259    16820     voto_voto_created_by_id_428bd13f    INDEX     _   CREATE INDEX voto_voto_created_by_id_428bd13f ON public.voto_voto USING btree (created_by_id);
 4   DROP INDEX public.voto_voto_created_by_id_428bd13f;
       public         postgres    false    229            �           1259    16821    voto_voto_election_id_aa959f53    INDEX     [   CREATE INDEX voto_voto_election_id_aa959f53 ON public.voto_voto USING btree (election_id);
 2   DROP INDEX public.voto_voto_election_id_aa959f53;
       public         postgres    false    229            �           1259    16822 $   voto_voto_electoral_list_id_a39889e2    INDEX     g   CREATE INDEX voto_voto_electoral_list_id_a39889e2 ON public.voto_voto USING btree (electoral_list_id);
 8   DROP INDEX public.voto_voto_electoral_list_id_a39889e2;
       public         postgres    false    229            �           1259    16823    voto_voto_table_id_5d5dc000    INDEX     U   CREATE INDEX voto_voto_table_id_5d5dc000 ON public.voto_voto USING btree (table_id);
 /   DROP INDEX public.voto_voto_table_id_5d5dc000;
       public         postgres    false    229            �           2606    16472 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    194    190    3130            �           2606    16467 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    194    3135    192            �           2606    16458 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    190    3125    188            �           2606    16487 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    192    198    3135            �           2606    16482 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    196    198    3143            �           2606    16501 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    190    200    3130            �           2606    16496 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    196    200    3143            �           2606    16895 U   candidates_election_categories candidates_election__category_id_4b3438d3_fk_candidate    FK CONSTRAINT     �   ALTER TABLE ONLY public.candidates_election_categories
    ADD CONSTRAINT candidates_election__category_id_4b3438d3_fk_candidate FOREIGN KEY (category_id) REFERENCES public.candidates_category(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.candidates_election_categories DROP CONSTRAINT candidates_election__category_id_4b3438d3_fk_candidate;
       public       postgres    false    3172    212    210            �           2606    16900 U   candidates_election_categories candidates_election__election_id_4bbfc592_fk_candidate    FK CONSTRAINT     �   ALTER TABLE ONLY public.candidates_election_categories
    ADD CONSTRAINT candidates_election__election_id_4bbfc592_fk_candidate FOREIGN KEY (election_id) REFERENCES public.candidates_election(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.candidates_election_categories DROP CONSTRAINT candidates_election__election_id_4bbfc592_fk_candidate;
       public       postgres    false    204    212    3164            �           2606    16905 R   candidates_election_parties candidates_election__election_id_deab3106_fk_candidate    FK CONSTRAINT     �   ALTER TABLE ONLY public.candidates_election_parties
    ADD CONSTRAINT candidates_election__election_id_deab3106_fk_candidate FOREIGN KEY (election_id) REFERENCES public.candidates_election(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.candidates_election_parties DROP CONSTRAINT candidates_election__election_id_deab3106_fk_candidate;
       public       postgres    false    233    204    3164            �           2606    16910 O   candidates_election_parties candidates_election__party_id_aa886550_fk_candidate    FK CONSTRAINT     �   ALTER TABLE ONLY public.candidates_election_parties
    ADD CONSTRAINT candidates_election__party_id_aa886550_fk_candidate FOREIGN KEY (party_id) REFERENCES public.candidates_party(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.candidates_election_parties DROP CONSTRAINT candidates_election__party_id_aa886550_fk_candidate;
       public       postgres    false    3167    233    206            �           2606    16925 L   candidates_electorallist candidates_electoral_party_id_556724c3_fk_candidate    FK CONSTRAINT     �   ALTER TABLE ONLY public.candidates_electorallist
    ADD CONSTRAINT candidates_electoral_party_id_556724c3_fk_candidate FOREIGN KEY (party_id) REFERENCES public.candidates_party(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.candidates_electorallist DROP CONSTRAINT candidates_electoral_party_id_556724c3_fk_candidate;
       public       postgres    false    3167    208    206            �           2606    17036 D   candidates_party candidates_party_city_id_c5a4a4ac_fk_cities_city_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.candidates_party
    ADD CONSTRAINT candidates_party_city_id_c5a4a4ac_fk_cities_city_id FOREIGN KEY (city_id) REFERENCES public.cities_city(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.candidates_party DROP CONSTRAINT candidates_party_city_id_c5a4a4ac_fk_cities_city_id;
       public       postgres    false    3186    206    218            �           2606    16686 F   cities_city cities_city_department_id_30850c12_fk_cities_department_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities_city
    ADD CONSTRAINT cities_city_department_id_30850c12_fk_cities_department_id FOREIGN KEY (department_id) REFERENCES public.cities_department(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.cities_city DROP CONSTRAINT cities_city_department_id_30850c12_fk_cities_department_id;
       public       postgres    false    216    218    3182            �           2606    16691 N   cities_department cities_department_province_id_87dcc37e_fk_cities_province_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cities_department
    ADD CONSTRAINT cities_department_province_id_87dcc37e_fk_cities_province_id FOREIGN KEY (province_id) REFERENCES public.cities_province(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.cities_department DROP CONSTRAINT cities_department_province_id_87dcc37e_fk_cities_province_id;
       public       postgres    false    216    3180    214            �           2606    16522 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    188    202    3125            �           2606    16527 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    3143    202    196            �           2606    16972 N   places_school_assigned_to places_school_assign_school_id_c94f6b32_fk_places_sc    FK CONSTRAINT     �   ALTER TABLE ONLY public.places_school_assigned_to
    ADD CONSTRAINT places_school_assign_school_id_c94f6b32_fk_places_sc FOREIGN KEY (school_id) REFERENCES public.places_school(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.places_school_assigned_to DROP CONSTRAINT places_school_assign_school_id_c94f6b32_fk_places_sc;
       public       postgres    false    224    3193    235            �           2606    16977 T   places_school_assigned_to places_school_assigned_to_user_id_8fefe4d8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.places_school_assigned_to
    ADD CONSTRAINT places_school_assigned_to_user_id_8fefe4d8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.places_school_assigned_to DROP CONSTRAINT places_school_assigned_to_user_id_8fefe4d8_fk_auth_user_id;
       public       postgres    false    235    3143    196            �           2606    16760 >   places_school places_school_city_id_fdfc46fb_fk_cities_city_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.places_school
    ADD CONSTRAINT places_school_city_id_fdfc46fb_fk_cities_city_id FOREIGN KEY (city_id) REFERENCES public.cities_city(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.places_school DROP CONSTRAINT places_school_city_id_fdfc46fb_fk_cities_city_id;
       public       postgres    false    224    3186    218            �           2606    16987 ?   places_table places_table_closed_by_id_642961a9_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.places_table
    ADD CONSTRAINT places_table_closed_by_id_642961a9_fk_auth_user_id FOREIGN KEY (closed_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.places_table DROP CONSTRAINT places_table_closed_by_id_642961a9_fk_auth_user_id;
       public       postgres    false    3143    226    196            �           2606    17065 L   places_table_election places_table_electio_election_id_ca5c88fe_fk_candidate    FK CONSTRAINT     �   ALTER TABLE ONLY public.places_table_election
    ADD CONSTRAINT places_table_electio_election_id_ca5c88fe_fk_candidate FOREIGN KEY (election_id) REFERENCES public.candidates_election(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.places_table_election DROP CONSTRAINT places_table_electio_election_id_ca5c88fe_fk_candidate;
       public       postgres    false    239    204    3164            �           2606    17060 P   places_table_election places_table_election_table_id_6c90d733_fk_places_table_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.places_table_election
    ADD CONSTRAINT places_table_election_table_id_6c90d733_fk_places_table_id FOREIGN KEY (table_id) REFERENCES public.places_table(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.places_table_election DROP CONSTRAINT places_table_election_table_id_6c90d733_fk_places_table_id;
       public       postgres    false    226    239    3196            �           2606    16993 ?   places_table places_table_reopen_by_id_d328f363_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.places_table
    ADD CONSTRAINT places_table_reopen_by_id_d328f363_fk_auth_user_id FOREIGN KEY (reopen_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.places_table DROP CONSTRAINT places_table_reopen_by_id_d328f363_fk_auth_user_id;
       public       postgres    false    196    226    3143            �           2606    16765 @   places_table places_table_school_id_7ee08782_fk_places_school_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.places_table
    ADD CONSTRAINT places_table_school_id_7ee08782_fk_places_school_id FOREIGN KEY (school_id) REFERENCES public.places_school(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.places_table DROP CONSTRAINT places_table_school_id_7ee08782_fk_places_school_id;
       public       postgres    false    3193    226    224            �           2606    17009 <   users_usuario users_usuario_user_id_49b1efd8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_usuario
    ADD CONSTRAINT users_usuario_user_id_49b1efd8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.users_usuario DROP CONSTRAINT users_usuario_user_id_49b1efd8_fk_auth_user_id;
       public       postgres    false    196    237    3143            �           2606    16860 B   voto_voto voto_voto_category_id_93088054_fk_candidates_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.voto_voto
    ADD CONSTRAINT voto_voto_category_id_93088054_fk_candidates_category_id FOREIGN KEY (category_id) REFERENCES public.candidates_category(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.voto_voto DROP CONSTRAINT voto_voto_category_id_93088054_fk_candidates_category_id;
       public       postgres    false    3172    210    229            �           2606    16799 :   voto_voto voto_voto_created_by_id_428bd13f_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.voto_voto
    ADD CONSTRAINT voto_voto_created_by_id_428bd13f_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.voto_voto DROP CONSTRAINT voto_voto_created_by_id_428bd13f_fk_auth_user_id;
       public       postgres    false    229    3143    196            �           2606    16865 B   voto_voto voto_voto_election_id_aa959f53_fk_candidates_election_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.voto_voto
    ADD CONSTRAINT voto_voto_election_id_aa959f53_fk_candidates_election_id FOREIGN KEY (election_id) REFERENCES public.candidates_election(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.voto_voto DROP CONSTRAINT voto_voto_election_id_aa959f53_fk_candidates_election_id;
       public       postgres    false    229    204    3164            �           2606    16870 ;   voto_voto voto_voto_electoral_list_id_a39889e2_fk_candidate    FK CONSTRAINT     �   ALTER TABLE ONLY public.voto_voto
    ADD CONSTRAINT voto_voto_electoral_list_id_a39889e2_fk_candidate FOREIGN KEY (electoral_list_id) REFERENCES public.candidates_electorallist(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.voto_voto DROP CONSTRAINT voto_voto_electoral_list_id_a39889e2_fk_candidate;
       public       postgres    false    3170    208    229            �           2606    16875 8   voto_voto voto_voto_table_id_5d5dc000_fk_places_table_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.voto_voto
    ADD CONSTRAINT voto_voto_table_id_5d5dc000_fk_places_table_id FOREIGN KEY (table_id) REFERENCES public.places_table(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.voto_voto DROP CONSTRAINT voto_voto_table_id_5d5dc000_fk_places_table_id;
       public       postgres    false    229    226    3196            =   :   x�3�JM��IM.�/RHI,�/�2�tL����,.)J,�,��2���O.*������ þ{      ?   �   x��ɑ!�s+�)��\~�q�ĥU��6��Wg��|�],�vp;J�ә�~�P&,�+��Z�0ay`⒎�L�������*���r��r���́��˙@șDșBșA�����p-'��i��:9���B��e�h�2Ơ�ʷ�d�@=��2yV$W�2��E��
���U�Z��h�牖��~�{��9i|�ׁ�����\���k��G�qΣ>.�|�%[m'F�q��8�U���C^��x���?�sJ)      ;   B  x���K��6���)t����l/�� �vd����0�衤|�9@V9B_,Y��l4zg�_I��/�Ȟ����_��~��{Vd��9=�2��φCq��*p��,��B\����é���=����h�\_�C�깷cV}q����}��C\��P��>�H�<�݇�0���s3��U!1�U��	q� ���9	��,I.�J�*��q�~��\�Xw\PE-*��Ti�E�9�j���U����<�ҳ��5���*�\_�i���������;Ғ� �T�L�eM��T�����# < |<�,�>7�%�g�����j�CP K�*�560��Æ}�g&��A�`��'��cO�mO�DL�<a 1��U�P���]̠�STԾZ;�J�9!IP���Jz�b�ML�u��L:�S`�2���Jtt�!���N��H�::AlSG�������"�
�B�_��m��BE�d��]�Aa�|�n�;�p*�Ǜ��Q@HK��S��4�"�<1qE���~�}9+��uzXW�^N��b+�yby���=�T.���d�ֽ���8�a����%����%�����%r��ov����|������6�����D��@4���~Pw��w;��������L:�?�u�?��?���?���S���ggt���u٤�1���t������O�%�`b�r񗞛j*��=�2Ő�'|�Rǐ=U�> k�xCVs�����m�������=
�q4��s��vء�ά����6+qm]R���� ��%׺�A.�+���f��d�~�t���i{?R{aC���!�����ra�(./�o����?{l�&+wx���������a8��l�p�m�?��.Dwo(���a<ޘ�K���]o���|ã:V2G�0+�j�	r��=׋(����M��>iw�dղ��᥸�OFx��H6HR�p��l��`��Cq�@�����{��w��)�f�e�u�^�˿�-��0����I���?�
�{z�p�����¼��w`5�h"�0?����׬�鼘��q1"G�#���8��1���!tj����(��<���      A   �  x��Xi��Z������7sm���&�
���{�drؑMV�_����i�m��:u��z����M��\@�����M=t�np���ު�%՜���`��'�����#����A�άd��9�!0�������> ���I�&	��aH����������2Ӹ��z�y� �R��GV���ߤ����8? �I��Ƒ����O�m�а>)�1�r؛��}��ʍ1V�y4D���H5�����83����Ih;η�ۈZYG��2�8E��w��/�q��j�c�wz�`Xg5���r�An��J�����X�Pc3����m<t/�%��5\�D�'+��w�"�[Aӊ� ������}����� �Q��o����Y���.j�3U��5UrR�0����Hu�dKz�x��("G���6���4��I���. ��(�yF��u<dD����4�������m��v�$��ݷ�	�?�#���F>F2�i$,��|82�C��I��Vs%m��a@q^��lfU������N���a��	��y⾕� :ڿ,d�.E����_5��>7�J�Cg���X�U���B�4ųMݍ�5�M�VR�ˊ�W��b1�9��Nv��}��.Q�!a�9 @d�Vd!Z'�w�Ո#�����ҿz���t���	�C2>Q��m4)���-��g���k㩥���xJ���e$|b:��	��߻�f� C� ������Sc䇤��ǉ����U��3+�+T��{�E=ʺ�a���,�Sy��/���:=���ş�Mq}�!@a�^yV�{�b@������.�ၯ�}58F����(,��|][ ��G��2չ�´���-z����ٞ���63{��_-�2/(2�B`0ZZ��R+�@�-q$�E�?�����Z|P1�P������P�ʀ�G�퀋����)G��svʔ�����O�,��4�����F`9�� d������C|���5.� ������PV�i����a��A��͛�&��V5����kw���8[�*j����;�P�1��)���ġ�E�Ki'�@�����.�~��ܓX�5q�QTT"J�F��˩���~4�:ΞI�Y�4$�E�3f����C�a1��>C��@BbD
�Ԋ`@C��6T����Z��#�w�:Pt4��;0̛	�RP�
���_n�e�\��l�|�\��Q�uu�����-w��u�-0h����l3F�Dw�]ӭ��|Z���u�s�pdm�i�TQrQŧz����_�~���K`QW�:gZO�@t�D#��	ʴ	
�8��G)��4��ƊXd�����M�b��h�*eo��N.�rb'hE8ӴԒ�d���əC2�%�e>2�e_��!�J�?�N����V�>��,ɀr���,�?�Sf���Ou��X�qjZİ:V�l69�bx�"�y7�Œ�*���У�2����5V�f ��)Ǳ����F���?��;��b_��W�����$}�C��eo�.�N64s�f���&Se3����X�F�޻�S3�Ү���(H$d/{K+ MRX�B-o���W���בeQ��ЅyF_'�m�[��ꨜ+��W�vt����I�,?�F�E����roJ��db�M�$�Ӈ:��1�H�!`V��|���CL`��[��oB��:V��RK��X�<n�o��KpwԢ��#�ɍ������+�47��>CP��DX�ԁ��}���bx��Uh���}���ӈ0����z�N���y�4=Yf~2뀎�'-�ɨ��B k|<�Cb��̣���A��]�4��w�kw}�����K�[�����'<]�I-�N�Vyt|�s79���0�L�T��$�ez�m1�F����L�N�- �B�5OZ�%<$�J�c�k��~�*��	�����
�#g{��F/�d�_p{��'�ΰe*��q�Oӹ��/Q�}�a�D��<ݿƑa! +(���;��*8�t�{��R>糖�񖚣�KEʂb	J�ݎuo�D�sm{����q�-�������Y�=<J/@�w!^Gu��x�ޞ�K��.����O���#=T�����I���^���X����J�;hK1��gnp�H���g\��a�
�뎬��!��٩=����c��M-���y ��@7j�Zktr����#���5ǹ�P��=��,�ی�+	ˊ��/'�p�Y��� `r`�D'�����p�8�b����ݸ~��Iq�]O�j��F��2S��O5�e��ŗT�	as����a��C�o��7V >B|�����'����$���:��X��]�]����2�Ҳ:m���lu���[F���ͥ���>/���g����p��[���z:]�7|�&�CP�6�"�<q����yWl8~���x�$��T�b;���\e춧־Hj��n�X�����#Z��̀z�<�n5���:2�:�~t�(6-#����%��t����35]�-Ya�.N�;��a%�l�Nj&�m��Jk�����^*,{�t/�~n;%�nt1EX��9�ϛ&�4��g���'���˘����7P��ԗ\�In���3"�&�U�->��E#e��M�v4�6~q:�7�Q҃�D�9p�M�b�or;�ߗ���O��0\A��Oi��<�9v+��u���Ԋ����ɜnr
�Cf�G�Z�~�TfЎp�>��,�؀a=ƴ��2� &����.{���Mr�Df� �J	��7�F�Eۏ���vs��&��L)j��(
g�E��k���q��F�� �[�q�C9���3a�v��
��b��͓�c�.F>�����F�o���]3{��r/�M-�t3�5���Rb;&WTU�Oa(]U�vKm{]C����Z���kC���N�/1���$��v���*�	J����eK+X~V�F�a�����<9\��K��^ꃣ�,%���)�a����z0�۫��)0��7�{⵻��t���r����U�'�����ɽ�:�b�on�U�<��.`������Q����$�vcO�L�w��ģcʜ"�`ه��ξ`�O�?�@ ���q���)��$'� 7%���_�%��t؀8��-2�>ձ�F��NA��FV���C�Qo��L��E�>n����܅ �Z�PO�_n����캌Qq�QX-�Ym/`(��%�3kq�gYR��2=�6�����:�a| dl�1���C|��c"�[#Y�������o����      C   �   x��ˑEAB��T������ǀ�S�AL�-��AP<�G|('�����)���/Z�^��7��-k�+~�&�`�����'rX��+�Ս�6�V?L����<(�d<��@�\2�b%�����F+f�O��o�n�c�i��%�OL�/E�[a�?3�AO,      E      x������ � �      O   a   x�=�;
�0E���b��X+��`k�f��$��Elnq�v��+R�T��n�m�?Ph���}�J�@�";�R!�|�=�(����}����	��VM      I   Y   x�3��*���W020���f�F�i`��!�s~Af���B�c�?�2]�$T�%g@QijR"�g`�k`D`).sN�K c���� N��      Q   9   x��� !�7sv�؋��q��dd4DU0�aR3,��IWhz�<��5�����J:	A      f   �   x�%��1�ޞb�{I�uD�|LksG��#P(T��C�8�SG!C:� �d"����|d /YH��F�gi� �ӇdGɎ�ϛi�G��-[1��8*V�+�*ʌ�^��o��w%в��-ϲ��L�-ϖ��/�_|? ~�*�      M   E  x�}U�r�6}_�>��p1�&@vH �p��yQl��9Rl�L���N?!?�-���v2������^Z{{n��4q��ˊ�{��'�,�wxE�2a9r�7��ϲ�q(�Z�2������f�,f��n^��s�_�������@�i����D/;��}<o������(��)N	(�K:�q�g)���8�86���U��$�QR��(��R����8`.��=W,/rLS��h��QfQ?��I���hk�Y��<�HI1IqD�0�(\�q�L�g����8�����x�% W]�"�A���롛����7����m�,Mb\�\Y�ZVS���Y�x�t}ݞd��ƿ����<f�#'�¤݃�;��I=M�9�pY�E�ӧ.�k����k��o�R���	�6� �
=׏~�"\�������O�����Q9|+]��,�H0�����}�qqnp�5;�\�ۚF-[s�%�����䆍�ۋ~���䱕���w���fF��2��`^�c���$)�R����4/|����x��}�џ�^�r}�!*;���+N��֧�2B��|���b��gv��&�4'5	�US��5'}��|�7�2q��h����]��(�f9stܯ���4ц��ʫξ�әi�t6��ByAW׎��ǔ�H<�Ti��;���6,���K�@[ٶ�=�1�Ú�2��blH��)�����<�y� �фu�}�mx�(zS�Glz-���c�o>)��4�!hZ_���UQ��f�X#�Ө�<�?� �`�ʤKp#*a��K�k���j2\0�+M����(���
s���n�]�!̓�{���03O��EX05��m��?�k>
?lL�rB/#07�9R��ؐw��0�����n&�Uz�Z�#0u�=��I(�v'[�|�.αmZ��!�� �]�<��*�����k{B�OuBs������u68�4��~W�vW���Y�[�mΥ������+�Z��`N-�������n�5`��YSư#�|�÷����]�������;x��������+�0����v      K   �  x���]��0��ͯ��b����8�](,���&c�!��L�t}_�N���S/��99�{�eBIU�~�؇!y�l~:M�mJ>��͔LH�ER Z$e�~�>���{�{w@�k~3����^�m%�dr�2pe���ؽ����F�
��Q��6!���d���T!Z�ݔ.z�.�z�4RS"F��߹����B����H�ϓ��'��q��G�I.�j�J2�x"�ۈ��9�l��B4nw皷��U�!��,R�`��kl��Λ�B�+E�M?��
��q4���K���.`��!tN�n8�Ҷ�A��":�M_t�	��J�7ҖJ�j��,��lT=���󿰆+ٖF͓��0	�h�~V���p���Xt׹���v��\�����V��
Q󦪪uDAo���.S�#֧�����e����'[42�A�<T�F5B��c�e�]E����MJ�㶩_᯵�B)U@ܒj�����3B�7�!]      W   ^   x�355�tpr�r�45103�24�0����qTp��Ʌx��%-LL9B]�B�<�C�B��f�>�N@G��!g���Lw� @"      U      x�35103��L/M�:��Ӑ+F��� @4u      S   	  x�-�=n�0�g�:@QD���	� 	�$c�\��J���&c�N=�/V����=>>��.:�6���X�Q.d9��u*�	��T1N�$�AY�
�C����/�(9g}ʷKX��:�?Q�`á�H�5l�*_��H�R���񃏎��'����[�)�|J��Q��ѥ�	�z'jS�,2x�ʑ��;q��у�2���W���aU�V�c��ь��l4��?�§���IY�[�öHm���48K%]���� �^j�      d   m  x��Z�n�6>�O!�He�?ٛ���{H�^�E�P��,-
$�n�ȋ��g�#��Jɒ-�R$R
���@H���o4��sB Dܼy�7�1��#v��=,��4����|���0V_�Xȿ�V��f�	�>�k@8�0�$^�AJH9>%�o�	9`��YO��OK`Q|��������L-�D�H>3��.��7���fB�8Z���b��# ��d��w��w�$t�bL����5��|B7�l��7c=��ߩ�1�f�LL����%-<�/��r[����\�Z����M��� ��ܾ$#�ɐ���BL�5� F�@mn�APN/�d0�GH��$x�s8���	����ZQ����p��]�$1��h��0�N���楎݋�s:�q�t�-r�|+��5�eH�^n�n��G�rN#�t�1zn-���܋����"�t�*�c,��ث�q��L�jіdptBm��*�O�K�N�u���ӡT��ءNΐj��
�$���+h����X���EĐ:�IwȤ��v2\��u��CG�]��ꮺ(�g�S��ls�$1�'M���jH����������-bT�u��"�p�+bP(ϧG�7�bׯ��ss�r��ރ���|���q�H��#�t;g��w�^�v�;��F��%4��)e������`���(�N3�<& ~G���Da����P�iIL-Z����[�'b	 %�i*��9�2�������گ�K�2.�=��0����P�!��+F��;�r�������fP�O{�Jd��	%B��E���%��j����ʗr5�-�&�/e�Ue?P.�������i�g�ʾw5D��Qe�_��~0��{�}���A������gp�
����i��M]@U|_��L���#2�.���h�.��T��hz�~���ј휘�Z7�ޤv����;E�4.$���ڕ�
�Q�.�$I��x/�������K��Z�hR��ک�����i�����i����nH���v�J�Mj�n�.����s�j{�U��Q�i��m�ȯ��ԣ��>�����)��{���ߪ5���c�P��>������!W$�{%]��vq:���M�ʞ�f����      G      x��][oc��~V���~J���w���Vz=p���䂆Z:ݣD��v0�?-��`��mIIG���HV������xHV��X,B�3pgL��(�u��
Q:P܊�`��;��h�4�O:��������j��[����SGw�OTDɤS<iϩ����{@x�mT��s����l��e�����x;��~S=�Gc�a4�2��������=ϫ��?-�"Ҿ�.Ï1�����m5���������oR�#W8��+XWAi�5��a�e4<苖�U+U0����.-��@r9y�&�
m�'H��9�����=>?�����!L
]�Jn�M�sWM`Vm��9��h&U��޸F�I�8{����p q\��\	
'������Q���5!����tL8����C��AJ&�c�?{����Y5�n�9~�T��8�W(���	C�H1DT)�B�/	���2��䂃p�b?`3��:����u���0���Xg���Ѡu:�
ǣT\�Q��O��F[:�{a$L����P��e���		���V.o�Yɘ6�K���n����&Żq2h\��Y�DA��y$���Ǜ�C�"��3��lSQ�D�8��j>j)��_Bɭ�����K�g����kk��B�*p(A	�Y5l�/��Ԑ>}$9��&��kkݑҖ��1\�u�kr��K��丐���qn>�����������&��:EҤ~�Վ�%�m��yw׻�������X&���2�>�.���?_�?_\~�t�����FL�c��Y�嵐`����ߟ��{�]������{�����+��b�Hp�u�q�~���l��w�#e��6`X����tV��o�J&9*Z@A��p��7�L�"���0}y�~�Z͟"�XI&7X��]�,���!��'�Z:\c]�Ki��h(|�M_F�������y2�Ԥy�FD�"�.��XaTW�vBS�� �⸻ja�
�@5�����_��`^/�.�RZ� ������*����B�}X��h̗��n����]�/z�h�6�0qpڰ���[H����*��~Ђ[��-����R��^���-�wdl�;粅�Ђ/ze|��r)7�F�/����U�Ԇҹ`T;���e��4�E~�2jaa�bÄ;��=��Y}��9w4����s�6L�sN�-:���?^�J��
49�7l��ú�^=VO2�������n��y�ܟ���M���<��o���9@v*R(��S?nˬ��?��obR�?M��3�`�����ҟ�G�'�"�e�+��ۅ�*�vh����=?{�hE$r"Tm`�P:s��d�-Vr��z�7A0J��	\̸J��JS�����~�P���v���o��p�5"�N��;�5��5mz�4�L�6���$�hi#�ЂY?�8���'t�'�=�p��sQj%dp�5��K5�ޟ��Cp�����M'�j�Z�Z��� u��Km;�q��y�Kkhȡ%+Q��*�����hm�y�xə2Ƌ*���j2z�ڮ-RhI�����n�/���Gp*f��+����8�)bn��T$Yg�+a���h>A��/���P"8�L�+���ߨ۳j8m��$�8]
'������t2�NZ��L"�bSR鸶���DRӎ�Zk^$���K[`�	$���܂�A�*�/��ɠj����h���=0tƃ���xL�����@z{���	���`�m2��pVj�	�އ9��J�	%��bBƘ�C�j6�OZI&��6����B���FF�8GGA@pLE`ٙ>֙<:�9Z�A��?��A5n="�<:r�,�,xxhU�������Mk��I���b	�j:����>�f���M�Rү�Ѡ�ؚc��T������?+��gd|?�)���=��x��`}cSyEJ���2F�W����z�Ίj\(��}^2�Tt�%@��iDpuc�O�_�///�U1��D8R�Q��3hE6Y�F���l�F�i�]�e�\#nYL
�8�0����MCȻɺ�;G+DZ ->��}7��~S\�ܞ������л�|�?�?�5^͊w�Y5�у���p1���"4��-
è���v�O7����7wH�ø�������AH�L�'���\�X7����[�pM�O7�{=��YY|���?��y���۔�zSR�!�<����w{qNa��s���=��������x��؎yM�pN��r���Ճ����s�1��7���-�gFD�J ���b�W�C�UЙb�㧅��3�"P]`���*Ľ[�ˣʥ~t"�  +��!��b�o �9��-I1\x��l�bk� �)��ζm �	��;��h7 ��#��	PHP"*�6#Ӏos|
�*�q�ym`p9��/`:n��VeN ���Q��J
�m��W��VX���u�)����ejR)o�㰚f��'$����fj�Ji��9��)���_)���)���m���IQ��r\P8B	�$$�Ѹ���h�������C�W�@��z�h�VlTj����l����
a/��9Aqy~������Q*���\��n�-���h>�9�H�5G���?IZ�����Nq���+q�F����N������!���\p�C��(�5�CC�9
�(��q=G���ķ%ji̀}x�P�\cUM��L�qX�c�����i��nX�l�^.��&�w����.�{h�]t���pE���[�}R��Y�&�S�U��o������Y�Y-�ڤ���S���e���F{-L�M0p6�ɵ�H0ڮ"�B�=�J��\��)��&�� �c�Kf5˾|q�
�F�qs-\p�����{��& �Z���O���-��:�)N�O/N/O�N�OoNoO�N
/�i�O+��R+N+��R+Tm��bM�S:����L��*����j�T������+�?���;��;r�di��!j����b'���L�>w\Ǽ�S4,}y��l�L;B��R;�Pњ�eȷ6k���s:�3F:s�+�m<�LB))�S^�p%�QD]1�柣M��W2����DE����~&3]�V(�w��+���ok�Ph�i$NE��5�z;��V�9��:�>�f\,_�s���Y4+��1Ј��e4��B��<����N��Ze �s4e���ɤ��#�*a̦��er1-����Q$%�.8���ٴ��i����f��hZN��թ=]WL���u��v@�Z�qn�!�2"��Qk-Yiě�{�?W�Y�2\^�X K2K'���>�����"�ۧ|Z����ݞ�xmW��+:�,%W��H��������ǃ�L��B� ����dj�ָ��Q@i����D-/y,y(��*Wz��|�t����i����yyY&�<.m��J;{|��+55\%Jp`�8ցmdچ�����V�`=��ʁ���*,dF"�^ُ�ۏ�le�2G���JO ǮS��R}긼�����]Q����O/t�����sr)���.���<���%���mS��=�ڂC
.(�G���|:m�yݹ��nR���Z��r"4����s�y)�r1ޥ:�ߌ��%�>e�eD���;/����< ��B5d�ND��ޘ�����,o�Sh��2!���TtQs�K{p��UJ�FA w���:�f*��9�B���9>�u^^p+������r)��,M!��׳�Q9�FTO�,� _�A�hW6���8��/H��}��xG$���t	�]�y���G�������/өR��u�B�����i��ԩ�r�� �[���r6̮�K#�c�R3�Zl��=���Ut�O)_U�N�x�A/��W�ޫTK�K��"��no ��t~w�뽓0k{�N�2�
��
���^V����HЩJ&3O����K*�6�Z%`SrGr�e�T�a3��1�r��eR�%}�&�X��&��$U=RQT�1n�:�$-�A$�2��lJ���tG1�����WqFO?�I5����pG!��Ѱ*���w�2�TƑ��S N�_H �  �#�����;
4H#�)��5g�9�O�o.�]�R�L~�D�����8���F/d�\�ȡ����L�I��R�r �r(E�cF��G�l�/~��6��=�P٬s�\W1��Q���rȼ������;npg���w�,b,�`�c�'-g�f����҅Jk�t�9����~�p]�G�Ӣ�����qG��K�e���PT����������Kg)K�#�O%��Cp�9�s�q�2z��Q��^��h�R�l�/��n0i!��N�b�Uw����+�K� ��h�]�]*{��,���'<��IUD�#�U�r( �c�ǫ���C�yr�b$|X�X�L�"��o�1*���r�s�e�I��Q�8�-V?p+��rV��3^
gQ�1O��Jp2�J16�<h�e4*����I�+L��	ɷ�B$�0�ј��Wp�6^'y��ڜW����
l��3|��������M		g,'A]D>m(��z[oF95U�4ja�j^dL<g�{����1�2�L[H�e� p��a�-12M���B/�d:f=���]��ʊ��kX�k�E����A�b�g$�.����3<A��d��P��)H����oy���N�� ��d����<4�C*�ʗ�Ұ�5z�S�V��a��F�DG�P;#䰮
��Y�䯻��>�T�2�~��_@�����R����+G���8ȴ�~g2ڲPDm��Yc��U��ب�N�Une`�:lf�Mj,:eQ�H�pc��ugp��'����ȟn1�V�m��;4��M�|�`������UU2��U�ݑ�Ƒ�mV#�YN$\����Gh9n�
���S*�s|#`?����b�ڷ��I�l"��Y{]�Ώ�8OU���s.����^��.�(U5�TW(:�/-7��}��G.Z�1��k
�L����~m�Z��q����..�<]w۔eK.�ʐ!)�V����}�Q�a�[�Մ��$iȕa��YVb�D{b�(�s�v����&��E�L��p�^�S���e���ܔFJt��O4��i.x�)�������?Z����	��w���[׿[��R��������EP?[��T��p&� ����B��
�-ʩ�ՇW`����T��X�9�ై.�������Zmy��$REAQbڣ5��{VLl��P^UzR�6a��Y���s��*�i�`�>�������w����G�T��s'KG%�wZb�	������*��b�_~��{��~ȼ^՛��>�+[����*gG۞in��ȶ\����:g��?�1�ys�>~�Vn�s�e ��)e�z�[�`�>p�@������d��Z�pإK:K�:�c2I��������M�k�*���T�h�~~PO�P����&�kOK;4Y)m�*-
wK:~aM׭�uL�E�$�H����R��&�-j$����\��KwX�=W�N��-�`�����Ta���~�Z,�&�TP�����;PS�Z���u�T��2Ē�p�
�=\�����A�'$�{�2�!Ǧs�O�V�I�B�Mɔ;l��HD	=�ay��p�(�-g4� M���B��W�����]\��L|��0�`���������u�H�k�O�30�G�������������wջ�|s{~�ܤ��G�PŲ�����\ۄ��]�װUBm�*�$�z]2M�k��W!?蕮<p�R"N��h�6ˮ�3)�T�U��#�y��8�^��W�YK�U_�!ͲqVW5���k[�ߪ���Q�D�Kj���=��g3;-=�&��t
'���������|��$7&��h]k_�A��	flNI�O��������%*�Ri���rlS�=m��fe%Ւ�_�6�{E5��z���D-i1 K �6� �^��Py�

����;_-G��`��/)!ܸx3m�"��.8GW[���Dh�5�k�c�@O.d	��X��˞�Z�`�0�͹]����O����_��u�$��%m�E�^�||w��Ի���>�kTp='�y-�0���8Z��&�akͥ���])�cfؑU���V
%r��*U�j#�\^Kv���LD��{��\M�8����	�'��*h��:�ߝ�Z8H���w/gVOgocY�(�T��&h`浦.�Iz����誼G*�t��J���=�g�+g#8�WI�}M�����X�ݔ��Ư�Z.� J�h��c�`k�I��|.*G�Z���}�5٤���'%�W�-������e����J-�j:b�]�1�|� ��N\"������[�B#�L��[�J�Ay�ʉ�-5����:Ѣ�N[i�ܠ6n�W�%��+F�����~B0�@A��XTu9Ţ�KZ*z����<�<�"�r`nK!5EW���۹�.v�rP���n�Н$}_�N��S�Ψ�Ȉ<7h�ۗ��X�Qc/\
�3��D�ݵ�/��q:{Z=	�%r��CQ �O#�?��A���A9*�~��{p����s-b���"�s(zLѺ��p)�$��	�W��,���C%��id�g��I&��ʶ�z������*(�XJe83��<�Ua�^7���� O�5$�h�x,�PE�S!�x�.U��G�����Q^>=i�J&B+G;x��]�HY��~�DZ�p��v	�`�R9�x��Q�3�nB�쨠���`_ 8D�!&p�W6��1��69�3{�Z�g�-�)D�֛:�&�֟GY�2O\�Vvb�)������vY2����p�R9�E�,Y�;��N)�3�@�c����k�2y�P���}�Ŀ�n�4g�ה��@9+\��-�����Hn	����و�vqhZKæ��_�T��
_�Zżi�RC������5:���V���kM_cAk��4ӹ����½����A6t�@� �Ox���p����S�Yd�BN~��G��ЇG� ����"��o�ңqι�[\ѱ�W���kƤ'/���t^|�F��"�NH��1�;?�f�OB]��&A������Մ��U��� c�0�?��b'�{��V����Og��?O��\.p�)�s!�����N����x��ֱp���d��(���^)yՒ
5^~����4,.������ڙa˩�yl&�f;�b	kGoFM_F������8"3�y�L��	$��Vqڄ̑��ԭ�Q[�>F�|M*��	��ƺ�_���at
�]�$6���v�����LR�YiÓ�h�->���x~U؆^�!�	=�J��X_�	�[�ekP>��H�QD�p����i3�*Q8�)��0�Ѣ]�� ���Ç*�O�XK|�*��F�����X;�0/��g��Ch���Ztp���A������������_�ST4�d�0��������Ʀ����������nn3�J�p�@�Ljr��![��g�й8�\�L���翿?�V���
���i%і�1��Sq~�C��G��d�N&����D����^^]�p�n���������7ŧ�ߡ���euR�l�p��1��W�%t9! eA�2�A���ݖq���b����Yƣ7��"�gE��L���`��bQAϪ�|���>5.T��<�T�&\���ͻ�-~q�xw~ww�nX�u� o��+h��%�<�2g�w!q�c9x�I9c���5��������Ǜ��'��w��QY�\�{ޱ��?V�ԔGRc��mZ��7b���)�Fz����bJ;��<��w��z��7�Abڍ�͙��dP:�̴��\BI����n!$܁YJ�~�����3�M��,g�a�CB�a4��B�'8n�(���+����[g�C?�Ż��x��yN�x��a�8�p��Ǘ�(�a�J����զ�Ǘ �Fx%��O�ρ��){���o�E�T� X*(o��f�<��vA��R��-Ț��6ߑ��5���E^ڀ7�D�1��5hU��9gd����N]h3u�}���Q΋KU��]|�6#���.U�g:ZV����q�RP�W�R���V*�t�CQ�I��|:M���͛7��#0      9     x�e�A�� E��0�B�N{��8��#�T����$�l��-�c�o�=&lp�����֜<J���0�b2�H[�lp���ئ���\>dh4W�~�̱���TD�d���n������f��c?e���9���c	)�(�9�uA뎸b�l��JsN,`��7M�X�b�$���]�<��A�$I����x�趡߃'M��A=p'�Ǟ���W��Da�Xή�����s�p?b���hhXGw>�((?_ �����      7     x��W��8��<�O��m�?�,'Y^�AN�pI-om�E� �Fhg��]]�6��7������Zv!��R�U�7(���K�-B!�Pz�Fh#��7�֟~FHaD�܄ù�|� ���5B��͑�l�-��w���Ƈ�a��ham䠑C���a�W���S��ߟ�j��rY"J-���Y��>��_¹\�R��"��C�l��l�U�Œ"ޟ�_��#��*H%SUv���[�?�s��Y�瓴v�������گˣ$�H b`�)C�>
_q_�z}���$0�h���[��&�}T��BG�d��yT��������˶mZ.�.�L]��ErȁήJ��ڨ$1��Ƚ(��ю�}��T TǶ�]?��m�[4�oWV��׶�s���<�0Wb6�p9Du?	+!�j@�W:��B?�u2�/$���qX/��9��R���z�0�N �^6{��4���`����P\?T+�, �Ϳe����I�B�D�?�u�ӎ<����	���n�zri� *��Z��G��_sF������ٱ��J=�d&x��Q�@e���N�/�7f�(�������Y����RL��w�o���`�Ky�}�����&'aӕ����솔�iV7���1�0�i9@^<�N'�Ic�j χ���s�)kr�H�V|S�ۢ,���,r>�������cË��|]u}��,@�t�ng��b��OB�<JiW��jC)��2ʹ����X���ږ��Hc�BD	��]���-��J��A�:�)�W�2���u�D�����qX���-bA�@��p�'�7��k��uӕ��VP��f'PHe�9��]�|����&����/V��}�Ӽ{ޱ�a��0� a���;hdz���)y�Nꐂ��LaƁҺdIn4��+?Ð49��lL�y��u�%C�;���/�y�R�T��q�`ZX�_C���	W7��
�B�_�����M=t�����"=�O,mQ�<4�._�n.��Ә{��O�Sh��:J�FjѰ|6\�������;~�Q�.-]����7�{�U8�$���&+uf.�����x�.?h�;�>��z��-O�\!i'$>6
-r&Y۴�r�1f�R|�a6M��Px���ژ�d�-��
���^�KO���Hp��tAܸ�6"��a��~�vB��o��
���3S�麳Nq�$���{ϵi�o[�#��ي�R��%�ZO2�]�xQ���_��p�D4 ��)@�k��'��A	�����y��1G�߻������"�      `      x��}Ks�F��Z�+��aF=�"�mJ�R����݀xPx���vOw�c-G߂a�%�"x��s2�A�4�܄����h�*�Bf��P�٬�Ց6q���ivW'��c��������pN	���ɣ:��̓/�9��S!�������z<���%;fO�S6e�G�8��)�Bd��i�3ϟd�y�:��p��r�K�����������.X�s!����9uI_\�K��ߟ��u��}���i@��ȑ�d�0[=g�|,\������y'';\l���>͜�����S���AX������B�=���qT����� �����yѪdJV?\�f�R��K�K�&�����7lx/�ƽ}��2���s�+uί��\��v�����G������xR��{��e��B8
T��Si���߯��p:����������r�p*}?���pO��=����=̎�2G^���W8{'������j�ޘ��g�;�Wlh�����b3]���DS�S1�0��I����s����mf�~!��X����R�����(ˮ��2_��������ɕ�o�m��_�,�v[&�4v�h-�M�juc���d-Q�����*y���wu�'p�'❾L�����U.��/�%�����]��o�[���=���(!�PGi;�W[��k�GcH=���S�;~&���w���%����e���X��$Ma�����\�e<��7�6�6�����E������P��Yל�,f&i,����n>k�B(�X�og2N�fw#�u�4mТ%���6+�q�\rͳ�s�7�5w�t$�=O�ܓ6��������͝m�.]�4y
��ߧ�O��'�H���9���;��9���y�*�z@�(���p�"�;��`Gv���k,̾���0^����q>�̺����>������=�X�,��!ؤ�fK���Uz�'�������>E܈+s�w�X�9�0�	`E��q�������.��)���G���T�
Lv�Y�4��T�f;�y0ϨXQȱ!��p���ΓN^��_�q��΅0�C�{ L�;�;<��٫K����BG����Cw�?��=0ۏ@�Mϥ�'��LX���*B���7t�Wf��=���4L�������6�cȽd�.|�S9N�h
�o.�]��_�yO�=�;�0j��%����&�� f�Id,mM������� �E��dƖ*�Tҹ-��#��1XC�5��J{\ov���� �c#�&��I#�@�F�^�x�=�sd��1Z��;�}����δL����c��ai�!+��%VK��F�A�%�F�7�Lmwĸ�lg� �F�3������	��/ۨ%~dH��~,n�m�Y�`v�,`);,�I6��)aE3%�`%�ژu%�l
��o�m����=2��v��o��2�9A�H5�Y�!h��g4�~Lo�}���r��� vx�w�C�`6$L�x��K+��,I�;����;��A�]��W��&p���d�^���+g�[�xJ��b7��K!O ��x	\�3|�9�'���Y_��ωw�g�l����S���j�`G��ٝ�J�[�4/������{Q/�e�����1�%�������Ղ
�B���쓱�Ӕ�����������1�(ߺ�&�1�e�bvf�*N����Ř�v߰#�@񰹃D��V����/q#�7F�Yj.�\ഔ7�c��A�e��-W\��o�e��J���zlI8gI֚����3����>�p�����B3�&�P��s��tg�������_&� '8�3|�ݭ;������&p]X3�4q>�|w<<��z!�z/��7b�um��g����������=�5X=��޿~�A�:�Q|��2�\cG�:Y(�KQ�q0��ǥ1f?^xy�[xg�g2-����s�/ē	h��z'����$�?к�AwB��~�عg������/�'N������i=�P�`s���9������E�����Z ��A1#[����.�ƥ�.aG��Y�81������ݿk���C�Vܗ�/�B�x�q��>+��2/Y�ė4��MVl�j����`BM����/�Zj�;��oԲ��Y�y�|�G��e���N�֭�h�M���w����\,����L����Ǿ�����+<�"�9�����������j�J��r�M>�����?a0?yIf[wq�O�����IO����^l�d�������1響)
c�@E��4�}\G�C~iZ��E=UE0cr+��l#w`w֎Ʈecԫ����%VY3��5DEqd��9�g�͆�/��N�ߤs�߻�xz�. �9��õ������|֓�҃���wv2���u7��������'�;qdX�_+7�K� zGŎ[�+6��ӡ��Y#�x^�w"���/����=Q���\��6��ҷ�Ū#s�H�SR�k�H�<BCT�݆��9�o�c{́�����s~[	��`�~�t�x�,�� �9�B�9�:�0Ճw�> �ɤ�0�rj���đ����x�a�8��rέ��푐e��%��'��¼1����r!w�3ܧ�?���_Oo�>�!�B���P!�m�=s��G��}k�3Z=ԑ�)��@����$ĜU�7^g����1z�@=	�����e��E�ϚAt�M����.q�3N����ҏq�ށ-��9�"|ܿ��O!ǂ_>@�z-����R���	\��c�?%Ϯp�!�A��m}�����W�1}/l�W���>? _N��΂T�c�6�Ҵ��2	�Y����ئM�L2.LD�r+�P
 ��;��\�Fr�I�ˢ���./�y�pڵ�ry|s�-�M�V;.�6��T۫��b�Ĩ�{V.sܐ�,�����fv?�'�jl];���qQw}��[+˒Gj���O՝� HM��A�@�|����+�PM�;�h�	��,�}vz��xz�@^���̖z�=��h[T��?y����Y�<@ƾNAas�3�V
H����2�1�.	��9)�*�c��᝷փu�]_P8��˼�j�B�'�6Z���Yy�(��>������eu�@���=} Y�*�=|/A�*��z�B��믩BO��% ɶxW�A=����,�hJ�+^Um�5d���>�4�c�񫬈���!��Ojvi���M�.#.��V��V
��T+�\�>;>W��D��(¦�-oY!k|箮�zZ�q�	��3�-�7� �9U�@��.� 3P�3�|�3�>�5�A����8�{
2��/���~�ߑ/�YA~ʜ��NO�ѝ���\Qg�D���؜�Ȓ�R�4�������%/ a~K��|�{�8`�-f@~ �� w�!���=�	x@��y(�$\S��_�G=����Z��@��v.������	5�6FX�;n��Lle�"�����UF��<�g4Յ�fiLK�
-W_t>U@����o�����M��u��mف�� �-v�3�(�fg}���Ʒ���d���j$AVx����>�p�+
�M�?j������;ۍ��L��̖���y��4/�].b��o�m�w��Y����gĻ�6�T*�L�{��pU�p1 ����"ͷ�{�2����8��ޛ�k�]� ����ȳ�c
�;�,��i��#]	1g�������	̖#�S��1�:=��,A�;�,ă`F��H�E��6�۠h�㺺��]2�q��k���X�I,�����b<�>��6+CʍP޲�O�q�=:��"�B�aE՘���s��-3*+�����;n�3�C��5>�s�!��r<����"
��e����ArW� \]�>Cj=
��j�H���tQ�a��z��H�g��G�t=ۃ��L�����@���&Z�	������7A�-oG���}�i������"�*.�_�!	kk	�u+@};�5v�쐉0�z�&�>�sK�Ԭj�hM�����t�wǓ&����g����V s Z 6   I��ۑ��Q.$�/���Q2��
\U_�V�O� �,$��;�#�d�|������7�D��S�����@J���$ͪQ�ɺ&~�71����E�ۈ;�;��
c�ɥ��Ҫ�%Ņ�mˢvi�`���)��@}=9kA����e�9�u1��1Ǹ����CU_��fg�7�~��WĴ�1�+�����n�y��ȍ�~��:�I�Gm�ɛ��&� ;�7X��_=�5E�īl㲉������mj��y�4���^��A�Q�0�빞 r+��3��k���O�Ζ.v�`[�Y�-d���Ϲ��� >|�zg�����9��� E;��Q.�/q0\Z�̫0�LUE�(�iЍ�����hх �A�Z�mb6����U�!��h�Y�B;�4�;��_�;����Jx��z�E��~A,9�,��m�|F7�>�(��gOϩ-t�B���Kqg��U_�^&�g�_�����OПeA�(�;jB���ny�H+1��L%��43U���$��5�~���q(Y�u�(�Q	s�YU�O�jւL��A�[���hYݜ��\�٥o���f�W~��e���8�'���g��g▹��Ti�!!b�F������7QY#��X�rņ���j��Q��ƍ���RK%r!�1�R71Y�ːfF�t�UW\g��v�GP\ۑT��Je٦�Y�$UUK%-Ү�m��W��c)X��b�w�b�ل�Y;Y�*G� HUє��u�u���\����	�����k�E
$s�9�7ȭ�#��)u��?�Y�ec�c���z�pzL����*��vptֵ!��w]"%��`g?�Q�g+��1F�͊��nA"Z�N���L\����T�Q]�[�����Vr7Lú%k�r2�|6ZӒF�����8Iۆ����Է<���!;F�I����.A;�`1&le�g�؇]�ˬY��V����C�1,�m�n]X�aF�t���������/w������/߆&�Ύ`�3���Ex K{.t+�!�� 6~���g�ۧ�����I݈^1x|��t���3���	x sO����OvG���Jsg0A���yB�j1:��]0f�Yc�cx	N�-��Z��0K��
��_׷�&[�:[:�@H�/9[.��Աa��+��g���u�Nlͥ�m��'�J;�e������/<S�g�q�P�����G�nJ�>��x�)�����?�;�)CPD�}.��ڠ��� �\�бzxq_ ��9>�~�#vz������Qn"��>���M1!�Ga�ͼ.�heՀY��7]��
CsrݒJA�m>K�!,�"[s%23K���ϒU���M�ݦ+��#���1h�A%V����q ��3�KNl�����s��gq�r�>�1M�h��!����k|��	�L?Z}�?��Ȁ��{�#�y�'��]��gyf|�5[�r�׺F��/�d�� �Æi^5��(�Ѭ24Vqa�TG(��}�9
��y��<ЅZ��u�:�z�Љ/XkO[]�_>p�~F�s�_&W�wr����r���U���9��U�dN�B����S��g���Y��H�}%�S��jM�E��d��7�q�oymcP�N/��\A�Wi�nj��,�?W��hN+F���mvg�<�k�hG����H��A�N�v]¹�K�A�'1noC��{=m�;��3�댧�-�K��$l�H�:�*���Iu��i�Ex�dT�AAr �V7�ی�K_OIT�3cY��8�-��7�xgl+y��w��_�B'����p�R\�,��:�5<_��w��p���%��	l�3[?X������1�b����#�����3�(���s���;�T� ��3.��
؂��-�
�P�M����v��#&���H�+�������<��:Rt.n�x����K�F��h�Y��I�E%�((T˓�La�J�G�֟ez��;�|�.�Y�*���&Sy�2�_+I�>��2�[���ܧ�!�;snmܘ�d��6糲�&(Y�e�%U?�F��靭7�_��]
[8���`ۺ��ʄ82�]�O@��ٕ������A�RX�%��� v�����A�Va��>��;;`	hǿ�ú�nZ�^g�ר%SR\�H�4ϒ:7iL��(�n{e� �����
1'!�XYc��J��h2�K�P����k2�wT���q����Lb-*@q8-c1���8��1�1�n;�~��0kg�>LВK��yev�(I�5f�Ѳ6/7��A�	=����XIl�!� n�$�;T��S�/�pIo�m������&t+}F�2����VVX	���2�}>�����F��0r�\�5Zs�D�2��V%ZF�cU���w@�3[��sִ�Yn-����u+V�#wWW���S�WB[S��e������4U��Hws@0P�WB���#5�9�^�w +@΢�G�Lr]�J�/�a2#��lP�E�'i��Q�\ �P���/�^x<ِ�f�����f�} R0�O�����?��؁�w�z���˻��H��O��{{Уz�g+w<!�J���6P���v��	1ªR���R�Bಊ:cMb˘�8���P
�v�!��]`��U�e�i$Q:�~Zy)T���T��r�[��hӠ�ݱ�H*^(n6A`�m]��Qt�J�گ��+��z �	��hB��%wC,�_�j�e�U"k/�N� �� �궺s�5�M�}(��Փz�W�R�.��m�ïꃒ;��]��} 9q̖/�1�0��]�>�B�yI�E�J!{}Z����xG�E�c�"\Z�X�i��
���9TȊ/:����+X�'O��W1U�	'ݶ�(����{t)샲1����o�\�nG�=�cP�%�\����J���ك��H$��w� E��(�:e
l��0���&m+;�h��f�"��G1��>!W0����6/RVI��1�ל���W��"� �=���-xg̯G@�Zv� +\erU���̹��E|�qc��~�6�O9"|~�u+�*�&��]���_���3+Si�6j��i���A�q�\�R`�7�/dX�ڜ�*¥^X��qi���:\hj����12�����׆Ph�#� �%�@M9��M�r�N�j�QO�� �=�p���G�ƐZ!�{����e��촜�Rc����6�U���(Q��1f8��M̜��.��%�5&�-j�ׇ�M�Y�@�"(E-�a%F��C7d>�,�u��'WlF���
J�E��,��)�j�����ZS36ʤM�@�>!w � <B,ӓ���ol��2`�>��ČzД���h�h��3�׺��_4�\]>��@�V�Դ�>��C���<��?�����l��rn[N�7�Ш�K9��J�rDw[[M�W{�� _���X|�=�_�
s�z:�} +�<^mݝ9�;9���h���^3g�ų����� ��9W�1bM��e7�-E0�����a6�ԃt����DE^U��,�ϭ��(;b!~}�g Q[[#��h����[ۦ�2�����3"��q���㎕HI�a]�!*Pǜ��o���Ƭo��������#���V�ʹ��J��F�����c�
k�3������$����/g���F> ��G�8%���ַ��{f�>#ځO����𲸺X��,������L2��_��x�G��
XJ��ș)��,
�隱-�%P����yh&��"�OE���������hkQ���@�j^.%ú�Cm������H�H���Ôf��\�4#JN�X�0�q���6z�����Ҭ��������� bw�      Y      x������ � �      [      x������ � �      ]   �  x��T�r�8|������@�����y�w��d3��2�������`ϵj��7PAw����#���a���oD���<�1��R9�s�X��@2%k� !u�$�~�[o��~|{���~�[o��]?�����}�n�V3{�!�cx�	�ךy���8���l�����Y��~���'�~|S*6�+Ħ!)��S$�'���}Y׵��+�������;CG(�R3�������q�����h�L]?��T�B{MS3͕>%�2�!�<��J�!9&kf��8�wy���7�C������3OL)a�U(ZCZ�3��[�2�Y~��ti|H�8Ĩ5��vN�?sE|���N��Y5�y8������Lw���\/�q�e�0D��WY�uRE22L+��ՠ&f���6�{������K@q�\�8#+@�0�H�oyx\b���@�20�_���f����YW�ȥS>�a��'��Ҝ!.
����[��+$͑��v�Fbb��sn��m�Wm�/�ӧ\~�4I�;`��8ݲq4��a(T��@h@��)���m�e��3��X��ә(��>��?�<P1����� �f�ly&�Û��,��ayމ������K�K���N&g^JȱYX*�:%���S��8Sm��c�]��������v&�:9��-������nq����8�6�g�i����3|���*�����þ�+>�|��Â'�8Co��"xIY�|k�M��=�u����X      h   �   x��ɕ!�R0��;���cdNE��b�p:� 6(�}��j��5���R�>�V�Dk�פ�"U��A]L0ޟI���Ίt��bj��\����Y�a�L�f����|��w�F3��c�-��9;�̻I�zA���軈+sWk�@�}q��x��x7����/�6�m��xݒ�?����1�      _   Q  x�e�;�&7�����腐��9pЉ{��낺��d}��G���iC����R�����~�{{�x�Z@�ݞ&��M�T���z�l�v�*�V�va���d�R�f��[a���Q���V���hL7h'���Lq�!L�d
�%�a�<6������[����}����^Lt3��Ja
{���
�'EH�RYBVS��t�!+�)2������TXYR�N�aZB�@C�3޲����Mc������>���>�����?>*<�I�
_4�q��I7b!ȁ(��%�}Eኻ�Ԡ��G#�ѐ0"%'R����ф���dj��Cs�(<q4F���}((�&��q�cC��v�p���M!��;�M�Nb���E��z�S!��������2�N�Fx!'��]:+(BQ�+c�j���YT;�P���E�Z�š��<��l�I�����6W�V�N`�'2VM>ip��tnG�ԝ�����Z���\ؿJփx������f�O_J��[`I5Lpe,�;F!�фA�@!��#cz%l�AFE�pS#�]N��t��멁�xi�"����*b�������l��s���P����wUvG���}���s�{Oz�u��U�������Q�z���z�O�W�[_Bt�\�	�ϕ�}�ϕ���K�<�N�"�#I���~��z�$>�	��T��o,eF�t��������i[����ZɆ8�4�V��\>�#��Ka��9�(RRQ+]2��]ɢy�n�D
fa
P��|�_ab�l@y���"i�%5�~[����땸VdS�v�	Q�6'S�6��M#R�%=�yO�z�p��6�@E���9���@T�=]�ȉ�ghā��9O�ڏ0m^;��ؠD�]nk.p��T��Wf~|����N8��G�/K\Ȥ����X"�εd:�#ٳ}�N����W�3��{��,{\K����d��P�O�m4M�z�S��|�N�|�VN�r�\ϗOt)��M3�o�YX~��o>G&��wl��0舾�����6� ����}��.�&�ُZ�؎1�\kz��5�o��`ž�l��G�4[��J��c�������d�~d�h��g��������9�Gg�Sׯ�j���$��'�[$��Kl�	�j6;bX��j������<��Y?�e�Q��V�jB�j耲멶ٍ�7/?�Ug�6~o�վ���9�9��9��dg��ż��9�?q_)I�}�|�f��P~�Z��Vܱ��i����4u���7����ŉ�b[b�N�v��9�X�D[���Tl���-1hќ��':1۩�����*Z�=�Aon��ve�^t_�>��@ܾ&��9�%�7���~�����?����      l   ^  x�-�[n1���	�֣������	bLTRe{�G�~��sb깠?�����ѳ�z^\=��З�&���m���m���mb�v����@�WD���7d_M�}�P��F�We_5ʾ�(���ӾIL�fa�'ԏh�\��͍i�<���ƴo^L��ôoIfߒ̾%�}K���$�oIfߒ̾%�}K2��d��m�&�}����۾���)�c�ol�vc۷/�}�a�w�}�8��±�L��±�l�|��`�;�c߹8���c_�}M�}]h�z��녶�7ھ>�L�Fž�h�����׾K\�n��w'�}w��w7�}���w7����>\�����ϾWx���g�[x���g�;x��Ƴ�]�L����gt&zh�Gfzh�G�zh�G�zh�G&{h�Gf{h�G�{h�G�{h�G&|h�G^��[�IË�m�W��/Ϸ=^�o�@٠�ܖf��eД>���ڣ�I]m�O�j�tS�䓺�'���+'u�S>����I]�O�j�|R��s�!�LC̙��31gӯ�4Ĝi�9�s�!�LC̕��+1Wb�4�\i���X~��!�JC̕��+1wb�4��i���s�!�NC̝��+.1wb�4�<i�y��!�IC̓��'1Ob�4�_�i�y�������������������h���h����!�MC̛��71ob�4ļi�y��!�K��ZHC̗��/1_b�4�|i����!�KC\#q7�5*']?c�h��t���6o���y�s�E4nN����I���`�b����������������������ʞ�+{n�칹�畋4_��sse�͕=7W��\�sse�͕=7W��\�sse�͕=�������w<k      j   �  x�mR9��@��WLh�K.��_��w�Il$u�I �T�UI�ܔ��2R5IS�_��$�zEǡ[F1��(�U
h�b��ǳb���-J�ƍ��>д%�򐉵i�ңd��X�����l*@�O�a���R�^�dS��}c���+V�Q��ȣ�Y!CB�.���àa�⻑��)�Ma�24�����s�bB%��VE3n.3��uN.���:����}�d�5���*`����s����
���(n}Tɧ�	�y���T��t�B�ۼ�m�fC�BF$>=+<��a,1t�W ��\6�+fo�6�Z�y+��c��+���b_#+ܵ�q���秇�����{55��o���AұÁ9r�G� �d�������.;��o�HDÛ��&�,�y����鍛�ܙi�F��'m�>?��>ǫW%������X      b      x�|]Y�%�
�Κ�[+���?�wd#��WV]���]������m�����߾�;����Ͽ������{�ݏo:�=��{����������;��Z;7?�v����������#lp����o���7�`��:���9�n���[���;��x���a�_?�踀�!��p�sw ��#�C�hg�H:��8+$������$�n��!q�ދ�m�w�������_����J"�?��}��>�����%� �������~ ��M����DB7�:��j�V�	3��S��~J
 �� _>���;�Y����W�����{G`��w�xp{" [��<��,����^~����PX��,���t
�w�B?�����x�,�\�����D�����hO2����[S ����OTD�nR�Q�Uջ�R�e���9�Hۡ����Ȥ�8��)����\�:M�Su?"_�D�&D�A���P_ �܇��v	��^���R�:G�𼩜��d�l�5���x����~��������бݎMQ�|��9��q�/�m��\�'mӟt�����/6[�������AW#}|��6n2Na�V�����#�}���B������vb������jQ��n��R�'�O�gQ�?�u�;Y������ɵ9��u�q_��/�����?������Y���.h��{���Y��~¸���o��m?���<j����������M�M����o>�'g�}��?~��!��=�o��Ii��(��W��w,�O,�S2�'�iG3���w�ו���Ѡ���!�:��}Z�v����|[t\�S����@���_g����~����E��D	ؽ5ibM�GpN	��G��U���]��
���<������o�Đ��.�1-�y�E���B��|��MD�f$�<���i蜖�[�c���''�J�B���dK%ڥt쵖}�	��e.��u-~�4r��r{�܏ �!<���`�8:�V�����# �����tԳ8ƏtGG�~	�M,I`��)Z�������:r�$ڣc�������V��r����9]��ܩ��^W���麎����wA9�W��K��t��Lw�0���AE����v�{�及��S���5�� �	>5�2����Z��Υ�����BYn���u\�����$��r������	��;��__��T�ݱ�<! ���}�g���L�ԺR⣧S�y�R�o���r�� �C��q9N��>���7��+��R���*÷TU�z?���Rd<��OgM�ߤ��v-��0�_�b،��`O!��遽�iʳy
���=M��;�s�A���	^�����\v�����$Y�����E�����do� ?vr\�g��GT�#�����z���ᡅ����m\��\_��P��8�+�L~k���hz}�/x����8���|�EQ�ĭO��Gd����T��%�QKQ���EǙ�i0/(�h�-p2��	d��w���W�H���K�-M5��T|=�����$qO��0��n�=�팁���<�`(fQ�[Pԓ{D��9:��E�-������M��U������c����ج���2�th_��Jcq�@�#q#~i��>~��@���K���Ca�<;���g���|<������b����Qp��t�vɉ'e6�x�1ail� 6������= ��@ ?��r�M��VsY_���Ư��Ox��k >l��G��<���<��_`�HJ:ʑwi�.���KQ�QSY��$G�.^xE���.Aя�,<
>�}���[�u�,�O�	�5iϳ���z�ߍ$�����ݜ��[n  ���Ҫ�O��\|M�܃��믝�_���(�o���\J;�9�kNe7�?[p�$�n���g��<B��V�!�!O���.*����~s."x�Ex)��Y�x����W���c��5=�=��Nlt��ItL�>��w�E nQӱ��8 z���x�I`�r%���;2p�@��Vghd������r�����J-�s<��2�9{w���N�����ݿ��}ua�W._�c)n�-�|���ϩcTH�R%n���P*��{ܴwK���)��Ex�GX$)I����֥ݾ��͕��ܽ����hG����&)��>��Q�E�o�~^1��MR[�s�c5�k5 QWα��NO�t5���M0�S��JB�;3$2���T������  ;� I�r��Ӫ�J�m�u_��v��/M*����m k�'�>�����r\�"�H��p&���+Q�P��ʅe)lE?]�F:�7�6I�&���Ƀ#g7 Rٍ��KԢ�=%$�����M,m �t.�MEܽ�m&��^9�7��&��.�w삢�v-
����_��4�D�7h�Ƴǒ�u:9���΢��i)]�������9�$�,;���\��CQEy�)[ڮ�A���ty�a�E.���o�TN����\A]JR5��*�%? �?����hFPg��W�?&���z@��ҙǥu�v�L�#��I|�L���H_��Z��Oo���o
�(��?fNoa�#�z�z�m]���O�55W��T��U��y������ �W�b�z�u95sTO'��f�u{�J?m����5?�!0�T�jTՁ���\y���fWt�.�u�����6C�&�Np{�2�E&��,�wi����]�Ƌ����o��bԭ֏��ݏKKf]�������11���ҘS�L���5���/ڊ׭���SU���X���p�Y�F�; ���"(ڪ����(|D�i�~����!��kM���iܥ󙿢��3��Β����s������3��#��q�/�s����~u��n���} v���&����҃�LV�#��>�9?[��x����~�Y��AJo4wDErM�k ������,�]&�� Ɔ�f^��2�Sj;D��u� �,d� g�%�8i�T8���lU�#�=�tk�b�,����H��_tS��k��w^W#�>�3 ���y���r��FEBt���<�Y�2�=&δ�G`��B�*B��H���cڛ�'��Dߓ�'�
�P`&%�f�׆bi�2E�!9�W���Ѧ��@ER`��� ���a�	&1[�{I�o
T�X���81�CeK�D�X�L��/�Fne�X��� 2������u�ּ�J1I||3�����pޭP'$����Y���ǔ_y�0 ��(|��s �~U�d*mӄ����
O:�	J��VX�]i�B�d>Bm}�cHT���`4Z��H�~���|����o�U���G��$�0�"�`	���t��u,u�	k�q���>�1� �,	 C�MX�ھ���`���p>����;d͞]c�=[V��O��k;���7�5Y��o�`<}���d5�\L��`�<Q�#0V!����[~\�
~��ğ�gŬ�b<�����L���[v����AX�k2^Zh�"|;>��M����V����~����Λ���8�_����*�|�y�ُ?�
���[t@}2������4g��s��r��d݀vQ�b@���A�� Io�60���qxL:�~�m�U���V?�8�)*��8���1��X0� VR �`���.����#)L�LRG�͔-MY(�ʪj�`��#��C]LS�D����e���]�>)� ��@��#k�]�b�_v�ZLn�_G���bB廽��1����?&�=��T�[��4Ij��w6 �-��w�c~�L�k�/Ft��I�^�ј���d�u��#�n�g���Ř������ӱ�pZ��6��(|��#���Q�bK���cԨ�_��AԷ!V�C�u�&~ F�z:^~�霢:�?w�IQ޴I��_B�є�]H�Nj�� ���$�mUϋD���QR=�i�����5 �:Uo���{��@��f ��@�o�? x$��N�-�B��@����~��{�u��    ��t��;4�vKu�h.@#��KhF��"�0w'�$
�to�u�_��e��p�� �A�*���N$p��$����@A�Oj���⡐��$F��؅��Ж���6?[_����{p�o٠6M���;6e���s�W:.oZ����0���9Pu(��{vA���2	��Z�����]7P���w�oe�:r+D�j	���ښ�g$�Im�D�&(���D��}��70�x�I^! ޡ*��r�w͂c8�x�����3�O���$����@ǣ�-l��X'�8�_�ʵ����cfξ&�!!�KX�] s��=&	�gw��.�98�"�uH<!&=L��Av1�M���� �<f��ѽ}*)��A�k����H@q����Ab�� 맛�b�D9]C��_��x���>�m�%�C�x'�$$��7Ve����ȓ
`���x.0��	��OuBl���� �w�HJi�_;��MMF���߰���(��M�2yz`��J@�tg�K+ ��[��b@R�R�>+�Fg�]�W���	=!�@[��\ݟ��q��(������ѿ���}�y���? ��Y�{/��Q�ʎT^�k�I�g�-�������
�R��&�{LV�.��u�y�9�s���G[�cyT�3�G�=����<c��6��&^ ��qB^��m_�!M���Ƌ�@/�@��.W8��C|Zg~f�¯�Qi��oZ��}a��F˾y�y�}�@pҧ.��sĻt��y�fw��kk�ƃ�����޿gx����z�.WR���˝@��G���,�뎲@�5&<"�I����ᾉ�APl�ڿ����Y��@��5�w �|~7�����/����	
��+�����hC��b����AzoN�b26�U#���;,��=�K�������1��0ι�8�i�	�C�������.����,֯��E郆X�� ��6Pp�D܍�4��l���]�Yl����k�`t	*�w|z���z{��� I�A0�⨌G��xF�2�)�г �Ep_Q,�HX nLV�p�|�e��|^f�"�'ga�2V�Q|�Q ��m�C(�X_nNa�����sw1R�4@��O���|'?hY���C��_O���3�PPmy���y�ϬV�m_?��C�W�E��Efu�B�C��U��=w�@;�
~	��c����c�m��蚆fx�0V��O�0:.��@�v<���ĈAV�^P�%ѵ
�M ����!9/�V���@л��5xXN^v�i"]7��e�+eɟ��>B^���b6(O����N%�M��)�:=���S��4j}��x�⢂.lP�MM7<w���Z�S�o�F�>e��E�8H�%��@�s�*8 -,� �{�_�9��w@�@;.L�1Ky�0����)���y�2P~�3ce��)���dc������뢱�:�HY/�_uA�{��Ywm=��\uח����\�sF��aΧ���r��Y�hK$��^ �_� "" Iz{�	'�]H��A ��'M���[)@?��I��38�|L28���S@��̘_+�o ����_-B��'���1�	9�O^Z���u��/��:���K�e����U�?�Y��O�A
?-�*~h5���;�U�#�?}AgH8��b��Z��������ч~2��������r?4��]+��+^�c�����iu����u�1� ��s�kL���7��U�i���|b`��|b`�|C1- -+��Kt����3�!����_ˏ����_�(s�:�kq�U��?����I-0�����i�|�`�������?=Z_V�����P����,�>k����h̙�_����p d�����Z<
�'��mu"i�*"x�kmUE��i�:Q��Q�0Zy�#����<� Ю-��ֶ����P���J��6����pY!��iU�"����A�:�?]���&
����P�2K���za�1-�(����6j�Q�B�uҐo���$��������y�դ~�w.}�`�6?�1��쀴6���*H�hz��5����ӵ��\F�访7�1���W]���	7�!�c<F3�0z�{��E{�M�|��z���n7o�"����.һy��i���6��@�a�h�"hJ)9=�)t�,��+���K�2Nڸ߁��_XTNXW�D��OV�[8@�'MZ��?���{��W�C/�Dn�+�|�"��(��,:x��96C�=Ɣ���R i�^O�.	1#pX��3�u�Z���(�����t��6��iEY1P֙���☗���*D�s�ůJ!7$2^c� H@S�JZ3VԊt��U�
��ڒ]F�ؠ�/�R.��ݡVdC�^u�
�G�U*lP��Zf�;'�ҵUA�kU>4��� �ݭ�����;nRqތ�h��R�����	��U�=m�P�y�����R�W����|�#�:u9�N�9�s�0���	z���&���s���4q�S�;�6bh{�<UQ���%4�����
4e���]�|�����?������v�>%m�P=��S�7���(#�� AW=��u��LA�w b~]�^� 8 o@R]L;6���TUK�j,h�^OHk�zB^KW��v��or�9�v�8��I]���]�+�F���8itו�iOozO�@�x �����2�셜`�h�2	o[���i���/59��	��n�Th�O��w��������_xȍR�^�De8.E&yd>}��b��'��p�?���u��=ƣG��>|�m��u�����;e�'���>��{T��V����wI��~y��
�e�t����C~p�iXSCO�E9��ڍ�ҋ(��2l��54o��ˢGe>�S1P^�"�Cx��8ٟti�����v ���(��+\e\���#���)nq��d���w��8�b�b��8@}� �[��@PDne����A�����w�(�D�t������Ԥ���z����|�_ ӼpN�u��� �����x�_��WށG^� 1����r%���+���T��we?��_j���Jz9\����΀C^����-��P�Ot��X��5~�
�o�J<ȕ���ީ�n8ߚ�8�j�^��J���@"y�ì�G�䭏hf5����b&�_z��/z�N�39 Bl}7 �.G�}�(��/^S$����
���m �`�xS��o�! ϒζ�����^�
�(�\�@�S�z�y'�_��|�AAͨ��}��g.�t ��L,J�p�y� 4�"Z�X�O�b(���c[�{����߂Լ�K��ɵ�}8�A����T=u��+!�$bQ񇻸� �9HlA�$��u;ʩ��3�����+�E�
���� ?��q�/7��\ݟi!�M>x�o�����}�ϳ�s��W�ߺJ!�b�F'�_� �Oz�ֿi.\��G�૯4���� 2^7p��M��{����(c<]��9��k�r@ @���������Z����;(���������=��6��Hb>i��� ��dG!ـ�1N��0
�w�B4(���L��8(�{ �wrA�r ��Cᧅ0�?:>��5Ep���ɐ���@�.Qہ���Q�+1����ڷ�8��X���iy=�L ��3BAhN���^��۔��1�qz0�Ncz%�K�A�QDA� �w>�8�� $�3��!_{����c�t����@�F���LQL#v� ���k~%^
�4�U�%�Œj���c�<�n�$�ڣE�FV�[�� !E�>�Q�I��P6�/�I��' �����i�J��Y�2j�	���m�TGq��|��/�^?�rى6�G����r�e�1����z*V���Ӣg��&�Nx];܌���6�T��%��f3s<�e��k&���
B���rO�8��P�����s�7]Y��K�=����oT1�k��e.�����1<},^�@�}�گ� � `���)��    �<��&��<��PfQ���@�D� �C�"�F{���� Ԋ�r"oݸ8crW�\�7r�Ih����z��4r��Ti����D0��p��_z�5 ����q�>�~��>�{҃���v?`o �y�qZ��x���D
�P�G�_����6�%��L�D1��#9/ �����PV��8�[����+�N		���+� �>�Ф�.P_)��U%��O,;*Ҝ�ryz�q�P�|G��Y7Y_��|^#�����z z5��ӤHzg�q�|q�@0̟��h#�R�*R̯��2[�m�={�vR ��wQ$`�x���R@� �z`�?��G��i@�k�#,^w�3d��1�A�@h�n@j]�����ќ�k�GQ����PO!�m8a�._�������}�ͯ h�\����B��^I	c;�Z��7���#d�@���3��x6�=�6�y���3��DQ`�J<��#f?��� ���q�n�+��ud��/1�u2u���4�m���]�>^Y�>��<LP'�����xyn�	yU�|����D�~�@d*��|�n��i="�K��-Q0�����a���i@���s�٣�3hL[qՏ�M/�D���z�6���έQ�φq�=/�Л#��xG��1�K)��^J�١�&uak&=��؝�~އ�t����@�6���1(��>Bu�s��eQ��'{-��?���_�Kx�� �(���L����,����(��
p��GtQz0}\r�ٵ[�H=EΤ\}�������2. ��[C؍�"��ߜ��y�y�_� �}}�|��Xt}%��]��n�者�	̛ d>�~g���J ���q�7��8�E�X��f��y���
2�k�B��f	B'M��1P�w��~��8��"����W|���ϟ
��y�����dؠ�&�ѯ��r�D���t���FE���"U����y�C^!��
;��sw 3��A��^`w�!�` ���^�y�4�M��H��
�0N�!;�0�m�8C��{�;�L���7�ӻ��/�+b�3�Q�P�?3wil|���p��B�:�]Q�I̯��e9A}���� �=�*μ�@�-��0("��|��X�� P�V��'��6;@�<��o��8ؐv�+_�|�e�b��H��E���6�i���R�s�k��_�Z:��*Vz�¨;g���x���"P���e;���0I�PW��H�(/��h�X�����)l��x:�&K��H@���4���W^�x���4�p񤻊ۢ��#,��p��o���kB��U)����l����P=fS�<�����4J��L����R��sS ���y, ��U-�?<m6�MK��H9�Ho���d�v�{/�7�N���q���o�m�K�Y?��?���H��;��/L�1�w2Ο��+���)������w���������{��}P ����x"1،e �A�;1�&M1�2�Q�����!ɽ�C�S�!�T6u�x#w]N6��(��u��kTΚp��	��M���W7A�� ��&����"q�?iz���Y1�����l�W���GE$?�R��� �LS"@1���x�tov^� I�4MLk���G�ԏ���� ��y���C� Ĥ]ș�k���\���m����Ԧ��Ԩ��o��QD!�N<C���O�+
_��G �DS�3�����TQo2 y���'�~�F��$������A���7��KW ��üʉ��
L�[���� �ߣ ɗ�������A�`�=�%e9`z��w8(y:A0Hn��azZ9�'@�b�C����we��<��pȐ��[�����V7��p�-r���3}��'l���}<,J�`�E���ER���2@��n�:��v��Mx̼�W2<��x�L�qE2�c�6��??W��ᴂ�h�L/�8�$�D�Xf規Dg2�U�)7���e��x�
,�vh�E��p�VV��J6i�QP'�w����r��]r�	3y_�hL�6�Z�9Mc�.��}�?~��9��^,���8y�VTA��r�|����\Hn�#�V��l~���R2?:>��낏���������6֯�d�����o�U�@)=z�36X��cv��(L�������)3=-|+~ia��6�+��DY��>I ���O��hzai�0@m�e[4C��Aa�ڝ�`"Z�W"Ӳ��ӏ�ɴr�H�Q���z�T0�^MK�X��x�;|I��i~4�aT�=A��-�:rIq:���2���V�?�Q}� �/� m1P�8K)��z�u[�b�u[��n}�0��oP+�i��(��}�5�x������Q}�X�8�K��W>��]���|�����q�O��G�/3Xt 1fgw�� ծ?���QW���D�<�0�xؗnC�G�� q�*q� )�ӟ�)d��̐��V���@Ŕ�����歇�(^��-heRe�FR�_w*?�-u�sίӄ6�\<��T�͑Jh^��Nf� G�uI�W6uZ�R!�qvN;d��Ze��ۚ^S�����¨2	� ���N/>]����8-��q��OU�7#�ڏa��du�^�L���MmC[����~"e��s�j�B�)Ĕ|p�,4�k?zĊ���CW�I����>$a<=�,�#�|�X��qF?�:�*]~��d�q����:�����א��x�q�i]K�i]K�iI�7޶����1i�9��d���I��>��r�/�]�!=5��K��x���i�\�硌�O�O���C�g��:^�� ��Zl@:H?�_��g�OO�>�?����uw��\��(��������J��GSHH����RC0'�$�5�"d�g{>������E2���:��'}���ؔ yU�5��LHӫ��7���c����/��_P���x�Hj������$��wAQ}���'om:=��R�3<�5�W$�L���~&��s)s~}A��'ϣ�8(=�����'/1�#���y�ȋ�2.�� � 5��Ӄ *��#u ���lR�b[\��3��72.��  L1�OT�wXM�F�'���ۘ�X�g�@���_	S�"�� 8J7}���D��$����B��jtyb
G�w������Jâ��=��q�<���;��о>�Q�LCb	��R�Ҁ� `}�T����P�^Ip�
�V\'@H�WQ�Qf�:���7�`�v� �]^al2�į����E��/�����a-��q��qE�"#�Fg����M�9B]��?����&�`�u��kT�أZ���*��u&��]�`zW�b�Ω�٨��3'��QD�`��ʭ�G.��_�ŉ��������Xp�o�m<���H秝��󜚜��K�tyk�����|���2�{�ۘr@��7.^=Կ�Ֆ-ͯ�byd>OE >�`�G���H�ϩ
"��t��9�\ĳ�2��TS$��}�xlK��T�0���q���	���
<m(�ч��"�q���_Ȭp��\�d<�
�_��_�xZ�߃��=�����S�/����%]�L��,^h��a��},�}�/�-��gf!��M�7א���2*O�>�|� |<'������9qK�����S��ȸ���r>}���q^�sQ7@�d~-&�2"��8��L�/������w��+K��4Y[N(Z�p��.��7BCR�����Nn��� ��=����p�$�ā��?[� �6 �ۄ0�7� @ކ#$�Qt��D��_�D�]6� ��!���&���e����2�����brR�0�泋@^� ��G_q�R �u�����B�{�@�E�!µ�
c����-�!���E��(�ݭ���ps�B�h@��0�7�ꂝ;F���cĪ3��U���9��r&=oQ"8By}~ ۶� ���    ��;}�M������M�?=>��ղ��o��w	V��1��XR|C.�}� �w� ����fj�����bIoa N����ß��{y���8���-$�ZA@���K�2_֏�X���C���� 
P��Z ��� i�T�EW���""n� l��m|�n��������X]Ka<]!�8T�[��^�?űn��W_w-��A����2@��PNPka��������	��+Ľ�|������PӔ��`� �j�d4��� 2��	��[m���p �!��*�������C�Wٔ6�(��c��- h����
�b��E �t�5Y�C̨��)@�E_��[��gڜ\�mژ?��wG!
仱q�?禮��˔9�>̬M�Z[`ڼ�r��j�t�'���ӝ硬,[Ā<|���ȫƲ@�����U��,Γ�\��������	�K��[w���h0��B�9����}�!&]숖dO_`�`L $�w�YJ�x�~ �}~(��7���};ı	T���o���L���?k�]�ߨy�����m|��o��������yK��{B����͟����6淫�[�iw�b��o��y�I�A���gc�+���n����<N�ue�ԕ��Tea���3���m@X }������K=c��u}����pB��}��8��U~� ҆���/&u�K�d=E�<�-��6D�|,ڝ3戏�}�@,�_An�;���� u0h�X�M�W���p�x�*N@�W5���2�~#�>(��t�E�]��PB�� ���dR��;���k����N�2��:�2��|>��{�\;XͰ�h�wOt�'J�/wO�����>�?�xɅ�}�[5���D�2^??*�x�h: ������--��K���`�����`��ė�x}��o���?cb0���z� �(i{�R�ֳ����E=}�W�W7����ۦ�?8��˰�PܷX��m�l��h�"0V�|^Ve �S�{�#��3�@}��<"=@�-(zD�!���:�m���g>�O������Q�d��~�gBZ_��hHS.z@ZqT�:B�b/��/рF�ex�5B�Ŕ ��i��8.�n�i�t��韁S*�6� ];����w�DZ4UТ�� vb��ϰ���2 #>��d�t��/�>�ݯ g��ߺ@;��0��U�o��5F���Q���0�7��������7�̔T�����na�g��퓣��~�}�� �;��"!�/Ľg�.n������z��m1��5s�>5ym>��չ��lI��[����5oe����7�)w�&.e�tC�_ �-J���K7���#BM� ��U��� �+�.΅�kX!L�3���h�<ƣ[�GV���ů~S�(��`%�엞r�x�� RbZ�����������������VS}���Ի�]�/h�����B��˳	ʎ�n�H��
��+iǠ��ʃ��wN�P�_-�8�����w-�!y�_���c�V��&+�]�3�$���KY>ʒ��~�9^G��;ZW߈�(+�i
���bpj��&t��b�}�wm���e���o��k��Ӷ�}��8ɟw�}<�ix������L1`�3Vbݱ/��Ce9C���+���^٠�A4�&�% g�d�4����"�*'��N
��u�� R���Bd�?h�����k ����H��d�qat_B� ,��3� ����e����#��`���dĔ7� ?��s~��u�ϓ)�?y5n>$�e2@ ��! ���r�o>��D,�� ��k·1Nڿ�J��� ��"Wm�������<�������(���o͡���oz��V F���[�>��Bd~������+�����A��~����8[�� �|������t1�j�,zL[��m����@{?���B�O��- �=�� �u�/jT��;p�9F���		������^�P�'�� ���0�/B�	�{U���B 9~>�����f:�c�r�5Bv�%������e�r�!\��.�$�K�x��h]�N��_	���p ��e�0�e?��Tj=�@c�ӿp�֝�p��=t;Ե*w��[�TG�p��aЃ��w(^X�i��̕P<��x�TX�8���cQ7�<,���s�<Q~���ԉ�ה{�~�N�v`=���$^���U���6h���_�x�6c ���b>oq����E����Ѱ��1uj�����/L�~� �F!a�7��v�[��}���g���6p�?��	�_~Ǫ~r�O�텒g���oJ�����������ΏWa����2WY�o�{�:�k�;��q�v�+���:�m�ע���.Qr���3APwT�����Wk1?~���T��+3���+�Q�����TR�׬�x�[ħ�C���`'߱t���ɧ��@t���2?�E �W[� ���pȋ�8@t��-��M6��6�����l��Z���JqB^m ���j�`�ͅ����6 ��m�@�R!Ա�A���;d؁޹�;�[8[߷R���y�p���+4�bQd��"�С���h���W` ��~"�����aQ?$���E���^V��OX(���*�k�\m��[��i�:g�#
 ������f
Uxuj����k�������q�ᜎ/*�����"�@8|X&���֛��&%�OsN�D�H�ϾN[?5��nR�P�ǿa4w�9�a �bNJ~@>E>�C�l�%�������x)d�F�"-�)�U̯���?��� ���5*�W}v(k�g|C��~�����~3>�2��=*�<���Q_�6+e�h9�gY ����1�R�X�g� b�@]��Ͼ�%�Azp��v�J�A�7�(��_��"��L	4&��@��O�e�k'�WK��*����.��ߥ)��(��TQ��
ou�/v�����
�]��z��O���r�'���X�~�UT��� ��
�Ѫ?����~Y��C�~]����w�����,��/=��8y��4�+��2?^?�#]eZpU��C�&���a�A��:�@P@�6#!�(	i�TI@?�4Q�$�J(	h �$H�C�d�?��8D�~���������O�����ߺ~4T��=,��J|AW)@˵'7���������j*vH�h��z���|��1V���+��d�"7��@'Zo�8�Fb@�1Jg���ɽ�C�u �MU�=�3sl�+{��vHo��>a�b��mV�_�WF����1SJ&�(`�|KRK�NW�x�.�wG>���,n�R�����[��3Ӫ3 �O�c>��1�����k�GB�ʹ�wC���(|=W���}�Z�X�ј�G������?��R�!揃w������%6�t�3���0��M ���l�0�
1^��^S�uR�IS]���:O��P�3�G��4�	��{���LK�JhZP��唹��v= ��A��g'� ��W����i=#/8���W�:��NҾ�!�6@����F��\Sn曼�c柼�t��W�b�:�����
_��Ɯ��{>҄���`]$�h+�c6%�3B����k�w�=���m5��>����&��mx7��N�^�?Ho�;��e�����i�ϳz�Ot��"d�T������͎���P�^��iU̷8*��a���]s�����;6��h��@X+��fl���Z���]��6���o��o'��n<]У��As���m����w;������|�������_g������u�6��o�X�4���$p ���8oi����+����B�c~�
�n<0`��w����D���/�`z���L�O+������~�7}���qK(��<�$O�?��Z^{NQ���b?��%0�e�u8~P?e#*��̯?n.��3����W[?�A1���/c<�q1�x��b�º�.;�r�~P�a�b8��cA�QHUf����v�`������_;    bz����x{�o��h�1g��q�:c_�F ���;D_.��}�@|/��;�`t�:��o�1l|C� ,�F+-�*xuL@�czږ��6^'����G$�	������|";�>��A�9�@��y_Vl���	�4�.8����Z�dz?�*4Z�T� z���k:���G�F�ȫ�i��r1���˶��1��6�"Y%���~����cg���*������A���;�u���i��W���x�AJ:�o��l�\�@ݔ	�Ɉ��#�(�t��P��VNoj�$��[��[In�J�އ4D?�X���!< �ATs=X��>.�A��/�T��r�f��q�|%�c�F���o%��� �� �� �ίAxsׄ���E���d�V�O������y����^#p��ώڸ�`���v���n�U!���"
��
�9�IA�4��"�A޻\�����&�.�8 >��J��e8�o㰯�4���}�
=����w��h��j����]�E��h��Ǳ)c6��<��Q�����X�K$n~~{O���n�L	��c�G������q��<���o�������Q����y�A�����~{��_[�(��>��o��g*��q�'��(m����2�����q�?������蘧3���\ł~�
�*x+��1|�yƧ��|>�/�ӭ���
]� ���e�/�X�����e6x[T�n�����MF���>�c���%�6?&*��l|1���į�8~�q��}��R?��-��4 ��?8��B������8(TK��/R����i����O/���K�5�iЅ'���t��2������u��;�K`�o�qpXi!�xt2-
0	�[u~�Ͼ�p�WFA�B,�Tx0{����^��d1���R������(%b}^
����J�wV�qQ0����?���?5�F)�)��Z��n��>����_�Ñ�����~��܃����|����=����\�1^����o������,��Kɠ?ϒ�x�D�/"0��#$��{@��#��gY�E������)�����B?�����޽�o��/�/̿��x��y���~_D�߂�8� `>�O��=p��G ��t ���*���8�_����?�˳���"Ƀ�����.�����,,�s�	�r����'�S&������g_#h�_'���׼>��ϓ��/�� ?��1�#P��������'�s���q�G�����A�J�M�]D�"������𷰿��">�p���I\������|������J��������C�G����.����#��3,8�_��<�
�/����~7��2����3�8?� a}@�x'��3<�|�?�? �����/�/�Oq>��8�_ >����q�_ƣ���=\l�� x��4`S���`�y�� W����� 0�b�����b�/�)|���k��H����� �A�co����2}���h��Bd~d)�$V+�("�����م�#p7(�fF�j�����؟�Y���e�"L���{7_�G5zy5*��ܽ��cC�u\�c7�-0��c�ǃ8���IB���Q�\^� Q�Ɂ�� >��m������4��(l�zWM X���-L����Hx�!殮�P3`�j�����J�G�E�VBJ�����m��lP�$.l��X�q�78�� ����{�r������x�9���#6����b�=r��l{y�������p�R �C�8�A����]: ����oɄ���iE�) ��\@�U�or���ŒL���(��A�9?p '� v���ym}�A` ��a���ty[����5|%LMνغ�Ao�����G �[�5��-�"�V­���*���ũ���m1���`!�6�-JJ�N�/�:���t�E�/��������|1�h�.�xL�>-;�}	p0OkBq#��8�E=b\v���)��	�8���t*&oa���<r�K�{z���A�_�8j.�����K1<֯�©(%�j�yl-�������S?+"ϰi�����k,���OW섏zxFA�� ����'���g���|������d�yu�b:��B�g<�g/e|�b<���@�&̯cK�/�y
c��z|�S~���A0]��{�2~$ \�T �a��D�O���H*����Ǿ.��l%�Z��*.6�"��\'�1�� �V�prqb��e����+�������G\��cHI=���42�4��yk#�G�&"1?����������@�<~z��EM8¶k��ZHM�c��F
�¦3ƍ�΀� X� $G	��-�`�<x-J�P#�@����2�y�� 
�`"S�g<@���JN���2?�&$&�w�.��y-Z�_��g*^kx��`��Y8���8�	!����1O,~'_�C���މ�1�6dd����xz�$?���nG��<��4��M
�E��(��+��\ "�\�H�օ�� Or�Gy=<�d�eߠdx?�*Y��\��p��<�i�E�	���	���
�~�.$�!����}!���aƣ" �g�$9�"���/����)=�,=��"�\��|�;3@�������RLC��J�+rƎ.+c��t�i�X����	@`�����\{>��N�H��v�6�0	y$����yb ,��؟�8�d�\�,Z����,��Y�9�� "��Os!��8+�fhQ������ș�䝅��� dW)d���y*oI�Č����_v��ߋ��x\m{�m�W��&�_܋Z���,��	�<����]�|^.���.�u�O{d�k��c}^җ�<��Gē~iM���R�o����R���G��X��B2Qd�8/b��K������ �7���`ܕS�D��@  <m�~��� ��l���`�[��׏W�����8�c���̟���"��ސU 
y�d��0H��$d`Q����i�)�gr�\�J�y�/��<��b�� �<�+}X ew�8~E_����p�2�xjB��@� ��46���� ��@�b�x�p,�͙�M�u�M;�H�A���W�v�0���
2ʋ���]a�|��w�C��������oQ���ū���T:�2ע� ������ �v `$@�k�tP ��V#2�#�oOb�'wع�0$e����R�m>�RU�<)&!�=AP�<3�B(��^� X�?C�	gfZJ^
���"�Q����\I�yC
x�H�������,@�U�r<u����y4���+,�r���8x�G�����yz��G�� >Nmaw�ŗX0��o�3����+!5��;d��+��¢O0�%��%�h�-p���o��q�ÛN��^B�x����E����t݈Yd���0��T�1����O��������!�_�d��*����cn��"X�'i�i�1�eX��s���7��ȳ��1�(��o�)��>�O�c0~��М��	�/I�e����a��ٲ/9&��L��&c<��|G3������EL(�1�v�vl��UTȨ�T&�yT*�i�C1X�.N!��"�~R��[�V0&�1���S��e�^��h�V9�GTr@�;��8oRH}Ւ4���cPou�ɡ4��D�b%0�"2�gm4�R9��δ�r0�*(��+Ӝ������c�I��S=�{Ef^QH�R݀�(�: ,��20i��1�,�Z�g��i�Q�c�Go�}�����Q$��X/�N_��[pp����V�U��R��A�o�(�<��i�Vy��j��[I�k������	��<{����Lzz�b�'.�~l	3Sj��*��јIŘ{#@@��8
R��Ug���	�)�uFe�V�o��f���������    ��%b�x��Q��}��$�55kW1|)����U�1<,Z�I��h�|�r �
�k�N�(��o�Q��9E!w����|t��B���	�ܟ��µ0@{[��}�����ݹ��8��>=��r=S��Y�wQ��|��c�#�W�;-����J���VY`죷�ygC��2�nR��/����($�/� �E�,+,'���Q��+��-�ΘL��ΰ�r���zT$�z�i/�`�ma����1y~��
� �g���ZX�2ޮ���~1�~��0
�U��8�ǋ�
@��Zx#��*�9���<��>jI�k8�-�y�D�(�Lzz����G�@��3����Q��@Xֲ�+�w}�KezW�J2�K�ܧ�����Ӿ�a��]܁����KS��,#�YT �cG�1~!<?��<8�|n�c<����+��y��������˥��ŔbAJy��ܣ����e55�$�0%�:QOe��8t!�2�O|��j<���X��~X�_�$�߫���$�s' a�����v���$��c��?�)���l�kGߜ���В��"��h�]����Ђ�)7���TK��hJ�"�)N=��sf�k���zT���;��<��"��+�y9
D�IB��P��˻H�X��.-mZP[�3t^���?���GnP�~`��G5s�� �*���%�3�x��9�����/g:[�/d��M�P���H�0'$�@*E\i|Qj �y�',�S#o����z�+xb�=�u7�&���}�p(��h�^o�d|!� ��L�?�n`���?w�e���ߓ�B���j�Oٓ����;Џϕ������%󏷤���
9����pA����~��T�	���P4�B�EܣyzE��u����������	�B����`��)�tx�8����y�I@X�}@�����,�q��1��e�"���@n�q>^�|<�#L�HP��8~e���w%���׶J	�
C/Rx`2zK�.u��VsBS�����b��$�,((\�{�Ǎ	�y�	�6�(9\w��� �p��kq�+p��xON׏zȇ�0�������� �WT!c�#t�!(���4��u}���,ơ�y��J�������؃Cy�J,�3�Bm%A��B�k]��s���X���1.ݒ!p���{�oF�8�4� �'�3���2h�@�'��t�EP�R���;�� x�R������b���E�G�9��C�+�+��;-�>��L�?�0b�W� �\Byf����t���:�[�0�{$q>�ނp_Q�]��P�Zb*��c����w%_z�'y1��s���� UN�>��e;CA�������_ּ��,�v������jc����<T^8�8B��˻C��Z�xjݰ{�񃅚����
������x',��SP��A�xM��#S_�N|��'%�RY�p�ļ���`��>� �Cr�!�/��{���l
F{}y6�C.�T��k  G� �Ho�K�R��O������,��bTAY���^O�AYn�b��ݱ~T��W��
!G�N=Y }�BQI�wa[Խ�������<O��	���2�hۇ��$���S������L,�����Ѡ�p��#���	��5�x` ^�=e|/`�/Xb�A��q�2�m�`,K;`���P��C  ���%�W��[� ӂ��X���K9�g�?���+����s_���w�q�ZB����"�n�$5�H��k�j����D�"l��Ed�J	����}�y����R�'��Q�@#���� @��8���v������A?^l~yz���zЗ�����ϭgwZ 4
9Λ�3d�W�A^J��M���C -Q����MO�Y��J	2�!��P���
 c]0B�$���^;C]l12,>>'p���L��!^ݏ��}��B������xz��3F:�,�j���V�x��ڻ�����/��;K0?����T���0?<v��ނ�;�� w�Ajtap���G��
GX(t�H/����ˈ��r!�/����iaױ�%�,"c0A�Gb�� ��/#@�L�-T؟�!��B�<���_��E��?�݉�.��(4���2?2�� ��W�����i$�����<0����D<Y"ѷ�~�2�3@�J�IFHi��a��3���� H�3@�]I�����"����灹���7^�8������0yh���z��q�VR��Eab��Q�u���b�Ⱦ����CS.�S���";��p ���Y^ ��R� !��54i҄W"B<��� ?��	-�T��T�����O��1ly ��6H��.{ ��������E����8�B.����^O�/ǃk���c����-�2ί�Wg�G�p�b-ɼ�R��'��8 ���|ē��A8 �>qU0���?�P�<C_QF�H�c�� H��9w,��G0#<� ŧΚ� �p��_���<�q��	y�Z�~�r��9�G���@�EM޼3)�ȾO����Ɨ���Q��u���f�3�d��2��>~.B���/<�>�x�\��B&��U	f�"&�0v�A����ӻ�2��d��3(���2f(m������w�BP��G���s���Nr�A*G�^t`���B����� iY�1���80�sk���([d����4oi���]�� ���r�.C�qn�@��yG8�(�_����@0�nB#����m��e�E��xJ� f���R�$!�<����}�+Y|*q�쿈q~�00��?�?7c0s<\���N]�
�*ƿ����,�/З7v�|�r,���xf��q�����9� ���'[?�CA��^@�2�����;�~*_��2��;��߭��eFz� }9��@���罓 ��dF~�/�|�, �2á�,��1@���&bЀ�C@OCFy��*� x���k�p3b^�Rr���0� ?!N�s� O��	x����B�!����h�p����D\L@7�y��E8�7N�<g E�c~09W��x�P�Kt؟G[8!w0��?�gr�I��,�e\����sw��1d5d���������ޞ�:�(a�t���������o�Ġ���?��;y�.��K�/2Wr��$Ѵ6E ��0HĻ0?�����\�a>��e��]��r�A������v��x�5>��v���a����_���˼�Y��krwX!B�����C���^��|@$㋼�����e|a
7e������w�dɜ��by��Vv��9Ph��xb(�ư��)�jR��yfM6��(���/a1v�]K�#9=�l	��Vl:]*�=ޫ����&���w�
�a+xd	*�3PT�M ^7Pȿ5�&��O򖉼G"ߋJ%�1Ͻ@GU>Z���E��4\|v���\��pO��ɢ��_���s���(ql'X�� �eg��O_*y�'��!�"��y�괌�/����by�y��<?��s�����0G<6���\~	����S�5��v��5:�C��?�ϲn�{�_��������V�-��E�⭕ `�0��E�' �%���㸿�Ԁ�c��A�t�������b�B�U ����6�9�>�Pi 8�G� 7�8@�^�)�E�S�/�P�+B��-3��.�	�^��ivH	O �ڏ3����Y�id�}��29��#�2�l��%���hK����v*?X}��-c���3A���~�M��G���G#f]�+���lf�tvY�ݨ��⩝Ԍ�0�5�:��6�w��n���dw*3�V���NSI:̢S�By��	��w3,��d-�    ^Sbx� �S���gɰ��ht�a������p�.�T����
�[ٜ;�\Y'K�m��W�P%��3?H�%�Tò0�NM�r+r�8 �u�@M�)�K�1�?P�����J�o���✥�t6�t�y��Tz00�[��8?|�9`�ݜ�F��6I�َR��h�S�OJẘ]�6�JCA�;�B8�B?�P���t��?y�ʉ�zq��W�Č9�Jr�傐<��p9,vg?+��*�0C�h�L�AL�V:f�S�X�[-
��)��k�/��������j�*��Ë��°�"ݜŦ
:s�o,rU)/�2A�q-��*AJ^(����
;���EaE ��GC%^C�x��Ãb|%�1(�W��!o���4'�֚E�jo��G��%����>G?'O��yn��W"nb��,��0�U�r�o���Cw����!W��K/���ͽ̎~���Z��w�$�)Bݛ�A�x��#9��_+{ӧ�7�keq��������e��$}�IŨ
��T���k*�\������x$�b��S�^N��K����MCc ��s�8e'��x���/������O�v&�ά��yR���LA�~p;��e67����溜v��"�"��`��<���i>*�^��˹�*E]�E�;&t�HX+ԙ4��mv��p�/��e��� �4�l�6�����EҦw��]Ӫ��#��i�/�1�隦tq������Avj  �,S�\Ge�Y
Q%��,$�f��R��.�7�E�Ьp��H���&�<��z U� J�8�?�HNM'��e��t6�[fh� �Jg�YK���@S�8߸�e�4�4�1��w)����@*��A!g��+Aiv �kT)�1�pn�����x�n�߷�Ǚ�u&�� u� <M�����8��a�3�d��-�r�f�q6�0�����y&4��Op��<@Zhj�fEm���8k	P��FU��Y����1ѯwy2@Nq�a��7��?(F-@��0wo��z��N4��V�e�Ƿ��V�-y���1�>5���$�0��^�{�m��y�2z�٭�ݵ�-x������9|[���SHG8��F����>�{��.F�r����9]f?Gu�w����8�3	�>kp�+B]��+��WI��U��P���14�)��z?���  (T������BP�� �N�_�)w��yI�ۇ@��6�����n�i�A���t��ɂ���0������?�� {���i���Uc����RwP]�����,(f1�>��������PN�� �v�bԆrJ�2]N���`�#�l��X����}F��H�sP A��*��R�]�h�S���}>���р�=ˣ]�4�	I`����>�ۦ�m��f�~xo:��4���R3(4=v*��JBO9^8��,�=i�0�a��q��!��y�$('����R�7!ԐV=��x��]�{Z^���h��4�aZʇ��t��^AnF�{��V!]e���ǜ�1^�=N ��Dt(��D�c���)I2tW;*Цk$�=��������+�r�+Lf`OhwĄ6Hko��� �{�Q�b={�e+�������a���k�VB�ҵ1���h�莶!��<�6S�N�K�֭���_�.�QA�{y��~��r{���N�#`H�(	wDܻUr���|�����v��i�Q�t��J��w��4��@�XG���kV�+��{E�hP~W�~�r,F�J��C�]�pg��� ������p��샂G�&7ƛM�X�+b�zq\o�uG`�r�*@ٝ�f-�G�s/	����g���W]`��滯�1�%9�)�V:o��1�& {r��1�I�y�w̾�J���[������6�����9��i�ƿ��������g�թ��a��anՀ�h�S,h����e�*jo�;����2�
�|8O��Q�
�$�Zm�Kv���+�t��ڸz҃����)֏��,�8��O�B"�z�QN~�%Q��A�^��o7�-g�D�ht	����av۝(�9�5#���65�0{{�vq�&��t�)����;N�N`_$�<Č��P�7�'�@P-&�qx�� .̶��	c�w�%�Iަ�*(�-]ꮫ���U`�䍦k���7Ӝ7��+�7��d��&5��)��az�l콗o�!�zG�+�0�;�[����#��pD�=��#�e��y~�����$���`�X�f� yX����(fH��9�Jh8XL�Y�ݰ���~����s��[��M�M�C����1;�r�
���IG��xx��gFf�-�.�Wi�Ό >����OA����R7�I|CP��3- +M�æב�7�6�����*5���{���b����J�y��o��ھ'o���A@j*�qv��0�D��CP��@����r�1�'�J�P��$*�i2Ek���.`��"��Kܑ��-	bkN���+����s1�yyw�� ��st�MGH�#n��9�����zzA�p�
�5�)	�-����:R�KpCÇ0�eq����l�!���]0�a�aq	l)�{�<�,�J��t����86�+�ʽq��D�ܼ���!���Q��8��2؜jP�}�4�ɩU�᷌s�? �<J�D��e��څd<e1�JH�y*J��%�� �J�hyвe�v
B6��;��e��T87F��蝂L�N���3��C܍���7AL)x}t�ܓ�:\�5�Ch�6����e0���`�R��r�y��JhHy�3* S�|4�WRm��V��c8fe����it���{Ǭ�/��dT�����؜F�`� ߁�;X0L�g��v�4�b��胹v��E^w�K)���3���YDh���4n��9���Cd*�ԫK$�D�5� ���*o<~�-�JQ��8K�1'��!��!��}h��+P �$�p�ߙ��;L�Sx�8~�?�.q������hW�|���r����B����W@�aѨgc]�NC:����@#o@^F�9Ht��9 �À��� U��� .0�KKcc����P��Iq5V 5�-]�������b��'u4�O�����!���y���2+d!��L-�g��F��0�d8��Ō�Ǣ"��QJ��s7,V�hrźyoW��Gn�����&�sg��+��}ww�
�.�鱶�:7Gv��Hs��~]Z�ˑ{&�������$)dep� ��+x�Oe��~���|q�'��2G9'q�.�ￃ�b�	��=����ٜL��T�#��W@,� k���ς�-I�L��"��Į���zl�k�׭WS��2yyfx-�*i�;�L,W>���)J�A�=R�9�BZis ���M���+G�t*�4��5��D�����˙�h�&�O~Br�5SU���`���x�(��ck �$1=�2E4���.��6{P��+q��#R�ר!mԲ3_5���e[�����t��i>%Y���`�T��.$-1�/�x���$.|���Z��g���i��W�&�Lho9�Vm� 7I��^�Ucq�Z��aUbJ�=���5FkC����jw7+C���v:��=��"f���#���{=�<������)B;��1�>�6x`�p4{�|0�}�'T{;�8;�ͅPg��df�F��Pnwnq8��{GHR�}���p���6ؙ���[���4 �U
�qDZ���1��^�RCt ��� ���ЍtD�14��pBh�EY
��8u#����(G��pL�[W�9!��4��Z�vģ������Äד],5�B�9�-��=,`�V1#|��1�(�������DD�s�Y��!���>������M^?C������mG�<������[zx�]�������69�~�=�?����;T�~�O���Q�P�
�LW��s2�f�A��3S'4��[9���m;?���}'-���؃f�с1o���?f���x�����A{��%    �7]`�|���Eq���ŏ%�mP�WMw.?K�����i0g�������'�H��ܶboj<e�����Qf�{5��H$��߻�|��/&�6|��6|�r�o�F�ZI�1�Ct���$�ߥ���������m�]�u>JE2�Ó�n�}�F���,A���~e�gY��{��֕(F�A��Q��}H�>J�a�w)�]�4:�PJ�Ϥ8���YJ�-~?��瀜���m�ޟ�1|�4ۛ6� ktX^F��/4Ժ����?G5.:�{9���{��g6��t#����U���N�o�#�S-�cf����Y��,�x��2�:����D�<�S���� �n\F��p3��[��x ��!0� ��o�~�>^�3=a� |v�3�x��2o�6 @::}ݩ{7%�����-4�Ư�h�
�.���U���P�4~h4~h�ah[�w����ڻc�Z|�O���c���1o��k��K���ڻ�8��5x��2ٌ�K�����]2��]���68G��1��K���Z{K����#B��%(����6�C��1]�!O�曾�k��\���|>�~�g����bŻ��vW�����[Q����`��?d�w|ɇ��E/�{�ٷ���K�������x��:�{��~�����Y���G���,�o��9m�R ������53+&��%�Y@X��m���YSקwt�h������]��{ҜW���.NC]��C]桮�P{�H��~h$,�o(r(�0�93�؛�aE*�� �Zi �Zi��̰��̰�F��,NcY,NcY,�C]p*ue��� �Ųzn��i��h���P��XV��bY�u��nr0�B��0@��*�M�U��E�J�*Ih�
��`��`��h��De�H�>�2���Vm:%���~�N�P���ءfFg7 �j�8�0[a�݂%s��:V�h�'<< r�|��j�V1���@y�o��+~����F�-p&\�~a麚�9����}_!�8|���ԯ�������c�@��� �Q>K	�ƄJ���3��׿���I�e������''�%XV`fH��5�uZ��K>|&�˴�/�,-rŏ8/�b���%���%� (*=̱Bw)hteI�k	>����5��5�>��`��M�k�M�kXV�P�K+2�����mZ� h�b��ъ@c�
-h 4Z��D����.M�VgL!�Di�N���{���A�ޗ����������Ӏ��wl�	�~����ׇ����/�=�N/4��@y��7�=1�p�T���
�ߔ�Cb�������.[O�3!�$��
9�����:����K9��������w��Q���ty����FT}��F��g���e�ʅH�C�a��it���H0�g��<��ai��/��7�eq>[��4�q�5�6,�g�h �a���4AYH���=�=ZI�u=��i�a��&,"U��, �B� ��� xw�z��:]V��	B�̜�Kl����!(4W�Ħtw�4TLW[ش����:�+<+��0��W�ʘMC}h�X;����tG|8���1���p4��p��~V%K���~�L{�h� ��d�����Y�@A�� �lQ���&�����~�ʴ��"�%A	�a3�����4��A�������u��V���Q�Q��PW��!5<����*��p� \�b����`{��F~��#}�����T&�:6|�G�w(�z,~Q'f8|��`�Q`�g�����V:��������$Эč�Ć��O-�d!�z=t�E`���x�;A������Zc�k&�+�bj2O&׏)���5�_&Nfb�)��5����>���)g�*��w��>�����PnXq���5R_�u��%�ܐ�J��@�ǂ)ӛ�^n`���ObIڙ��3��D)���-9�R�7��G��+;����	�?��oV�1=G�?���;_������:�*��:ol��c�~!�����6�ʲA�1;���=��M�9���!:\&��{��T�s��{��h�p �`��(N#����s���^�k�����F����o�[Hu����ݑ�����z����ǯ�wM7`gmDz4����#�tF�=��h�\�]�y�ׇ?��p����a���hٛG���(��(��8Xf�8����a�����@W@K�ls�"@��,@��*@�ò8�>;�0�i)ô�aZ��0kq���^�a<ݪ4C"�d�ݐ�=ܘ^�߷����O�A��!��{��3��Uӽ'p�������<�;��f(�n2^��1�ץ���S��e��J�h:\�U�����^��������wwF �#ؽs5r���Mh_:�q�h�:��8�-J%j�/���6�I
)�e�.�.���GS@] �gi�A��.��<B]�x��-3Pڼ�\^=4���>6��4}MM����tF&����[��;�c��7* 1��߿v����p�g�i6�_ o4�ޫ�_�o�~�_Y����.�F�#S�q�h5���jv��"�����Gk�<�?��`oZ4���^��UU���r�? M�tiP�#�3CǷn zM_�;�������in�:+��A0�\��ԵH3w�ue��:^3������
����h6x�8a��#FZ�C?��d�nq���o��W *��]�%kp~,��x�_���t{����i
<�!GW���������c�����?7��ev��,����\'�0׉�8O��0O���r�yR�N]�4g){�'@�r9m*�su	�$��0{��w7���9@��X{��u�}\��� �����4���0�GZ�8Ih�V��NP��:�3�XH��@*-V�޴	�QG{SGX����E��Ǐ��}�q��xЃ؛[�8�(o��c9�5�>���HL/�����;Jf�O���3Jx�e������I������[��m����F���Z�}5�,7���GyN�Hrh�'�1�1
흉��]n-��9��7�>e���ͿM�_C{�Z�Õ���.��ݴ^�_C��޵ׯ3i�I�!�Gc �贂�No�0��j��_�$��L�!#x�P�ֵ@��jj�o�u��5��҃�OFm�sb���l��Įd<�:)ۜ{�^������r1u�^9�����M�o�hY�;Kz7���졓�J�[+'�m���:W��Wӷ]ٞBU2�ۍ�ɹu0t-�0�2���ݗ�c'גP�p����W�HMɬ1�Ͱk�֊J�[�[�.�Ɣkz��h]ִ.B��u��d4�e��uXӺ�i]֔kZ�5�{�O��9���h}�������fӳ�r9~��%�h��-B�}4�~��'�ݷ�h��|�UZo^}�5[����+��_k ��ν5��k�;���^&��� �s�[kp1o̰���h툘�u����?&�Y�}��s������O,]a/樸��Fk'c1
{�7%�B��'rWT�
{�7��؛��Z=Dۃ٣�����V��`�ε E�3n}p'����[s�▙k�޴�d����0� K��rD�L��d�-�O�婓����r�i�}[�9��t	�> Cr�'��~��]E��*�u�i�w_z��\_�L�����^�����Y���A-3WXɎ��Κsur��N�V܈gW܈E(9��CqX���5����%X�0�C�5{�;�^���9fe!,�Wo�����c�C�91Ŭ�����u2��N�d���R��e��G�h�1+�DA)|}�=�U��S���W2[��R6;%�����ݦ�RĢ���)cR��;��"sŬ����+�+�E�J�sE�p���+�ebJ�;�s% ̑�S�zG������o��7?��������Kxw��#�r���S��{r����y�`M!/�)*���\pU����؇�&�ڡ_p��L�V�c;�������7`�8�	���|�=z`lMJG�����һ�~b�� �������lU�D���    �̖q���A��ƌ�9&���s�ɶ4��D��%w�6�vV�|��<���׊�>|D����1���n�B�>m�
�Y�R��FV|��Z�B�JFl��\�u��.���5nb��jbg�X�Z�{��YZS��׏aMK�EBV�k������1�dwӷ�g�i��E��m����l�9���vX&ҡ��@҃���XSטG�A��l�
|P�z��k~������j�i�B@��rU��g
�ϕR�K?�����
�嵴�ֹ��`���r֜�5���9F?���	f:��=g�	�Xau�sN���}����	rM��-f�֡�&fX��SK���qN�M�_M����}����Ț����?�i�޴.sN~��Ǳ͎��2�顕�?`M����`J��Cj�OoK�wx�	Y��W�`?�m����y W$���F{��@����@��h���
�[�8c+�>L��DhG���z�7��K���o��A�Jh��to���Ik-V�Z����#���#��F�H�Z�C,Zϣ�갦%7ZkI��`M�^�[�Zt�U-:ײ�/�n�}o��t�E)ZkY	�j�(�/����Ck=m Y���Nk-�01���Z������BAk-A�Z�,�5Ԧ�V	h�e Z��d��|ȺMb�
1[�A:�m0��XD��ѹ�sp����FF纑ѹndAs�=�?;���{ �<�9ϵ���ޣ�56�#Z�;����^x�ރG���>lF��� ޿�����:����?���Xi~��=#��n5�����H��l�ͧ����?׊|&��u�w��������C?A~U����U���0���H�8�n���u�L��{)�F�&�����^v޴vm+�u���I�]���DAp��b�N˃r���p��Ϫ�m��YtZ^�{��|W�>M�;?+����?�I�{�xyw�Y�M���^M�Q�]����λ5��r�»�_�:|��.���˷�i�`wxMN�ɑ���S{
_�~.�r{-�����k��O]�#̀�]��ͱ>��|��g���$3��g5����ce����Kx��k)׻	nm����d�O�y�)~�u��]�2�`�OK���x���@w���&ޏj�X��}Z�O�殥��F>VK��J��4�6�g[ʵu��V�w�_�d�O{L^�$?�'{�Һ>0ޤ����m8~���Z��s����,����|.��?���X;ν�����t<R��s���X�[�1)���j��`���Z������c�����v?�Q��*L�XN���b�%�&���ҍ��}�˱����-�z��-�w���=y��uH����.m�I���6 �h~.���=�\uO}u��d����Ϧ[
��j�0Yh���K��U|-M��弖&������Ή+9;�K��$
�D��^Ts����N����X�Ҡ�ʮ��m���!t��QY���`p,�km�F����=n�"�E4�6q�t2W�ͯk���xM��bpW��1�%Ʈj�����3DmS�h��(��C����)�t2~�51w���Kӏoo��ږ�N7�k_i�l[�giS��_.`1��ͼq~~�+��V3ט��$>K�h�w���i���a������]�׽y������'��հ���X�j��sk��ge�W�4&ڌ���4�^$�{���--��<�B����s�\�о1)����Rox�فn�}�6��l�Ւ^H����/O|��4}���k���M�G�{�f��~��mj籯����k�Y.�ֹg!!oK�7��"�sV�^g~.�z�vz� /TZ�mW��ؗ!h����2x�aZ��-��չj��]1ҕv��w��������S�kU��Ia�:��ޜ�}���=�]V�~-��n�X���{��ēFpk0�T^!�>@tȯ���R��JkcW�/���~ƹ�Qx\*�0�{���f�<���JlW�wř�����c�O��L�wD��1�ci����[�c뮔ds!�ڼ�z`�B�eLsESHu���nޔ�h+�n��5�����<Q�Dѻ&EҞ4��o$�xRn����:L{ZO��&~�Z7{���bb�9c��bl7� +�Mc��.d-�@֠:�E�֘����k�z>akZ�kIn��;���6�
��G�~��[Gto)��^�٦J��!7M��t��Ձ�3Q���K�\e� ������4�^���Ρ_/u�~j��S��@���b��bЊ&����Ä��ޯ�:lJ�5 ϩ[R6�bySX��(mY��k䗭���m/������M�;J���~�kE�!°�,��͉ܾ��ܒ��z��{8���,ȵDп�h�~,k gom�2ݗ^2D��	�-��g�%�i����a�嬭�*��������Uk.S,���u%�
��ǫ��Ա�9�
�]ZB8mUɸ��?{�e.�eu�j�L��i/V[N��6�U뼱�u��K]��o���M�$Z��9�-%�R�y�w���Y�'+����`*�Nl�`u�ǵ*x����'T����tDju�eo��~��O+��f�ii�}+|��v�������J ��	�z�x͵�χ=e���fD��Ϲ��T��P�G��	Üۺy���'�5�Cs�Ԃ���\C��#��[ss�u���><"N�آ�>�9W%O��;��轪�;⍘��!�/�k�Ӹ�`i\�SdO�0�=Fkw�L}J�=N��k,�̖G �J�e�i�_/�f�"�k��z&��+R�t	k��ICI��붹�f�=m��5��$�kZѽ�h|�T	뺫��5W�ے�:w��<W�us�v�;85��7�@"�B�{f�6ߐ�p��G��R�tQT�BczWl��4HCe�J轵���}i�-��R�֯�n����y+8r3�Pǜ<#��r�M'�Q�ű�Oa�UgV��6�󔶼�͞jj���|��g�q0�w5�g�!������6��R�ΧT�
�|��UY�p�;����3�ǿ�Q|�TRO��H�\��}���ej�Ǉ�ul�\��o�z�<mb����г�����w����c,VS�,e�K�laq�|r݌�9ZO��'�A��x@�J��~�����d�"�!t�"�i��T^�(�%�>��3�ǐ�@���2�{��n���V��N�ؼބ�f�� P_�g�h������:h����u�Z�"�<��m�H=+۵�Cv���u�~y���Ɲ?�>9�ǽE�Ip� ��M�_O�c����v��'t<\m���K�>I�R���X�����!uE�!u����8�hx?��}"U�)@>WR;��k@V�=,K�?�Dk��� 2ר8ZO��8�����6[�M7� �V�T��rZ��g�õ�Yn9���^����AņЊB/
��{�� �<���v���n�t�%���Mq�{�;Q���X��	���/���j~7源�[!s�e��=���Nb�#��`B��m����&;��t�������o����_c�?��4ZU��B՝�֚�)n��nՐ�ӹf�X�v4.Jw�
Qc1vԝ��t.�{v������<���$y,�qZ�����V��b�X�S�{�2u��9V�F8����B_��f�^��{E2��/$F_����q�]ۖ�J�y"��ؾ˕2�s��f�{����Cz؛�p��X�~~�k��Ӎ�)�hfY!�bʢu���F��v]xUޟ��`n4d�5�n���:���ѻgʙ�Z<r���+V��F�D#k��=�keO̯�tb�]'k�:&V��w��#	�S O�S�'o�F���BR�N�Ֆ�+��^�u�'i�|Eq�ɥ�*��~o�k����=0���R�i�m�����󿹻h�w����:�O��p�W�W\�''sN&���>�m.�~����2��w�� ��ԋZů�˕�=L���Z#�h�!"�5��v��4�E�
*bl������U4�y��[��h��)䫲vV�y����yٱ;��HC�K%��<�uw}k������r��B�ؗ�ճ�����§���V�,}Z�c��5�������\K��*�<ӄ��D9�+��@�-�"�`�o3�ƶ�
�s�    ��ct��`�ISh8�i��_S�}�%�6G�Od���9�޿�� ����r�X�Pbx�-��T�x4ɇj4|��hP��4�ÇU�?��Y.g��f���-�e��!�rM��eN�:e,�{�x{r��]wL�5fV�psj.V������7��������&"��J��y*{<'�lE-�߆y�s�(�v�y�ڄW2	64M�+PG���j8�o-1�e�k�O�1M����cOi�~�X�	5HxӴ3�)��Gj���՜qzڕ�+�c�
#ْ+m��5��߄�����Yf��+�����9j]�u:���^X,�V��z�t3��\u���Ϲ�i&�TR\LJ��RT��̧#[O5Z��B�P����|�#A����w?edz����sPz��Al0��:I4�{y��ó2p��u��)��x}V��S�q��[�z�M�Cn���w���� ��D0ZEF�v���(�;\gN�~&���k�紐�jО�a�oa�����í���w��`Q�=>���͡*�O�w�BiQ����M���kZ�� ۦ�x0�s,J��@k˵�v��ut�Q.n[�c�x/߳�4C�X��Rjb����@���7�c�Q���W��r��J[A�&v�c0��h�ԅ��cm���[Ȋ�vWg.E��˜����We}�^�������~6%�V�p��%����/@�b�q��7c�c[�zϖ�\l��C�tK���<֢fv +������|�̱��xe����ִ����Z75X+B���M�/Tc2.J��R�#�Y�F9�U����@mw��El#�E��#�<��nyN� (m�C���#v�;�l���-�����g����})�'z����~�+(�bbu7f5���;��	LSǶ�Y�s׊�C��N�"�~=~o���6�T�\�dP�xv<�J����ww�7�k��a_f�u<�k��V{� /��J����2��ppj�?�����Ͷk<6�1���8w�w��qү��u?�B�s�����%�#��N� {�*Ȟ���v�Ң��<X{-�ȉ�=A��wB+�ZH��l11����i��Z��Tgx{bU(���ՙ�]���4��j!/��}��uG�'�UM�`/��ԛ5V�3fɘ�F
(�\J���g�`]C$ly��i
�0[�{�qx G������M;�����E��FY�&u�R{	o�M��e{ �5�NY��ikĢB�t-��:���)kzձ��� z5�,���S�dH��
ϩKk�ag�����~���_���!ƨ��kk4�'��t�@n�����*u:��ѹg��� �^�Ɣ��������)d�t��lU�c(THx%ӹW�6�U�x�f�d�b�h]�L�����O<aLk���x�TlM8 ���\c��u����/R��hJ�y1<�2�{Ⱥ�!U͒�!hp��_�����!�M�:ckk���+����E����U�ѹ��أ��BkP�c�fm�B��U.�zH��B=:��B��1������7 HF�1��^�E� 7��
��!+jen�nD2��t�vb�쫥�Z~��M�b�Ob����m�<"��-'�;s����g$���L����Bt���8Z��A�]!8�X;��ٝDp�!B��ѹ��A��)�s��Uc�_����1�ǻ�[������l�������E�6���0Ly��5s�[��c��+����Z� �0�c9�Wӊf`�7�pP����Ꞻh��M�481�ŝ,S�~^�ߐ5c�
���bV�:f_-��M�ZC��h~&X��3>@�8:;W�ҥ�RӐ�*��؉�S��ʦ�,$ݮ���񭖞9�֋Я��[�~�� �-Ca'dEČ�����;��a�U�ʖ�ef<k�mxH/u�[
�-[�hc\�'i��	���2s�J�	^���Yõ�y�8R�D':�u���cx[��f�,P��w��m;@��Zi\K�o˕�b�}b���t�>(s�{�����@W�׵2�8�Mi��k��|����&�rH�)C�,E���\-�' ��L|��t/�(	�hF s�x�����~p�+{��7�+����ZA'����h"��+�ε�Fl�e �ϭ�=I�WX�f�A��"�W��Y��q�ZQ��j�ִ�Ey�L�'�Vg���Wbn�������H�M��*d��F���3��iO���8v�N��x;;�U�
��K�ލs��A/��gf�<gf��sKO%o�Wk��fCV�
7�������cb~�b����~�XP�BU$�+T���+"G�z�|��
<�Ohrb��gsN��D9�t��o�i/�9]Un�B0S&�ǝmj����,q��1ȝ���uv{�WVr)�,�p�CN}:w���d�s�����| �I!�`���������^�z��8���,���@nz<�n�8ɆҲw;z��Y��ΫQ��R�E4�Rf�E��_���p=nr�gY�_�E�Ǐ:V��zb���L�RH)t;ޝ�u�9F���=Xx��`��-[̛:�Dp.�z��x� �k�*���`#g���V{�qUk�������s!�[7�{��yWX=T|s%X�z�1�s)��2<��M5�����׸�ѧ������gG����>;��
K����ikA�Li͖|K�Z�,��7�VT��)�6������uO�#F����?ٱ�����XhJN�d�����5q��M��S3�O��a��\Hv�4'�|��G!
�S���frnV.K����B9�Ղ�5K��ؖ�#�`s�y��G��}W�;a���s�n��>�ϯ�~��=m��@��� O����8��4�s��}25�?ѹbzx�Pf��!��,P��@�;|��?����{]������BP�i�5�Gй��uJA=[=����9I�*R�g[sp]KHU����o*�ڑ� 2�jO�y�[c]]�<pw��0}�q=�a��@k��3Z{�,f�~�u���;ޝ.FC8�(��羛���,���m�$&�n.ӾV�z��j��Д�i*��*�x�{��Ji��
�u���Z�o������' G.v��|O�oW4O���c�EnÅv�ZCf��a����Tw$�IS���j�u��n��i��h��s��nk�N���իGk}[9���$8ߦ��,c�c�)�2��;�46�V2݇}5�c���-��7��6��9����Ϫ%,]�,����OMK��y�'/��
����Η)ɻ�\_�I{[��z��5'�va�ٜH����-�؝;��X�2��#�cYh�V1��Z�M1��B1��q��S����'Kɺ�jZk
�7������z��_�n��S�@��t٭B/PL�k�/�`�(<Fo�~���m��+�P��~��kPY_����c-* @)*�;�syW:n~�|wt���95��_G�/����|�o�@v���O����Bx����ZL���~$:������M.�Ol5�?���
��!	x���3|���s`��2���0�1��Bd4��p_f������(f��p��wH��5T��t����r�h������P��d��J0��(lVq*r{�qNB�L�V/�ĵ����s�SX�fl�G;�Lkw����Y-������`����ݼ����}����k���X۹[7��#�Eq�/ur5����2��	��c��!�W�=A�8��u�Ek�ð�
���Jkp=\�Es�'بT+�E+A�7*U�k�e�+�y�y%\ۺ��l��=>_A.����V�J:��cT�q�55�)�����/Z.�u!������bʚ�������(���>�B4Q��_����VY���X�
��^���m�S-����c����M*����+��t�؊�1�u��KM[ÚV0u�Ǭݮ��f�QI=�4$�`M�1�t](�i���N��n�n̵�o˺�})V��#�Cޗ�K�nHËi�
�`]3��3e���.�N�98\�d�{�e���3�����6Bk��vAs"�f��p�&p�����#����=�G�V���5��#���t�Sѹ޵�    ����R��W@��p�:��4�z����\����DY
^���^�cf�C.~�7���|[ͼ��K�Pff�8d
]�� �)� ;T�7=s�ԗ�Sn�|h���I)O�ΦO ��
�/�Wg�wKĲ��2B9��n��wº����5�kL������/��y�rU�����P����;���]�����"��B-��
��+s\~��]�~�����@�7%�;�2������Tf����M[Im��M��� >@�����Ae�E���N�D�C���V��ґ��Uz���}�<���9�}�ĮI=|�bSĮ�<dM�CօY�Whe�J[B`z��_cu����MS_�L�@����L%�'
��jU�=�S�}�o��5=���tFwz^ �i�Ai��UUɺ"t�'��1�fWX���qĔy,���y&6��z?c�+�7����2T���]���[��^����&�Z#|�&+�h�)�ʀ&����4׽O�Y��K�=ە���w�{��|�+���S%!7���u���&����[],�1V=�Gk��P4N�sMF���T:|�����+��7��uO����^�������pa�O6�?��J���y�;�Sd�������Ͱ�_�@��m����=�G��9G�^_��ᵔ�lu�d��a�Y�h]��'Rz��/�<���'�ѽ���\��&,���<�w��`]=M�}{@nZ�Dg�|q���wO����4�j���dWy����'�=[6JQ��=M�gG�;�`�*"A�e玵�X�\w�$tf��B��!tۃ�ƈ�K�s�易�;�#�O��w8�)���C4�E�V��(M���ƶ���&��H���ƙ���W�Y�q~�'��n�J�,�`}�y͈Ϋ�8��QϺ)�U1(JQ���4��2U�����R���<����	��0�+��`��E�~h��*U6�	�<�3�2�nn�{)�F��*�ϙ��T,앺�21Ͳc��J��vUM���`�o����h$��i_S�=�h�yp�ܵ�ܧ����Yu� |�@�V�2[" XM��M�[X;����56\��k�����F��)rQ �\�dr�L��ʥ�q��^�~�mF��lYS�������X/���d�	���#	ZkΗ(���c-9Ne%j����`�}:��WZ�!/<��8���P������� �~��w��)����O�@�ǯ��9�c��Av<�o�L7dݮa�w� {��y����6��u!#UuQ�ڃGZ�=�zʹ�M2w���l�E���x�Η���Z�֎�Z_��YDݐ�aCF0�J�m����n�=U���R�f�T�*U�Y�xw���bt?
�{Y�H�; �W�}y��)m~�h��
��yL����٫d�5�s=�����O˻t^���aO,�μ�hb���.���1�y^� ���i�9�:�-�-Tz-Uږ����r��B)zCm���=~�c;LCeZ6���p>	�q_��Zz���0���_���k<��sl\�!�5�X4��Oi�1/�*Ԕ&�/��U�vx�gU�Y�)d��vZY�k���ZW�����I}Y?��Մ?�m���?�Dk~E-Z{��~��M��X�c+|��'p>�s�<y�N�Ux~���{�9�W���]��k}L_���ǿ{�c){�@��z5�/'u��`E��g �y�ꆛ��o��x�ۙ��G�Ҧ5#��hN㏼����a3�%�W������������vsG��\�7�uU�xb�Y��{|�(��ii�륦�)��W�̄����_�}�?�q�8X/��z黏�M����͖�ܧӮ��)xͼFsW�H᷌�ț?r���`{y]�ݎ����J���W=^�d�_��c�3���`L�������{$��]1d�*ȾX�����,�X����'��T�Z��o��fE��!G��'C�/8¤<؊���qp��Ko,�u�*�5�d���_�w���p�N�F��ܯ�������K]	��C0�u�gm~�Krg�\����*��Ay����h��OXi^7�k�P�V�P�k����r�T�h���5��Q�G��`�n��.���>$V���w-Į%6d]o��9*�	��Il.A����	L�p�CڂQ�1��%��-#sMz��<�^��� �V�X��Ѵ��$��ڶ1qM��"��ܓJ
c��0��9���[?��w�tv�y�?u���`��0��
���7f<�U�~c~��C����~���f�p0,��u�4���"7�F1�� |r������_�O�z���;��"�\��L\.*UK�:v߬��b�p�����/M��E��e�u�-kሙ���gs�~��4U�k՚��V��&-2&V�̆�Lf?��D~Jt��kә!��Ά�4��x3��da]s�X��?lI�<2��dҹ�6O�"V-�A�M��W�8���/dyM+�N����A��h����W��k���/�5�gOJ�o-m�_kE�g�5��\�D���Ѧr]oo������������l���4x���lY�R� .F��S���yʀ�5*�ΧJ�x�=�����l�d�����^]m��}�Epz,ާ��UZ�;���Tn��b������Zs��Z�pT7mRD������mA��O��w>F���bɹ[$��B3Mh]K��L�oA�1��mb��Ej��>p:I�=�!�¶�\#b�
�aΒl�Vm!����'�g敏�x�,.vj���\����FL\��Z��T�E:��r�����`}z��I Y�@x�''��ɺ&5{[��Κ>&�b3�؞bc�s�wt2q�r�Xy�W���升}�St}�X�:1����C������@�R�]�
i�ZbƖ5��7�H��%a3=��u �ܛ�5���#�˲����{v>�-�WR���ev7�j�?��r����tM��)�Fl
�1v�^3�Pt�ض�*o���i	6K|ҹFh�k!P���=B���|r��D����R��Qi��3���m架� �J�*YU���"� u���Vl����s:?=|H�������J�7�(��������5�}����d~��Mq{�����+���g<��T�w 쿠|==\�z���;r�ќ2�)&���<�^j�;��]/��sLimg�i�;�h0q;Ey��e����Ր�Gɺb&n��7;L�����ǥF5��,G��
p>����{~��?.r5��?��]p�#��$�
ӂ��Kt>����)���<-�����6��{e���$oE�$kq9{��9s;�>�AT�,ӵ�z����~���oW\�P���U�^��	���^�������'��
�ю�dk�T!k�Nu��ĦK��w�;���J�-r��ҵ��t&`�d�J4Q�T����ȁ���=4��4:��K���4��Ӝ5y}R��ͣ&�0�=Ւh?�\�=��� !/�M9�v"!:�I�\�v�y�YaTjp(��n���~:|sV{����ė��0�p��W%��Q��d��lm���J������	lu�p1��k�g[Ag�$Ƌ{rr��c�>�ji;vE����O���lך"�2gi��e<%u�:oN��;�|x�ߓ�pg;��A�4w%������]u�6���ο��=�
J�:��I����aCgk����,�s[#=������lN�f6��m�w{�:#!-asZv��%kܧl[Ǹm���_���Q'����	��ż���~�?iu�>��zN��������ѳ�h��F�^�2����loE�s�C�H&�c�QV�Mܙ��O������3�K�a�;G�
dcl¢������"�ړ]q(�^&U�4���e:c��A�v�>��=���#:���|N�~V�,�3�E��ӟCL�	�M�2Y���L'1�K`�*7�fO�ż�V�FO���h��kX��v�tjM	&�I>���d���c��mR�Y��֌�g)�): K2_�vj����4�e��{��Kt�j��j)��0g,��h<� 5�e�j���ښ��R����:?�JMD���'���    `�_gbp5�W�*(��]ˑ��JD�w�����"��	sT��&��6���X�?]���&񂬗�������m�ى�ln�Ԕ��u��|���}���5,5�M{ 8%�d4'�.�>SK��OqS�Z����Nb�34������w]��u���}Zg���A�:L�Q��@X���Z�-��է�sf|23�±P5/�f�.�5�Y�1,�%�*�)�~,��f�n1;-5���u�4�֔��s\}*b�}��x���@���Oi�Z��&^�[e�%�u��F�����%迉_���y�Z��
���^�SD��D�mJK< 2�DE����?jC�f�����1��镃۹��x]�aK���`��-�c��(~F+�3���	�q)FsGzAvk>�5��=%�����4�e*����F�}�ab�ۻXP��`�)���D} B��ߩ1=����?a��������UV��@Ī;&b�NG>a7�)��^�ԆO���*��F�580���n�LmJ5]ՠjR�3$5`M.�3�1ss�(5Xh�ӈ�{b�Mp�Z��I����zN�T/���S�;\ǜ�ZEbWlJ��1?j+�����������ũ#`)*��*���h�k�]c꛱	�Nb��%�f�͆�<5�b�������Z͈|��m媃�u���P�#��~ ��)�"4DkŘ��=���k�-�s��)�t֧�{�y�m\^���e�����J�<d�xO���[����ԫ�}��A���(�a[Zg�,���,J/���V7:��0>YYV��t��V�i�Lm�8����]}��!ZZנ5lB+f��F����� ��	T�!^ ���~���ᆳ�)X- � ��84�'2%&�A�gTQ��U�������]�����B� �������?L/]��\x�|pt?�{�<�����("��*.����1J���k�q��	���3_z�G��Đ��L�5�@�y@�-9��Hx��F4���6�ƴֵ�T5��=B�>Ǒd-��zk�(l�����t��[�m7�f����a_��\�9+]/���7t��zn���E����Ϯk��=�Q�=���l�V�?>����+�8PY�d�[M|��ܳ��B0��Z�y�z"3� �f������Ok�{5`p�6h��ȊQ�|r��k��fOz�a���:WpN�z �릁��u�,mmSY~d���SS��X5�
�ej�}���f6D�Os�\�"�n<�t�T�5
f�yV�^ܛ�+�c�/Ah�u����aKC�z����g���ަ޷һ�3���J�ozTs�{��0m����XeK�o�07M�º^˞+M1(rS LtW��uxio�_"v=��2����$�O)��ϝ�5��4��f�^�ܫ��`�^�{E����b��+��� �����P-�&W�n�j X��,�Fs��]!26�u
��^l-�8�o�3Gj��m͏)�`�Dۓ�c�k��ׇ�{T_�֣�t���y��wR?�?:K���C�
yZ�oA�Jޤ���ڇ�`�s�����O5����Gisl�ް��x�̍�o�`�I0�4����݅ߎ����yX�#��(A��<3��(zGtZ��֎qa]�ֽ5���c��G�����=8��2r4�����н�
$��#�,HF3t�d��b1f�`��'j����Ak��|���͠la슦h�䐋W�a��?�s/�ҹ��a]�XL�� 4n������*E�ˏ�϶��s&���h=%��b��t�d�Ea ��KP9o��;e>����̧m�	pW]W���唃kJK�i�����^��x����zA����^��OT�{�\O����*�8w��;Z��O�?+�,d���Q&��J)ckΗP@�աTO��S5	&���5 ����JR����b�n��h�;^��8�zp����?����16��J�3q-̠�m��٣+���E�5
WֱEE����'�b�5W4���)O��#����9h+�f�{Υ��� YK?tn����U��]w���_���Y[��3�hvyKCW�����!+�c)+�f׳�S�Z��s%�55���Dא�����1x-?���'�#T����{6�;J��쭯(C���P��$Z;��5�ѺB�@[��b��nM[��cyB���)����F����[��O�]������F빦�"�_��h�b�}� �bPg%����p�U���v����$���@���dgi���;�w?jtO�^�� Σ�_��b�"�=����z��ZjhүXp,8��isx�%Z+�e�z�m,�lAW��{�o5K�c�-�{f"������=�5��3Mn�;��t�bElZeb�w�[%��Əf��raw�"1�V2�M��V��w<�n+���ՍT�2ʼ�&6E��dy(����.��6������3������Z�>��8̥�v��}�t��I�a�Z�e�Nɇ���ߙ!4�������u���?k{�0�&�@U��佐�^G����h��:�$R��`&��k��Y���aMs�^L�7M>��&0X�GFF_,Eٰ�d&>��U[;�%�R�K��Pε5���7�B�ã��V���(9l�/��Iy�����3�BEbP=F��jv�(OɈN�;���Q��䶌�X�cӹ�T챴υ"t-�c�
�༦�{���\*��BW'�{���o�\1��P�Qs��Yc���/�w�� ����6�@����R�{��u�;�����W;^�����}M�{��+N��<��y�����ѼV������Q�YA.J��|(U��-c�����:����B��s��7�MO>��sc9=}�M�Qc�K�����������֧)U�s�����e⽏�^&��0&��3S�^��9�c�����(qh���UK1��cZkq���Ys�=����	ݭ]�3u-G?�Azp��+>f�(6g����xDN]�3S��v�}Od��r��εBMk�z����1,F�����/��k����x -#5��p�4�z���U�<��Ӄh㗺�j5�_23MyD�	)RbӪ�����'x;� �J�=����֡_ʎ�(8��u�yn'ӹ��1	E�,�ke�i��:�4��!E�����'���_�o*�2׬ �T�m�L�~��,�;��6W��%���+�f�S��,��	�Gpm�:>��u�/T�*��)�C+�z`�\o��s��=��;�}�O�6nf�a �X�z�4�����������ǱX-W":-@Ú~^Ȇ���!x�(���N#�k��Z�B%�u߼57�A�5� ��+E`]�9��K�� ��o��=/s�S6�Zc���F޿#����Lk}X6;��Jt>��֯j�9~&��N����dn"_����*8o~�֊Ĳu�C��Z�C&vO��J���F���R�pdk�sbk��֠����
�P!;_F�w�XMY�0�����l}7�L��9��st�z�4�X�E7<Ȋ5r�v�%W����3(����g�}]B�׹���4����\ݻX�,]״��������r����{y�3Z�Ogl;!�=�u:F1�&�R�[�k�c/�9��J�^+�u{�k��V������[����dw���k������Ã;�N�q�n�4�,�5c�5����:�&�Z3�JP��>x� �K��X��w��ҹY�<��e��['�Q]#B�|in	�P�S]*ÇLɺ�S��t�h�(*���������ݒ�)8M�Ü%%���Jjr�{��R��� ayJ�Y	5�����[�ZO���O3�ɜ��9��|��VN�@�b�f������|Z�W!_�i-셵�3��k�K���߶�7Ҝ4<�pFnxjsl���[;��Xɼ/��d�P�=Nh��&{��EW�ɸmX)t_������ӖR���a|Dg'��ٴ/�6�t�C�|[i�{�����z�j�/ȩ}k�m���	iΖ'��kmv�[�܊�?��O?��!@_���W�����;�[�����$���{`�ί�1���h��$dOD�Z�\ǐ�u;Y����l���ϥ\rlQ+Z�{\�y��:��7�Ԭ`    su��0:JQ��R,�3�f�bƮi��F	����X��L�]�(��N��U��VǾ���k)�&��R,����c~�����ğ��"�|�gxV�������i�=���_un�47���Z��u�am����Ηޫŭ���=n�O��=�Ч3�g��OJOt�9���_H�n]S��(�4뇱��[ٹf�h=��'�Eg�"�)�<Kk!2=H��C���@"E���*�3�t&W��OX�t'rY&Zv��Q�\GWm}��z�T.��݆l;�s�tN_���M�׵́�k�)�rP�M�^�r�m��El
dP���5�u���sv;͎��z�ԉ�f3�4�V���(�+�C,�&!|�4b�\+�V2э�?lM�a,Y�8�I�1�2��;b�.x�3���k�I�"�����i�=���N�J_�K:���X�}
�ڹ�Z<ca��h�����-��+�6��"ޓd\KL�<"ջ׻�rt��8ZAkv3r.c�j`v< 7��������o/<t��\�PFO�q�'Pu�ꄪwP�������U����ZxZzE����w�`A����{��3��q���uxx��
����'kUm�1��=�F�S����t������?�n�,����)�D4�80�����$�mx��}�ft����~��9Ego^%�S� ���3ѹ�T���k�~��17W:w��	�����Ș�c��}��Ml)�I����Qy4���}����%����N�:�{��k�h�{���
�!+N�sE�V�*h];��G ��z��/�ކ-&L��c��C���A��"x����vO7��)oLm���I�B�3j郕j�*,���sM t%#tM ԭ���B�� cO��c�'�=`'Q�C �w�B�C�MOba�{`fZ�C�:3V�2��|���Y&���'?�9b�R<�X���Q�GO�5'C�
U������!��dC�'�ث�=?���`��
�!���md���� ϟ,��Zgc
����#8Ţؓ�~�2�����(��F�
�1(=׃A-P�m�l��`~:���|�sM��Z��򎋩�q�H�@�P��]�q�Q'�b�S�o���kKW�?	L������u_ͼ/U��mX�e�����[�0I���'�� ڭu�=�����������;��Z;d�?��v��-�9������t�9�������������}������\k�1og-�^����Rx^4l3���<0�O�̜En�J��b��{��v��'u��8�i �Z��cl��e:0z��ӷ��I�h� =��}ރ���^��E�ww1s<t�3���
�6��h�9�h��{�曟#at-�B��,��w�F�/>��Åc�t�yh�0�)��=*�#L����9��3s�`���V�f���e�r��Tq�5�8Ħ;KA!&d�Y t�x�״ʟ �X�5J�(��_�%f���z�_j]��u�?��>>1�2v�uxR��R?�ڽ��[Ț-	�~m�ί�l�X��0����Kޚs���=��억�2L�N�g��{Z({��?˜W�@)��j�:V�Y��We�!d����ik����Gq?RUl�P� tM��zXSt˼�\�'�9���X�3rO��(�pd�M'�*�RW��Q?;����x��{�q-��P�f��8�������w���U�S�F�v/A.b�� �)�3Ig;�	��g,�x\�����K:�|@E�%3ױ�?�����nU_���"���#oː���?Ď֞��~A{�U�h��x����:smp��){ߖ��w���=AV�Y�b�g��5��Z����)�=K�c��'�w�*,5>U�!,����~2�'jE��n0ss�3�b� ;��k���ks�てA�kβ�R/�d�m�,���\1T���4c+���s"f,�#���~���Զ�¢����k�<�w���������b�v��O��� �aNa{��[.�+�D���r-(�� ��C�
Ø�]��*4�s��p�|�����j%�c�vx�[�0�ՈE�m�e���}~v����:&����T~23�Y�=���Ô��Þ
'�-���G�xG�{D�ޚE��μ56�wN����5�gM�a����K�����'��V�L���e��mz���u��2�j
�^'�	�l�\��Z�G.ښ�)0&x�;�x�sR�M���hkt���֊�1��Ҝ�B�Ɍ����31ŏ�����������O<���nT:m7�e'�����Z�M+�,t�*����7O'̞�Q�bgȟ���2=E�p��fz`}]yhc��{kxS���
PY�
�᭦��Q�'�(�?�e���2~r�ΰ<[ή��B��.�tp�\����+?����C�o�,d��ߑc�Ncl'o�Z�m��Qkt>o��I&^��9 LFW{d��R���	���������#��)[�c{��p�c��@lvy:d��[����?�F'�:�Y��'\sM�tHY�`�r��^����|���!�9٣f����7x�`�ds�4���R�V����5a��~�Az��x#6�r1����~"5�8`��1��օk���,��f[��o[iz2s^��0��~��:C0�b9k�~暙��ъ�~ĮxӤ ck�!u�B<Ȏ�aM��v-��mƎ�i���Wy���k��LS��Ka�'����f<D�g��dC�z�K�GU�wP
�я���\��/C�?��jZ��靼�ά���3�|�qqfV&�3�M.��c��� ���xV�ތ��;&��sR��P�s�M�k)
�:0gފ�aM�5bQ2*ђ5�k�Nܸ�Q�8z����u���h� �,�H�����L]Ke1�ɻ�����O  #�?��j�m)6���4I��Ħ5��}=h���բ�}1�z���r!2]�E֧c�g�|~�=@o�Y�>�)ó�z���p��+���/e���o����b�h�]���(�$F羚d"��D�S]{LyD�
`{�/{��rf
"\�#�sŘ�V�̈1\�s�!?�i�����ߍ����0W;:���P��������@��ap��ct�iѹ�ܑ�.���遭{��V�1��΃�O��w��	����~}��M],r�0xs�9�K������fE2�"1�
"������P��31���|b��ka<ЍF+}xy,����_��bN1(+U%�Zgl������@��,ƪ6&V��6��h�i���}�PaM1&.�.�!��~O82_~����KÂs��'��@L���+E���q�U%힎����~�З��-m���Uo�Ro��~.������*�"P��:''���ޫd��<�+��b���ej����̑��o�V|�:��^��ߗ>�E$�(�J%�\��(<G�:6A��/�����b\�,%�ŸLL��X��ƽy�u;%B��hP�l�3|�5��K�����4�M�+ �{���w�9ڳ
�b�~[\�f���բ%R�Q��f����}����O'����l�M(Ĥ���S�Ĝ5dgߙv�'�n��zOh}�Ԏ(��� �^h�~|W*�O�ǧ����!���'�rn�� ;���\3�)e2<���3�ͭΙd��=��ȵ�LK�)��E5�y9�F�5d��mpï��R���~=�'�&��k�$Ȋ��~��?ɺB�$W׽=�i�m��`j�a �!v�ƹM�t��W#��h����u���`n
d��=����N똨�&����ֶV&�χ�Ժ�$�K�҉��(|N�k�5&��?�>���uf�;�kR"{�7�rf�������:Th��˿an
S�^DŚ�J��4����2��b� +�N����l����jN�\����]bɚeK��Z<~�9�j�������T<>��U�J�in��]O��m=�К+��5�����m��d��}�d����]���{�9qb�T���3a�&x<@���@d���Bc��WY��P��H(]�����RJ�����Ow�kn���M��M��\tr�R͖~fܺK3�XqAkٛ�N���}���������+�    L�9�W�E�d�\	��
�S�V����I'$k�ɘ�
�iR��s�*��#��X���I�~K����Y�6�VԶ����#���ػ]s�ьr\_�ф�)��7�lЧWX��}^�����g5���?�W�34��x67 ��kZ"����2*ɚ�k�vx6���-O\���p�=6͙�H�3����-��*W$���A>i���"��̹��hZ!c���5�󞮟����m�b��MM� ���ޗ�'tݧ���EsWZLݓa͞u�s5h�33�=Ŧ��yk����c��hs`��v�@*�s
47���O�3r��,��Rg�c��NW� ���U�:rS��`Z'�:6:�r~���%RUhkv�;YS����\��O���5ʼ�cl��ؚ���q��D�*ك^V�䓬Tb%�l=Á�HuzlkP��t`}�c-�>a��jő5���ˠr;�� 	<Y332����zR�\Y$���qC�ɚ��� �<��"�i;��=�c_K�4[�oRc���=�v�ƔAѺ.��pp.����Ul��U�����y��H����Nb���]妢Zg!j��j��i��)�
k�8�U�>���ZsP���*f} ���_�¨��r��mXl
`^'h}���x܈�ր�Fp�@�w�����W���B3�,����IW�d�t~7���WA���s�z��5�P�\xS�o��4���h�ߋgk�YL|J;�~7����S��&�ڵTZ۔�����)/���U��%�u�c�ӂ<������.�ax-C�Kɠ{��G�L/�u�ܸs$dG�A��ӌ=�ӻ�W4��8��S��Qjػ���h�VKk�r]],R���,��k2��ҽ9R/�7�%sZ�\��oZ��5�D8�A�(uP*֨��y+ޢs��+u� ��)�el*{V��u,d�|�Ѷ���Z10����+��\즶�*��a&� ���d�_�-I�\J�V�q?
�q}����lJ�����s�,�;DƠIL���l)��{`�/Z��B�s��)��_��m�|M佐���ԩ�`bG�6g(D'jO�T12�i�w��;~Y:Ѵ�M�I�`*غ���23� `�uG>�M�h�,$�)1x=a2T�"����Τ�ܙS|M�Y�~�m�~Y��ZP߅3��=�� �ަ�����e{�ٸM�bW
�+��G�B������e#:�EXPz�
G����&�玁����� @���A��g�/m��':�A�5����i��uћ���z���sG�����Gk����z���9Ʀu��m!��ȵL�;�gx�Ո�����R.�mIn&�PާM���)�^�=��j��{>��h};��F���cCp�}�4�-�;�{���3����-'=#��k ��`���(Ȧ�i1>�� �ղ�[��8����$#�9A|���:m��Û�pR�E~Ϧ�Nj�2 YX�W�n.���,��Шf6�"tZ+P�s�S�\+�8�i�hAj��!�Kr�\Q0֤0���Ӕڻ�����������y7ת�ae�S�e/����nM���L��VQ�xj
�t��U}zi�����j�����T��N�ϥ�������d2�Ʋ*��u���Lqj��K�S�璵���n��3�7űl�Zf��y����5f��!xb�~�9��N�;![��9����U�W�J���LyY����mBw2�u*`<11
W����21��ht��=����S.�R.�w}��M��=�Н�V���� ��߫ѻ9:�E��z���֘��V�2�z�d�07�j��2՝����4�nPZc=97{�|�p��] ��h�Q2�Ǐ�_d��z��AdȣV����|�~{�~A���ߖT��=�c�t��	�wI>�<�� 8x{�Z�fd�H='�]u��X;W��ˌ����8?�b�kc�:����r�=��V��dtoGqo�},�n*������=ƍC뜷?p���}9��л��v���Amt~-���+�x���G���d�A��k�+f6}/>����I�?���u��"*��4��%��Y3�k*�ֵ��]L��FP4_��F��$�A�Gq��\꽻G�h}/[w�-r_k�%��,V���2����x�\�	1o�{�Za3c+|�`��!��fk�l[���s=
d�$���9��2����l.-M�y��)
z_Zr�+VZ/7Ӷ���ɺ҈`��$Rף�X[���S�е�s�tCk��d�
�pO�{_N���А�S��2�M���cކ�C��r�5�����S�T,׊��Y��,�wMH27͆�Z�}ƮPd,k�b4�Is=Roz>��5��f[��Gk0W-�#u͎���� ����[Zs���#��4G�ZЄ���Pp�9 8W��ؚ"�s��й�B�YUrU�g$i�'�\�P��5�h�F�\k�hT1;R��r���������2���q����L�J_�b}��pvsTݾ����˿犿����G�h/Z���'�ɐ�<�t��zBvzר�|���2��G/�a�l��u���z���WS�1�_�|��l��QF�c=��m�,�?*�O��:ߥ᜽�"�ϰ�!�Oe�C1�^¬k��*�o��;��K�%�.�����l�s/g�m����Ap�~���B�c��ݨ�d���aj1�w[N�j�E�1�������$g|zx��N���Z�2	�1����k�!Ta%ou�]e��q�a%�9�'�X�G�����g�˵RhwQ׾K�6���������j}ke�r�[|����+�t�|�+��Me�C�wJ��Կ0���T��H�%�9�����=�N<�&�0��������Ro9���§.�'�Ľu!<Wf�^Y[[�G%�Uv.[7�6&kk��n�n��]M��}.7�.���2���7��]���0��v�r����W�����z��x8� wKp��y�-����e��Z�����<�5V��`cՄc�˱�6��r�=�)��@F'G]�W%{�s��݀�Pɷj�Ia��Zk�I����~�C����y9ځ�M͟��Z�"� ��t�U�Y����~ �Ե��J'���[�z�6�[���<���_�zl��*t�PZ飼���٨��Ys�,�ce�ݫ��N��vx
��k���ԗR�4�O�?�޾Ksk��X��;ߪ��W_��g�:F+:��ӼL}xl9W�n�DjO�9�M��[E1��D�e���0u<�V��������οS���˓|G�K�>n�2������}��Ϣ׳���1�h�ޖziN���?/�= �{�����̗�R��S
Ѻ���aF:�b?cG.��w�� 3-��ӓ{��g�b�}�Q����5��`���ЏW_o���7ɽ�A���]�P�= �Z�l��"�%Ti��ܖa��M`P��V��{�v�u�;��\�k[Ok~��x{E�ce'z�.�æ���x�lr_����d�S��wߌ���ֽGihMwt��{�ێ_�:�2f�#�`�Nk�1Xf�P�X�����Y�{X�8����'��$��h�����c?�x�.�d�? � 1��Y{��7|,B�)�VQ�w@���L�u�=�Bi��p��`�m��j)usLa���p���cb����1lz��z�	�'0����c�y�ߐ��1e�+���k��ȟ�)�uR��5x 8W��>��W�ŷp�5z7spԏ)j���Y[�m{n�V��g�Ӟ�!{a�]���'c!�׶4�6�}�����t/��W�>=�i#
Jfy��V�Yuv���v�m�5���f0���Z{��yG�}�NĽ���t���.�[��9=�]����>���'zS��P��ڔ�z�;:Ӕ��Y��@�{�ֽX+��Jc-����ީ��=�%Z�m���_�e�]�&j�����ڹ�-P��IF�*T�\����|e�au����U�d��A>��c�%
Y�w�`� =��� W��F[C�[��klyJ��7�E��� �v��[@�7���W�:��f:C��H��b!9S� %��    lD�vl��Sg XA��� 9ͧ��&Qw�m��03��sϳ�!3:�:�O��i���h���gm���>��UmB=s��4���J���İ�����Ws��̼�����.�\�k���:�H�\
��]i��F7}��4����Jl�=��T����X���L����ƾ�a��Y�O���향R��xQ����N#�D��)U���ia�ej	���5?DkK� �с���s�,$;�D�5K�?Cn��_�!���Z�X��
��Һ#��Zs�)s�ck�9�Z�����m�&�K��6��5��g՘usb�����4�O�s��к��a���_�� 3��R��\�]�mlM%�^gi��fI���=Y|��m<z�P�e��j��h��p���Շ���;Lu��_���>�3�Q�k9z_�z欞�ck��+�GnZNFn
�	Pc��am��4ry'�a��X��-��kTS�X�TD�jL\�}��H���>����h�r��bN�WS��� �{ɸ�����S��e�V��Ѿ����[a������}�53Y���6A�"�����q����X�����kx����#�\3��'��9=�	y:�q�sZ�bp-�Ԧld�Ŵ�u���9�����F��l�O����?ɊOL|	�;Ys�i�3�u=�2���*�2y���
�i���aj�q�]S�)7̈́`>5n[���a�z�.�����!
�!k���l�s�s|�R?����r��ȳᔻ:�m�;��[�{�9~*��e5�.��wzP('��Am��$Y!?��\�?Ѡ�)M�j&gwC��B2��e�r�lp��[sn��Z��it�̝I�s�Z!b
��	�,�+�a\c~_/�f����rs�BaJ���:��>��N?����i2��n�BQ$cW�<��H�N�a��"��|�`)[N6y7$�>T�3J�c ��j4���ߚ:Di�Sg�BaM�9�:-��58/��vttf 9Y�LOz��X�҇� �SK��g|=�5���k�u���mO��|�u�K� �7k��O ��1+W�:P2���J�H�ک��+j0oMy`l��s�J�s������X�.��)T%�y�_C���unX�3h�C��#�˅М���ײ�L���Om4�Z��K�k+}�"�W��å����' v���O� �o�κ�1����f�	)wP����n����>z ���w�#:�_-<��-Bҹ�����nCl���{��z֧��p+T�nGOr���Hg\O����X(e2��zk�Y���M3�i0�s	�"G�%F�n�Z�b��o�L��P������7���b�>$|�e���4���>8p�Z	}���l���-s:W���n�[���''����}��y��j��l�<U�L�[�Y�=;i�5:\pS�j�;mB͝�5�	�if8��÷��]K���� �'�_� >��D�U�C�����@:ל����۷�)�=��xSS��hE�y��!9���3�"LĪ�ޗ�����;g/W�`�PkV�5�a7��j�I~/��ְ�OV�&<��jw^=
ќ~�Z�Ѿ�9��\��@�me�-L�S�W��S��L�T���;��0FM�"uE��_jt̩J�	����N��6>��>`�{�Z�.�����;8fOP�OkMlF�·3�����*U
kZWb�\G�g����a�]U~V�{R��v�1U�ֈ�Z���;x&�W�R��rNL�1�����F�	k�0B���V�;\ǔR�
m��>���<�<�\�:��5	?�������5֙_��i�ؔ��.DɅ�Y�rX�8/?���X_#�O	��7�����|ވξ/�$l?d�?�V���;��߭�_?%�ທ��u%n�J���D����c�PϾ���ޔK�߃���6w��w�<v�ͱmli�:���_uS��d�� 6E�A���*νsXӉ���Љ�wA������9<i]/�\���Ǵ�s2�����N=ȾLY)��b��C�=)���c�����b�S>�e&�&v���/�"8D�8M�������
������A;�Ul����J�@��ܙxE�[befO�M�A�O��%;��K�����w�$����֗���:�dr��j��Gv-xstK�2�},�����n~��)Xsa�����i	��:��P �i)=��i&���c�|����#Nc[Sl��]û���TW�&�P����l0�:)��й��b-(>E�[%�#����":�WJ9�k�A�P���`���u�2�>+�=�ާ$�^�Com7�T�*�gb�d���r��$9��e�Z*���ؓF�hE[�g����U��4���5rE0jn�B$��(�X�p�E
u�_{�g�Eϰ�	���O0����e���}l����6�uͷº�-���!uS��Ah�
l�����_R7G#�ٙ����d=�x]﷦�c��H[�n�(��3�_Aw�������{p���t��F�)>;����\���&�uH+�z�C2�,!6����?�v�djZ"-�`2^ho�5�����Kt���c� {d�\����M�C,X�Is���4�B�{	4�3��Z2߆[����xv/���*Z-�6l���U�{!o�l�aj���ܦ�ϩw�2a]S�hE�?Z�*�ýt�� ����y��Zˬ�ws8��n6y<$������|��8���#8���p�~:�״����[�ˬ��hJ=�8�a��r�]S퐵�����*�"�#O�0�z��Xǻj:c��A��i��P��Ŝ}��V2��o̓w�\͜4��Bҳ�(����X�i�/�b��dm#�g%�6f&�y5�{06�M�2�i�5o���r�=L��0ս�Y����̻�bRZ|柾�|׫>����Jx��[��*�{�g���*VA��]c�Z��V5��B?�~�Z���-?QH�T�.��KŶ=���#��/�ܷXH׊���^�:\��֨k�Wĺ�`Ssó���(c,��޶�bh�;�F��ƅ(@Em�Y�ښ�+��s��0
o��U��a�(��7����qb�Kri~�c�<4�x��4���TL�?�n��g5d~u�ۘ�1��b�x���[E��Vy�1w>Y�n���ك�w��Ǐ�_����{����:,�O[�3�ѹ/�`��P��\�ԑ�+��V��U{~`�WC�}ۉ�kN����q�Oj�^�cO%̽p�O A� {�DÐ�Q=ƤE���]��M'X�<����\(�	��tE�
�;��yݳ�Þ����{њ�5o� P�����b���\�`ѹ�!�E�Xz`{뽭a� {)��~J�G����~�d�S���ּv0�{��v�e��b/*O�й��XI�;c�P�=@�`͋�\3oU3o�Eh�>j� w�Ek�E���?>F�7ͣ �e|�w3}�-�>��ZY�80�i�<�*�ИŦw=y�1���p�x��B�7:�#Ӑ��]�fxи�-�ɿ%�2�Axq)bS{b��Qi^Q�/�S�r�D�X�&�R�zU������j�ZTa�)����(I��]�\H� g��I���WL���	M���(xD)���A�5b��;�]��u8%{|+���ɭ����֞�fN�u�dcWs{�����>�07lB�y�kͶ�������=#ڇ��,�>6��Z5�w�f5[S����F�ϱ9������ �i��0~�a�������u.��+��{��|�^ΙR��ZOz����=G�0����k���T�����L#D��G~��Z���A��9��K�k^�_�aj�������F��j��-��;���N�k0��Oi�>|����+��djw���G���%��{�Sq�	k��ك�ݑd��(F�� ;jaf��ab������ܷf,NO�Zq,���{<�*����a�S��Ģ07ZײT�B?�K�Kݹ�k�b��t���(���i6��:[���c�i�J�w�<�^K�} �n��H�{:"��'ȵ���sv��P�e�̛���^,�V�`��bl�(B��P����@fS�E����Ji���    U/�k�/���vZ��h�������cX'��F.�a���p,;Jݑzڶ�T�m����mU���޻��c�
�R<m�
�� ���4YeS�As�D�Ѵ�Ƞ��M���c�I16�<a쳴�1+���(��_U�O��kJ���K��־#���zx&39-�a7u=7��x-��T� Ε�f�� A��D���E6�G6ƨgĘ��|f�J�5��沉_�)���ߵnӏa5C��t���<��5�?�g]��MVZ��9x[W��%�'�;䚘�f��mJL\�h����T���~'C3�d�X��u-�/�^cK�j`y�%������xB�{�R���������fN�=�o���~��y��=L����;��7D��ɿX�k?�52��1�Ĺ\T-�� -:� �> h�6��3u�R1�
X�`	��{�l�+|00�~�ZSr��N�hڂ�-c�3����㇪�M�M4�'�=C�=���+X�R�I���^�}h(Ⱦ�#uu1�Gq�[�_����N��`{�֘����ش�2���
�|�ij���S���UY�2�2�g%W�����Ŕ���3��{Ɯ^��S�����W�[������bfV3�ö�{�KN���q���m�m��tp`̈����!�c��y�浺Nk-a�t͆�4u��,�k����:�V8��|q=.µN��`�+�e��K����3{��K��M'S��JC'
��K��Ð�GdZ���5���DĢ�S}W�=�=;ʵ��?�
����2��[1���C43 �V��~���ַb���[��w��ت���^j�naR�Y;���	>?�� ��¢�)�y<��Z߰�61��(>�s��l
E�w�=�u� {�|	;��\ 늟q���)� :�3��X���^Z輪 k�ޖ�g�b�~�N[e���}�0��9ەo齐�a��ܼ�
�Z�f�5��xw�
��7��x?�+�~�7m���\Oi�����~�xJ�w!ٯ�}��j�i�o�ؾt� ����������3wZ�����de��[?ʎ�Ӌ��U�^�p�u����ɩO���C�>=]�ON]M���U��u?�,1d��A��Y��|���)�v���П�0��OaR�z��jT}Kns���\ŉ�̐����{�[��'�N��O�:���p&�݀{�۾D���BZ�yڴvs�VG��L�J��V��!f��Ns*�ϵ��(aҽ=�;���9��zL��,ͩ�L����s�t�D���+�Mt.��<P{Ʀ�2�y�u�/�I�6�� �nģGo�Ƨޯڻ�M{�{?K�&cR0�R0��J	�M��;�6����Y{Wܞ��>�N��N�\u)�#�93Kd��&s�G�R��j%4����l��5��T�>�l]&6�o�����ἾK��r~��E:e;�*s����t�Ll_�bS�D>:�rO����}nV�{n��'�x7�+,��)�2{�{�|���l�á��Y[��s�����Z��g<���[��N{�6qn 7�b 7�׽���K�ojT�sL�*��`ؽ��C�����"�g+�s��y��\5�3T�r�.]LW�����4e-;�����{��p��%z"�ۄ"��u�;;��77ߦ�vB8�OQ�U�tE�^ȷ>Ȕ+����m�Z,˭��|i���X�D1�N����l''�U�j����^���o]߉�?�=��?z	1d���>����!���-�@s=������oh3����[Ú��L|>�h�7�?	@��a�m����uT�=1{4-���Og1���r>������!k Y����"�ln%��Uy{rA�y������)�0�%�j����[�ث*�]���8}���O�t`���h�η�2֊z�;�fUD��S�r;f�c�L�u�>�I/`i[z��ǐz=q����ɔ4�z`�&��h>]���ܶm�)�wJ��������?�*�׽ɿ�=?qy�L���Z�C>�b���naɉO����b��Y��R���S����Z����M��e���̭hb���7����U]�U��AD�KHsD�$G���E���Ş���.�f��A�͐\0+�=�Q0�F��2cv���2�����ѕ�b�[W`a GU8�v�j�uL�1��@���S�]���/%�9����G��j���S�1L�`Z{�`|[
�I��.�$;5������06��5���e�����Z���E�Ǎ��R=�uK=�M�_�F�&PX�>�7�#NG㌦�w&�h��PYݮA�-�g��5�cq�;���b�cӨ�����] x٫�qJ7�����G6��d����iͱ4zT�;�@��h4j�c���ۭ?��0Hǚ�����G�������;?�R��w�2��~{"W���ydpZ ���p�:��k�Z�~;ڨ���Q��.՘����o�:�c�-��y�t���f��� �ǩ���m0{�ӏOK��o`(n��pn��p�;���u�[?~����9?=��h���T��(�*���u8׋�+axu�-�FUWj�+�{��m��8�MM@,����Sƽ�Do-0ա�'T�S%	�ޮ��]��zt	[�Δ@�w	��3�2�E>�9×��Y��!$�1�-���Icϩ�����gs�DS��=h٩[@Gǣ��Ol7�9T� S���k�{[t�b�[�=_A`�s�i��H]�a�X��F�W�3��������J�㢿�=d��W�Fw-��W��
��SO<8���XR�Xy�2�"� �|ȨM(���$nq�e`���.�`�Ǝ��nw�ƭlue��A��?��w�Fܞ����Y%�q��O�* �>豕�nWC���s^ִ��d�hz�vV�nӠ�w%\[��)�/��~��9�FmoLΞ6����=�Mmo�"�V}М��mK��&�%rd���$�4*�M}s���0��U�c����&�6ӷipT�a(��`y�!U��|��d�.��`Ƥ��.�B�z�"�"5�E�ѡ���mK)m��SU�x�W��mC�x�����ދ��[�ýY+���h�s���������a�7����ۘ�z���c��d���C��k1�X���
��}7b��o\S�@=4j��sOp��yi������|�J�]&���N�2%{��n���5�N�`�;��{L�j
~�Q�%E��r�t��a�暭�<�������?~Ǐ����B������ ��YF1V�
���V.מupL*bl��r�cG���v�J��J��@��,.�Ƶ��M�h� l*D&��`��S�a跁yKWn�3/�
�>e�G%����գ������S�=7�ۦ6�m!kz���R��L�ƿ�{�׭�#�?�w��܊�O:z���=��y����@��F3���}�o�� �}�6fL�Ɉ�L�=o���o���B��rf��Zi%u�8��ۺn~g@���>ꊅ�7-d
�##+�e��q�����d�]��{J�'��yF�T����N����j7U���u�m����8�1~\<�R	�y��p�I����3������������>�^גr�ܶ�w\|�h��x����'��M�,��pW�P7�O�k��Z���9�M����Rؗ꘲����88��3���U��MK�J/�͠b�ɽެ�8��8������u!��7��b���6%츩	K�z3^6�MB-���*�Kyk�����}Ay�3��;����%c���)n�d��R�)�Wn��i[��]�
�6���}x9�P8�F=�5��ۮ:9?�j�s�09����&�׆�(9��y��:���T���e]�᫓_�2�gټ�-��C�(����2�c�Z����{F��Ѻ�]W���]����E��r�%�j뷱zK�t���߽3C�����xR�۶ S[`j�cϩG��/Gv�L���m�2v^�S�,��qg�#W���R�pn�c��u{~�a���s��S�4�*7������
>7̗��H-8l5M��!�,���t�|��8��`e��)���'E}.    �^����o?&B��|[J�n�:�>�2j?be��Xٕ��������Dp�|��-��y3�p��M9�x�=�lgj`[�S<� �<��xL�i�ί���qO����^<�,��Ƒk�Z5C�n&7��߮ܓ05_�y �R5 KԹ]��q%>�lՁ?ٸmz�nӏ��̓.nb���/����P�kaLI�_ha���O"U�A�m�M#+n[� R��������ې���!�zd�e��)�yԨ�!E�8(�wƐKEK=F5�"�G~��=���n���5�ȃ:��lG��qn�u�$�q_~(�(�կȫ�����ҕ�!"��e1OB����q�rC8�4&�I��7�+s>������ObK�q��$(]zi�W�q��6�2v�������/�Cwq��繁\ut<L��<���w �:"��<��E�~�>D��}:��%��z����kct���sSD��cX�r�����;u=��g<N�~WA���]Ht;S�ͥq�Cû Ӡ�N��Ls7�.�{���ǆ��Aw��Ane��7]���<���Uw�pX�S�|I����~<��}ΠRn�T��U�׎�N#�XZmbb�>��ɏ�0w�G9p;1��@�	��h��f5z���uL~�:�FMl�)��[����ҞAvjCcӨ���Qk`�N·�g�j��N*�W�p��Z�����=�ue5j�ca�+��C�P�C��jӚ�������aH�h��(��mOZ��i�h�S�����������6���@�+�ވ��n�|L
P�R����m��Χcg��g]�hn�`i��;��3���3Q��q�}�5���W��et�	o��I�kK�X8X�H�e^j�h����r?�e��f�H��Y�5���c���6���s�F�]@�Ȩ�&��;��p�2	o��]��P���C�RI 0ufA�PG\�W߭Y��O��h嚮`�1�-�#���i�	`��?���6�_v��YD�f
�A7�RQ���cO�ލ���h�?�@�S�5�Ncn�KzsX�/�5��n��o������c���H�n|�b�5ne
��N��;�G׺�:;��l㪌��ֽ��Q�p{C�7��=�.QB�G
�����s���=��+a S�`��*j\}T0���|Gu4�&)j�V Q�br��h�s����Ѕqo6�N�cB�T*Y\6��"3m�_�@΅#���!�j5 ���/����H����q��𷥳On��"3��X��@��n�\��@vE��s�1�*�:�+
��
�?��2�K��|�J'G��37��@���£��?-�̧~K|������N�_�fԑf�`��FX�F�Jt���c~*׏��Kq7]:M���@��/P�9��^X��靂ɩS�F�
�G*<��;S�g��O�:�[�ZU���Q����/�B/`N���4�Vܱ�
���"�!����ug%�&�ӥM����3�c��j��d|;�f#{����qkP�Y�Q��>� �N ���l�q��=�mh�����5�И<0��4���{jԍ��0���n� G�=��y���% ��˜
W5�4��~��ȝ�i�y�&��&�J�ۄ�O���Gz_��`��S�q���GC�8����\ۮ�qWc0�6}�x|��P�$s����(ЛZ:
=Sgl��~3�ݽf��������L��ٲ@ʲm��]u]%0sj&al�|�v��f��}o���-���Z�~�&���s13sC`l��&���A��� ����rkX��E�����z+x;��m�©ꢨm���H�u45� e�.�Lm]E��t�gfTa7�h�nw�v<r&�m�"6'�@�M�i���6�+�.�)��� �M<ї3d�8��]�N`�x������-͕o�k���W��y�u,O�ǗYڽ�9��K�M��:����7�ə��5���vݯ�eV���6�ғ>-^�O�#P2jO��Р7E�8�̮D��Kf`�o�4���j �3]�(��m��7��s+�1��j�N3��k����Li�v�k�?�鞮k`��������[��ü�%��b�ئnZ��w�0�h!K6W�]֠g�H]70,�Iwz.�����Y>��ME��f�٦Ś�	1�", ��^�k����n`���BMQ�I,H�Q
p	�c1�Z��'��0�>������ƉgF(N<3q�7� ?�s�3�kڗwI�tȢ�T���p��cH�ٚn�<Wz4`g�R���h��̍��:�k����wC?���Y�?д�;b�"M~��I����셐����}��7^p=������3�����`�&��)ЗB5k�瞉'�=S}mN�\^�QV�%�J�]���M�mK�A�a�Gъ��{��SS;kj�=[��ud�kh1�£�e��bE_�+oRc 8��o,Hɰ5�M�=�� C�ړ�l�g|���55Yu�TWZұ�:���>e=�S��Q-v���\q��17�Vf�,/@�isْ�75�18r�KC9���1W(7*ͭ-��fsm�(չ�b�.�@�R�kbl�[U�g�� W�
��-y��u|�|�a�����@�3A�]�evdS��Orl���z�0(���U]0u@�m�9�T�PX�l�>�U(�_13{(�_�]F�j�f�)�b�h�`9��r����/$9�Y�4Kڀ `*��;5��f�΀kR�j� 5�Y�ha�V����a�й⨻�.��%�<!Ҙ�s��Ӏ>)����c���i�����Tc�����S�f��^Њ�X���٫��Y����ˬU�$3��33G�33e��l,�.��̓�lU�/3ڠk1� ��|�t����q]��G�v,����̦o�6��T�l�r���yn�ͮ��{Xu��L6�D�S��Ђ����+���$�"�(*{Y�㯮����~�,�LXi-��Y��j'�h�h�����-�pj�(��n ���ӛ/j+��T�U(�S�RKR�Kc�
�Ry��h/�u��=��,E��U�t��@L�̓�LAU�h�[�RX���*�y5&�+�Qp^KpbE�T����fAY�$5����j@�� '�-���$Ɛ�{ﬃ���&��y�r�w)[��5iM��[�:�k]��b�`�g(���t`�b3S����qzP����3M��\�k7���>���:u��벎���[0��Ę����b��2�MC��3��E��A��e:���]&.X�9!陮�m쑻j�.�\���i�l:�-��!~r�i�=��̌gc�[��d06����z�Y�,��b���LɅ��drV2/l��ݼAX��8�fzsP��Y�Hi�1$�bk��\	�����Ẍ��F�Ċ�݀��e:c��b���9{���/��4��4LH�4oqz�R���ʙ(Sl�M-����H7qj�[6ì�>��I�)zu�z�ׁ3�q"6�w�P�0��ȠX3�!�3I���d֙׵(Z��!g�^���قۤ%���]�p�><u̒�.ӌ�!hP�9p�2'6v������
���Ye�T��vx�R,2����|u0�:�y�S7E����ح�},�U�t:z�7� *M�ۦ�f�XK�(
ݴ&�P��;^��R���sS�F����5E����a0ˏ���n|-;DE�J�L�N0�M�e��M�`f=��LL�7���ıd����`�B��f.qY�u���H)��8�F�$kbo*e��Q)�]��3���9�q��sJpu���}x�%A����yH03��� ��2��z,��̫�̣tsMi������J�ȗ��56��H�ö�㻗�ejA\��I�	f�{����;�A�xk���ˢ��W.��5A��`n�w1�;��d@kS��RZ�ݫl�7�f䚃��cۑ�){�C	��͘y	��[1��$���L��XX�鰐�̺�2$�K~ajV!���P���G  X:cK`�&��ô,\�h���9�iZ9�ba|8�X��dN@��P�=    �l�j���-L��+Y��Me���."5�qU���Ԏ�`����{�����p0��M�����f�� ,"I|g�3���4����`�L����dF����4T��!������y����K,W�%r`��{�)O{z����� �TG|���4H�D�V,@�R���[g�n�Yps	U�H��G��d�(3�J��\��g ������J�ȴ��L�a�H������N�ⶥ��I���3�ZQ�w�Bi��4!�iR�T�.[�����h���Au#���2���ߥ��ԙY�_��'ǀ�x��㙫��i��H�*N�Xz�*��z©`�:u+α��W�<wc�I-�b9�z�=dY��-|7F�,�+f
=(�|���%1��K�6R�iZ8�Y�������Y��2�Z1?8+�u�`E1��j�aILc��d�a��?�l��`�7�8���'���c����Ò�Q�2�e��S�E��3�Y�o��<�zШ�M��Cu�!���u&��Ե�`�w@jf���2�kX��[��/�\����klq�^Q�Ә6�'�,�[��@D��5:0�1���l0D�i�RcU��5�ALfi��n� Mc�&n7q�h�}:���ti�,\y,A���=z��o��՛t�-t�����W �ԃ��L2l�L��m~Y������FƬ/w����f0mq�c�X��dF*�s݃�Qw�o o��%AN&� �S�X��� �R�����9f�3���.>,r��D��2v�#�5��WKU��d�-tez��|R�]�U�t,U�B�V��ӿNWԸ�O��)^T�=�}b�����ŭuEYŬ&]U!J�.�R�~��	U(՚�O5����S��*{��
Ś�ЃE�uf�t¬0;0J*113;�
�rK�4�l�U�7%Q�� NSn� Ѹuu���]�Xo��X�\SH�v�e��t98=띞�Np�B���tMb^��)t�&\�23�	z2�L�A|�e� ���
ec0s���P����LՍ�5�a*̱,�&`>T|��=k�����ӈs���=:r~�SiI�#�5�`M̈���܃��\oj�`L��h�CΥ�aQi�А�[�[�4L��j�^{g�����Pn���X�x��F��Ϫ�� u�R�e�i^G�����@��X2�(�b�F(,���������
`z(���XmH���捆��T\�̺�Ŝ�P���G�i��"zG����{��r/K�Cy0��|�4�c�)GO�hF�-g���4=vE�Z,��%1�	(;+�Q��2����	��Bb�1��L(��&`�2���EETcf�A:0X�������,�M����`��U����!g���̅*Э�IY�Yr��S\
�Q<K�+��WTh ��p���)��/�v�F�mMկ��F��B�Ƃ~8�G37EJ:5{RG�.� [���e:5�k'c�qR�y�˺�U�%��&���w�N� Si��i�	%;� 5+�	Z��?��M��e
��b���*��)�@�v`����@i;-��Q����M������0�)ZT�V��Q�`ʷ��͉j�<����p`�.��RTM���G�MzQ�X�8���=ul"3p���<-��Ev����vB[vo��|3X��W��.s|9��4A&���2�j?���y2�'䤭O��X�@F�5���u��҃�b�<���� 3]��^4�"6���{�wK�;5&t-����c,��P�6��m`X�;e�!�����2����e{A�n�E;)��X�������}�As�1�D��%�k��K��M�g���0x{�p�{`� ���-Ӹ�7�kq5�TڥA?�S�n;���!�Geo�L����	�x`S�-&>6�*l�	vP����M�uM�0Wb�g��=FjhݴE�.���5�Zt�Y����,t1��P@i�?�;=�<Q��R+��e\���1�?�Hf����g\�03�oe���j�Ҹ��8�R����)Ah�n]�.apَ��:O��wf�@?�[?0�c=N����<آ>����^j�X���#������5�ۺ����y�`y�+��zoE��%�/�|��T����?�u�[���_]�ݡ��#
��Ii��'|}�/��
-�}	��/��*�w����d|��u��J�ݥ�]1�Y.��2�ɖ�m��ux��7/�U��+�����˶^-��${~�o^�@���R9ޥc(�yϗSK�G��tPi����o��s��n�4v�J��?� 漭�|��1y%�q�Lv��oR'�>��Ge��8�����z�R�OrR��7�T}�B�U�G�m�+�	}t�£�'��t^�
g�Gn�%n^�B��.�7�5Ln�Ea��̗�r!�y���	��\�z�Y/ru4޻�I��N�#5�6we�A:��eO~��գ��T�n9��Qت-��i� �����eO���"�ykTٓ3�+��|ܗ7e6��^�U�ER�JN�A'���%C�,/5�uݍ:D��ELy����x��M�=�o���'�����똟â�53��y#Jٖ�y�Џۅ_7%YLʯ����,A��\6�m͗�j�F�ÓNHS��>a�c{Xx������V��p؋ں���qȍ+��|Q�?ފ�ޡ�؞�?�P0ͪP�ãq�p�z��m��z���B=��a��[;�v�{�˾��:�/{�?W�@��[�q}6f�ޫu����"�G��.�Z�P�r���n/���)
����ULV�>x�0}��9����I�D�Z��c'��rW�x�D�ʣ��pE�%ε߶6^�Mo潝�s���k(������Gm�)gA�<z.	�y���ɣVS4�.g5�����
�!���,�e���'�i9��/9 ��I�]ՒD=�Y������[ ~�>I���[�/=
M������.<��F|��<��(}%��� ��kBս`�9n_����k���+n��,$�3��(��#p����oSh���0�Ev��
�k]���d�ʉ���?*A��ST��!Q=/-�����`���O�z ]8��h�9C�% vS�"M>K�S��!�{JI�O�7��t#��;��M�=*��m)m�tz���.��h�{=����\i���U�N�+[ �6r�(�osO��+MZU��sm5n(	���ut�t��?=��J�Z�ֆ�o8+���8����e������	@J���Z��$��_w`e�g;�����K������0�JO��(��x����6�<G��?����SEuم"���3�K�g���7w-�ڔ)������T���9���8��*�w�2�ǻha��m�儚����}K͎��O�ޥ�@w$� *$;i>�^����`r��BF荒��>�7�?j�K.�|<��s��!ǳm��rt]�ɕ��%�|��rJ̽�K�{��Qn�)�IV�����?WT@�Rgx��\qCQ����yM%���s���Y|������\<�[���u��"�u�P{-�s�ěVeN�W�`�5"�7�\X�M2H_�;L�.�n���3=�$ܒ*�g֊�4��P��᪼�o߆R��*�ݦ�58�/�W��I5�d� =Z��L<w�S��Uns�>�	�~y�3��ë�6��e��l���RL�pe�ړ����z\E�(9��N��V�e_[K:��nsIC�ZgW�[��?���R�l����4+����M��4Sp�{����3E�M�-�/\E�w ���Y��t*^J\�4������<fo��i\�aw��t|I������k���W:�����m�vOק�����2���x�ʘ���+F>Ѝ;ۑ"h���n(�=�I ��;/	�Gz8�;p������S
b���M8��A+ѤL�� ��-�n<te<�����p]A8��O�‟H��DE���lΰ�u�B�XS�sb�F���b͗x�<�&vۂ?p�4� �F�#����B����R�Y\�O�:AME�O�HI��S������Ƕ0V�,&)�V���e��3]�    ;�O���PX'����� Y�r�{�q�菝���z���FE#�q�\��3���"9aq�^'�@�u����a����S>O~aم��km����߉A7�'6`���k���v��N�3I��E
�J�؃�F�1��x����Qa+��UA��*�E#12�aSLy��n�p�2��L:���[��|p+��%dvJ�>ۓ���;՜�<
o,�#�3Ge�Y�@�k	�q5��F�'��&(���3�e�1WL�Wv\�������ҫ�1���,���[����`�%F���u_��\T7.;Sq�(��c����x)���z����ʕ�G�D
FWj"��H�P/�D@1����J��;�_Rz	��X:�`B�7�$(�æ2������[��w 4	'N#�}sKJh�����\�/�оk��Бt�Ku���o^������k���߯m��S-�Q�~�g�+_\����G�84��t���iӌ���i��ӵJu��̆Ci�}���{�j��]M���A��A��g<!nu���fGPy��[X�mN���݈���'�q<�<��t���.�zg����1�JJ����.wp�_��6TK���n|�t��s"�QD��Õ т��0��@�������5
����Fծ	3�W��Z�"Xru�0
�,nF���w~]����`a�#~��Sm~�}��	Zn�=�;#�G�G�&>x<z��G<��*�`�܂�z��'Z>`��IQm����0�u�b�d�̹�҃ᠫ�u��۴�ɨ)Ԡ)`�s��eF�*�G8�NA)�Pp]������U�6�R�];�{�6x����jJ�� :��9U[ad��g�Ð�m�#�s�{�!�t�Т	ۍ�����t�,1��� K����~���'��Hw��N��P��¯���&�Ĵ;)z���w���g8�F�ћ��5n	�
��{u��h��Q��D��������N�%�5�E�naj�?�6l o�@9����
�}�6����M~�㐊~��kD�� ����vy�?�C��r3����d�b`�1����N��걏��<P��==����>��@������G���J��c�.`��av;朲�k�Ľ���"�Ԕ�0���k�i1��F��(Y�.AWN�s��|аk{h�w�"����n�����QǗ- o�ds.�!��R0Ŏ��t�_h.35��z����)���u�4����V���ɒğҢAlY�b+���eO���:����P�U9�G��z��P�?��^�[�O�!��r�	���Ƚ���͵$����ݩ�X�I wD�TwH��9X�hR&ؓ>��b��z��
�+�5��������_�\s�PupX�88蓞?���C^O�&pΔ���r��qYbz���`p�eZ� �ѐ�����1~�';s�NH3#��S�]=��7HH=��77w#�7Y�8��Z[��Qi;�x�?8�)���p�ő4�U6G ,����u�c������,���XĮ��8���k����̭�&���\���(�Mֺۘ���w�]'����|��ʹ7,�eb��K a��S��<u�7#!����M^�!�@�ܢ+�,M�y��ˑ�6��(zd�Y��������0���'a�&�r�x�ֶ�$At�O���hl����xE��G��71Bp�����̎q���ԏ��E~�؅C �� 
D���g]�Q����@k<���h;U�g�G�R�$�bC톸�܏��^�a�@2w��i��Hc��О7O�/���#���:���DC$Pl|�fk�%ФƱ"R�n�/Oo��>����r�r}}�����Z;�ӘҐ��
nG��ߟ������G�!��{��z�ۋ��W^�߷?�K�vq��x3o����oVb��Ubc���R�+Y�����Ɣ{�;t��aO��=b�x\��GܝH֧��e�,�l6������V^���K����t��7��T�S߮��Dg�]ϼ�*I��s�x!�Ο�*��S�NϞJ�<QOUG�����
h+�}}�=��o<o�D� OI�
�! <�p �t�Q���߈j�6n�D�Rм����M�����v)�罷-!7��Q��W=8�4�j���>���`��Z�C�AT��^;Iy�XW�$&O(���3fՌ�n�����}<����x�J�\<�S����C�����(���8'��FT�i�� �^uw׀���v��6��;�����"��-��f��z�)��t�)�y��P��8�;Ф}2���e�9l���
O�!��3N	-AI�
����C@S����x9��U� �<^�wFN�ߩ:9�sH�gc�x�nИ��8M�76�]a�C�v|�8H{��1.�Aci�Հ���P{~8�!L��"8Fq���G�l�E�_�Ҡ�g����߸}�՚���� ��m����?~��%�s�&��ÔF+ד��C ?�q��T�.��6����[��S�H�x���J�E����O�p�aX�[���
N�~M�@��Ү���:
�B�_�t۾��wzP`s�;�UI�gM�x]���v�	fk�Qs(-���� ��3
h2�P?�mx��A�.��H��ѭT�����2G�g,�y�y<�o��^Z�F} g������!�7��} ��P�o��˪p����C�Ns���3�
<+U�<u8�,5���^�s�z��W�ZN
9�"��=L�,D��XiM��̱?pÛN�MlO��v۞��������� �����K�a�:�������-X��eʟ���x�[��ΠD��c4��35��	P��H�r!y��P���=�����(��p���ðy�"~����ac�3֣�kИ ;ŝ��(�T��Uwg���ئns�p��_�������S8�@�������W8�O���~�S����#`D����?O��M�z��3�Ou0>�*\�fQ��	�p�k"/�75�ɯ��-7�k=��'%�}�$>s��1�_�`~�l�k.�_�s�?�ܦ���R��w�s��+ɻ^�4��M�P�a��y%�5��cc�Q a�f�)ikn{�����k�����3ñ@�����`�*۫�`��D�s��܃M����1�O��X��9�c�{��,����{#� ��b��!XU�A��{�<�!�yJ؄�_�9�@�[���&΍�(�NA\%<R珎���=�$�dyX��x�Gx�Cq�>CkL�3��#<�M�G��-��xݶ�sj�����J��瘷�SMs��������ü���yj4rB�G��g��s�[�S��8�<A
��	V8(�-�)�BB|���W�W�멇�\Qi[1(AQ����<}�����C_A�K.���~ףڵf���,��|��I�J�ݮ�J���N�ƴ{������4��"��^�,ͽ��=Z~���G�^w�W�����:#��������~��3u��W��VrrX�*��5?h$��OIb��o�mLu�3x��\'���#�P��&�%
"�|��
i�.�O��L�X�#��?��ܕ��\�tt�_�?F�\�s�ʝ��GAhf�O^�&�b��� jn��`g���{���7�N[�ҏ��3+
3Q�!HfdW�7Q��klF������?�G�l��������<���-*F���UK�G��U�s�WD}oC� �1ɍP����{����|k�<{�5��Gw�D���p���&h����T���=�AQ֕�>��rp;`��<���!xV�"���w��$wʄu��o<s9�M��/�>�D��X78$���l�1/X���(i[�?�b�#l`���G0���]iuW�e��ݪΐ�2�<��/ݗ����I�(˂����!{�����Fcv�Đi��O����K��Ҕ'�b�ң򘂚[��B�{�|�SZ�0�����N�?8i�H������%Zw8{�5v0z]&�\O �����LT���K���0_��q��    ������T�e�0����6��n,�yŃr�3�Hԝq
��aR�G�A��8�Ll��z�x��K���`��p�h�d̷��F�o�|K�;��Hۿ�������4aS
���n�Ǘhݣ�?��(��oRL�b������
g��z����J��]�#]Ri�������LD�6�~4����F��*n�ۻ!V�XqC(���^=�����Y���+x@r<Z�.n3�'�@ϫp���x�����~�Y�e.�9���<צO�$����y�]����������(��>)�w���g��/���A8P1̕�ɢ��?��D��~ �M��Ǔ���q�x�0�����񢱤�yL��1��&�{�0?�|���h��<G{](���r��1x�v?Rx#���I=�~�䣛���F�&|\\cN�r����^?�b�g�-x��k�h�m4�>��ߤ��0t:�x���M��6A�~��@'�6���Ʃ��<W�l~ �-ܳ�y��Z�]	�^�x��ݕ�N�4�e̐��8)�ͼ�3䌄@����� y4�xo�|�����'�*�t�{�-j\@���	�ϯ�>����@�OJ���[��s͏D�ֆ�t�)�Y:����5�
m�R��]����R,X��� �����{1�3�x, ��a���E��y	�>�������QX�	`�������<C$�0��M�z���|�Wx�I��T������L�|@s�-����	�qN�d��O����;׼z�%Ĭ�$�$��8(�E��?�B��j�΀�I8�nV�\�[Db�����$<~�Ppc��ï �.���y�K����S�S7٤ouo���������aUM�O�݃�)���h����zH�7�ť��@}n_���ҹc�����+��=ޅd*��Р�>KR�I��� ��2y�D1���\��=��z�'���̭��A?�����s�yM���/R�g�1���W!+�?y��H]߻�-'D� W��<ZϦ��ܠ��O����W�©S�T�>'س{�U�㷸���k��J���ᇉ�3�Yqz�.�祄��H',��<a���f�]�`d\���M` ����<z}��ʭ1�f+\�X���q��c�ϱ��Q�a;x���g�a��d&}+��΃��~�
�$ͳ-��q�y<��>�`R@}J��Ը]g�[�:<�������OJ�M�o�ljI�t��c~�i~<���c2�ݽ��c����QDT[���[�T� ��X�jAX���ĒFv��K�j�A�+�n�{S�d�a��x�@̌J;X�E��e�3?��#w�a��&���)�@ժ'x�@CZ�i�#��5ƸS�	Xvꄳ��)�b:T�ЃH<C4؋H:��c��<����� wF��������4@!�P_�\��'��FO�#p�ODG��g 㓄���V�3�g��,�h��o@Q'ȃL+���� �qf,��ƛ(�́A��?k#y�%d���hz��A�y�L��	~�}���	��G*M����^\�S��Q��hlș>W��yHq6jk�G"�ܒ/����"��_:\^m;oӨ�~/?��/h�q�㿹�]oK��=����ӛ�#�U3��7��}�|���v��H8��>�߼�5·�)=�Cx�!��
'y��J��y��ô����������	�N�G��rG�,��qX�8�$��F1����-�P�GU����{-ٺ� j5��V�=�������߻��u8�;�?c^㷷y�Et<I���"��`��J-�!`��h���a�<$�C�m@l`$���5'��A�0���@��ΰ%q����|��H�AJ�1�=�kiS��1�A�x|��-��np��v >|	qJ��n�ׁ�c��0PH����yV 4J�H+\Nh}���:)��#33p��(:�����:�E����%=���y�.�\`��<Q�Ök�k|TzC� �S��ɉϝ��d��Px4߂���at�ydx���a�Y��9��1>چ��ǘ���(|+r��z�����\|�g�Ǩ�^ c���	x�"�G�2�=����`��"$��o�H<���������cR7�<!Q1Y��NrՍ�I�3��~|�)̇�"� ������<L|!ʺ�o%V"o����=��f�y�:A���1"�]G �������-`�#XZ���Y���Ll��nB_ҁ����F>ֽ�
������c٧t(��k�Į�׻g`Q����_� �M�(���s�Ȃ�Z�?��J*��qS�~�F��������G��$����{���<G����׃�K��F|+Z�����\�� �T�LH��(z@��?H�%�O�7ݠ q��׀r5H�j�D�����D<H����@"گ|���Ѐ_�%���:R�
U��@^�X�𞊰&`5��kT�a�RX]������,�a��;c4�c`�����HsN�R8R��oaJ_���c[��Y�'@#�TsF�l�]�? s#{:z�X�I��!@j��0���'���8I<�	�cR�W��Ї=c��	�Ӊ�s��๿�ܭ=:#��? �Z����rwd�'���ǎI�i�V>�H����s`7m&>0�r����n�]Y[v���s�ņT��I>���n��n�V���	���]y��q%h&����'Pb\��o�M��m���ǘ$0�,�������x͟�8c�<�V��A���͕V�\���c�nИVҝ8�H1T�G1����;�F�@?��>	�E�ܶoԃ7[WB|XR�p I��Ä������i���j�}���q�1�a�(�i'yc�if|kh�<��@�:�y��]7?Q<v���cb��r b��ٵ@��O�es���ycڎ�~fz���_xm�=�Z���w��gůL�X�\�|�;��`��j�ݴ�7ė�.'T�W��P/
��?wI�^����"M�WaC�`'���׭���d�čP��������I��1��7�Ky�����{K;ێ�Qo
�K�ϓ�;��K�U`��#������h��I��Է�Pg倧�ɳ�����x��:��;������p�E�lݖ�6W�y�i�`�i`�@�n�r���כOX71u}y�`�_O	m<��?����x��|�S�@�<���x�i2�\t��m�r�.!���%l]6<$���@�۳���k}-x�f CRDoS�	hF��q,���ȃ�4�d�����\��&瑣׶�<^zM��|Q���[Fw���C��Q��c���sso��h�Ը��#������W<��/r���
��%	h����I>H���o�<y��cv�n�n�!y�`��gmn �d?�!��`ک~������ы=�����Շ ��㺑(:�}��k��A`��h�5ni����	I����8��9�@�j������"���p�M��#�Cs�F�w1�<̀p�n:�^�)��y H��<�f��z�Oм�!Q�/`��»��{�&k:qR��	�̣�~r��t�|~cF���8�D�M��o�L�����{_��eP`�-]�ԁP�GڒȺ!���D�mH2�'r�l
֑gO�����h0"};��jᖪ�U�i%�R^��3%8�_�h�O��z�.��]]���>$���O^�����ɹoW	|������Ѷ�5��3ч߻�zL78�;uy�s�o��?$a�,<V�������R��֨���cq\}�֜���[�#P�>W^�;�x.dt��g���*$�Wߧ��t{r���ǣpQȋ�*\	t瞐�4�V��e���ϧ� o3�{FI@"�r�[ٸmuh��A"�B�W�3g���=.Q?@$x~.m����o�I�<�<!%��͟%Qѻ$���`��<+C?��,S6���T�fQ�%�0��C�i|�ԡ5&ig��2��$ɾs�������y��"�M�hP�']�H��f[M���n5R�E6�aL��'$(y�wa��:'L�f��(�    ��Kn���I�莊\�Diؽ���<��v��K�*_�>�yJ�;ei�+�s�������_�K��k��8y��k�4��/��4ĕ-��G�Gt
��=ϸ�sg�a��A�\)u��[�be��:��sp+�0)P��T�@͟q�&�W�&II����i"�
=)v���.d"���-��#
��q��?B�8k<��G!71�nT�j�~����&����X�%Wo��M�[А�J�Ir�̘�d��)!	`'�/v���>�olQg��_�#�}�1�Ӂ��Ƥ]�Y<B���fT6�cP���@w�1p-�+�~r]"[������B:C�&Vyr^��~��r�OE�-�B�FفK_E��VL']&�N߇����]^C��O�կomC��ϟ���k_ʻ����'[/��_�����g����Oc�[�Y˟{���p����(�w�N����O�[�1U
���D��\���[8���<?K�~�vR㣡�� ������ �ɥ��\;�0��������ޔ�v!�3�>�p*��{��] ER&��q�uK�d�<CO�{��`4�2����iK�B<1E� ��B�Y�w�t:�����J���{q�h(U�o��#a�SaO�`+6�otE0��k��Ѽl�<z󚰥-��9�Q��!_}a��۰��x}��h�:G�@0M�Z�����p`�>��Ŷ���)H����/LF�Z��̵>M��_�&��oXc��f�9�~W�H;8O2��d��u�>�=U<�0��!*y
�����mvR�v��0VV�]�y9��y㝴���d�^���n<?y����N`4�@�;;^G�E��i������Fc�œ�@YJu�6��r��?��" ���4������
� A,W�g 
y���_i	����Ҍj�!���a+rgm� 7t��b���W�D۩<R����{��'rc�i�y��g1uG�����9���WP��<40��� �ϓ���G��ZN?�f5�]�	��1�[��������G2��<�Y�Z�������$����J��W���hwg?��񧡷�?���F�^�R|�?���ij��^�?o���+�3@5ֽ��F�I��9����g��U�'����^�����b3�7Vz�_���p�a!��f����O��E�W��O�a'�o)*��,+/ڮt�[C�����J�.EZ�5��?9�.�=���z�Z����Z�P
2�k�^�;���!|����ja����Z���'����;�ѩ��}��=;���1�����Ӵ��km����*MhH���C�-�Sު���o	�3s{���hM������)�1��0~����Ϙ W���b~���Ǭ�h4fp6����3R����gL��?a\�^~�!5o;#Z��o\^�p����;f,)"�����u��j���ӆ�ɖ�����\}�M����Ԓޠ��H�2��z_�&<�����n[�^o�����w�u��f:>�u���2/�H�w�U]��H�&�T;�����\�]��\�>mce��ڼ�>��k�~�ݼmI;dt|w�p��Pߕ|��祔��l�x�5�U*{��n���Ԯ���}��������z�aOZZ���R����\iJ�hW���k�맩kmO��IǷ�(Y�u��������@��� A�l� ��^# }�����I0�f�����ݶ���ᓲ@�����k�9��/t<6�>_����V�+[��? 5�&����H�>��hо�Y�@���
�<P ��!�[Hj�ֹ�x�w������\@.�)�>|;>A���Qa)ꝡ�d�	��'�z6���("D��B�"I՟�]���ꔕZ�:g*h�����T�e�g�v����R��[ �4���/�B�΢�h�z=�����]^g�m��.���g�i|r�	M�ߧ�^������՜Ư!H��� y�mZ����C�Xw#��ҶF�FË��Kk{2ܭ@!2��Ľ�SV�����jE��]!��tO�Js���L�<9k������7�6f���B�����7�5;Py[;| 4�]� oу	�y����K��ԃH4u0|^����v��ԣ<T��k�I9��]�eۺ�hj��Ǽn_<j��*A�-�{Y�M�G�˄>��Yn#~���&��n���3�Ÿ��g���W5n�:��m��Kmߞ�?���v�v�y�_�z��]�����Z��gr(��=үK�H��z]�!�����췶����U�sO�ć_W���+�<٫'{��-�<��G�vFgе���VV��_FE��O#ܸ�&F�l[iOJ�Sv�#\�u���Ä��araW���8ߓ�[t���q��e��Ү��R��焽E�#��9��n��7�`ǹJ��1��L���)?�_���Kז��;8�����#��m��0�v��~�m^���2y<9��>CR\4��3�������q�/K}`���F�V��̖.D�7=�Ms�TLirm}�a��a�t�������ڷ�O��4C�i[y<�읤郰%�����z��]	�
�2EeA)�W�Eځk��1�}T���ſ�Ky��|�^��~�k�r�=���Sʞ=t���7��˷�vѫ�]:��;z��~��w��Ũ&���Ջ�F���"�q`]w=�-��?���|�^�^8�p�`��K��y����QvXFDܒcL��c�"�wy� 'l�<nU='ov�E�T����6�W7pȦ�m麆�i���Uծu���J0���s�×�3'(y�z��}r�����c�4<L�5��Ilc��	�Ԅ�����<}]lE����<������A�+��?�y�J�ܕ��S����r݈���~�&70��KXM��y���Ģ1>���3�����!ލM�W,
�.`>_`@�Y߀�d'��%��g�Z��1^�/~t�w
�֞��l�������0~��O>^���S�����������_�I��#�]��t~|���?��Q[��A_
}ߍ~m[����9\���zT�o����c}�?�������=8\�ý�>��{��UJ���צr)y�&�]����4I�L���w�Y5U������э( %Y�O
����GU�Hy�Y"y�/��u���)�V�*�roT�M���隹-
,�&��El�V��"�$�ߧ�S�ٚ�`�bm�9�cp�WxI�o���+!�C7(Ə����퓎ϋ�*\��1���K�?�
�p��QP��\U���1�	!�@��<�He)ӧa�G��Q���b��H4큭�xx5��3.�!w��D5)& �iX����q�@!���QZ(y�T����F�mK�	 �#`'=m�٦3�Hm/��x�(DN	�}�F�>K��&b@_���`6�H3o'��I7l�[u��m�������� 2hS��_�wj���|b���L?U�c\��<& !Pz1�u���R!wB`0�2�c;�5�I@j�P>~<��e�~`	RӲ<��?�'a3�@C����y���y��c��קz�@̳�~��ݳԃ��@��zP��	�m�I��G<��_؃���#� <�nϭt��=���:
KGˋ]�&w�K�������n�yR8k<�K|r%l.o�o�O��B�ٟ�E�r�8T��\G�"O;D'BuNy�lA����yR���?:I���%���>������3y�3�]���O/&�E]],��������w�=XHu�:������v�����?��?��i��A:�}������s߁��~�}o�6��l^�ɓ*��D��{:�o���M<c�z.��7w\`c�c\E��}�o�gW��n-��i\�)�����R�iF�U4�Cj�
��(�It�啗��m���T�~DU:X�*Т��>H$��V8�pLx^�D-*��./��/������    �K��x��>.�B^���	'2������+i�!��XaL��:�a|TP� ���;�E�)�[�5�کN�����xHWb[AnU���v�VMZc�fL�_��B��j�+=$�ў��P<:�c��!��sP8��}?W�Ny���}��񩅯 � �n1�@T�d[tG���sz�9�A�{�1�.���<�8��I�ΐk����˻Qa+��Mr�I��l&�x
=Z�B�T��P'�?
����	��9�!�B(�1X��� �o���*�i��
�ڵ�pm�B�4�FE_�=Yy�rC�?���'`'~���@d�F�&�N����Q�w7��y��9�ѥ����#��w]
=;�q")wg���D�����w��p�}��3�&��c��'��s�d��?(�r�=~ .?��'��M�p�x �D�;�=���򄿂�����_^Ƨɛ��N�G4L�e��v+Q/�����`3��\NlAϐ�[g��DY����J�S�oў���b8]g ?,v���i������!�_Ϫ�����n��[��я��ݮ߾�����/�蛂�J���A���vG����4���J��.��5��G�_���z?�?b��?�������j=�4aWzI%��<f���&�����
���~�Rm�������f��^/�r�'��9�4�;��چ}u��h�"��vp9�Rr�����FΊ����F��P�s�hƄzt:�i8��������D�ȇc<�3U�?�A �s�D�����U�h�c�[ ֩ b�{��撷��xM���-���y� ��h���mn~���³��d�E^�t��T�[���A�Ф�qh xpA8+���� :���/����B�&|�Y����K?�E��# ��~��{�)�n�0�%n�Ӻ����ȳ��Q�o>�1(pe�1
Ec�W(G9��j��y�X��r?kȽ�O�XY:��?0�D�T�ӱNz8�lh�4�96�FN��?����2b��F�<���ݖg��w{U���4.�����Y'�i\r�9�n��kWw�L@�U��C"�ܺ�?M>��ܳA����1�t�Zк�i����a<��<���ߋ�[�6j6&ΌC�rF}Ж^ލ���K;��	}I3��?Xds�zSF磯(5H\�;y�[�>�$L�Ky�[����kϻ�&*</�6T�ڟh�_�����Bi�7r����}/�R=~b����1y���1o����t������@z5H��E�G���#�9�1��CO�Ko��2�G�!��xv�}�Q�����Uj~)mj�p+�V�m)+��2}���77O�����[�������ϑ}�[�s(ۧuct�8���v�>��ğ�B)#���)�)�1zC���G���c(�q��.L���k�pMi�	L���=��Kg�]���̹��)n���Rz��ȝ�ǚ��͔t_�;rStj=o>�����-�hup���9E^�O/�S�24!(F�ؿ�W�VA�'�c����í����[����h�3Ɠƙ������bԍO3%���6��7��>�P� 2�Ҁ�[ӑ`����/�ϧDD|� ❱�c_����xZ<l|�M�o�c��i_6A�|	3@����5�����i�
^T�C�q�q՜8~t	Q����XB� �{pi{�T�MJ�9� &�Ql����Cl���X�$x
��'��9p�)�C����@��������jI��fP�k�����פj/(��f��iRԘ�f���۽D3v�q�[�I' ��׷7(���4�>�dr��f�<�6qS�A�	�����N9�R�R���� g�)���>��{���q�D��O�=�Tc�ܑ>Y��������"���`���<��B��w������(ID�H�)��u�{ሑ�s%�K��~�j��Tb5Q{P-��� S�Cs��k�C�S��kv5f[㶸����:��ǥ�g������8��������y.���%qޭ�~Y�gW������a��E[�.[~���Fip���wE��/��+�J�ߦ�u�h�t��ִ��A鮘w�n�)j
~鷫����oL���)y�5�&?�jQh]xJ��{�\2����s~�u�'��<s
S�
�-y�g4�C0H{7����T)>
���4���[a�����m���J0�^�;��0��ؕ�7F�w:h�}�@�J�AW�'��x,:LB�Z��ۇ�� <L�a���9��o���0�
y�
0H�<�V
�+4���Z�c;H�I�����,�R��]��	�`�@Ѵ�)����t�����sF��4�}P(Z����� �x$\0���C�G��m�� ��윚�}b���>C�춆�oSd�OxLH���B�ԌLj�ా��������I������H�.��k��Z3k̟�R��"/���I ;�����}{8�v�3��Ҥ+]ޣG���#7+ȭ��X`K��
'%���%��<*��y"X�IY������(��>�����hD�����F f���iT�iK�{���ڧ84o>\�������F3�fQ1�v�v���7�t����]ݷ�x�17+r-����;.�ng�N_�b�4�*oa�L��߭ߦ��Z>�"����jvt��Zǝ�B�5�طa:��+�R(�t˨ы�Q���P�����,�48Ԩ�v�&#؁��c4��(����LG�/=��"/^��-σK���f9�a���ѳX�<r��'?��m��'��+/j~���(�!���}����}<m?
���gQ֭b���Ⱦ� bu�S�,�B�[9B�@A'���0�KE�2�J^�|����T�ܯ�%�-�����n	-c 0��6 �<�tW���30=����7T�M�Fϸ�;�1��
��s�#�#�¼ܔe=$gL$�H��d�-y5���|]
f�]�g<�
��:�L��
��q�?� �.��=_��;^j�@���U&HNy�u(a�37i�'�l�p��M������>�w}�z���Ͳ}�r����Ao�Vd�I˽^"��GM�����(~xя3�8>N��8������?NO��/zR���晦z�9ur*%�2z��C�M��bN��6K��h��%J�#R�ʡ�rX���s�Wu7
����>���6���^ۖo\���\�����cr�^ar
���j��3�=�+��Ĩ�!�0J��,���J٩�ӻTY�٢��Z��s3B^-UOJTE��b�
��e	�饁��	�ד��J�AJK�����=7R$:tpv9u4�hn	��"�MpM�}�5M�D���0a9.Z`�<r_����zW�3�u_�-�>��I��Gd�Ǳ�-�(|�m�O�}=Nv�=�q� �#���<� ���(�ə+�so�N��۩R��H	�n=k�3��Ђn���K ��Z0���z����R�֓~]���:��UUNЂl*'*�/IѱZO:ZQ�w&�[����*Yz ;MJ��p�~K��A=�|ga�����X��;N�-	7��M0��n��0y�O�1�����ѿ�V�����o
Ʒ)X�B�������`z'I���%�u7+zF�q��ނQ�Wᗊ�
|��i_����f}�}VR;�6��eh�G�敔5�p)\��>��O%��R8İ�Y����H�����W�=�y��.a�Q��Ԩ����`/�ec�z���DEkT:J���e@yN���F��@��Y�8���@7�٨pUԷJ�^�U�lz��+���.Y8&����X���sz���T���X7�S�XQ㯿�,�L%v�[�R�s%n�-�i�Zy�������������5�JU�c�L�{I �Ӝ�9�ڂ7�T͸�XP�Q��ߖm���U[������S��y �j�^���.'�����6�(������k�|g{��U��j���cP�k��i���[I'f������J@����t4w�hn�*j���s7���1�3-%�����?z�X��v� �  }G��m�FN�u_�m�^귣��dL�N�cr��*�\����eQ��E�\wՅq�ߦ`�6�]ur�}J��w���y�vV4�%U��(��̞�K* �~���py۳��xR���Ԡ嶼��8�Jߊ�U�y,]~@w�S�P�_�P�:�|��+���6�Q�ߦ���[�ė�1ev���Y���x�Ҁ%f��Si�&��y�V��z��e)�εD�Ey��T���?�W0Ʈ`^L��h&x�h
�b�ye"+S��upG��O���k��K���M;�w��M�;�~ݚ:ς��J�Y������Ƌ��+8��f��X"SRǅ��K�b	�U!���G��cKmy��%Y���ݩ)�R%o�"�j"-�!Z�$��/)Wz������%��;�T��aXMu����2��24A��fl�N��*a@�[�������n��5�].JT�9 �qsK&�%�dᶜ��[D�mnn����<J�J�5]7�̹�m}~E�]-5
>�!ATF�RFn������*#F�NNS
Ց�K�4}�D�AR��j��ӽ��i�<E����Rn{�޲��t����w����ZsJ+{ڬ�Һ��F���s˱ZD9D�F�\�%��l˱�`D�ޟvg��T�����8��^��7�w=x�m��8���4����u4�D��� ���1��;]���F����~�ɩnԨM��ܣ�ߦ��(2}��2��c,����	�3c�RiIԬ��6q�x+c='��0��*��>>*x�_���^5zR)��9�`������*����;Q�`�����q$Z�����`��m�շ&.����-�zơ�dJ���rD%rS�o�/�F��[ۥa����n�j�]�)C	��N~I���&���T�H��GJ�)E!���)ZL����dH��Q.V>�P	ӟ��y]������p*9�k_LUI�B�����YI��Y�s?ʵH��p���%f��������w��Pp	>��Y'B��W��'����mS[��4�;[�͝��~ęOz���������>IQ���GF��=e���_�T>�G����[��(�1����܍o�c�9X�M0�\���Z��hQoܑ�����wyI����%}��ھU%���o��KQ(U$��LJʍ��Jh�ڝ%�����5�M��H��X^2��F?�Jf��G�[| G�m�Dp�o�Z ���w>Z���hŜ��u�{ő;R����G�㎽k�@5���Z�W�V���Ms�+V���)X
-��FJ�Oes�S��f��1#>��͈�]%����X�^��LK]��W��7pK����zl��~�#e�y�9��!b`喗��YG]&��X1�h|;���N�!����kC��������G�]\���<f)K�`���[9�馍o7
�|���G+����Ü��`]X߶�9���wQ���7�w����a��F�A�`ע	D�`���`�j}#�w��y��~9��� :����V�t��p�`p�;�~�7��A���♂�����^�`�^����]�l���`�Qw�uG�hpS�~ǅ?=�҉�E���8X�p>9ĕm���`p:+���u��hݲڳ�������*7�h�6��~��1؉������������9X�����FG�E�G+;-ݔ2%�����'�UHG+Y�#ݳ�n
��h(�T+T~���8Ft�ر�6�:����m
Ʒ9XY�����6��wV����n
�R���Q��&��u��.n4v�Iw��I����e���B�`�I�(x��@GC2Q0��Iw��������|��8�5��n
�MM�a~��V�[��Z���F^�Ӂ���3ݒ1�M�֝��Y�G�/%J����:|�6#Z(Q����nA�KCjǱ��V�Wf���r�J_�W��$ߖpDx r܄*7-�إ��7�%a���{՘�f��[|�+])+��K�毺�=V��f2�R���LH�i��U~zՍ$��Rw+�JH�%��<ԟ+��-B��QȮЛ���^�̑��H٫��":uI�|� g�S��3&�?��u�
�i�[c)�w�R�mm4�{����L�C]�F\��,gC���P�L��XOQ�z9��j�v���3ߞ���k}���j�h݆�0�}���i�H��te��S����-�y�lp82���D�G'�#j�CMv��y��y(��t�N����z��y�H�'ݰ#O�9�a��;W
��n톐�)�����,��b�{�+J��@�>^z�EnC�]
U��iI��By!f�󊐫O�}��1���Jv@ﱰ��oac^@�M�PF,�x+o��Ft��K�]��w��O2�]K�?ʌ��|�ջ�G���Y&�v����`�trX#jw��G��ù�F�n�C;ݜ&�A5
���F��Ji>�
(:�-�TOi��0�p����m>�D��vS-oX#T	;ps��̊}��uI�SIw������`�2%��&���Nwl�y9�k�����M�tKf����o��5�ql4o����J�����o���ѭ�d�`D��s0v���=�v=�^���s���Ha�c�]E��צ�\/���{թ{Rx���x���{4G�
�iUx���*��[�߰�i��ZF�<C	���n�΋�K��7�}*�b�U�JH�4u\�!w�g�{c�Bq:~9��u���@��{u�AM�X�B��F<�V��z�E7�
�w��.�}���+9p�.0Dѩ�K�޷�����U���S���[��T���]�SB�c��М����U��rD�(��3�l^���n]wzoH=9�z��'I�Ɯgl)4/c���o*?j�˹y�MDI���:��T�j"�B�u�J۫���X@;�.M[��g[XuH:��!�Km����%�۵�-q9�ߎ	Y�;��~���
,ב��}b�
?Ò�Z��q�u*���D�fB���|zt4O�P�zM���(a��,?����(W��S�zi��:l�
��M0��q�={�ǝ�i��x�եb�cF�.�YY�Ꙃ������ٴF�J�/��.;��-���-�����E�W��O%�ӏ��$y�W�u�ZV��T��A��z��HRl�?�MŐ�-[MԩA|BY
�^��8�.%��͉Y�1}U��^.�D�U~�9����U�g�����m(����[�Ċ*/���R�>Z��;H�c>n=��a��?���g;�W���I�Z��ͯ�՟��fY�2a���G�-�w�z^�U�ޛUԧ��C W�Qh�^�BQ���G�-deZ�9�t{��A�1�y�:�0��K��=����ڹ_�S��+��N���>2)����(Z{vQ�S��T�b��Z��3����*������t_�������M�e!�٦����(*��PIEq�a����@�<.>8?
���͵%"�%��6��z֢/��u��}E��40��ޘZt���]�G�����ڋ@�<V,��Z�{(/Փ^�]̜c{��.N���SB+H8����j�-�W�Xf/,�_\mVܣf[�KDgߊ|���]����_�����;����4�Tw��έ���>?�/{���������>�&�g�q����X�NW]�h�^�ծr��`]���bʔm2�U��r��El�H0�v�Z�R[�َj��aN$���ՑM��;+�G�flw�v�+�.�F5uWJK/�{�����\�nW�U�&G��*N)XQ�a���'�ߕ߾g�����xl[��z��aW� �|�`�y5����R�S�JE7�n��q���Bi�־rH>�i���Հ��q~/|
>|��~�쏊Lewr~��������)�x\QY�Z{����"Yƶ5�ޓw���RE�[�
��MB�z�o
��P~$�h��3��ʒ�I?;��3I��nR+��'e�So���VhS1��]ȧ�vGܪ�-�����y򖏵<��AD��AE��/����F��m*R/�}�^[P�D����������w��4     