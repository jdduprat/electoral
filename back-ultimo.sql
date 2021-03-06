PGDMP         7                x         	   electoral    9.6.12    11.2    o           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            p           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            r           1262    16384 	   electoral    DATABASE     {   CREATE DATABASE electoral WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE electoral;
             postgres    false            �            1259    16416 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    16414    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    192            s           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    191            �            1259    16426    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    16424    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    194            t           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    193            �            1259    16408    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    16406    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    190            u           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
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
       public         postgres    false            �            1259    16444    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            �            1259    16442    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    198            v           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    197            �            1259    16432    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    196            w           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    195            �            1259    16452    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            �            1259    16450 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    200            x           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    199            �            1259    16569    candidates_category    TABLE     �   CREATE TABLE public.candidates_category (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    is_listless boolean NOT NULL,
    "order" integer NOT NULL,
    order_reports integer NOT NULL
);
 '   DROP TABLE public.candidates_category;
       public         postgres    false            �            1259    16567    candidates_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.candidates_category_id_seq;
       public       postgres    false    210            y           0    0    candidates_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.candidates_category_id_seq OWNED BY public.candidates_category.id;
            public       postgres    false    209            �            1259    16545    candidates_election    TABLE     �   CREATE TABLE public.candidates_election (
    id integer NOT NULL,
    description character varying(120),
    date date NOT NULL,
    current boolean NOT NULL,
    year integer NOT NULL
);
 '   DROP TABLE public.candidates_election;
       public         postgres    false            �            1259    16630    candidates_election_categories    TABLE     �   CREATE TABLE public.candidates_election_categories (
    id integer NOT NULL,
    election_id integer NOT NULL,
    category_id integer NOT NULL
);
 2   DROP TABLE public.candidates_election_categories;
       public         postgres    false            �            1259    16628 %   candidates_election_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_election_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.candidates_election_categories_id_seq;
       public       postgres    false    212            z           0    0 %   candidates_election_categories_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.candidates_election_categories_id_seq OWNED BY public.candidates_election_categories.id;
            public       postgres    false    211            �            1259    16543    candidates_election_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_election_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.candidates_election_id_seq;
       public       postgres    false    204            {           0    0    candidates_election_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.candidates_election_id_seq OWNED BY public.candidates_election.id;
            public       postgres    false    203            �            1259    16889    candidates_election_parties    TABLE     �   CREATE TABLE public.candidates_election_parties (
    id integer NOT NULL,
    election_id integer NOT NULL,
    party_id integer NOT NULL
);
 /   DROP TABLE public.candidates_election_parties;
       public         postgres    false            �            1259    16887 "   candidates_election_parties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_election_parties_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.candidates_election_parties_id_seq;
       public       postgres    false    233            |           0    0 "   candidates_election_parties_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.candidates_election_parties_id_seq OWNED BY public.candidates_election_parties.id;
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
       public         postgres    false            �            1259    16559    candidates_electorallist_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_electorallist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.candidates_electorallist_id_seq;
       public       postgres    false    208            }           0    0    candidates_electorallist_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.candidates_electorallist_id_seq OWNED BY public.candidates_electorallist.id;
            public       postgres    false    207            �            1259    16553    candidates_party    TABLE     �   CREATE TABLE public.candidates_party (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    address character varying(80) NOT NULL,
    color character varying(18) NOT NULL,
    city_id integer,
    "order" integer NOT NULL
);
 $   DROP TABLE public.candidates_party;
       public         postgres    false            �            1259    16551    candidates_party_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidates_party_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.candidates_party_id_seq;
       public       postgres    false    206            ~           0    0    candidates_party_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.candidates_party_id_seq OWNED BY public.candidates_party.id;
            public       postgres    false    205            �            1259    16668    cities_city    TABLE     �   CREATE TABLE public.cities_city (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    department_id integer NOT NULL
);
    DROP TABLE public.cities_city;
       public         postgres    false            �            1259    16666    cities_city_id_seq    SEQUENCE     {   CREATE SEQUENCE public.cities_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cities_city_id_seq;
       public       postgres    false    218                       0    0    cities_city_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cities_city_id_seq OWNED BY public.cities_city.id;
            public       postgres    false    217            �            1259    16660    cities_department    TABLE     �   CREATE TABLE public.cities_department (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    province_id integer NOT NULL
);
 %   DROP TABLE public.cities_department;
       public         postgres    false            �            1259    16658    cities_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cities_department_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.cities_department_id_seq;
       public       postgres    false    216            �           0    0    cities_department_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.cities_department_id_seq OWNED BY public.cities_department.id;
            public       postgres    false    215            �            1259    16652    cities_province    TABLE     j   CREATE TABLE public.cities_province (
    id integer NOT NULL,
    name character varying(60) NOT NULL
);
 #   DROP TABLE public.cities_province;
       public         postgres    false            �            1259    16650    cities_province_id_seq    SEQUENCE        CREATE SEQUENCE public.cities_province_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cities_province_id_seq;
       public       postgres    false    214            �           0    0    cities_province_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cities_province_id_seq OWNED BY public.cities_province.id;
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
       public         postgres    false            �            1259    16847 $   dashboard_userdashboardmodule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dashboard_userdashboardmodule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.dashboard_userdashboardmodule_id_seq;
       public       postgres    false    231            �           0    0 $   dashboard_userdashboardmodule_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.dashboard_userdashboardmodule_id_seq OWNED BY public.dashboard_userdashboardmodule.id;
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
       public         postgres    false            �            1259    16510    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    202            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    201            �            1259    16398    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    16396    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    188            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    187            �            1259    16387    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    16385    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    186            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    185            �            1259    16776    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    16698    jet_bookmark    TABLE       CREATE TABLE public.jet_bookmark (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    "user" integer NOT NULL,
    date_add timestamp with time zone NOT NULL,
    CONSTRAINT jet_bookmark_user_check CHECK (("user" >= 0))
);
     DROP TABLE public.jet_bookmark;
       public         postgres    false            �            1259    16696    jet_bookmark_id_seq    SEQUENCE     |   CREATE SEQUENCE public.jet_bookmark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.jet_bookmark_id_seq;
       public       postgres    false    220            �           0    0    jet_bookmark_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.jet_bookmark_id_seq OWNED BY public.jet_bookmark.id;
            public       postgres    false    219            �            1259    16707    jet_pinnedapplication    TABLE     
  CREATE TABLE public.jet_pinnedapplication (
    id integer NOT NULL,
    app_label character varying(255) NOT NULL,
    "user" integer NOT NULL,
    date_add timestamp with time zone NOT NULL,
    CONSTRAINT jet_pinnedapplication_user_check CHECK (("user" >= 0))
);
 )   DROP TABLE public.jet_pinnedapplication;
       public         postgres    false            �            1259    16705    jet_pinnedapplication_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jet_pinnedapplication_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.jet_pinnedapplication_id_seq;
       public       postgres    false    222            �           0    0    jet_pinnedapplication_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.jet_pinnedapplication_id_seq OWNED BY public.jet_pinnedapplication.id;
            public       postgres    false    221            �            1259    16729    places_school    TABLE     �   CREATE TABLE public.places_school (
    id integer NOT NULL,
    name character varying(60) NOT NULL,
    address character varying(80) NOT NULL,
    city_id integer,
    gmap_location character varying(200)
);
 !   DROP TABLE public.places_school;
       public         postgres    false            �            1259    16966    places_school_assigned_to    TABLE     �   CREATE TABLE public.places_school_assigned_to (
    id integer NOT NULL,
    school_id integer NOT NULL,
    user_id integer NOT NULL
);
 -   DROP TABLE public.places_school_assigned_to;
       public         postgres    false            �            1259    16964     places_school_assigned_to_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_school_assigned_to_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.places_school_assigned_to_id_seq;
       public       postgres    false    235            �           0    0     places_school_assigned_to_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.places_school_assigned_to_id_seq OWNED BY public.places_school_assigned_to.id;
            public       postgres    false    234            �            1259    16727    places_school_id_seq    SEQUENCE     }   CREATE SEQUENCE public.places_school_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.places_school_id_seq;
       public       postgres    false    224            �           0    0    places_school_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.places_school_id_seq OWNED BY public.places_school.id;
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
       public         postgres    false            �            1259    17054    places_table_election    TABLE     �   CREATE TABLE public.places_table_election (
    id integer NOT NULL,
    table_id integer NOT NULL,
    election_id integer NOT NULL
);
 )   DROP TABLE public.places_table_election;
       public         postgres    false            �            1259    17052    places_table_election_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_table_election_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.places_table_election_id_seq;
       public       postgres    false    239            �           0    0    places_table_election_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.places_table_election_id_seq OWNED BY public.places_table_election.id;
            public       postgres    false    238            �            1259    16735    places_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.places_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.places_table_id_seq;
       public       postgres    false    226            �           0    0    places_table_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.places_table_id_seq OWNED BY public.places_table.id;
            public       postgres    false    225            �            1259    17001    users_usuario    TABLE     �   CREATE TABLE public.users_usuario (
    id integer NOT NULL,
    dni character varying(10) NOT NULL,
    tel character varying(20) NOT NULL,
    user_id integer NOT NULL
);
 !   DROP TABLE public.users_usuario;
       public         postgres    false            �            1259    16999    users_usuario_id_seq    SEQUENCE     }   CREATE SEQUENCE public.users_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.users_usuario_id_seq;
       public       postgres    false    237            �           0    0    users_usuario_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.users_usuario_id_seq OWNED BY public.users_usuario.id;
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
       public         postgres    false            �            1259    16786    voto_voto_id_seq    SEQUENCE     y   CREATE SEQUENCE public.voto_voto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.voto_voto_id_seq;
       public       postgres    false    229            �           0    0    voto_voto_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.voto_voto_id_seq OWNED BY public.voto_voto.id;
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
    public       postgres    false    192   8j      ?          0    16426    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    194   �j      ;          0    16408    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    190   �k      A          0    16434 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    196   �o      C          0    16444    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    198   �      E          0    16452    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    200   ^�      O          0    16569    candidates_category 
   TABLE DATA               \   COPY public.candidates_category (id, name, is_listless, "order", order_reports) FROM stdin;
    public       postgres    false    210   {�      I          0    16545    candidates_election 
   TABLE DATA               S   COPY public.candidates_election (id, description, date, current, year) FROM stdin;
    public       postgres    false    204   �      Q          0    16630    candidates_election_categories 
   TABLE DATA               V   COPY public.candidates_election_categories (id, election_id, category_id) FROM stdin;
    public       postgres    false    212   L�      f          0    16889    candidates_election_parties 
   TABLE DATA               P   COPY public.candidates_election_parties (id, election_id, party_id) FROM stdin;
    public       postgres    false    233   ��      M          0    16561    candidates_electorallist 
   TABLE DATA               k   COPY public.candidates_electorallist (id, name, party_id, current, add_to_best, head, "order") FROM stdin;
    public       postgres    false    208   "�      K          0    16553    candidates_party 
   TABLE DATA               V   COPY public.candidates_party (id, name, address, color, city_id, "order") FROM stdin;
    public       postgres    false    206   v�      W          0    16668    cities_city 
   TABLE DATA               >   COPY public.cities_city (id, name, department_id) FROM stdin;
    public       postgres    false    218   m�      U          0    16660    cities_department 
   TABLE DATA               B   COPY public.cities_department (id, name, province_id) FROM stdin;
    public       postgres    false    216   ۈ      S          0    16652    cities_province 
   TABLE DATA               3   COPY public.cities_province (id, name) FROM stdin;
    public       postgres    false    214   �      d          0    16849    dashboard_userdashboardmodule 
   TABLE DATA               �   COPY public.dashboard_userdashboardmodule (id, title, module, app_label, "user", "column", "order", settings, children, collapsed) FROM stdin;
    public       postgres    false    231   !�      G          0    16512    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    202   �      9          0    16398    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    188   ��      7          0    16387    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    186   η      `          0    16776    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    227   �      Y          0    16698    jet_bookmark 
   TABLE DATA               H   COPY public.jet_bookmark (id, url, title, "user", date_add) FROM stdin;
    public       postgres    false    220   ��      [          0    16707    jet_pinnedapplication 
   TABLE DATA               P   COPY public.jet_pinnedapplication (id, app_label, "user", date_add) FROM stdin;
    public       postgres    false    222   �      ]          0    16729    places_school 
   TABLE DATA               R   COPY public.places_school (id, name, address, city_id, gmap_location) FROM stdin;
    public       postgres    false    224   #�      h          0    16966    places_school_assigned_to 
   TABLE DATA               K   COPY public.places_school_assigned_to (id, school_id, user_id) FROM stdin;
    public       postgres    false    235   9�      _          0    16737    places_table 
   TABLE DATA               l   COPY public.places_table (id, name, school_id, elctors_qty, closed, closed_by_id, reopen_by_id) FROM stdin;
    public       postgres    false    226   �      l          0    17054    places_table_election 
   TABLE DATA               J   COPY public.places_table_election (id, table_id, election_id) FROM stdin;
    public       postgres    false    239   a�      j          0    17001    users_usuario 
   TABLE DATA               >   COPY public.users_usuario (id, dni, tel, user_id) FROM stdin;
    public       postgres    false    237   f�      b          0    16788 	   voto_voto 
   TABLE DATA               �   COPY public.voto_voto (id, created_date, quantity, category_id, created_by_id, election_id, electoral_list_id, table_id) FROM stdin;
    public       postgres    false    229   ��      �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 4, true);
            public       postgres    false    191            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 84, true);
            public       postgres    false    193            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 97, true);
            public       postgres    false    189            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 79, true);
            public       postgres    false    197            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 92, true);
            public       postgres    false    195            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    199            �           0    0    candidates_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.candidates_category_id_seq', 9, true);
            public       postgres    false    209            �           0    0 %   candidates_election_categories_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.candidates_election_categories_id_seq', 38, true);
            public       postgres    false    211            �           0    0    candidates_election_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.candidates_election_id_seq', 15, true);
            public       postgres    false    203            �           0    0 "   candidates_election_parties_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.candidates_election_parties_id_seq', 131, true);
            public       postgres    false    232            �           0    0    candidates_electorallist_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.candidates_electorallist_id_seq', 103, true);
            public       postgres    false    207            �           0    0    candidates_party_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.candidates_party_id_seq', 37, true);
            public       postgres    false    205            �           0    0    cities_city_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cities_city_id_seq', 4143, true);
            public       postgres    false    217            �           0    0    cities_department_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.cities_department_id_seq', 94028, true);
            public       postgres    false    215            �           0    0    cities_province_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cities_province_id_seq', 95, true);
            public       postgres    false    213            �           0    0 $   dashboard_userdashboardmodule_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.dashboard_userdashboardmodule_id_seq', 76, true);
            public       postgres    false    230            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 499, true);
            public       postgres    false    201            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);
            public       postgres    false    187            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 65, true);
            public       postgres    false    185            �           0    0    jet_bookmark_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.jet_bookmark_id_seq', 1, false);
            public       postgres    false    219            �           0    0    jet_pinnedapplication_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.jet_pinnedapplication_id_seq', 1, true);
            public       postgres    false    221            �           0    0     places_school_assigned_to_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.places_school_assigned_to_id_seq', 75, true);
            public       postgres    false    234            �           0    0    places_school_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.places_school_id_seq', 28, true);
            public       postgres    false    223            �           0    0    places_table_election_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.places_table_election_id_seq', 704, true);
            public       postgres    false    238            �           0    0    places_table_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.places_table_id_seq', 239, true);
            public       postgres    false    225            �           0    0    users_usuario_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.users_usuario_id_seq', 47, true);
            public       postgres    false    236            �           0    0    voto_voto_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.voto_voto_id_seq', 66641, true);
            public       postgres    false    228            =           2606    16541    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    192            B           2606    16478 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    194    194            E           2606    16431 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    194            ?           2606    16421    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    192            8           2606    16464 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    190    190            :           2606    16413 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    190            M           2606    16449 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    198            P           2606    16493 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    198    198            G           2606    16439    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    196            S           2606    16457 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    200            V           2606    16507 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    200    200            J           2606    16535     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    196            d           2606    16574 ,   candidates_category candidates_category_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.candidates_category
    ADD CONSTRAINT candidates_category_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.candidates_category DROP CONSTRAINT candidates_category_pkey;
       public         postgres    false    210            f           2606    16647 ]   candidates_election_categories candidates_election_cate_election_id_category_id_74e7e1cd_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.candidates_election_categories
    ADD CONSTRAINT candidates_election_cate_election_id_category_id_74e7e1cd_uniq UNIQUE (election_id, category_id);
 �   ALTER TABLE ONLY public.candidates_election_categories DROP CONSTRAINT candidates_election_cate_election_id_category_id_74e7e1cd_uniq;
       public         postgres    false    212    212            j           2606    16635 B   candidates_election_categories candidates_election_categories_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.candidates_election_categories
    ADD CONSTRAINT candidates_election_categories_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.candidates_election_categories DROP CONSTRAINT candidates_election_categories_pkey;
       public         postgres    false    212            �           2606    16916 Z   candidates_election_parties candidates_election_parties_election_id_party_id_254fe7f8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.candidates_election_parties
    ADD CONSTRAINT candidates_election_parties_election_id_party_id_254fe7f8_uniq UNIQUE (election_id, party_id);
 �   ALTER TABLE ONLY public.candidates_election_parties DROP CONSTRAINT candidates_election_parties_election_id_party_id_254fe7f8_uniq;
       public         postgres    false    233    233            �           2606    16894 <   candidates_election_parties candidates_election_parties_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.candidates_election_parties
    ADD CONSTRAINT candidates_election_parties_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.candidates_election_parties DROP CONSTRAINT candidates_election_parties_pkey;
       public         postgres    false    233            \           2606    16550 ,   candidates_election candidates_election_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.candidates_election
    ADD CONSTRAINT candidates_election_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.candidates_election DROP CONSTRAINT candidates_election_pkey;
       public         postgres    false    204            b           2606    16566 6   candidates_electorallist candidates_electorallist_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.candidates_electorallist
    ADD CONSTRAINT candidates_electorallist_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.candidates_electorallist DROP CONSTRAINT candidates_electorallist_pkey;
       public         postgres    false    208            _           2606    16558 &   candidates_party candidates_party_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.candidates_party
    ADD CONSTRAINT candidates_party_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.candidates_party DROP CONSTRAINT candidates_party_pkey;
       public         postgres    false    206            r           2606    16673    cities_city cities_city_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cities_city
    ADD CONSTRAINT cities_city_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.cities_city DROP CONSTRAINT cities_city_pkey;
       public         postgres    false    218            n           2606    16665 (   cities_department cities_department_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.cities_department
    ADD CONSTRAINT cities_department_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.cities_department DROP CONSTRAINT cities_department_pkey;
       public         postgres    false    216            l           2606    16657 $   cities_province cities_province_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.cities_province
    ADD CONSTRAINT cities_province_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.cities_province DROP CONSTRAINT cities_province_pkey;
       public         postgres    false    214            �           2606    16859 @   dashboard_userdashboardmodule dashboard_userdashboardmodule_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.dashboard_userdashboardmodule
    ADD CONSTRAINT dashboard_userdashboardmodule_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.dashboard_userdashboardmodule DROP CONSTRAINT dashboard_userdashboardmodule_pkey;
       public         postgres    false    231            Y           2606    16521 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    202            3           2606    16405 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    188    188            5           2606    16403 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    188            1           2606    16395 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    186            �           2606    16783 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    227            t           2606    16704    jet_bookmark jet_bookmark_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.jet_bookmark
    ADD CONSTRAINT jet_bookmark_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.jet_bookmark DROP CONSTRAINT jet_bookmark_pkey;
       public         postgres    false    220            v           2606    16713 0   jet_pinnedapplication jet_pinnedapplication_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.jet_pinnedapplication
    ADD CONSTRAINT jet_pinnedapplication_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.jet_pinnedapplication DROP CONSTRAINT jet_pinnedapplication_pkey;
       public         postgres    false    222            �           2606    16971 8   places_school_assigned_to places_school_assigned_to_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.places_school_assigned_to
    ADD CONSTRAINT places_school_assigned_to_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.places_school_assigned_to DROP CONSTRAINT places_school_assigned_to_pkey;
       public         postgres    false    235            �           2606    16983 S   places_school_assigned_to places_school_assigned_to_school_id_user_id_e234beb7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.places_school_assigned_to
    ADD CONSTRAINT places_school_assigned_to_school_id_user_id_e234beb7_uniq UNIQUE (school_id, user_id);
 }   ALTER TABLE ONLY public.places_school_assigned_to DROP CONSTRAINT places_school_assigned_to_school_id_user_id_e234beb7_uniq;
       public         postgres    false    235    235            y           2606    16734     places_school places_school_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.places_school
    ADD CONSTRAINT places_school_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.places_school DROP CONSTRAINT places_school_pkey;
       public         postgres    false    224            �           2606    17059 0   places_table_election places_table_election_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.places_table_election
    ADD CONSTRAINT places_table_election_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.places_table_election DROP CONSTRAINT places_table_election_pkey;
       public         postgres    false    239            �           2606    17071 N   places_table_election places_table_election_table_id_election_id_eb729f8a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.places_table_election
    ADD CONSTRAINT places_table_election_table_id_election_id_eb729f8a_uniq UNIQUE (table_id, election_id);
 x   ALTER TABLE ONLY public.places_table_election DROP CONSTRAINT places_table_election_table_id_election_id_eb729f8a_uniq;
       public         postgres    false    239    239            |           2606    16742    places_table places_table_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.places_table
    ADD CONSTRAINT places_table_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.places_table DROP CONSTRAINT places_table_pkey;
       public         postgres    false    226            �           2606    17006     users_usuario users_usuario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users_usuario
    ADD CONSTRAINT users_usuario_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.users_usuario DROP CONSTRAINT users_usuario_pkey;
       public         postgres    false    237            �           2606    17008 '   users_usuario users_usuario_user_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.users_usuario
    ADD CONSTRAINT users_usuario_user_id_key UNIQUE (user_id);
 Q   ALTER TABLE ONLY public.users_usuario DROP CONSTRAINT users_usuario_user_id_key;
       public         postgres    false    237            �           2606    16793    voto_voto voto_voto_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.voto_voto
    ADD CONSTRAINT voto_voto_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.voto_voto DROP CONSTRAINT voto_voto_pkey;
       public         postgres    false    229            ;           1259    16542    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
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
�{z�p�����¼��w`5�h"�0?����׬�鼘��q1"G�#���8��1���!tj����(��<���      A   �  x��Yi��J�������7�*��7bqq�'b�Xe�M�_��=�=z�6�	�����T��	�v.�gX���p�F0
�?�"9��_�D`̋������'=^��1�T�3�pa�>uJ���:9��oG1����~��A�\E;VG�M;w*��� �ˎؚ�����̏"��G��joE�C`?Q���������}��+�t#ɰ���W��mĩ��S�T�Ɯ���u��"���B��3��ĉ7{#����0�:c?J�Pw@gp��@�I�ٻ_����q��D�H�v��.��SV�	�c��q�̇�!��'ʉ�u9��J�>�:E?���,�����0���u_�}3�:b^u�w�ϫ��o��u��'>�n}�s��C{�J�1�"Vy*�
Uv�JU����ة-ܮ��]r�Ҥ�Q�/�3�+Dp���>�c�#A|���Q+�[�tf�N�U;����0�},��N9���$F�J#�3�8j���[c�Z��Js�pdJ�������q&�7��9��QgN:㻕4V 4ӿϿ��'h�/�،�A�cds��`$�x0�3�s��&�ݭH�	u	VG�������-���4�a��:���?1���a��ϟ��͋���oHPe���W)�Ώ�.�8�F�>#�}�8�~
%�W��FC����pWQ�YT�"(����;f�Fagj�Y�t��uN��b�}��oF�|RϽ6�38rN�8p�w�٭��皳rQ^�O�`v�Uq�w����ƍ��5|
���=�i��Z��ع��F�����4s��O���/v�|Ǘ�̰�������]��L�_'Xj	�,i�X�6G� R={ ��vRǿ��, �Xm:8 m�X�y
ӿS��iK���*�(�c9�Nq�-J/e����ePmמ��l&V���C���A8���=��XoCn'QhDp�	yjjNԙ<3�}�{aA!U9<����g&r+f@+�d�\]�V�q=�
���tv���Č*<E�P#.��1(K��΂~艓f;��deITE�r?��~�@�B3��;F��8������{A"��	֔M9���pO.��8*f�]��0͝"�֙�'����O��"�7��,G��6��
���LB��nL�L�s�L��9�-�zQ�� �"�ή�v;zɂ]����+��K��C4̱�	&�x�i��o��L�Ƣ�9��ݧ�E24�"Ǹ:i蘩�tF0젳{��g�z��!���za\q68��ё4�>�VǾp�G���q��N+�H�N�D8Ʊ]y���.&J��q�x����<�o���0J|�m��#�+�'�h�ψ��m⟖&/(��o�p�a*w#�����6v8{����5SB��\�(o��0�����TN����� L������wE	�=_ʄ���)v`�+��h�&�Q6�]>��B�B����I�P�I��W���7 E	��P�b��R\$�ɡ`�G�	�Tk���s'}L\�'�r�w��V<�`_��=�"@H�4y� (��.Tݛxح�M��O)Cb�K-���p�G���L��
���K����YA����Q�V�X�)�0��J4w�ްF.�/䂵�6!�Rl�H�������QWC;������9o�#ww�}0��|�����K0�����Z�|Đ2���4+�K����B2�;��/���� �ZL���a�v��p�&�~�	~?���7���n_��zp���I������L@g������ڷ��Nc9�*��1Bdb�ʣkY��e�nfH$M�|9����T�ҟn�i՗V�ya)�z�W��g���'
�p��ymK���6���F<J�1����TB���k��oMb��� ����F\\�s�D&{cmliZ,�^<J�
c�;�	_�J�P���E�(t��-<Ab�z���(ILہ֌�j�-\�?����դE���/W�5N��F8d�b�9>���0[O�Du5l�5S׶�mBMY��`�����h &u�vo��\5h-P[f;��dϼ�h�cA�[X��
1L|X
r6��J!�j�z�9��+>��K1���0V���J��^'ɻ�W
����e��3lL�稧q�/G�����J�U�3�n#�<l�EC�L&��QA���_�vB�١��� P����Sjkē ����{,M���#��T����T?�8�.'�Q����+��P��3>�f���qd���S8�ܳ�W�"Zf��ǁoj݋75�)uֶ�_���"(N?t��j���s��wN]C��{�:�W��IR�+?��3y�;n�P�:�R�Tx݈C4ND'N�Y�^LMQ����d�pJ�>�L��=�b8�ݛ��(��XuQ2?׵BR"(/����M�m��B��^E���9��ʢ�`�\��'aK.�-�>pj�X3L�Q�AN*O�LJ���&�֙#m�ƻ�������g��<�"�֗Kl�G49:]ӡ7��&�K݁�weC.�|�����Ɖo��XXȦ������ 8F�����4@��7ç�D��Й寄�6_��1��J���!��f����mG�<�P��vH��̣����u�K(��&0����=��5~7�02L݇ ���_$r+����o�yA��n����I��ӑS��u�D,��<�G [�}N��ѓVE�P%��^��9�(S:�a4'/�
z�c��'C�H�� sG��O���=V�g�xg&�lmת�V����m�8��75�R�J��:-�������	�V�h���x�k}�O /�P�Ayc�Ayȁ������C<�\̚��$w�*&�3w��d�;7�~N�hݣ��$��i�ݓ�%
u�����nΛ�`�o67�ϵ��W��'����������$c�`���e���x�:�~�e���X�K0(�h�y�PCu��I�Q��j���� ��'Uμaw
z��tڒ{!�L%C�~AH�,H�l������l�nn�>�@�}�8�}�}��ㄵ��_�x�ֈ+�`��������h�Øpo�=�/J��σ�nwt�$c����%��a�������d��7)�!=�BT)o%r����1ԣO�|ۈ�Mݩ�{c�n;��>Z4�K毾���z,��%���!u���<��F�*oq���dE`� _bE��Qa��0X�2�ޏ���2�{Yw�ڲ�1h򻭽��dOUJ�\�dr(��>�J�=�;�M�]���M��]������F�=�%I��0 
Ep���Y�v�� v��ܻ/H�VN���c'G:"�8���qX�bX�1�I�T7�cIxCɮ��M��O���ӵ�G28��L���ࣆ�� ���퍿!�BϠ�r���`��W�8(��Zy�#&���\Qr�ݫ�he�����	�u�T�L��=�B1��ӋY�/"X��4jk�ڹ�Cc�{��{B /jT�K�É���^�\��,��y�f�b�0I2)�8���y����h�h�}�׭J�Ǳʹ/�n�h��l�֛�H���I���k�������B��r8^���I8=��I(��d9�m����R��Y�-u��J��wA�P��8��-[g�A�%iZ�ð{Pܓ4��=P�L�.~Ѡ���~S�.�*�����v��B�xss�����P�2���2N��Z��TC��m���ǐ��3�J������}���a���(���;��㣄�+'r2��]Td�,���������e�%az�P�����W��!�{���jd$�'��m�������( p�y��Zs%>@#�H������Ox����Fo�۳:4��;�{W�OI�� 9��p�t�����r�jzNg`����g(a�}��0�kw�(ev#D���M`�}��AD1z%̰t/��x-�Tҵ�u�bx݌G{[�4�32�n�ak��~M�����M��_�Ǐ���vt      C   �   x��ɑE1�r0S0�s���1�.6!pt�N~�`p�xH#�C}�![t���3��(�[��^��7J�6�+>t�����Ѽ;��l.r��q!�L���"�i<>��=�Gj]Оl�����B�fPO��k�*���b%��&�?1o�Mg�U��^�m��#]���#]���'�<��O>�|W5N      E      x������ � �      O   a   x�=�;
�0E���b��X+��`k�f��$��Elnq�v��+R�T��n�m�?Ph���}�J�@�";�R!�|�=�(����}����	��VM      I   P   x�3��*���W020���f�F�i`�9g�c�?�����!L�Ј3�(�83%5/931'�I�����9g	Da� �L      Q   5   x�ȱ�@�����v�L��#��@�5%��h¢v���0�JN���w�tK      f   �   x�%�� ߨ��p/鿎X��j���@��A8�J�Y$҆>1�)&��B�y��o1Q[<(�yQ��r�P�c���B���,��}b.�D����'
��/5s�R�g��ޣ�v���q�#�      M   D  x�}U�r�6�O�^���c�N��� ��֙s��Gs0��Ι�-�(�>B^�+�'3�d&G߷���멅����+���/8b�ܳo��e�r�o�/��q(�Z�2�����3�b�,f��n^��s�_����^Vy�
 �4�D���g����>��BQ&:�b�#�#�c�S��I�F�v���F>=)�7����p�'1�q�T������p�jj&{)����@���+���*�l�Y���(E��Z4�5Ѭb�I�d����8"Y��)\�q�L�'����8�����x�% ]�*�A����������7���W���Y��f���j1����Y����y��u{�����lN�=9�&��mT-G5�@s2������OU��Pm���k����R�!��6� �z���G�f�f�r5�a��|vA.U��D��9:��C�2�`�q�h\�w�N�.LmM����8˒���KNB�d#�����u�7������w���fFЋy�3������()�\��O�7м�bՏ�x��}���^�r}�!�;:����ř����B��|����ܾ�1�3����A�9�M��jw�9�C�1���ĩ�[�����wqx�o�5+���)ԺtQq]�>�tAԁ��� �� r)X���K��@�l�BX8��7�,ß(ƚ�j�����	ͣ�&���c�l��GA,,(_N��@��IQB����+r�0W~X�(�I�lWcH� �^la�&F0E�sPeW`�Ô����Y �99[L��
t�i9F`�Cd�%�]���D��W��6� ���)�h�K�"����"{:�w�`2��4����� Lŋط�n���lِe�V�;�e�����,��vz9���9p��ʖi֕D�ԏ1�q��P`�Z��%����j��b�n���I��U��`����i}~��#����Ν�\��F���u�L�e|6]�2�ϫt���тGk|�4�8O��c0���v|���Eg��@,{��J)��E�D%�����Q��+�
�J/^4!@�u��_o���� E      K   �  x���_��0ş�O!��b�G��Ba���/�Y�d6�@�����ٴ0�A�x�=�woh��2���d��ɠ��M��N~-'mO�j���_}�t��ی>u� R R�e�V�0��`r~���,�l��`�J�>�0Y�m���	>ɶ��?���1E�7��m"[\ʺ�K��l�oUbj�d��}�V��q[��P��_f7��X���h#˭l��]	�n�/�2*$�T� ���j�X���d���_�՞-�V�ϑ��8�����݃���G�;p�!V�X7��?�1��]�#���h��:[����p��:��e
&�Q���;�4G<�Y���t��ʼ��#^�aAO���;ؘ޺�K�]����-k�]r��Ck���f�0[�[�M^�W��R�	�1Д��n4n��O�M����|��1[����Mމe�"%fP���r�q!�ڸ¬ �m)^ ��-0]���1ƿ0+`�      W   ^   x�355�tpr�r�45103�24�0����qTp��Ʌx��%-LL9B]�B�<�C�B��f�>�N@G��!g���Lw� @"      U      x�35103��L/M�:��Ӑ+F��� @4u      S   	  x�-�=n�0�g�:@QD���	� 	�$c�\��J���&c�N=�/V����=>>��.:�6���X�Q.d9��u*�	��T1N�$�AY�
�C����/�(9g}ʷKX��:�?Q�`á�H�5l�*_��H�R���񃏎��'����[�)�|J��Q��ѥ�	�z'jS�,2x�ʑ��;q��у�2���W���aU�V�c��ь��l4��?�§���IY�[�öHm���48K%]���� �^j�      d   �  x��Z�n�8]�_!hYdd�E%�i��E�M\E;LiQ �fE~dv��	���dɏX�EJ�
(i���{./I���R���o^��H����@�p� O�5Kr�����߿!��W˳f��O'�p���;�%�_�N�)����f��R�7˥jpHJI��g���#�,�����mHmA$a��"��:���/����@n#�J^,��l���O`�&�4�B<1�ܡ����@�s5���l���1([�i�O�Y�Il��Ԋ��lShÌy�/m��}I$R��bK��
������o
��h��KsJ�-�zi�",UV��J�f��T�)S���JHJ֤0�7�(�P��Q5��YԽ�T
f����CL�@�Bɶ��of��>v'nZ�s���$�b��*�|k^�Ta���Y�S*�Г*���ց�|(�XZ(�i"(��BxּX����(�됨m	���FO�=����o��T�*[y'���O���'��`�5	w��Ʃ���"��S8ED�<��A���=*6=�d���k�م��i�"DWw�EQ?ڼ��;G�o$� 5�ξ�n����������}t�t�A�׏���$k(�LD`�<���X˼~�8�r\Lg��*�=H�}�N���ܤ$��#�"��r!�O�^�vZ�^F����`�w���ޏ��סQ5FFո!!���W��|�,���vӊ�=o�֛0$씖����V���P��#�9V���g3�/�Ʉ��1抳<�%\�2���������ޙ}�p���_w�1N���)�B��e����)��l�����җv6"#ُFٯd? ��i���@�#]����v�Ae?��#�Ѡ��td?e�\e?�9�k�.gp�?�\�D`xFgpcP��0�="Ӯ����L�
A�t^���;���G^��,��$4�q�F���.ҽP�i�]dp!�P4�.2�̵C�vQ�#HJ����F���̏�{�����v[��-�c}�3(�c}��S��ë]�R?V�N��jw�j���E����q�w5`���x'�Üz4���_(������Uk���c5`\e�@���sERݹ7Qr�'��;��>O�o88|[Rb�g޻(Jl�X �[��i��c����M ݭd�� z+�z, �J�Z����<׭�L&�7��\      G      x��}[oI��3�W���3.d�=�F[��dH����,4E�9C�RҠ{��i��{�؉�L�U��K���}�FÐ/�}Yy������g��2�D�B�!J�[����h1Y>O��������o.���������<P J&��I{N�G?g�o���a�?�+��X>�4>����x3V~3~N���d���y����痧��e9^���U_D�s��c�d�c�w7ͧ����x>ϗߤGnpd�Ņ`
J��16�<_'G}Ѻ�jC�
�.��K˸b2�\͞ǳ�1���O���s%K	�ѿ�<�<?�C�.�*�q4A���x� ��V�C +�fR�Lǣ�d>+�/��&@��(W��	4�����d���5!���t�p���6��1n)�P6�ŧ��y�0/n�.Ƌ�V ��H���s{��bX�45a�)�� UJa���K�l+��1�,�� \���؎Q[�.����`e�^�{?,&�M�A�t �G���*{�pqMv.t09�� H�uHe�?���Rk'$d �[��g%c�h�Ct�s�%�xV��g��eAH�5 I�(�:�d"���t��吣(��L� �D
�)N�t�\��y�/���q��F��/��d�l�5lq�^(p(A	�Y4��/��Ԑ<}�}8^u����uGB[�I�p�B����R	�R��B���9��|{_n�w������v�)�&�+�v�/	n#����������[�L�x.e�}.b]]n>_]�/�����|��_nŴ9&�;�{Fy)$X�����ݟ���堸|�r������|���������a�����%X��_pG�Xkm��0�����E��� 6{���$��y5��+b	�O�󟾎�ϑ��Jlv&7X��]�,���!��'j-���Ki���(|Z�_'��d����e6�Ԥ��FD�"�ॱ¨n�섦*i(��t��΁�rZ6�#�~�U�rI^�)��Џ��}�~���Y1�--$҇��N�|����L<�����nK�[p?��d[ZX����G5�u���Y�+�[�M���A<!�D�xr�[�--��WƷp�/�rKaT�rK-��Jmi!�J��-�]��2�N�Y�-�6-�L�3*���[�͗o�sGS�[�9�n�`˔;�dآ7�/��u�TeΡ@U��ia��F�8�+����Y��^�o��pQ�yY��9�E����}�7kc� /
R(��S;n�b<�&��c�ĬX�~�ϧo��U#����p��|��IN�/��~�ڭ��'-�����^5���EX!�Ό�Y|���QX�7�!FIW��Ռ���iJ�V����@o8�>�'�N��������jDh�Bcw�kx�m�"��y>��}2��-�I�Q�Ft��~0q(��fh��v[��6��J�`�k�����p�zT\-p�"��7�6�-ǣ�К�Ђ�(��\j�M��_&����Z�%��^���y�:|&�-4ϡ/9S���B���x6y�]#Z�В�9��D."<�_�����t�!0�h�G]X�p,����}��-���"8�^�=�N�3T��:i�nJG�I�~���3�u{1~����$�8]
'�������a>k�J����Jǵ}v�%5�HZ��淤a��r2}ml����E3�`������|6�ζ�&o���=0������tJ����ن��2�
n�ǣ����%���R�HP�>.	���4٦$��TL��3q�<^,���C�mIKmh^F��}D%c8m�mGGN@pLE`ٛ?��~t�s�4�O������d�ё�g�e��C�j9.��BfZ[�lG:�-�����������b�Z��tW*C�U2��[s���=9U�����e:\��R��_��L�ݖ�|:��~r��`����J��e�%���h˒��i�(��bD����[WY� $*�FS�1��4�u�J���a\L��%��d�W!�L7�"��4H����
�v�F��a����}�xd1)�����Gn\ޭH�;�y?8j!�Ȩ�����}�����]�O�7�����W����G��ǋ��p1���������c��I8�E���Y�Q+߁�(>���o/o�лq�Ň��_�{6B�gR>�%�"��q��,�.��ܐ?�����'�\��G�>G?��QTSb�[�J*#5D�G��x?�{�'7�u���� ��O�/����t��Ԏ�&U8'[G�R@��A���s�5��K�[�?Ό���& ��&��W�A�U������>�oq�@] �fW�����X_U��	89X)������I���k��5`�[�YM^�v�m�N��?��E����F	LN�@�Q ��|��KV��SG�k��$~���n�*s`��@���T*P�l�
~e�n�M[�\��/�10z�X�&U��>>��������%���ٸځ�R�Ec��p�&{����D���jJ�7s��rST����rG(A��d��x��а_�y��tc�����^����͊�B�_�2�#��ʹvA� �uqNp��<-7��L��(��pb��sw����d��9�H���kh��$�Q~�BK��8\ʁk��xI#��,�@�����/z��#pH�%� \.8���vxmߡ"��g�B�������ķ%JiԀCx�P�#\c㊀��㰠�����.�n��n���l�~_r�M��ܿ�2@-���;���������Xm��Ϣ�5�-����|��6��R�M�(�8L+X�a�Ҩ����	���	F�U�Rh�']����r$4E�T��( 蚁�YͲ/_ݺ��Z�\�b��z���,�	�� �V���Y�n�r��+x�-��^v�����n�m��Sx����v׊nw��v׊nw�P������pTo]ѝ��E8����.�`W�k�5��`��"�u'�uG�,��2x����(v�Q5o`r�9��:�]~��b�c�˝dd��Z���a���\%B���K���2��̩��U�2	���Nu2xEÕKDu4e,İ��4�]�d蚀W��`�AE�Lj�*�P\��*gֳ��V�?����HtE�~Z�����k�^X]��5�b}�b�2G/�E��J�h�^'��p��E� �+�
�`hdZ�Uҝ�)�_&��']�V	۠6���xO�����E�P�������M��M�E9;L6��Ѵt%�Uז��
��^m(����Х�`��vI���� *�%+��x�r��x��j����$�tBka�������0d��)��>��J�V�wj�9��@/P膳�\k7 ��:?����L��B� ���fj�ѸNר �0Z�� �Q�$�5��X�JΓ��v����o(��
[���d�0򸴁�3�v�<�)5\%Jp`�v���ȴ�;K}1�VA=��ʁ���v.���dF"����돂te�2'o�uJO Ǯ���R�|���ApK�GT�3���+Y��>_6f8G �)�vA�e穽T,���M�B�4xh)������t���qA��$DKm�4f���D�jr���c�y)�r�ߥz��g��:	��O�.F��u��׶���� ��Ddn��-�-|fy[h�B��ʄ���hL���_ۃ�\�R*T
��=����6R�͡�-]�����G��k�
ʥ莢4��&�ge���AT�,� _�A��W6��nqV����ޏ�e�Ig��.A�K<x��wݝ�O{�2�
%!�^�-�l�tkw3xUg�N������M�3����0�F/��%J�Pk�"����^��T�R��(��1�A.u�+Y�U*���%�lt�g�W��Կ��烃0+g�N�2�
��
��^V��r�HЩH&5O����K*�6�X%`SrG�9�Y*���ăS��P9E�2�������,�Q�D���ȫ��LE��� �T�HG6��C���X����u*����J>	�T"�+q���8
��iF��y��'�    -�H�8rp4
��`��pb�OJ�maG�i$�a ���{
��-�ŷ1.�}	S)I��D�����8���F/���;�.�q �:"++!���v�C��:�C)*3A�</��/��Cʣ��Z1g��](��:n� �2or݆ϋ�|OwƑ���gqc���E8k9K6�&��.TZ�g��/����t�'-�I<���H����xk*-U$+-~mл�>&�,eIe��Ēs�2Ga�~��N'8zDTCz��x4���U6��GLZ�򂓼XսOtܛҟ���XЎ�څ�Keo����Bv�c{�TD�:"�[�*��:v�iLݜ,�͓�o#��x�Je���6���k�,G<�@]������u������, *g�g;�p��	�dV��9P ���<�Q�.�Q9�Nʐt�f�uNH��<��Ɉ���4����1��<0�9��!�+�N�g�.��75�	k�>��XN���l�PX�|GoF95U�4j���^dL<g��Rex��(KI&-$ղP x\�Q���$�Nl�W�X�R��f�@ѩ�qeEM�ZqƚIE���u�r���I&|}.�W��1a*�/f
��`�Z�!ى�T����xx��&tH����@�4�m��F�t{+�k�p�d#�ѕ?T�9�E�2˜�u�v�Gw�/S�H�4\(��w{�������� �����h�B��\g���6�*c�r:�Z���m�밙�7���EQ �Ã!�׽��F�ئBdR"��P[Ѷ9F��`6��A����).!>UU2�B��~�x���6���,'�TJq�h#��u��� r�)�=�p�Y��m�M��R�$|4�U�ŋ�����+2�S�Bv 9��N�]�v�G����
{*+������t��#W�*��J
�%w&�h�D�6s�ZU�Ry�\TF��kʲ%��eH��U����PiTiX����t�$�2,T4�Jvt&V�B8wi�]렲Z��I5,A����Z���j�pS)�Xk�h,+7�\�Sh�p\-��5~���#3B��&���[W�[��R����1���"����rx*x�
t�n��諫J��i�B|�r*~���098հ4��x�*x,��E*`������AZ�b&�TP����h!s����M�2ʋ
AO��&쮌�ʽ?���Q�B�v
��s�雓�~�?��g�L�	w�tT|�&v�N��ץ���P�]�ևŇ~F�����E�������h�ɮrv���6\��5;H��ɮsvr���Ü���b���697ib�9�Rv���6������i:l�)�j��.]�Yr��m��J��h�TQU,G%��'��%g�����R����A-L<�SBI�/R8Λ,�5��d#�U*���-���5�[j�P�
I*��	�����L�[THR�#���4BE��@{�R�B�o[�`_���T`���~�Z,�&�T���r��(��,`�U}{*rJRb�L��9C|�,%*>h��	AD՞�� iȱ�������r3i��@(�)�rǍR�h �>,9
���L�QsFu����T�1�,t���ב�Z��k�c���`��n�������>D�#�������rp]���ؿ��-׃��o��׻�M
�E,ۺ@~:"��k�0��K��J�mZ%�v���L�ZT�U�:S�7,%�$�n-�f�5<pf ���*�)<y6O�'�K0~��!����>XPQ�5�,gu��ɍ��\ر�6�k���%Z_�PC,���q�s�����Lm��)�L#<��S�V�~~/��m��ܘ��v�M|��q&�؜��O�!�@�}���K�4i{V9�)Ձ:Rl�ђ*A��m��^Q��I��㓨-d�����B�[��_	�'����z���Ub�g3�I	����̴���o�F�Mm!B���m�T
�Ɏ�-�=$L��x9�Z��W�#���0h�mb�!4=�˟�����&A��x��Q'�;d����ww�O���ۛ�A���9)�+1��<<�Qӏ�Lǭ5��j��J	#�N�2��R(�Æ�U�2T���d��J�cv�"Z�t8�D�z>z��l,M<A@�WA�%(�G|w���E�6&���z9{�y:{��F9��Qxmf�5u鞤w��Ξ���98�MK�K��,f���]�F p�_%$�5q������7�)V�_�\.� 
����S�`��I��|,*G�Z-��}��ޤ���'%�)�ǖ���J_�2����l#�	5]��)����G��Ui'.�r��aR��-�z
��J�T�-f%��T�<�H�Dʖ�˘4['Z��i+��ƭ��ʻdrp��r�����/Bf((Y�EQ�S�Z����gx���C�#5",�R�P�p�,[���mG&��n�N��u�L O;��
����y�B+@�ؾ����N{���PP��7J��2Z����͓�Z"��9U 2|�4�����:e���Q��SFރ�w<�"�*8�ٜC�c�֝�å��z'LT����Y���Bb�id�e��I&���m�m7�>�����[U�����pfN�5x�W�!}�h�N�<ݯ!�G��c��
�nR���Q}p�7�cqB98�ʧ'�ӝ����	]��`Wv�,�}?M����~y�X0�T&&���:�qf��M��,;�i!�1f��Q�n�	�͟8D5x̳��M��̞��Qc+`r����N�lK��'�q+{ч����T	KTC��wKr�
�m�`��t�ѬKV�N�S��-P��`�d�S&�� �u�pw�W��Fbp��pMa��S����ܢ$�Fo�Gr5$�4*�#4�	��д>�MI$2�©5��ҵ�e�,�0�N��5����6;�����Ƃ�hS��4��2�������� :��H �<Z���W}Y�Ty��������,��A%x��F���7W��8�\ѿ(���Ƌ�'�5S���|Y|�,&��"�NH������3'��GT���M9��úE���xFi���A��U�rS�����S��)_�����E������,W�Kk
�\��J�Ph��lE�M�Ưu,\��v�=����W�B����jI����}iPx���C���p�TQ�<6I3�v����7�毓�hB�\|���<A&@��nqP�8mB��VH�VĨ,s�S�&E���bc]��Y��0:��g��C���j���<��jVF���'jm��n�>���Ћ8�6��U�{(��jþ��n����(�t�;^?$�u�L ��C��e��q�h�13����J��<U_�ʬ�q�Q����([�߿�G��Ch���Z4p���A������w;��O?M�(h��aVW3.�_�ÃM�*׻�뫛_H��5��L*a�Q2�y�iC�l�EE�}�s�#a�>|���ˑ�:�E�W�8O+��,��o?���=�&'St3!U,�%z�������z��v[��]n>�/o�Ow�Mgw/��MQ�)_t�q�t_і�� e!�h��g[�U�Ά���gOf�:������`��h����z1^.k�<'��q�2�a��7��-�n����Ż���U�a��A�>�+V�V�J�}De�J�B�,�r�$�rƊ���M��խ�����׻oڳ�T9��x��ϼS��N�)��48�6lN�m��ވ�J�<[�MJ�k�)�Xxll��p���4����;��ۜ�^M����L�?�%���<�B���Δ����r���ՇY��x���!��8��_e!�c��������Gg�C?�Ż�5�x��yN�x�{�)p*��OM�/_Q2�bJ����զ�Ǘ �Jxp%��O�ρ��-e��7�"C*m�,�����`*]�*��(�r�"��F��w��|�"��b��6�M3�J�fj�2{��=�W�L\h�k�q���R��:F���Hm��K������i��ar\*��U�Ԫ ��nzJ�P�u�1��H�ɃWv���q�qw3�!��	!�}Uy_)�[��}�3ۺ���]� �  �E�:���Z74iCCj#D�Tծ>F�>��}R��ߚ�ª�7���uA��:Vd��˒����󝻹`���d,�� _4�>M���u��-k���S����V5��jY�Z�x�+I�$�&���ňZ�D�-�c�@h�M����z�R�^��wւz��������x��ޢIe%���;X%�T@Nʖ���5?�Ԙ��b��&mj[�T�� #'d<?I0����/�;�)�ww�w���
G��|ʦ�%��,�[�{?�����_%�Hf��\��O�xO�V(6-\ނ��)���u��jݯ24'�I`9�pt�.�D��q��qKOK��,~��޷��[�U��s |.�X�5��d�{�N�~��������&VTQ��_����2����qM�i4?�_��l�L���I+E\ou�#g�����V��"hBd��c��Ph���P7k�U׀I:%-3g��6���ʰj�l�+	���F�%��}�����r4&������d�G�.7��<]$9K�CQ\F)��b�����>�!&�,JS��Fl�c�vF���{�o��hjI�C��CաF�����^P�1*�": ۞�y��UN"(P����y��׃^�W�TNPpJL�j�9���Q)��`�QM<'�$("s!��l��sj�RK�N�}a���Z��`,��DB���8�+\���� g�t�b!`�s��V�;'�����c�����s"�ыeT:T�C��"�?�L��b�}A��Hx��%g&6�KV֘���a�d��P���jeM�c��LV(
� �,u��9O&3�Oit���v�$�oIb�z#�ɤ�O<`�����觼���L�� J��K|��71r�L���ZpX�}[!g�D��
����UN��C�����E�Y2A�ɥ��!���"䬙�Д�+��w�r�Lb�9WN��]��0>�F0��Ĵ
)3�`B�
0����D�IK�=��.����v*�J�R�@Y����w���R*��2�����	JU�硒��W�<)���E�M����P���Eq9��4��ܿ�Q,�P�nA$<�̉pR��*��;CD?~��2W���W�u��������NR���]��2�� ϸ�tJ�=����w.�2)��iR�+_��7Ż������������0j6'�>ES<)Ev��
�.g��Ν�	�f)��7��W�,�׎r��{�*7��B\;�T. _
P�6g�IE���b��q���rp���Y\}����M���Jԩ�@Z�n�1��e�
zoB�A��i�ӄ��J��%8eB����wk������xuu{3�?_�H��F�A�Tt��4���s��kړ�R�!E�YЫ��]�v}��TH*7U:+C����l����V���A����� G�"U#��Ϝ���Qi�z�����N�)����ȡBa�7q ��;uWJL�j��jP�;bK��D�PWe�U*DvZ���x�,g����{�8
���*�,*���x�vX��3�ξ��:�m���t�F�4����L~�6\
��P� ��)EF�6�F�FR5�Z�(&I�|�����j�w5�P�@ѭ�[��B�@i��^�d��|�0)�����3�X�Y��&�}4� K�}������|�U�[�Bp_��B��T��G��F�N���+�q��g�l���8$�N��9���;��_Uz�V%���{WnX�o���)�4 ���<���u��&J�sw:��:�&K��B��v�c8�ܧ}[�"`uǣ�P1��S�[>Nf�����M�R�7����S�7Y k�N׀���jh��G�:88$1��ģ�oV�դػ��|*>����
r�;Z���"ǧ�zժ0�9�jT| ���>kE���A���Y[N�g#�9	jB�9��Gb�$C�h�r�L�=IE�؂�Z�� T�m�.���\�-��Yj�Tc���cM�?�?����s��      9     x�e�A�� E��0�B�N{��8��#�T����$�l��-�c�o�=&lp�����֜<J���0�b2�H[�lp���ئ���\>dh4W�~�̱���TD�d���n������f��c?e���9���c	)�(�9�uA뎸b�l��JsN,`��7M�X�b�$���]�<��A�$I����x�趡߃'M��A=p'�Ǟ���W��Da�Xή�����s�p?b���hhXGw>�((?_ �����      7     x��W��8��<�O��m�?�,'Y^�AN�pI-om�E� �Fhg��]]�6��7������Zv!��R�U�7(���K�-B!�Pz�Fh#��7�֟~FHaD�܄ù�|� ���5B��͑�l�-��w���Ƈ�a��ham䠑C���a�W���S��ߟ�j��rY"J-���Y��>��_¹\�R��"��C�l��l�U�Œ"ޟ�_��#��*H%SUv���[�?�s��Y�瓴v�������گˣ$�H b`�)C�>
_q_�z}���$0�h���[��&�}T��BG�d��yT��������˶mZ.�.�L]��ErȁήJ��ڨ$1��Ƚ(��ю�}��T TǶ�]?��m�[4�oWV��׶�s���<�0Wb6�p9Du?	+!�j@�W:��B?�u2�/$���qX/��9��R���z�0�N �^6{��4���`����P\?T+�, �Ϳe����I�B�D�?�u�ӎ<����	���n�zri� *��Z��G��_sF������ٱ��J=�d&x��Q�@e���N�/�7f�(�������Y����RL��w�o���`�Ky�}�����&'aӕ����솔�iV7���1�0�i9@^<�N'�Ic�j χ���s�)kr�H�V|S�ۢ,���,r>�������cË��|]u}��,@�t�ng��b��OB�<JiW��jC)��2ʹ����X���ږ��Hc�BD	��]���-��J��A�:�)�W�2���u�D�����qX���-bA�@��p�'�7��k��uӕ��VP��f'PHe�9��]�|����&����/V��}�Ӽ{ޱ�a��0� a���;hdz���)y�Nꐂ��LaƁҺdIn4��+?Ð49��lL�y��u�%C�;���/�y�R�T��q�`ZX�_C���	W7��
�B�_�����M=t�����"=�O,mQ�<4�._�n.��Ә{��O�Sh��:J�FjѰ|6\�������;~�Q�.-]����7�{�U8�$���&+uf.�����x�.?h�;�>��z��-O�\!i'$>6
-r&Y۴�r�1f�R|�a6M��Px���ژ�d�-��
���^�KO���Hp��tAܸ�6"��a��~�vB��o��
���3S�麳Nq�$���{ϵi�o[�#��ي�R��%�ZO2�]�xQ���_��p�D4 ��)@�k��'��A	�����y��1G�߻������"�      `      x��}�r�F���ڷUZ� h�JI�I{@YI����@ �y���@��T�؋4��RM	�p���G�.M=7�0�$MU�ԒY84�Ea6�gu�M��p|������!?��������p�	���Ƀ:��,_�s����J�?_�?��z��9�N/�!{���)��<��1��?�"(��=9����'Ye��:�U8��rF�|]��������?��.X���¿N]��z����x���}���i@��ȑ�d��3G>�|H]��]���G';<����/�}�9�;����S���A��'��$�7Bn�y�Ў,����GN���E5�|̋V%S�z�7˸�J�]�]�4�G�[��a��m�%��y���L���9��+uN���\��v���������ǓxR��{⥿p��Ud��4�����?�p<Y��?���_�I���T�}��s�_�{���p��u�x��΅�wr�^~x|Z��s��l}`'�����[l�LF0��U����Ք�T*���F��h�ܫ��jv�ٱ��%�-�;�,F����}]�e��s�/IS��Tu�E��J�+vv�7.� ����L����I�f7��HJ��+i,)��7��^pWw}W}"���t��r~|��*���u������]��o�[���=��� !�PGi;�W[��k�GcH����E�H��|"�ޝ�\�h�c����!��g�1���I�
B+oM��\�x.��m�m>��-%;��ݵ�7����U��91X�Ҙ����n>k�F(�X�og0N�fw#�u�4mТ%���6+�q��E�lݸ�ؚ;C:���Y��,mj����o��^ 7w�ջt��tV���>�~��=axF� p�O�y|��G��6��[�;�\e^���e8��Z�?cgmvؑ�I�u���5����2��0^�~Q�8�@(3o�`��f���� �=�G�D	X�C�I�͖6wɫ<?>������)
�F\�#��Ě�ه�M +r��'�	z8�M<>�ݥ�|�gw�����0չ�c�%͢1U�ю^�3*VTr���M�fm{s�����A�=?�;�<=�80��	��=�������-t���>t��=��=����4���\z��p����{[]�@�~B�����`Ɯ�2.�ah�DBZ�K۠�!����� �r��Ѱ�y���vY���-�n�	¨I4vV(Y7�"���La`$�X�<�$�*����M�A�����Ė*�TҹM��#Az!s���_�����jw:�!��9��;B�0��N��Y��H�z��H����݆�>ˌ[vg������c��ai�!+�����^x#Ӡ��J�7�mwD�b�3 o��IHA�X΄���m�/�,���+vv�o��"X�[� ��K��%D�L�E����1��J�)�˯�m����-`z;",�o��2�9��x�j$�lC�f��hƽ�^����	�G�����hH���4
�������,I������'��A�]�W��&p���d_���+g�{���pL��b7��K!O x�x	<�3�N	r����]���������&[ew=�T��,]5F��Llvg�R�&/��8!Y9�^�[�2�^��_����Z�Y�"l�n�u�G����I�y�=2�u��@X�b��A�l�ĎaF�vZA0j�3�f�/Fgd��dX��\Ĝ^�������$
ηZ�\�x}�+�q�3&�Ts9�NKy��;v���Y��r�oN^��	2+�+�%�%m0�k^W�~�N�"���>�p�����D���	2f�\ak��W���~q�/�K����}Zw|���x��5��ǚ�|�Ɉ����h������F�Ӄ�mP��?��~�~���x��g�]����e�xG�-7vHX�s�-�G�d��.E����j�F�^�����8���ɴ f4�o�Y��Y&�z>��O�Y��k?�п��}v�	l��6�����:G���szZ�;�<��8w��kl�}t��~g}��uK�NP���ꡩ2�qi�Kؑ�e��VL�~A�g�v���'i�w�P.�e�J��2d�/�ϊ��?k��Os�^e��vYn�L�am��K�����8��,�`�c�+��yuY����g;��h����w����\,���l�e[��cߛ��a.��Eg������}׳n�Pﹽ��6��N[.?������{�#�4� F�'o�/�l�S�5G���:��zx<˳�g}d+{���9گ���Ǹ���(��6�b5�kҸ�p�y�a�S��T��ɵ��q�� ܁ݙ;B���Q�
1��g~��f(/j���<�z�8�g�͆�/.�N�ߥs�_��p��.?�C�s�y�r��?i�"�/�ٳ|�gH:�ONf?>a}
iۧ3�����'�;qdX�_+7�K� zG�7!Wlv7�x����8�{�7���^҈���|s8A�{|�}Q8����O���P�>��)I�<񞹀�#�������N��r���ߋ��w�j;|�����W���,�w=�C|����`zvLo��GS���z+ˣ`�&�+���Je`r��׊���Q@͂�A�ň��م�g��YG�Бʣ�����cy������isP.�]�z��5�!�9��LR�=s��Hw9�*��R� �T�>G�z��1LuϢ��#Am�'i���X5�s$�l�c�ذc��Qιy��Ȓe��%��'��¼Qjz�����=��zGu�3���5YD�6��q�#N���hT��6�[;
sH�����}
�����k�+��Ae�A�u!���=v�K(�
�������^�����w5���j�������`w&��39��a��U��I����W�m�4�$��@-�*�U�;����ei$��d�,����ҷp��]l��W��
��kQ���h3;S��J	.&?FU߳r�ㆤe���ϛ���dv�肻y9�������v�\��,y�V)�:x�nl�@j�4*� 6�C�\��ǀ��RtO�x����`������=�������P �g��c)�$Gۢ�A3�Pg���?��{��G6v1�6zgTY�S��FK�I�aOT��S.Bӊ��	xo�s��ZZ�B'P���`s��S M�����X9���cǾ�o�!�!<����m�Ϝ���.`� �yzwJ�E�*���ifln(�)
$г�����-���OpV�I�U����o��g�ω��� ��;g��Z�e"�65���guV�@�?K�
��MG�/�s����(�=��Wi��kis�xD�ހM@<���4��"Ж+�6�G2�cc�1�zl5����6�2_���n�;����8ok/2Sy�f~��eo0司�|j�k��[��R��,���l��*Tf%�XeC�R��q�v�7���f;�4�C���<���{S���C�;�u�<�DS@+O��?�ٯh6��0�8���[���xO��s�0,�Y��|G� g�.s��;ݸHwoy�Β�􁗱9�Ȓ�T�4�������%/ �~O�|�w�"`�-f@n=ڐS!;�'rxt'�P�gcx��Yx���z�:Z�*����W��e������ �zB��/=��x��C�Y[��7R��q�Av-�������\{�C�U ��u�?q�x��ͳ�{�sN��9�-`�:?Q���R ��\���n��;́'WW�!w �_uL�|�>���:���{) ��%��U�-�^����*>dCW�2Wy��h��fiL���.��h�@�)GA̓�ހ�g��T��R������^!��-v�+*��fg}.�Ʒ*��9�eq���=�������CNV`����l���t��ظ`׍��L�c�̖���y��4/���5\�R6춆Y�t���w�ӊ�wQ-�T*`��{��pU�p�+4��:�]��(�8��j�	�?]>ͨ�_�?���+r��7V6v����i�������6�1�Y����t���I�gߙ���
f"3�ͬ@�.��I�    E������~8�6n��d�9�-#�e��53U�G��f�feH�啡���;��i�9n0-lI/���5X�b.Ӹe�2�"�^4��Y;�L��]�Q:�2�)��:�,/� Z�M���#�	���g 'H���~��� p �@\ O������W�X�Ӂ�����  �9ve
��9oMR�#868+�2�s'
�Ĭ���,�r4;Mq�6�9��T��0$am.�Bb1�����Xc�����b`�Q>�dN��6Dk�.(j4��7��&����꬞V s � I��۔��(����|>��������R+�}M��9($��;�(�\��O��YC��7�2o���,N���FR2����NҨ��Q��k�eq-l>kjA��6��l�BL5��n*͊�ZR\X�mY�.�!����ŏaw
'������Lߨ���6�>������F'�+v�d����;�u؝E.y>1cҕ`xY�2�DGR���˯�b+��a��/��'|����:�+iE�I�ҐY�Z�8Q%�\q-�\�(�d��{Q�A.�y������e<�(��(%3����h��{atͧ��������&Z��GoeϠc@�����c�%�c�"�t
�۞@9�6y�罋���K=���n�Ɂ�������9�.��Qln��,ֆ�Q2����86L�i �fy���V��z��v�cbl.�-K_y��{Vg�N�����OE�yW5���1�vg\�]7мÁY�bD�z��ynЅxQ�g�Z��V��4K�Ϛ��G/JΥ"��(�)��"�~J �0�o�d�8��(����������	�,����]��3P�O�,��x��zzbg�:%�o�e�W��O@�A=����E�&���ÿ�RogT��0������		o%^e�MD$�;�����zs>���)�@<���j�]�z*ϥ�_ x��9�l�g�t!�`gK�
G�uY�m0٧�0i� �|����/ئ��\
��L�����}γ�ڏ��o�e^-Cd��2�ViNk�����FQ���S�3-�G����UZC:NK��3��v,�i7�Q����Yϐ��Hj-���e[��VG�:׳O�|~��=>���g�"�t>�qgՋ\^�^&���o�;�'n��k�� �da�w g7���K��D�����02oU���$���@�P5��4��e�4*˘-Ԭ��&Y5kA&��Tqͳ��u�,�{g1d�' N�lL�2X��Q��'4 �[d̽?L�+�tidt��ޛ`����{�<:�a[��x�2�Ð�r��D��#�����sҜ�H0��<���J��s~����6m�i�9�1�\/�@��ޥU���PwԨ�#w�2E�i��~�����_+�q��$Y�����j����Y{�������d��iv���Ԙj��QӴ�F��)a�D�S��=n�(��ߊuT�*��q�����}R��霞eZlS*2��
z��/wn]�	v�+�n��;� �1�*]}�e��kR�N�0��w�־$��xa�ZE�}(:�fY�p'M$�Z*+���DL�u�e�4mt�_�Ɨ�
k۱`bm�*�T*�6m�:'�ꨪX(i�v�ß[)�n>+n1�
n��m�8�KV]�m;�~�25P)9ʖam�k��(�@�E�б\X[)�_�8*<�Ce	:������c<X_��?��s����c뺰*_
��[Y�E~,���|��9���(}�[�w��"�
p�̛)��\�C0F]6|�-�긚o �"���@3D�c�:�Uizl�/�����>�N:�~�ȗ4����ܰnrHړ.�؏��kާo� )��B��s���W��wc�$�]B����D�#�q��h��H�:��V7�|. �'yA���znR��W�<>�� �|ԥ([���}��W����B�W�S��Cj�]���E��co�N�9����8;��+��c��c��z��-ȊV�Y�h2����4��9�v����hk �0/�����ĜϢ5L)�~l�Ӑ�m8��w����ɐa$dǈe�-WTeo�qO�W��Rz,C*�uH�pr����Q�QN?�S0?h',b¦(�<��>�b^f͒�&��{>��#�4�&ɀ�D�f�HGk�͡���Ol.Z��c�O����&O�E�5���#ζG����
��@z���I��}����/�N>K[��E�g���;��O!�=+��@\����/.Ko�e3�N0�^���	���4�p>w�,�������0�k�Ч�v(���r���q�Bo�u�A~�Q�!���l�g/�c!
z-����N,�r�#�l�{|IKwi���=��1��_Tl�orijl�c��%ؚK�ۂޘO��v^i���,��7�D5� ?C�y�9�ј��p��Gx�c2���ֽ�����L�MA�R�W��r�i7��%��AO��i�;�S�ޏv�����	H��`7�Tx^6ń��!6�(��Uf}�]�w[�NhjL.�CQj^��i���\Y����XY�ǒ�ZU���F����b�@΢��L:+@IA �Ҵ� ����j�����o�o����	D.�ͰzV�2�|h�(L����bYt����'Y�W�.�.����ɫ������Q(�J}�s�J�]���YKscS��z(YȖE����ӄ�곌�e`����w\O0���Q3V��}K�8�����i�dj��e�o�m@ ��`w��fղ�تE��P��Ϧ��P���D�Y�D����ҝ�Q�.��r~|�����Qǭ��U>v\�v���&W���RW�	���q����w�*�C���9�7��J痮O w��2sgD�+"e��Uם
�LTCh*���1���g�i2����;!�c���a�i�nj��,�7W��4���jw�ݙ[[ �Z�����Y��)6���.��gì�*U4���8���N �d[;J3���s���߮K8�t)����y���e�{�'E[K���eY�:�il�Ώ:���Y�NǱ�L��8��-:�!��>�<��J���֌� Χ&���A4,r�PfӇ��1~�Aa��z��}Ļ��K_OITx3,Ʋ�q([
�c��ݖg�v��y�	�q��ٛ��p:��#ڥ�9��p��i���K �?�s�%g��f8l�7~ާ��AO@n�v���c*����Owյ�W���v�����ϙ^��8�3�r'��i�<卹��
=�ch=�9f~� �3A���Y��u�kx��5�u��Jo�t '�����sfk�ظԝ�w�=�ݭ�I<�� ���� �>�������^s�4_�.u�n�ݹ�k͝n����b�c���K`�r?�ƌW}7ǥŃl�A��ŵ~��>7��L�BƱ�Ж+TS'u�x̢�Pu8d,O22�e�*����ۄ Ӌ�5�#�`WoI�ɶh~n��/:��eBbu�n�ƀ$
�[*5���p�-�߅�:�5n۸�0-ˌ�YZFٵU����>����~��f��gCK�|1	k�.US���:���&��뎉u٨]0�H�gM����ƺ��WZ��U���X�Fh��l	9A�6�w=�+T���y7p(�#����'� �%�ێ�9�6��`�F��8��!׽�{=1��8���9�?�����3,̪:/M�3�K96**�.���T~`^�>�O�m��I��]�[�FUAM�ҟ2�[+I�>��ѵ��}�^,Cw&��ܸ1e�؇m�geMP���fS�~LE��鍭�ֻ|?�g��[
��i@W&�����5��=�I�O���\q��_�Ml����r�y`'}VaS����
8�>�=$���d�#�&���F�kԒ))�8�H�gI�4&
�qu�K���$�
KFw�1z�[sҌ�5�f٬d1��&Ӻ������{��1��X���]<eY֕��g�F˜�b��1j؊¼ho���d�{��)�����	���7�7����m��\�F�O���g�O�?A�.u��Y�^��� ��j�oD����]y��Cݘ2�e;�~i�
� ���2�1 �  �<ǩ�0�t�n���g��;!8�V��K��yet�(��&k���em�W����n�P�w�.���V�M��^���b��,4������mj[WغL�D�2���fV�	���2�=>���G��r;Kr�&[-k��h��e\1�J���êN�9�o��^m���)ݳ�ZُJ���]_j �U���c�[g��a�,����!y[�)�>R���za�sR�κ��G.Zb0��$�����ǎY�\ʓJL$&�j����I-a�4>`J[��߿���TH�@���^��Ӕ�u, o�.�;:�~vq�W`��@��'�˻ԗ��d �������q�v$��h�_�Nխ��[�.��"ªR���R͖��*�ĚĦ��8��W�Pr�v�!��]`��U�e�i$��t��0��/T��:��l�M�n,�!�fw	����2���*>�&��q�V�7�َ�����E_4��@��)P=xgo���~�|A�q�'��+�QNZ���{x����N�����RK�W�ó^�,X�_�.bkۓ�v�䦸,L��zD�FP�^L&��ª]��$avͳ)�3f]F����Ag��f�9&��Q���_�ƿ��	B�e$��&�P�՞�yK�Gـq���ME^���i��q64v@C>�����6���)�VyAN&���Y�⪻�T�T6�b��.ܘ%"�x����a�u�Ϣ�f���W�5�}k�%[�;�
*>Z���~�)�AVYqX�x���uZ�������xG�I.��Q�K��2��B�B!��(1�C�\�z�o`�X;���c�"Ld.���5i[�ycF�l6�W�����hG]�Lf]6�x��J
xcX�q��|�|O��/���B��Qxg�/�/����AV�erU������ˢ	>\�(;L6=��@�gᛗ� Y{)^+��f!�t�Q��Ӑ���س��/�� ���s	ӝY��pxLf=1e�7f���F�r�,A>���l�]�nr�=;2�S��]���uW H��>��?-�2t��B��c�0U�b1�'/�|��ʌ��Y�J��.;E*.n�M?�]z���;�};�Zt>�;|r:�%Q�]�O�	(����w��z�޻G=�S�.��}t���n��(n�E�"+�l)��7�/dX�ژ�*¥^X��q垹:����Z� �/H]\�0t�6�/�tz�����g�)ǜ���'�=��{{С��o����Q�}�e��eu��R�;�*.Ky� 7]U��潂��g��!�M_Ƶ+�{���LzG-���R�TMQ�j�5֘�DVL6u0s�_;f��Y����vw*5q�o1
+�h�V-�0Q%���G�,��rVcG�\��^BF�e��|��A�Ti�Q�ƈbZ����\ɠ�������6]�M�^��Z��̢��"������� M����u�O廍#rɳ���8w3�:_�<$*�=S���7��Z��^��[���T[��Q;�R�SQv�\TkjĢLڴd�r���2��W��d�~fM$���D��)0^⒔UN3Ľ���K�`w���B�ƒ`��uzq9�an�R��xiJ���\��ﴮ�&�Lȥ�"⡜ۖ�����j���K�X(�*Gt��5�����_:$��>�v
�=6.�v�6'=���>)}�/���;U�a��:�����m�+YϏ��K6���>n~|���gM���.��ۢ]is�>
�ـ��C8�-f*�J���ߣ�#�;b"~Y�H���H�"�u�=hض�k����$�2�� b�"k)V[�;1EQ�m��,S(`,ʱ�R�%�x����D�># (�*PJ�$ް�����i�|4��1��������ˢ���;���٬���i��WO�<F�0G��!�7�Ǻ����l?g��A�]c��>����b��ַ�������	(�)��J�a��nr�z���|89�9	
C:G}��=_��_z�^�y��3,�2�Y��Ȧ�3�.R�-1N����M�Vz��o�<���*�y��ݒ�C�6]3�6-��F�m�	�����F�wDXAօ]D[����-T�����ejA�+1�@gl���Kݐ%��B<Yղ�����A��s7�b�|���k�k���;]�B;a��lŐF�f_�j�%�7�t,eĸhcu]��cјK���g+���/U��P�dri�c0N�Ն�jL������2��βL�mE�(���-�f��fX"S.]�B��S�u�U��4�MЎ��A6I�w���?�+�e�      Y      x������ � �      [      x������ � �      ]     x��T�r�6|&�?`Z�x��!�RP@��E�4}�۴]Ǌ,E�����/�Ԥ�L�������]�0�)@��(��� H��	���+Ȝ�`�t��J6����(���n�������k���������̓�?�����m懱�f/<D,���9��q�Y@h�㽬���lOݧoڬ������&��ұ9\!6�Ʉ�����h�}�ϛ����xMwi��aԣg����Lp �J^Nߙ~�>�M�%Ӄ���*�ì�#R��5�a�+}�P7�#����J�!%�&kf�gr�o���ݹ��l�����'���	�5Q����2V	f37D�|Ǔ擮:���ζ�K�̧�e��1�A�uv���	�
��=�v��?��������.�鹁�����1D��w�-�2��7D0��&en?������ޣ޿3L��AX� �<  Q����
�N����a�z}�O���~�N�=K|:���)V���(���F�/��^��F�)�X �$���8�6z}k��-����������da�5���p�n�<͚�
�p��mLjen��a��-�,�x*����&���O/!�P16)��5 �)f5�lu&�����,��by>�Ǉ-���ϩO�K����Fg^I(�YX*��J����$��wZl�c��]����n���R;����y�P���_�巸�*�4���7�������	���Jd��
s�"o�Rq�1CpK���Q2���r���s�<���L�������      h   �   x��ɑE!�R0S�x#��c��\�*7��t� �v`Y4��in�GKx����Ŧ�ۗ��!x��0bw���d,|Џ������xb����K�ҵx�R�L�n���r E擹����2-�tYV��bkDL�����]���m3l�嬷b���W��;���d_]��)<c�������a�4�      _   N  x�e�;v�6�ky19	�Rf�)�I�l ��\P���ҟ�x��WW�K�5�]�.�|���_�O(T��~u�_w+���uc�.�b��妶�b@�Yd��q
�E�Pi��ª�^��^m�T�����t��8HU��5�t2E.ԉ�0�R�8��+lyP����B!�S�L�ֈ�\'E�N��(�t
蘔8G~��q��:Sd���l��������P5�E�E��YA[)h��)+yܐo�~Ek����5�~������v�������!�S��j!�)�<�!c�nd�P1UMjѤUX�b54Z̢�H��k4�����O��/��GF�P<6��r	/�(����N���-Uf���-��N�Ŋ�������^�.�>sXb��kTޗ
�P`�N:Ý� ��T�y5���j���)�M�'p'�rD˧Q��t6�쑈��f�w���EyVY��a���-&Ʒs!��O.���O9��og�MC�y8�'���/K�^l(�s���\s���	*I�r��u$�	H�f��>����z����vJ��<s�0f�!��,p)"�#ь�q$�0��O���grP���3tE
��j�oE�J��'ts�(>�PT��Q�V��Sd��������c{��Tq����]ՎuUE��)�-f>P�\@9�beg�������V��:a�{�~-�l�lY�Q�+���l�������;0τ)c�hc�L��8�^��ѭ6��6`���)�:f�^���=�*���t��Б����ǆ�1��Mc���d�Ӧ3�{�Uj�D�t��R�'k��^����Woc�t��D�,\���[���[�1[�4��1��>��vw����\����I��E��TC(�������r[[F��M����4�qnބ�A�x�a���B�������y�|��>x��	�l��_X��q?����K_vϓ`6PΒ`�ϖ �k�!0^n�y��Q�@[����+��J�:��ki�ȧ@���5J�mIQ"yy��a�>�\3������P��+vw�,��S�Б���[��o*l`>���7V��F{�q?���j*��g��thz�}c�x��By�A�?�g=)T�*�"C�U���zf����
�tlņ5߶YI7W����䷑�^n#�����pR/�=ߖ9GK��8�/����%Gw?�\���4s�,��c�L�����;��<;-o�O�_�����I�G�O\y��J��"%�x�w����5�K	b2����ɏ]�l ���|I�45��`����FL�_J�������r�/lk�����W���#M)T�.R�󷏏���aZ      l   �  x�-��q1C�y�Ɉ���K��#8Dƞ��<�%H:#��U��3��_��b�c�y��y�����#�����gE��3��"Q��N�H��D��7�|��ՈB�2���W3
���Ы�^�(��D�W7
�zQ����1ћ��B����/&zs�Do����yc�7_L�>���I�Ob�}�w&1�>���I�Ob�}C�zk�Boe,�V�Bo�X�/VWAe@o�X��uc��^,��������튍ޞ���_l����uUa��'6z��Fo�����q�;�3�w�8����tR�΍��yqл#.z7�w+.zw�E�~qѻ+.zw�E�=�����F<�^�C�U<�ތ�����V<�ގ��;��{7^�Yqv�	t'z(ң3=�ѩ���\{t���=:�C���x���P�G'|(�=h��]C۴��Ρu�;4����q��@�A���d	�c��F��5�D/�Q'zO�tZ6r�WF��5�D�Q'zm�:yv�2�n��ٍ�~vSGװ����ݺ��Fw����n���m>�F�����n���-�v���n��J�Mf�����vS�W�M��n�v����FA��4�즁Pe7̈́*�i,T��cx�Má�n�Uvӈ����D��4(��YQ�n5���Q�n5���Q�n�i�n����^�a���㤌�L#'���}�l#'���5rb7]=}����W/]=}����W/]=}�Z,�i�崛f_N�i�崛&`N�i�g7����Q���4�b~v�L��n�Me7M���ᘟ�4�Fd.�iJ沛e.�iV沛�e.�ib沛�f.�V��4:s�M�3��4@s�M34��4Fs�M�4��4Ls�M�4w�e:G�@���� ��\��\}�Ň\{ȥ�\yȅM�r�!Wr�!�r�!Wr�!�r�E���ؐk�Ԑ+�А��̐��Ȣ�C.1�
C.0��B./��B..��B.�h�������
�c�e��A^w{�����a=�AVO{��$��A=�ANO{�����!=�AFo{��$����A>o{��׋���� o1�K�=�0����� �/���򂼻 �.ț�����yoA^[���ygA^Y�7�y_���
򶂼� �*ȫ
򦂼� �)�k
����yEA�P���y=A�N����$�^M�7��y/����s��mtz�F�����7:Íq�S��7:Ǎr����(�M�r����47:�¿~��?� �      j   &  x�mT9�@��W�L&���/��;Y��"���H VF�檤nnJ�N�����/y��H�w����-�N����*4A�\�˳bvAᇈ�p���zhڒRy���4��Q2Ji�B�j�k6 ̧��0߼��â�2Y�Tf�b/�A2u���@8�SyT�P6+dH��WA�!�0h��n���g�aS���k�r�yaSL���aتh���a����E7㫯�)h/h_�"���W}D0gt�윹�0���: ŭ� �*��"�5��0��؜�\H�3/k���Ъ��O��/C�0�:��o ��\6�+fo�6�Z�y+�����G�ϗžFV8kes����O�7������0���~C�V'��̑۷8P'CMl�����<�u�q������D4�Y
l���;���޸�Ν�F�i������������W%�s�9�q.�G��0�P'b]�
tM�]i{l�D]3�a�u���E�0R`+�:�DWAΞˁ8���B�шV�}�O���{~ _\�u�W:�*��~3�_����      b      x�|][�%�
�>=�Qe��?��$)�dC�tt�b)"��{]��ڲ>�[�����������ڶ�s��}�����z.��u����}�o}�Gk�2o�\���׿c�7�`k���u�;��6 ����e3� ������ ���֎# �����C�H �y:�6D[h�c��}�{Il���G�����x^�G�`8<b8j$��VOB�4�J�\m3��/�8��1DH���@��X�!A	`�h۷��E�^�k6�f1�a��"��9�Ŵ�8Ľ����[=�3/���Z��k �x�F ���1${�s�G �)F�)#؞�Dϛ�i���x��<0O�e��u�S�ǻ�[� � ��q/�)�d=����W���
,3��@bk�-̱>5�3DcZ�Hʇ$�6����e�N���� l��ȩyiq� �;�E����8S�s8k [�. ��X�-��ћ5aG)��m��f�-���o�A��s-�1�}��^4x����`<�y'FP�a���c<l�,��w�p����N+A8���h����1mK~\g<�b��Ƹo>�3��x"�PD�5�+	�uZ�;F���
�8�5o#".�s��e��t�>��~R4�g�\�6n"�I�-j �D�� ���)��Kn��� 8'5�����R��0��=�-�����c Ѧf���Y|���)���> �I��^��P�kzV@[x����B���E���{�C�	 [B�w�!�J�0mk��d����!y�6ávZ��)���h�8�ff����׶m��nS�s���&��[-_L���?�+��t�n�Ͽ�>_�փS�a;z�����~�w��?·��T���ݗ������ʫ칶4�u�0�M��F��Fh�Ʊ!v%G"FfG��Lu�s�h��}���9v�"Zs-DifܽD�q�E r�l��)�E{A `��}�-ړ�2���XV��U@B`���w��݌F�ش~8�9����lcA��c�� ���`����|��æ�E0  B��Xb
��MġC?$�l顨��2�9� @�����G@x���Vm�'��<�P~� ��!�;ꨁ�
S�8� ���F�Ƞ�ز�^�l�Li���6Ǫ �R��Aq&]ӓt�X �`C��M`A���$��~&ac��E�h"�;�*F��	[j@H%��6f	kZ�0��'B.�>Q�&(!~�1�R0�nA���F"� رܿ˘#�ų���8 �B�M-�IJ\��8��7�ʟ�lu� �`���a��'�MIG����
�h���u��bǙ#�Å���\�q>�R�[�DvVA�	|�͎<
~�� N �,Gh�hB��	,q� � &ub��+b8`#����)X3Ɔg�/D DR���Y�!��}�c��B����b i�J@S�*;?�t�� �974��9cH`�K��WC�hL�J Y�����:������`��Wq�ܱ3�c��k�w��M!�)�Ж��h��d�wq�z�a[��Hw���"'� ��� "�B��c �*�Cl1=k ;��h7f)����l!J&c!�m�Ma��[S����F|m����s������K֍�)Bv�u���1;�`����(Ӵ�����`�ic�-��]�H���gL�Ѯ/����-���}�S`i����]8��nE>o��h��6�Q[d�1E��-�j���`Spt�ͫ @4zf�n �~�E����l��H�;�/Ȑ��g�l Z5[D#F@g�h���}�����T1���c�*k�MU� �V��1a�k���r>��U�ٗ+���怇�%�
p��x!�k ���.��mc�`���V2�d߲�&2<�XU��Ł�0��0,
x<B>px��5�G�	+�[ @6� @S$�]�	z�����( ��*[�H(;	[��[�U��̵]�]z	g?<�ﻆt�4�!���q��q܂C�BV��vb0�F �pñkBb�A+|�O��d�K%Q �Dq ��%��r�z�A^E���N�J�D�s�� ֚p |Yi~���nQՊ9�<�,W7��0\k ���)��E"ەG�>GC�{:�[خ �P��enF֜���,��.Q���6!~�Ӧ>���Y�@�"#\����u��ſ�����~X���pA߱���߯痸���?{(q�~���!*Է^�p�L��C&'�.+E�7�Cdz ꥀD�[^�!ʐ1�S[q��p;�)���a�b�e�������2��;a"���! l"�J�ɻ��j�r�0 ��oa�J�)��M,�k���F)'� �a���Iuʎ��fB�`q�h�a����Nv?����s�»�!8���i��L��<��VH��q!ʡm�S�`�P�F��	֘��jC��� &��k8�� ��6��:��KQC�
�M��켪�_�D\�^�I�of�r�䷯� �0��=� 8T0����p�$4&T�mBBDsR}���f�RT9@���B�@0]�J>���Lq1���Q�'.���4����� �i]�십ӳ���a���Q2�0����œP��Ŗ8&Q�mYH-�^u##��X�9B���$	'��x�6���-�p�L��O�Ξ�U'�%��h��V�{�a 琞���\�A5�~�_@τ��J���zAa���R��n�@3�' ,F#n���U�%�G1���n���PD��KF�?w���o���*�OqS#��mẂ1H�����X
�gD �vo!���|v��y�k��  �j�V��OA���~?1����b/��A�3�z�V�B�3^G�p��(���f |���� .V\Ķ�hթ��&��ɫp-���&�D� X�b����[�c�/��s��:�)�?6uII1��S���ȣ:�D)h��t��7�`�AlQ
���c��a'�`��� ����M��
C������Y�r�`�r'y�1D�~��l)�$�h���g"�m����Ps�g�R����v�UDu>K$�"|B�[P�<��Z�� 
��i�2�\��A/p�Pq�C��X|J7� ��긏�,X9D���]#�=��.��D��1�_ ��8�ϱ�@T�c�v�5]�ȼ#��1���_�'�G|���/���B0�!��ݏ1Nx�rU����q���z�5+�ֶ�000�2�A��@k9UY��p��U�	�,�CA@z)<pބ�B @���6V �G XT ���5���E� lGT���H5aP�VTen|��� �q�i)�Z��(w�%t'{"��qX9p��ο�ԕ�W��~����9K�f�f􉥡�U]�[�B?� �"�Y��a>|�;r;[�0��1sH�=�=�:�?ѢY@�+�/��h.p�'$��vuA��S��W��pQ����)ε�_o��,0�/����~8h=p�����`�8xu;��>��S�D������Er�A�[D1}��e0Bd�y�|���b���9Dq�A\lR2l��'W�
Ȏ�	w���d��*�<��	�8�������u�K�j �� v(�6h���ǶE�q���U\�q��wMzӏa!��\E` �`c��"l��5	'g7pZ	b)D�= ą_��uq ���3S�w��?�f�3��`pWv��>Dƀ8��!J��/�ӃIDmx/�=�م�����5��O*�w���LrP������ 9��>�I�Emdka�M͂]�-C�� �Wjb�� 6�x����7�M��"�DwAQ�)��ũ!�[�\dX�7�]s �c��xr �:���^���%Wʣ��i{�I Q�$.6�C,j��9C �,�s��>cU���^Lb,�^|� Ԟ8b�Ou��{ʭ����M.�j���\~ ����W�
pZ����*��N�F~�s'�� Cl����.nW�Q��s�8�P����    2욨y�!"���#�
��t��O�Z�m.�p.�cG�-t'83��u}&5,8��.�T� l�� �������]�6��X��	���+�#��+�?,�ud[����r���}��B��0��PR {�X�5��翎������*�ݪ�ёGdw��(a�m���";�� ��&:7%�{��)j�L�|z�eb�o!�P�G�~���74�v�?1}M�d@C�as��w��e�X[�p�d��$,@$u�e!GȆ�A�H&��AC��@������f�E1��+m��!���T���]��g�}���#r�я��cZ
R�y���*ʎ����B8�ȍ�|�������ޢc��!has��0�.�Q}��T�:����1�(�r �p�Sz�ט}[\��)�AV��C�q q��� :�S�,9�#�a����1T����N5�-%VP3�Z|��5p�� ��cg ���n/9A�_z/���~�B�*�)�	��� �]Ö(��C��� �<��>�ș�R�6�ᑬe*r��lĮCq��]�(�u�"R#*?�4G���k�ޅڜ��8"�)���*��+a�����lX�:�B\��!Ď��Q�f��^�Zb��4�t�������VXG�����ȉ-&����M�C0A���'��`�M���= i!�)�A	��5&>��38=OJ�Of�V�A^N��}�� �Oa�@�wf�0,����@�5�n@1������4o6��#�(�9���d\��~B/H�6��t;��M�Ed)%���D�: DNئXC�����c�1���"3���d�c6(��!T����I�Rm��7���*|�C�� ����*��N	��$�������L����!.�ZW�9�@�	�x��b�����x� TZ�	.�����p�9D�S��e� ��!T��B�1�>�-�T��9�zx��5@T��=U'&������ �M�es�Jwj�� �ݘ=r��S�WQ ��ĶZخ�*}��R$ � �E��Śp�|΄�V}��R�8D3Am1�tٙG�I��X��$�Ȭ�����C9� ��gp��� ����M�~wѦ�	�QI$�%U�`���w�	2�i �|�u���T)��k}��Nq[j���\�JL�I�H?)jcm�TfKQU.��,�!��P��zXT��T&
b�Q������ی �6��U��\��	�M8�8k"z ��P6��U�q��W+%7��
�TEW����oτ7R�<��u���Kv�����P9	3Y��=�� LC[�(9���S�ޏ���PU�'0�g���!���P]%ƻϳ��(XW�L}��T�)vLYP�۽Q�v������E��z����Xon���� &��3
�7��ޫ�X�ٯ*��i(8@i���E���>��e���7�a��Dx�x=�TGDt�9� �+ ����vh��Toװ7��r �;�*�@S%G ��k�8k�m ����O��BD�/$^��0,D� Hlu��wL�9p4E�H��hU(�elpC�g�2q��qD&�'�uq�#`�b�l
�-U�AӶ��n�V�fs����S��!k��ðd���H���b����?�Nϲ��.t˧8�Ӓ+(��IZ�+8`j��;2T��X������+Fh��(�ŦȂbK���^�U��e��C�����j�U��������!�.�r	 PK @d)54��m<����ḁ*Q�,
�����{�/��T<��g �8�$lqo����\4r5��$Q����(61B�F!M��DX:U�O�"�~t��wU�3��%�g�
�ǜ��������).�b�M�m�*lv��C��12q?�W�R����J�"���B��P�F�u��CE�}A
q� �i��uU$� ��I���U-�v�W����([!�FD:f����	��"���⾻Ӣ��+���[J�S�R�q@	!�p�� ��?�c��a?��a_�b�{�7�ܣ�R蚈F<�=�*���7v�7�x>z�%�U�R�i�G_���<+S��@�K1�eS��Q�}�C]̡���(���l�]}tb���CD�ƟZ��r���c�ǜS{�F	��R֙עαA�|fQI�CA`�/m�wj� H Ae#0�ʔ�YT��T6[b����`�� l�Kp$�yj�OE�M�����}~���2�X����)�y�\E�8}έ����<;��c4�?�-�8��ac�l�6 �\�q6p#��0�"����� T���1���4��_���q)��S6Y�-�8��31�!*�n9 ��/�&�S`j�ó�⺑�Tl<V* 	q�ȗ!rm �2|���2¦�$���W n���	����`y��I0D(u���!�G�C���W!,Vh�EEB1��b��z4���gQ&ُfפ��_�$U �0��� 04E�%�7F@,qyƗ! ����p������~
��P)�_���*GXp�� �Cd��y�E��ڟ��
[MT3�0s��L�wq)��t�N=�]�3�Ue�#XX,Շ�Qc��@lG�X���DJ��Z�������2����+�K�U�߿�&%��=�J�
=���\�i�Q&k b�0G��0���R��B�@* .�9{�(�Y����"�!D\�j� �� 6U�x.�f]R�!�E��ڊ@��@E�B�}�yS�%��Y$��q�h�Z'� ���+4�RЌZa�����DMh_?����S�ꀵ���FP��`QH b�JZ�DBα� � j%4F����<xB��)����!��~����嘤��:�������s�I��CV��&OB�!��� �кw�l�T��|!$<xO  ��Т�� 8e��|*W�bM��p�)|	���l KOnv�i9�qGt��H���|g�a��<@$4�������k���pQC Q1�� ��! l���I! �� KYƣ����5Ĭ������������T'5�u�"0q�dt�L�;��:��rA!�T��ꖆ�� 춺q�o��î&5�rI-�Qg`�P�mİT�ER�8g������S[�h��+}r��N�h
궣���� 0,�51�|�tχ1�s���i7O�!)����f��A=�z��7b���l�cǄ��&,?�BX*8�KX�l�`%�� ���9[���KNu����?,��*YD���������cOl$a����Д������+���?}�}��w�;��]��|��#��$�=���͙)m�M�"=�s��[�,�m��_3��(�� "}LEk��ف�$b�D���ZE��ͱ��z3���P��7V4r���ywv��I_�8��SxV6�(�wz A��2��n2;�=�x�B�_�E	X\,�(!�M��R~��W4�[����D�Z� DB� �h����"c��L 5C��RZ�P�#��ƾ�A��3U�`�D
 !6�h[�(� �Ț�I/�`q��9�]r�`໺�:�X��l1XIW!���2��:��ds]�xPA�H+[��� I��\��=��҈Nq�&�I@��tr	 � �� `�M"����R5���! `�(g{7b+�T
�fQS��_�f ��r�!5(�   �k]�4.�L��9h�8lO��nH���ZR�8ȥ� ���5?�"�VĲaF����,�PX\bp�  g���z]��G���q�W� &��e�v�p'n��8����X@!
�@c�~Z5hp�:�,���`*��kn�(�@:-���5�]�en$ �8���a��r? �y����pT?'~����ݯ��*���{������� �2����;�G~����I����Ү�^���D�k��e�!���
��f|���9Bռۜ�� �� �R܇P�cM�!x��n�!�����~&uϱM�w�� 1e� �s� *    >a� vAc���Z�z ,�_�:�3k �t�D�pHB�����Qe%����6ȥ�eaQ��!D��e2E\\-D��˃'ߐg�T�2�*5T aGj��]�z ��I�<�NpZ
 �����)Bm|�� `!6�%�#w(��<�~�j�H�� �uL�r�� U<b1�ؚ�N�&a�������W}k�yK�=,C�][����P�`H�� ).�9#� ԞV�F�@t��Iq�Ĺ��⚤�e������h'G*���v�B_������CU�ԫ��Ι��=���T�m�&�MXb%�A-Q��&�@�E�Z�$"����#��S���D�X���u4D	�_��KQ�,�B��T9@Tx�C����DwE��x�g5�� �/b�����(���
�Zq��}�A>��K]�ug�����̡ $�|�n[L���� ,}�a�BN ��`�P�T����T'�x
��v�H�\�m�0���op�&߻��j- \�������u<��L���z��Q#B�Y����.IxG��z��9��GGn���z��z���P!t��e' D�� .6�螯�̟'�g��u�D'���.#fx1��a�{�1�B	x#۽ܼ "/� J,Bi"l�Щ�y�Ğ��D�\!\&۲Gp�mY�2f��VqP	N�X|��<�oa��}1����:[��=��`�` R2��}K�;�!|}m��P 6��R�#�DI�f�@�a	�{���e��Z�Х6��]e+�D��� �F�h|
���+�l!č$�!n�8��bD��W��C�=q 8FN��R��pj�)IQ����0Z��Dι�7���)B �u�2�5���W*4�-�]��.���Ö��8G FH<���:���u�� ��<E]�#*f1D�۵tM��PZ�2��7��cE��i�_���ŀ6�jU�ǀ�N��d<xT�0vV�rp��&{]dx��3�����}K�Ɉ�i*Uk�QA@�(l��\�ax�K'��u�IGT�+��	��x��<�w��`�KXX�`oc���/E;1�)8�$��uZ�����l`ÎWMߜº�H ��T<�������.q]��E�ƫ@��o?��&�i�۞YxO���W:O�vɁ ���'�N�Fw��Lx��m�����m/8�{x�tm��ni̚D�P)z@���Cb�C3Wtw$��<3DԨ\�˴<"av/PO� � �2n�o��L��Xh�b���-D��#��� nqgS��3�hb���XJ�;g	�|#lWDi��W"��!�0 ��;!	R��A��D6l#R�Nma��H���8?��!NLe�B�?�&�D�9'�]x�<������!��=�����+Cl�{�8��8�b�Y��@�6�=ՕT�Bb���l3ο��14�[�� w��"ā�s���
 i��#��"�	,��>�K� -bg\�2�E(]�e<C��)=��41$[m��1D�6A
P�E4U��"Z��=���B���3EoC��zj��ƘJU���t= ��T�����B9�5F+��� �FB%B8�"Cl�HB��
|# l
Q�j�KD>���B$#��Z��
o��w	�AĮ�4"4��/�u���T*�w/B�
�R��_��X���!�݄'6L�l%  ��nTb覱��!K�J��x%���������M=�f�yS��ؑ<�xC���R�/l��]>_�2~�N��1Dy�/%(m����m�D���ސA�O�������#�s^�� ��������(@}+a8�Eu��!�#�˻~���;��6O\�8UmDXcS�X�!R'�C$_  �q�B�Z:�D4�F9�N��	�K�H�Pí�;�����I�O2Ǝ�z	 4 j�kJv1�ϳ�3-V3���κM7�)�� :f,T��{��� l��-X慖��7�>���Hv9�B��"݌)�Ȝ3�������;�v}���n*�r�	L�N�:� ��� ���#!P�S9����/0c3�Y�7�)�9���E8䯨6� ����c�VE2�����P`��8(&�a.��Y�T�ѵ"G����+�:�rmj�5�1�Vrr��7r��2/��&����_���D�)�D�����ko!zq�ˉ% @+�;�DP�O�`>�i5`��cQB�f������1T:�ϻ��B�k������u���i��찋�Xh��g3�b��؅�:4�@�	 �e6�x����o[����W��v{Jp7l���������[g	a�A��aL"���<\�0	մ9���tBy������X��Ð�#���q[?Eu��#
�\k�),2Ta[�Tb��[JB|+�XHgCS�Iq�E)��_��k7�l��!����C�{=����:��#t���<�\��`���[�`Q��_Mxm,��mz�-������5�Y��@�L ���G�+��0H�M��q!�����^�/�P�����U��s�6H��"�i#4QE�)DtKg  �̱����Fh�H�
sL!��@�O��^���RiC�Y����5Fu�~ �&�RleC�&E P}���Q�u�((�9	E�+�aQ�k�c��:�d����p��5`*BN���8(_�I�0����< "Jm�&*~pN���Z���,Bz��h Al}��8���=1��Ć��ۗ�7hM� �3�*&�8P��5�g��Pb
�oֲ9��=N���X@��D�8|�ԙ�C�k�.��bOY:�@9lU��J,��*���֏ʂ?e7X^B��wΡ�#�;.��S� L,�m#�x�X���`�*�+�2[��r��� 1Ė��PC���`AN&u��������xRf]��(�1T�,��@�K��֕*�|�BW7�m�c!�gv����x��I^���ˊ�`~D��X��a�,�!8Du�[��(�2E�� �_ @��+FX�Py�bW	Y��!��P�0Օ�oCV���:N5ΨX����Կf�[l�������V��y��x�.�%��W"�B�����Q+�/�W(MT��O��g����t��O^4}z��[�-�Z�#��I|s�E*K��f��qAe�qN�"^_�X)(����E�E ����n��h����7��g�5��.���%r��1�(k �x��*���%�Sz���������z��1X��j4E=��؎��ɇ�5"zŀ"Ʉ!D���~ r��F�)�}?� ��X��:��X{�����	o[��6���/|C#[���-$[�J8(;�:<s�+L5X[��Ec���PE�+��7��dدx
ۆp,&�x1[�� ��By��U����E�k�*?�8H�E��a�n6B��pS�-�r�c��:�K�ၻ����[ZΤ �V��6��U
6�e_�  � �@s�<��j!�q�Qnm�&zvU����f�N	�D�*mW��䑃���!|���?u�×!�XLQ_�r/, �B ����_�-�sE}�H�Q_9Mo�!*ҝu�����EΑ�Jj�.�3cn��)0���puƍL�yrm�'�<�WX��<hwY_��B���"��m��Q
o�5�h�������|������:�i�~���Z�����G��.��O�y��M<j��"U�� ̟��g���De�!1�B�y��� Z#�:�4̘A��"�Y�[kx<�&�1D6� ��a>�$�s�.����j�Di��k����a[C�yc�c��Ա�'�A%Rƞ��p�걧ʊ1��y��RA�q�D���ԑi�2Q
��IWa��!`�Ɣja���E��ɺ���m��enZ�M�	?3�����$��\~NІϚ�����H�D+�*����wvQ�:���-�\P���jЈ!z?������ ��F�`�I�I���Y����>�P]ְX���RBa�Զ5Ġ    ��
KFΎ�y�����-���`S�Ea5�ML�:E2[�(xqL����&��+��6u�� �Ŋ�N�Z
6NA�?xL��6���� 6���t�,���XB. ;�2��
M�H4�,8�
�� �\w]�!�:��xr�`8�O��uaff_\ul��"Rl;T#A#���',a-�� l!h	�#@�����:ꦌ�ȡ���#���o8���U �29��$V��YA�+��Ɔ
�|)�4��]n�Ҧ.���S72q��
xB(28U-?=��z�=о�{3�vSD�y���p�V����
�}�d�{��V{z\$<�ΎFߊCDVl����3��ձ�A��L}N��	ϸ�`H�85��1�<]�"uE��*�ox��{x�OLv�h�JD��3�s��KϺdc��	���]|[�$=��E!���J��$"K�ZR�E��v,��7,�Z��qJ$@\��2�l�g�8�:˸ƋD��v�&��k�]\M)D5�,�[ �Ci�?�vg���,��A,���a�y�n���V"GR��;]o�bC�{�c_�^[��?	r�G��}%W��C��j���B9B`�?�0[@u�q�y-&CJ��$U�8x-�5d�@�6��!V")XTE��*���x�<�3i=�+W�K�?j0���阥�������d���$�C��j�<�J�5������T0�U��E��t�(B�o���U��L,�.0q=����F���Th�(<vr������"h`�R���bX!j����B��z����Y �p�
;�CI.&�R���.�DJ�j���i'jKx.�O����+]�W��}�^�%|D[h]M�28����K d#�.q��3���Y��~U	�*�a&��e�8I�^���.�~�D�X���`� xqJ��,+���(���J���e��[m�wv��d�>�,������ۉ���km���u=0��#���<�H�/p� m \9�6 �`�|�*@�˸�2�|�܀h�>�\{
�| Gp�3���L���-t�#4�X�-xb7 � < � < �0e��e@(��� (�D�R�� l��E� [@� [B����� ��C,V�w����; ���; �3���
�� ���C���� E��	�؞b E�� B�� @(i��&�ȳ.E�D+�w�u�ċg�}��c8�T�KM6���f_�Z�t_ � D}U�'��֏��9�1�k</��w
 49�5ǚ�9-0I�W�� �u�[�S9t�O���?�I�NX��׹_<˸ȋEgz��F(S���OŊ�9��ew\�|�����e�\d'T��0�!ʢ7�Xi�u�!2Z�c�uy�/��~�E&�A�DkQ eA�k�7�� �͟{���7��6(/��(��K����q\�|8�#�|�����;D�x�1�� -_��ic�҃��� ������B[��m- ģ?/�uy�k]��}�eǘ2�.i��PH�i煨�4/���f��7�p����N��1�]ѩ �p*  �
 (�©0�9��ǩ ��N> ��  �3 @� >�Q�
�g �� !x���m�������q���36C���< �3 P<�3p)������c��B�)�+zf��z�Ϋ�CXS�V��}}[�|-�*���2 �� \	 ��Pā���Bp% WBp����u \ �u P\�u�^�Bؔ����}��<��6���-lz�g����ʧ�!D
�Dx�6I�s����~���6G�LbCh
 왰�AM`#D3��`)�g,T�X0B�x�;�����2�c���(�(/�u��w"e�_LUd��3 <DhC�! �k*8�9�A�I��/���� v�`%e��w%"��*�0��Gt�"�`H���B 8B����(oX 1y�)����h�^_��_�@D( ���-_p�]�E*4�=�i ĸ� 	^?0 R^~��x�" u)�V����]��>#��%vC(�� n�M'��c�}��W��0�J�
e�.L�����������N;�?�����8,�6�͇�)BS��E�E[�!����6'�\���n;�.�o��l���\�v�i�����Swtkk��y�E��7	ص{g��f��A��8�(*�(S\m�k}�  ��N�Z���tg���w�gZn���'�{o@�� "R�u���>��s?�mгvZ�\��4ܷ؈9��qN��.'�^�e�7r^��v��
�����"��\��� ��� ��E�u�
A��_�ǃ%�Olw��������k��7S	�p��*�YmDI�Z�-�"X�ϰ�u��l	Y#2�@������/1�RXP��m\��1����4E�6�9U[�k��QU�.N���hZ��q񼨥@�֎.V��X�r�m)*��DW*��0�Q�ÿ��쬝v���q6 P���wѨ ��T�
.����＂ 5�Rv"y�x0 �@x4��x����JD��W"�$�XQ ��V������;b
����-�s� w�V��00`�	�
��yT�\�SX�6�%F0 y�<��yݟ��*zm�)D	ǣn���D ����� �T��;�*�I�q;�ξj�#Ara�@�� �s�'1�1� lb�>r�����9�m�X��ހP
xe�����B���� ��?N"l�:��v�~<&Ʒ,f�oA����߽����/�t�f�[gx�������RG�����böI���63w�<u����}��U��}�Z�=���=�0ş�Jf�H�C���VQw�݈MY��B���P����u
 ���.��C
@�����u:5�N����a�K��O"�c�PhԷ� l�C�f Y���k
�0�9x �W�ö�ns��}�1p&bӦ�;�����Pwzpb��cW��*L9�4��u�I(u����Ja� �[ @�	Ja����5�aY7�sB4 ,�v�#��F����������!F�v)$l��?�+P_�|5��톨5pm,r!}�#�4O�k8��H��U�~7��+�=$ 0��'�I��r�ON�E>C��}�V�ha<7�!>��B|c,*S�BK�
3��8x�׃��*(w�T?�V9U�G�Y�]�h(p��<���/��* @O`��W��S��|ż 0b֭*��P�7#�hÉI�²�ɦ[Al�,�)=щ�e>a�=2_�_6�pDC�@�!TR]���#`u��waCCrq�N��r4�҂�)D3	�� >�iL"��*N2��9a?����SHX`M)�:�s�P[�����wG�rv�0.y����ث=l0���	=.q�k�x���;QL��u������W[@X�������!j[	#�W��^������Ͳ޵d��� �=��[�H� @���K��M��Q��f:��@C���AO:��3�R?m,[�� ������j	mi�8�  �.}��{\�ah�����0e�D�/֪�u���������rp��!����S��-�h�n\��$Փs5�v�P;�ΟB��D�a���Iabl]�	Q\j�"�I�`Q��& ��� J�|�v2���ua�醕\Q쨨�r-� �mb��<�)�H�N��4�K�:��jB�LPmU�4���p�kc���^��]�����j�"��n��B��Rga�c!$���*�Y��P�
��k�Ʌ-�r��-uQRX6����$�U�!M#���b-�t��b`$*+&8�U7|p�$\Y�-�!wN�bG�C�iC�R?G��\~��Q�~��5`����6N^C�
��uM�����[ƞ��Ke�C��j��,n_bB��|#� ���X��    p4)QK�#�`�T]s�7�9�U��bO�!�hB�*/v��kΜBK����F�9�[���[�;C^{�6����V7����7E�����]Q����G�W��u��?�+^{���v^���8OuE����K��!��w7�Co=J9g� ��NF��T��3h�/V�v~�o-�3i��%�1D�)g���Ĉ%�F����룦�%F,X�^1�-��y�1�@ҦPe�N�:5�|��s\/)ٸ���,J��_���"���9eh��t�:�A��!LJ�(�D���v�,"�7N�l�q ɶ��֒�P��RC\�Q�u��%"��I�C�I¼7,DE=��P#��<�\�،��8�oV�> <X�q�ڥw��w��ހX�%��l�iD��!��Rs'[*zh-�7ξ#�#��!Vk�`#�����܁�4��I�Z}W�Ah�����~
���$`����0�[���+��;�.��B!�����R5�vU*Սq`����H�n��ؓ
�Ao��vSI �P� %$���*D*��c�
T�b�L���T�廘V�#C 
�R�8�
�B{f���.��!;C.@�:��-	u,���)��`ouD`���B�!v^	�2JK��b;"�@pub)��H�TM&O���0? ��UW��������^:�Ӄ!�����ƹ�W�}�<;�?���}^Fa|~����y�8��]�8��a8��$,����ҡ�z-��P�7��&w��<�a�U!�+� �A��L��b�"���.ҭ�6w��������E" B	����P"� �@�Y��!o��r�r! ��6%E�P�b�邵�4�0o���zHn�
B��\�F���ϳӳ�n������g�9X�Z1@`�M��bC!���\�N�Z?�"w��X1V�(AE.PC�(C��:�<�ْÁ;o �� Tz�%�>aX��h.��aT��gE�͈���MVPK�4 �/��g�b0�5x\�As4Ԟ`�<��k�.q�qZ�_L�jue��D��5�� ���᜞!!n�8��a�9�!8��P1�)4��[����ҳ�ɥ]er]U�#�ID|G@ `�u��K>q�C�cE`g]�8Sias��)��4_�hh�?ϧ�C�	qa�'�W]�	���"T; �ч)x�X���\u�n�(A`�z�Pc��"�����5q���TCN�ȧQ���}-B����M3�>	��*���!����$&���DZ�)'�ֈ~΄ʴD����k`C�,��f-֜A��`��^��C�l�.V��oy�y��5v�����(� $Wz�()B2�^5 �$$�h���G��`Q�72p>��r����#��Dn�P�a}#�G�ˊY�`��>++D>���9�����z�!��.}����;��|���&9V�16Įjh���5l̈́bm�a����+-�M������)@+�s9�?F���$�l���ۂyD��7�;Ë��c�t+uv"�����EA=6V�JA�&��΋��������5�ݾ=fŀZb�F+Q��@�E���Cp�uQ��2�6����s�Q !�"����єMi�uX�H�;O�p�k��|�u��.�0J���^ ���+@��o=�9A؆��%�ML�^ �`�롰�s-�o�;k�1�Z$)�v����5�V`]cc�
@;�W� w(��5���֩��X�JVa���C@��n$��TNR1�M�
�|�B}��ũ.^8� �s��ӦP��.�8G,�VC`K��Sl���ìgU�j�;%.x���ujۉ���!RPy,xhXm@-,�~�S��8gz��:v���5�H�c����{���0� ��T�o�̙}*'��<P���:-9|G	c?�u�ԑ!·  K���)���9��v�N���-cZ'9ϰfg��ʼOE�.�����W��*<<8��WW�A�R����\�q�݉ ���Є��$����eo���-ㅏе�R��~>�k�%1�^�����vXP�'��B��B�+�E��>ޞ�7$���C؍p8�?ϛ�&�� jO���{����nF����n+Q��H C���!Sb��t<��D9��
�`OiG��Ϣ,Z̢ 0�21���0� ��<g(���P�������*Ã�8�=wD�ԣ�!�a8����o���U����������u�) �Pa6`O���g������'�
0���X���"���jop�(ptaƠ~�>�&Ԡ՗����[��	��pV�3�:��wXQx�2^P�����c�\��;�_G�64 z��G�M��h���0<�?��`�߷��&�H����ˈ��Mġ�w�4�_���?p24S����Lӯ�"��Otϧߕ�S�泫�{���pU��%�A����w���ۀ6n���9~NDLjm��3Y*Ϗ�m���W5��m<�H�)��5a��^�no	� &^��+����k�G}��K����Ix�)�'��qc�/	��ii�猠��ni���v��)����c&�>&Y$��{� p���m<'6���R �I��h�
6Ϣ]{?�?���?�-^������\����<�u��b���u����h�������G)����cж�H���~���[�-õ�$�^A�X�q��E��~��!�(Q�@?���p)�\޿o���	5Y:�l	{.�'x�	�k��rs��xs۸��G'����7���� �S[��H�|��~r�c��&�'q��9l��QO�,��Y�#����ـ@�I���������]��y���:#�W��87}�71״�?�>*����Ix�?q��e��9���c0��]�c%պ6���R��e��G���]�
#я�����|��׮��J�_��emm��l1�^Q�L,`��nN`�`]Y�����u�3&�]�������7�>���L��X����ʧ�&�]���v�s��nt������:y����Eh��%����+�Gc�<�����~�8܎����RLΧ��	��)���Z��u%!w9�-�nN,� k��8r]F�d3��i:��5!����D�����{�w-ĺ�t2�t
�g�1�LQ�wx���d{x-���w�`�+鷍:�AhFw4Z�[�ϡ����o���d�nmZ�D�c'�Ⱥ�Ź�Cr�g��;��^�쇤��ѵ�@�ٵۋ}���~O�X$�1�;���o~���tT��2E�c֣�9��f������r���M_��߻��Rv	z�,V�D����n���u5�,9�:5�P*�;n��:�!;#�Z��v�8^��<!`�og����S��q��K6�?}
� ��)�~N�s����(�0f��*�%.&���g�{ٷ�h;��s^��DҢn?߲���D�v�ײ~��ow�����t��&�k��&XD��k;ٺE&���t&�w:�9�#�F�#<0�k�|��W@�͎��[��ɷ���.���,[M��+�uh�����˘s������sϣB��k�7�m��.��u��7cze��J/@nok�X��C;bn coEV���:{4f��g�����vo�ɳB6/���U�^^���}�m��.��f���p�����s���̱�.9z���?ل��?�]��X�8W����~L���
7���;��V�u��)��\��s�w�F��1���\��Y�����3�qo��y�J��dw�ymTc���LDl��t�pkh|͋�,uE��uPx
�"Y|�����A�d8$0�s�����T#��B�e� 4�B"j2 ԥ����]���(�t�a�卛�֏�w�s��N�������x^p���uk�8a��'N{�i�Sk��u{�V6����y����ma^}����M4��6u�i�ٯ�.��
�D����״��g�F�Y��T9;�װ�q����������\������Uڵfs]e��1l��8�`M    >�~#�W�u���u�
����rB�W�3ӹG����\sS�ǭ���W��캅>��+]S�gx�w��	�V��o��y��H��E1��~�kK��]U�0�҃y��q%w�xL~�o&W��ʬ۫�X��l�k	���3|����kFڈJ�k?f��w��߯}�s��_�?*7���?o�ҍ:�ӉX�ﶾ�����sg��&.��
�D�0�^�#��|E�	��M�{���"(����.���8`��qvr�/�o�bS��6vxc
�a�����{<�(���s���9�,�Y����p����7���ÿ�/)��X�q���a�w�����r@��xZ'@*�	��2`��l�`�q>�T��D�sFљ,���c����G��f/��%�ZX���mZ�9���%r+����:*��)>�h$��� ��x��3☁��{��'wh�1?ic���b�<�7tU4}������H2ev'o����S�s-���Fj^�K]�⌔[�׋!���h�K)���D`�nr�^yFT���~��T�/�r�Ðh��Ǘ�{��� ފ����r�f����$*%��|�!f����������t�>a�D"F��E����ޘ�'a��,�i��%@$�"���q�Wd�m�kLe���h��k>�y ��+A`��
��u���)Y�C�^��Fȣ]�yL���!��\�8�V�3/������� r��~�)�M~y�M�U�ر� U-��^�;*�&!�>������'"���Թ{�������=l ��#u?4C�u|=%f�a�D�/84C�[�0,�~�XaN�\Y3�"��AY�' 
��=C��q���(�n�sq��k��z�:����C�p�����F�;�j{���i����.�n6~�$���>�=&D94٠�{6��/�\���3@3 .�����g�Q��޳5�ýΉW�r���
54i�'t��X��
g���w���%0����yC��������g^�ע�%�Z`���cZט?8�-���l�x�e����/l��y14P�����cy���p����eGa_ {��<(X�D��EM��R��M�������|�ʫ�!e���D�/� �C'A���<��1�kx�m Pei�XC4}�d���	�#��#m&���6�m��=�򟯨ͽ�6h�\ܖC��2��D�n���$��g��lݾ�2��m�M��$.�F�.���1��s�>w����s��ʌ%�>�&�3D�*�gH�P�|���P\��i<������a��|��6���++3LK�[Xbn?CV�CX�V�3�לa�G<cL��h��X�0����^/�
1��{0��%g���t�  #����}��0Ey��a-
g�4�� �˰��9��{PC��Z�8֝��
e��[^����,Pwˠ��i*rk�㯹޻>á0��@����w��1�K  ��1B�x����(?}��r�]=���L�;�ޯjYC8~���p<����,�w�'���%~�d��}u��VZ8,E��нk��t/�(���цO��a&���h��A���h��·��Մ;���5;�v{s���	��O��d���E?ڧM�+�u�_����1�7ig��?˜���EWnr4��=�����5��&�т�\9�?�wv
l��>�u���F�]�i62G:�8� �KS���
�{R[�p�M0�&H퇏��[G�
����,��@]�]�/���}p!;��L ;���:)�+F�I� u�0��l��D3w:�XB�.����α�q���Y�@�ۜ�x�8	��u�}���0��n�=w����a�q��A�h�N:�0d�n��ګ�߳H�~R�R��[?��[}���}r�`��������?���Re�l�6���ւ*p�� �R]��E0�P�� ��s?��m�:�`�H�r�R���_��09؀��� >���:तz�K����؍��{��8Yd��&,(�*�����s�(�m�� �"�
 �����5օ�WDĹ�����@Z��>]� á�gA�q�|.`}���h�o�?� (�j��k�ɠ1�E6��z�-ѓv�ߧmd{ĸ���<m�!�r8{*T�7O`�C��&��[{[�ck�k��~,�.#��=۰��H�c�u0N;VX'���E����^C���q��N�\�*����.&��JZX�e9}�L������Γe�������	`]Ե�؁ p'g�S]	�]g}�U��w����X�`�PBqΒ��9�r��;�?�ܿ�(������H�� u���+ӌG��E9�����؊"�1n����PX�������k��)�C 7\�A�:u��s�͟[ȧ��XgR=�S��k��e�1����C!P�#��Vi�^m>F¼���k�~G?o����:-f+�a��"+�.�����Vz�?G��7�K���A�� ��n�:6���9�q+%��͸ؚd�N��KW�� ���L���������c�_��ӯ�� L8�A�� k��"�K�����!��ItC��c6�}qoH�_~��c�zN�clc�ԁ@�����}NQ�I`�"�f3pp�]IpA���u|(�B���3�ez�ZnOq/��\�&�F�kky`�Z���{��\�@؄:�nǠ��4�.�7�8<����1�3��'�
vI���g&	�k, �YC)�iJ��!'���|���u��bnx\��p"�(��.aӊ B���`�l��!=k����1�{�i|h�:/	:��v���Pc#��,�k��'�a���"��	���g��I$�u���y�����r���y�.X��E��76�+�>3<�� �L칉VgwaFץΐ�"��Nw-�Ɋa��[���^ܙ��+%�PA0/�v w�'.�����;�p]  �R����u�3�^��|���$��gwc�s�uw�ǚ��3��7o"=�d�1�G����a�+îW)ye�}���i��9r'��}٠|���{^nn�}� `�����1 Xȗw�<"egh����؀<�`κ�_����sW
;P�-��"����F��{,O��v ����}.���E�9���ػ�{q��VF�0^�o����Bw����k|>����~E��:�Wޭw��h��_&��>e>��鑱�#��c�m�����ㄗ�^|���ߗ��_�s�nc�{��?�w��+S�N�2�����ט<�O��2���̟��q>��C��ً����)��Gn��c}�5�!�kC�4>X����:��on�)n\���Q�q��6�7~������O~�w�r�y�^�Ÿ����s(�������g�7���B(3Ծ������_����v
���s#|���ل��y6�?���&�K���0Y ���ϧ?�n�v��_����3F���nD��n���k_b}ߗXGF����1(��ĺ���P�%���,c�sV�ӎa��vA����*�e�r��L�=��>y�`ZB��Fdh�[�;�������7�,Otg#ׅ�%�CV�����(��������EA��ߞ��p
�,�哮�r!��k��?w~��Q�O־Q�|��ݡ"���ù��9�;�f�㭤�*,����H� �<{n,�+�"
����ݙS��a���q{_T����#�F��Q�g|Y�ȫ��9v��X�,�wf����0
�C>Ib�߸�iߡ3�a�!�_�Q�{Q)~�����
�|�	��V̻g^�m`�u`�;?�s�~_�x��Qԩ��C�����	T�8��,��(.�,�@u��m Ǥ���YG����
Cr*A�\L�N���@�WJ��nN�ܩ�����Nx����eN�)�f���Ab�l���~�`n����Z����°�e�۷��:;	rA������wLrMv�-���}�sa�A�rA���#�lAb	e��e�#�q������Z$����(%A��{     ��c��}�?��Y䬗�Ce���@��se\	ᘔ�c]ٗ�Σ9��k8b�G~���{������@ylpb�<�eY^1A�ԏg����o�#����SE��am���wH]P��)�I����P` )i��p�_H�{.џ�����nS��.'�.|��p�q��gĲ�0��k0r�]�A(;��y����s���&��eͧ��NvCԖ�RWe��WXf�}�u6ޭ���x]���l/^��$�c|��w�5ecvw������S��>=���/	ʚ	�q^�:������ly��c���$>��<W6mb�ng���׻e�����v�)��w	��+���#,W�֪S�g�/�og6c��~���ɢ������~_�����i|�>/9��l���_Qxt���b�1�Y\��/v�i�_mQ��K��=�?��y�/�)���:J�D���C]y�� ��>,<kD}�0k�Q��ȯH����=;�46>8�Χcu��/�<_����� v��a�;�6���^�h��Uq���"���w��`4=�^G� v}	 g �;O F��w�1��.y�%�1�%�#l�.�����B(�\��|��P���t��'֙w���L�U .ݟo�;��0�X��A�ڽ�8�6_ @�l|/�~m����tk �l��}����������3k�a�����L�W�_l�]si��g�� �R'��K��k���g�p�����iP��!�06�E�|9 D,�Z�~p���Η8�*�M� 8�0���Ƚ�f+�#9�.��̊{'/�Vws"�Ms�7�� F�~��w� ؆3 ����
�D^N�^Y#OH
G��ҭ��<��0?=��y��n�짮�ng�<�S$�A	Q S�.*��ޒᘻ�6�ct�RЩ����ŹXA]S ~����4�~�׾��f�p�h"�;��<Y���- �D�� ���� D1HL��w�3/r^��G��a���{������3��ϥ�?>��/��O����s��gqe���
i��º�\Y���;�R�����و��J��+<u~N ��O��>�!��M�Af B�������Ə�s}�2���o�́}�w�ӷ���_@p���*�[�c�<hq�;U�� E]��~/5��e�J����\����&(������2v�({��N9~�a���kp�v��n����_&°~6|�����������W�WQF:f(R�c�����kwؑyf Р��p�+FqC1����I��
3(�2�אf���̷9#��8��a���٧�m���؅24�4��@���|���u��`q�i���:��V�u�Wݡ����c �F����I\z�X�����R�
����
�O��K��Nc�א�r8��\�D����d P�����,�q6��t�R�� �2m�^Ʈ|ٙ��&8�rL��N���r/��,��\���Z?�rZ����-�{�nK(��F*����ss:�4��渉��:/�Ί՝�en�w��,�QZs6��UW t��o�;
�'sW�:\��1u�����8��H_P�F�C�+
j8/�w|�7��(�F��unӭLQ�3��C��"};Q��~^�z-G�� �˚<g��&�%�(��Y{��ʈ5p�� |�ʇ
}e�ݽ����0 r�<b"w^���"E;�o���LR�������U4��D���$�1��m"p����i��{�^?�׿�O�$��5�Y��x_`/(^���^|�/d����e���[wt���~)�g9C��0��H�d��2G���ėϐf��eު��u=	"�B��H�#���ÎAT��F�f[`�2����C��.�1���d�����=��%Qu���{��[P?T	�B��w�/�ln��ˠX����b��p����(��ϯ=~;�_���Y�"x;�@��� y�x$`�ez�  8���&�Q|���%��i`P?)�KO����=�C�M�58e�OP:�>~���%�:�;�;�X��GJW�1(��B��9G� ��5_?���# �2G����|�2C��Z�ɓ2*r�]-���:��㍢ ���y�t"�-�q7���"��i�Õyx!��I�����u�_��uf�fv�g�e�1�~�=�ϺÔS^��/M��6�o����FdY����+�������k�5`���lS������2=�K,�`S|vtރ�0~�a@ןe���ѣkf�qY��vtY��LT�4\n��~.�ci�dgC�q�������3Y]��l\�|��ZJ��!w�>����x�F]5�)�:ߧ����2G�,�p�2g����M�#k��O��Û�/]ߟ���n��~�c����ې��=��R���=��=��>w�V��*og��*��1a�u_��N�ӦEG��9���O��^<Sk����,�� ��������2�:_`]``���A�xd֘�t<)��+ۀ$�?��(��U�������2�7��l����pl@��9�����o����$>�S� P���[O�)��E��2(������9�hT����k~6��_?h���E��真F�yx�'��ϡn�e�:׬�~�4dI�ίU�)
\>���9�S�`�:2��=ls܃������u��(n�|$�S���:��=��ޝ��0#�+��+ȧ�����nkȍ�1Ú��!L�����۽���w"p��hD���Pg�����Ա�1%ߓ���P�.����&��m�ߐ�úhݏs]�`��u�9�l�A".��v�LÅc�Zƻ�&�g�1 ���lX��;��a����Ҽ�d3�w�)�al�q`z�w)��?�pɯ͎x��+]i�tZg~Es �N�8���׃�(�([C�}���U"�f*��΍ufҶ�~�����O�>�U�`�:e�V��A�:=��Z�Ǳ������C��7� �D�F�H�cu���!e9���ۙ���Qx7Ҭ����7�?+���u������Fk�$��
�roP�v��@x���W���UM��|� <�47���p�CXp�L~#�#�W�=�)�V?�},�{���{[�f�h��v���f�ӊz���?��l��:�g��7���7��2�y�|2���}/�ǋA�����;p���~\3
�r"� b|y:'�b^�i��\?&� ���Ȣ��{R���C)-�[�N�c��z� ����.GQ���*#:���Y���_^Fa�fQ7K����f�n��F�X��6 �~?�{��7؀fIe G�� 8�e�$.:d.j����:�oy�!i8�I1��M��;��NR���?��zy�Q ��QP�0`��^4�>+����O�nC�R�c��]RF1��}�c��u��щ�&�W�}��p�ʘ��� 3DQ�0��Q�)`�2�}qy�{PL����\� � ���|��.G ��ǁ��,0I]�`p��J��`݉w3��*���3T}V'�m��}��F�)X���E���r�;s���HP�9f�%�w䝍�t	0K��i���Y���3��Z7�s����`�e�+�d<a�Pp>{I��Hz�YE��� �Jw(��i�<�?͐�n��zϛ:\;�e  s�;��JXP@8�؅������vD!	δ(��2��4���H��OCs�]�>#5�MݮY��JuA5�b-ww�L�:˦n~�ː�iu-,�N?�n��x��	���EG�[�j�g����-�e��nŖ)�����9�w�:�O�LO���Vt���{�V�<�����3~���2O�~���42����1~�����8��$l~�/��~�_R�7<��2����y��{ޣ�oQ~���ˠ���L�;}��8~_��Ruin�/_= �y����)zj�r����1�h���
Ǒ���3 �����&��]�^��v"��g'2�QǜZ�%��۬��er#�E��Ou{�    =�S��](CB��T�?k�I��zt6(s�.(�ܴӇu��pّ �AY��(1߁� ����Zf~����v�a{�P��q�9	�BWľ5n1B=yZ`uf�9�ls��s�N�2��|R��Ý�����]~��e����K?I僈�]g � d����m�-ϯÉY��e}�����찶s�q������ C@����y6Ǟ���!V��� C���f��a'u]�脪��>E���3Y�Z�}^}n�����8���.^��](�+}���'h�K K�3��B���3�J��s�f��`�}��¨{��f�g���Ug���ח�9����e��=�]v�gcGq�p�ț/��~�����e��3����I����UoY��L�޸�DP�*�iq�`T���=��!'0 �d�">�4��@*O�H��$�4�3�����;�R  ���D�A�����2b���(�=���(ރHk�g'N��2����ė/s&���1��w���������q�Y����s��@x�hN��!��I�a�����/3�>����E-����y-s� whq���Y]LP�>������߇w�9�� ���y��d� ����~�k�_s��s}����|�qx-��1Iފ�N��W����2����M�����`�:*d���CJO߃����qH���׬/���P������C� �\�3P����A�L��u�޷���������{����W�3uhb`Ͷ�b$o��#�?���>oR<~_<�f߱�lRQX��j8(d���1B�l�}�r�en|&�hm�Q�.�E>G�!���M�_�S�圏
���n����܆ �f�	y�O�-ҏw����>X�]a��l~��I�i�e0�nc���D��,�sN)+ \�֑+,���M�|��n����O�(��=�u�	J����eSV���t���+�M�e�/n���N���*����)d:òϾuvC),�-�ߛs�l  ��ý�@l�r�<B��w:����:=�S��y�����+�2��d!(�"�6$��
 l	yJ�8ģ��!O�L8�2�����`g�:���yL[z��|�oһ\��s
�A��6��|È�ً Fz��5������G޼�j'֊O�?�Ȍk��{(B�=U���w#�������)޻�������u�qw�O�������O��}g
�m!�8c��~�7�1���u0��n
��n"�w�����ɇ�߇�9��B��F�@u��~�w��#��O��w�|�c���
��^��0A� Y��<�w6�����ʠq��7w��j���sh�C0�/PN�l���a�߳�<wk���R�~����C�i�~���"��j��F�}��Z�vqX�z7��>�Y(_�tF�C����-��^ ~u����u�}����̞y��O��n�������P�x��p��:�e�"/�����c2bJ�[���׵P6?�s�J�>�o�,,���{�XcS	���l���E1yj�^W��^�|��G��x@��_A����P� ������`�`]�c[�n6��� l���|��:L�~6����L+���6�}���-(��$��[ �Z}oC~��R P�	�2����]G50���d����a]�=�'��0P�z�16�l<�B�K���'@"=������Y��(au}pȟ�F�3z�2��1�ج<>P8�83, ��|u�� JL���� ��D
��K8��r�`K(�s�Np>~]���G�.�z���������ۼ�xr��`?PW���N�kt�����+�4��Y��[��
�R��R�O�ϛ��5 W���7�iߋ ��~���;{�J��Q�x�{��{�Yp�5m��n������[���`�vu˴��><�Mg�,��x�K��t�w�Ǌ}n���o�w�?o�����>g;}��=����{�/o�m�AY���3 s���V�_���0�\��op���ߗ�|~�^)+j-�� E��qF����eͶ�[@ޛw ��J�=,�Ǝ�h3���9v6-Kt����Y�)p����.�9W��O������>pȅ��@�N�,��Yx�4/ڒi\?R�ԯ��(w���y����dC�=Ά�	y��%i�ꄩ�*_�#��סs;%�m
�����b�w���34N��z�ƹb�̴F�!�Y��#q6�3��C���i��[��Rz{��7Q{�	�KQ�p��5ðx�t����<�Ŷ~��6��+��[�����c?{M����m[���m�m��:LG��<{.�_{��~���O��|�:�sof� ������K���߷�Wl�av|���l��K�����~ȟ_iZ&YZݧ?��e��y���AB]���:���;9@?w$� ���3���Σ�`r��̕n���8Du<�:�̵�.����9�S��<f���"5�)r'�8�Z����N"oT��H�Zlw]}��]��(3Ͼ�e����e������+(�_ݏ��#���Ko`��
�A�?�Эc"��u}�T��4,�����Gm�a�7Ǉ�ɋH>o8��|LP�<����zѹ�k`�b��պ��oAxhu�Ts���]t%�������:޿w�V<bjެ}�Q5o�~e8 �叴�w���-[�kA�M`
(�Z~[�}�[�|��	�`^��Q����S��8��ߡ2���/B��ʷ�}}y�;x����-j�?t=�����5g,Tp895n��k;��z_b,���M����N̡�e��/�,!���K¢��;~x��Il�oiL˾c��.y�!ͻO{X�\|�eJ�y�wh���!7��������;
e�(䗲�_��N�4��I�-��cv�eHz��}E����b�Uu�YU'�j�=�0A�!�2^3�� ���UB��u�֐ǿ}��_����q?���{oY����y��U�y���_l���w�>__H�����~�h��sa�cK+k���֯�N���s�.���x��'���u-���1W�2�҇*�e��`����3t	�w!P&ŝ�9n9wt�(���AC�y �3e��'(��|��xZ"�;�s��!��l3 P�o!N~.,&Nr���m�CtIT���;���ʳ}uV���;ċ��+Տ��*׌�& N�������P�k��z:_D�xw�,gsyY�uYf|ݿ(����u�	7�h��c��w"�%��A���m,K
���=X-� إ�{�Ӡv�}��F_d]�S�^�`����>V���??����O�ؚ�,�?/����71'�̛�mT�0�.�*��xb���R�,ȃ1F��߱,�s�g�x���������r�o�>A����"~�	x��|N�=ʳ�>�?��e��G�L�c�:Y�5��Li[C�0�kO��6Aw��3�8� &�eߋ�{�/b���Xa=�Bアe��nR����B�{�,;�ϟ����@[n�c�ZL\���uqTk0~��ϗ �S�N����-8�uq�?#��>��N���:���U3�7p�d`�g�@���/�s�#��P�*_��E}������}eq4(TtIZ^
��G�~umƯ#�OF@H��3�V��m�nr��� �u��p��28���u(�~ڻ��}~vA����=�9/����b&]�N�\A�|+�& ۇ�Vq���Z���:�,�U���Ƶ}�?���x�nŊ�����l����-��
	��p"��
��y|_��/��:��.Hwx|�A[���l��T�܁���������0����$�Fץ��i�PD��W�~��u�+/�����|�ď��Bnq���U0]�s�L�w�$|O𩻟�u�d�;�� g���ŀ��Pzv� �_�A�O���l9G8�W6ܻs=@{(��a��W5l���uq�ΣZ:���#��4}4�e��.^c�\����(N��'n��	�6��XW���7�>|���~���D���GR    0���;H>�#��S8��s/.�m��1hј�_�y�1c���j<q��듋���³c�<�Ԕ	��m��T��+�.5�~�>NvY����<�������q}���_~��q�;?}%w�����(����m�:������	���]��m�Dr�l��+�I��~��wV�]�L��m����/VK��f䌴�w<F�n�X�)�K:��j|�
f� �y��n8o�k�l��]���Ror�=p�MK���S����
߱���3j"� ���o����ܜ ���m��=�gА���@S�m��\br/� �۴Cn��ؔ���!�J�C�	n��E��3
=s�j�'�f��f�(��\H},-0}k3dZ/e��{<�_�R���&�u�t)���-��d�M&�C}g�����;0B�b�O
�Z�bD�׭M���ͮ$	?��#A1{Uw��0'p�t��N�P���5m��nH�[��WW���K{aV�5��Rl�����?:��8��4&�D8}Xf����%�|HI�c�Ʌ�O �x�������iR�P���i��9NP �rM�~ �����&k15�����q+Pl�V�T[e.|dU��+��O���r}�	.՗��p.�~/�0��O�`�� 3W�A�����$jX{t�����^�Ǭ\L��L�e	E.JTs='�5W�b�@���0�>�?(��7�F�.]�wp��X\������p�D?!���	���<���r�u���U��N��u=֟���Ks/Y{誆�
�ou�o~{����ʫ��~���$�iZ��?m��QY3E�I�o4U�����1~�6?�C5ݲ7���^����*��oz�~�pxR6t~�p���|���麀`���L�-�$0�cFL7d�	���,�j����<��,�B�� /�p`"�,����
��'�RQ��_���?=���g`��� �ϟ����&�N��]� �k�;FCB���!p5�n�V���H��l��&s�>~
�b����|�u�@|�~����DG �1�g����psu3�k���������3s-��x�,V��1�Ƃ�f�Yn^¬Y��F~1=d�Q���q*ɤE�2_��M����]�M /���g�᳅M�	<&N�O��]ga�ϐk<��.xNd��v�����D#c�����S۱������u.�S�c�ڷX���k�^m|^PL�>�p�[���\?Nѹl7�=��[l���̕3��]�7�:k}�P��B��>���.��Tw+:[]��Pq�0�C�NE�p*¨���4c+��e�j�N�����ڟԹ~�BH
�#�Q&w�}��p�0k�D��I]�}� �v���F� .:�o���ל�c<��R�Gg�>x���+����ޘiJI��`�LF��R�'|J.g�4C��k=v�3����mw������'���?^g|?���Zl�Y�� �����۳��������5�;nυ?��3�j���!����Ƿ��������Xy��H���?���������X�i��������݁��:�޷����O���k���ʾ� ���q�� WI�?kx��*��5���������r|��zJ����Π������G)`�>	��iA����Nm|���W1�#x�����`�yU����Zp�'�<�,y�m^?���Ǘ�4�A_~��鳕�o>v닾ۯ�����W-e@�r��=����~`�>�@��K��[X�[����r��~/�L�0�����0n��ci6^��o����}��Y����n`�Q�:F\;c�qo���Ԣ
��H(�&ۢM05��k�}�x�D+ԱZ_ n�b��K���\�'�}�
����H�vP�+�Hlo7�
9�����`]+�30�x]��O�����3�'F��Gf)e�N��h�l����0�O0^׎��u�-"���IG�~&@rb+�a���������J��V>�?�7�ڌ�\N��쇨UD�+�ܠa��)�/�;xG��u��	�^	d��#��x<
�R�_e��ky�&ZD{N��ϐ�����m�3��vI��Z��a&Ȥ�w�|���E���j����;������y��T�?�s�1��������q�]dO�Bi�z�Pw��<��1�yDG>���
��0(���*/���z��F�G<�چcZ�"�n�?�(�$�_�r�-�g���%�m����4������:��5�G�zZ�xU��$|��I����D��G l�R�ϫ�pL.���s�"�x��[E�����>�t�/g9�	�r�Ϋ�?�p1�����)	]3�������*�b|��.�U)�}�RA��{���ۦl����UQ� .E��p�2n�٨��B�8^��HėI?�k�R�b�r�u���@k�_��ob�6�ߞc����������f���õ���_�.��;�g�lT��1�_���?m��Ϳ���O̿��1?�5�S��Q�8���G�>2��Ӎl�b����u���>:����>�X�4!�/�|��ϲ�xo�>����|����aB?\���K���uB�_ڏ��2�
�|tD���R������er��خ���!��B�]�7�C��#\�s#Xڇ_��@����}��qh�5�[(��C�����+)wx���Օ��2\Qjm�~D�
�J� �W&����Q�(�ǯ�g���b��.	+=D�� 3��Аk���Y?4\��YP�A�"��\?�w��
�����'�--D̿|�5?���ᣓ�;*�Y0����x��Y���_k��ĝ�v&����끎��I�8�1��5��5��}���i~� 4��_�9�������~^�o�˷�5���\�}��,�s�D��U���	?ΐ�?��4�3폫,��G��o��?����?죍���߳V���?��K��1�~�Ak}.҈~��7�Gk�}�W��
�Ƴ~
��E� D>� �q�j����W�-㟫�O�8-���Q���9��M�9��l_�>Wa5������Y����S��(�W���a�f�Z�.�u���?����"������]p�@�_��g�*�q����_�?��>�������_�ߏ���C��~ܵ��}�_��#?�����~qW���B�����M�����]
�ߥ�o�/�%%}z|��_�/珢WX�?�_%�\a����c���N���qD�q�V��
����@��'����|�?�¿��=>������������~!���-�����9�|�����!pC�G
Z:���x�X@.@h}N ���<m�@�������i�e�
�~����������G ��w��� A������N�f�`<�h���
:`㳈X�f����j�R�ab�\67�j��D�f�a�_��1���4K�n�?�t�/������lF�ь<���j�|�:N\��i�����G/	`�@���ԍ���9G;#
d=��LN"��n�찴{v���j�c.E�Di�g�����[
#ч+��?RyN������fF"���ϡ���a$����c�Ғ����ٔ�����E"�=I�6��G9Vb���I�41)�v���#^�d���1��8�p�%2sƦ-^y�!#�qD����^�����ߓ�%'��GH-8���1���D�m�D`.	J�Rc��C+�(Y���r��g�~����+�_nɤ�_��cf):��$��@�@>��B����Y�$ �i�|��}�(���7��J	薜���,AO��%�,#Rҥ��lJ�}�E$#�V	åԑ���,�@������l���J��l._4�kZ�cҡ=�����������l�$d��6�ˊq5s�sY�˂�cKH���)�ND����-K��s��$a�AIȚwx��{���-|���!g��qs���#sW��O�pfmR$-��\���X믒�n(?"J�ߪ��m9q|���0W���:%�Q1��M�9�<��c����    �O�����Ȋx����p.ܟx�?�9�2�w����j$<�X?�r��=�2
��f8��g��Hn��a���׹e��i��46��y�EN��ǧF�r�c�i�}B`h��9�h���	�4I����������H���.�X2���6)�B�3�K��.œ����5ڬ6>#p���=�?�ciI��pYj���������RBEr}�7�g�?2�7��q6A��cq�X��-m;����4�8��[+AE�t伱�p�)�^"Еh�dp�2x~��eF�
A�%C�<gs�]� +Q�0�G��6n@fj
�oj�s�JZ~MVbH��b�E���w#��6�����!a���T�'	�PJʽp�_'�&����fW{M�%��#݌N��1�������9"��O�m�O�C���<�dF�̃�A���)4/������(�EN�(�C%��7>O$m���r|�����_X���S:�����~�����R9��<c,d?�8�!	�H�*��$3@�OX��W�h��<9xz��d�	��]� �x}ܟ��Z���s��B�E�|�+ZE��\�V6��~��`G �`3��f�u��9��x�Z��l�a���\��h�1�oj}�q��%��s�x������>z	1 �h�4WJʭ(��Q�PwC=
�_������f%���,�L2~�ʿ�$��Fy~��G,������<Ͽ�c{���,��=�?8�x>z�g�����28Wٗ���)���pY�](�G8m;�׵>�9��Ϗp^�sK����q�p�d�"��h��K����sJ�7���%c]��4�&�d�䟹�q"@��� p�r.@�HE�"Ბ6��pN0u�#T�|����׏�$A9��PDp�c����KD��=�� �� ʰX�vR:�ѩ���e�����u+� ˠ��h2�Fp�Q��6W �e�;}�`��^~�X�c-��G�@�Ҭ���@�s  %.�D����b�G('#��XN�1�|��n�p;N�u?�Q����c-��;	���X8+*�(7�E���@�r� �t8�b<.�:��z��&�b-��k�]ـ���	D?>.!��� ��!���Z� N �7zD!Wf�5�X�)�i9��hq��k��1����,eD�I	�3A2�\��*3����?�BI{�{Jn����d�r�=֍D��
u)�,��,���=������9�D �U�r\:���s;���D��#+7-��KF8k�paJ��\1g�� /O�®I�>�Ē��s{�0�j��_I�1Q���ҁs�a�f�8'.�ǐ���ږ������h���7:1���$x֒m��?����F����7�Â�S���\���9���8���S8�S"����	��\��:7���"y�{����:��ᚇ�/ϛDM����5~/Ƿ�/�����m��G��N8~�Ge.(�~N+L�������E,��:�9�d�i�S*���q��<�ޮ�8���*�dh&]�s�`H*����p
�g��q@��O�5~��
!Ĝ3�ܥD����O�}Z�Ψl��;ϟ|Ѥoc��XY��9��>t�P��� aR�f+b�j��Ì�d�T���\����Ρ�6D�Na���,׎�'���vx>+��NBLJ}&�H�6@"��:�y�!c� ,�V���4ʬ���s���c�-
L�Z��g����	u�2�܇��l�$��iv;��~W�	�5����͏�[���4�J���Ni���q5��8��;7��2��
b� .4>�4��*��a��j�ш0�H�xJZ6ū�+�p<.N���]ķr�X?&��"=T���_�?V"�ǐ3:�u���:�aGÌ�&��~Sqo��T��p���a&媳+~�`U���VN0X!NiD�N�f\Ʊ8�$�pK�:��nWl�9��&�9�U��VF���NAf���pnù��q��cy��s83���#oU���R����c�_�sB���6�&-;��C����h�7?�{h᏿H���P�e%Y�6�0�H�m���8G�c�U��KR3�qr紇)�
�գ��Τ�dBDl\�|[+)g�p}O��
N �3���&�H���%������?�q�R��~�lu��X��G4b��6�'�Hʳ���t>ACNm�⅘ȶ^$�Bz�4���[�
�L�1�ɕ�䗳�{�
�a�ˊ������dp1��2\�9/�pLa�?����J��S�?���,��c�Qe�\E�;J�9��p}F�99�x���1��5?G��?��?�?4?�W4n�Ƈ]�9/��r�Cp��4?~��f+�\ɏO���Om�m������7�[c�;�
��=��X�I��+�������\�	a8-p�	�����"n����cP,y����~}�Z��(?Ut�w_?G�
�L�����[��u-���J��3���Lw����GT��1�����O���W��%&s�P(O(F���(�Ys꩐-�/�
����U�IH�.#�8������cV .}����L/�����4�>�Ӄ�:
�̇"����>5�%�V�9�?Z"1���2�	3��C���w��+x�r�uz!��F3q�?X���F!�g_�����:*�e����!8��>Զ�G��/~6�����i��z�r[�#��
��s�U\6?�[6~J��_)��ࣾc�`�6X���?'U��T�'#�f�>�H�����"��R�D�6�����?�P"4��t��0��Ń�Ĵ�A�h�L\l���5&C�#����"1��p!b��������[k��~\�1!�(PI���6~��wN����wm��pWX����'!�["|�l+ǳ��bf�,��u�5��G�-�	?ܽ�cg"8��D ���ES�uM�T.$"�j[��L�~�'��g;4��r����r �'[!�U���!�)��&8t���2a���Ls�X��ң1�d�����KB�i/#6�3��΂�ե�Q޺N,=�^�wc��;�t��P\�&�_|�x3���i��O�{u�C�de8����?��}$�o:e8杪0��JK��/O8��hz�e�Ĩ-pGN$fE"�j��ba+߬�G�'��T�s�Qp�I�J��!GpVv��{�������|FR���T�c!e�WE��BS�0��З{���n}w��s\��x��빋 S�_�.��]� ���w����u��y9�~�����_��SGs|<C\�(����������э���n?�03���y�鬲~�L[�&|凑��#_��L����g'?���Y�Rj�\b1m����gC�'"@H�}H�e��u��g1��>G1�M~ȩ1�#�L$Cࣼ!)]KE��z'��Yq�vI����L�)({��q�SbP�[�}��?�c4���J�>N���g��C(�i˄QX>�ޢ����x�s���\?�r�l��c�Ru.���uJ��#���\�����8�zq���"���|ȝD@&��ē p��0�Z ��(`I�����A�t�}��`nK��`��hdhYB� gײ�j�R ��G�%,�����r	���g��`._�A�	�H<׏�V��X��5�ï��-��Q��ɉ���;����	����#3�	�J뎞�>E��8k����.���J�����	}D�b+�L,���Nۅ?�O����?n6��\�|pZ/�r�.�0\~>zvM�_�F��r�,现X��$�ةv���J��w�'��]OJ>
d��Ԍ'�!�z���X7��S�2JdO�n�>>>�$p@*I�\�PC<-�o��[K�?Ta������f��� ��M��k�t�t��.���}Ï�,��,��(�6��Bp����ؕo0G����9鸦LS�%���3��&�0�B/�����Q��r!�?J
ː3Ү}=J!
!�Ȍ%u���    �I�ʜ���q�J�2�}Xcџ�;��Z	�������$`�$`!��`/	��CR��@㧯"b��Du�3X0hOM���PD�7t]��X-&����2�3�.%�EFi�$%Cb'8�g��?*bW&D��Ҳ����iZ��c��s����xW��-�@;�Ƽ0��X��(��7ֵ���`��u��0����.�J#w�>�/��A����9��z#C�Q����m���\�,d�r&����kY�����	��G�G�ᖦ��]�������=}� '���	���h��4�P=P��ɡ$h:�M�?�o1pZ���?^��/~w�p?M�'��k�:��s��~����`��wK���jO)8���pz.f�$����s�&	�)�X?��8+	�������d$�B,
�YG�����!0}�7��A�ɍp�A�O�m�H�s��C��8���#r�TV�~.j/s����"��5{�.��2�w���?�����3ꙿ�/��f�����
�C	^�񑒬/�#��/����d�C�t��0��I��pX+pRd��p��U�$e��G0h�?N�<�Q���
����07
�a���?��g��'��S;:�E9\6Ȱ������G����81��.
rmM�?N��}T�$��l���L�fLZ���t�e�v�Q���'��3�Wց�#����%�9����)��G�r��L�'�4��-ހ� ��RR6��A��� ��O�/��w#���������� s���9������8]�NW���M������@IF��K��]���_dc̀��k\��x#�@O��縁�2�[�z��7��2P|݋�Sf�}<?���O틡�,��@V��T�9�I��_�9���!R����I!��N��^��|X@t���>�!�l%"8	�0,��U>/!p�G�@K�^�\�ݛ����Y1�w�p�B䢚��K� �e��@��㊃�㊂�HN�ǧ��E��B ���An�i��Y����E��s�/!gC�H�=��ܢ���mi�(>��Qȥ&9��WHI.<c����)�)��)��
.�|~������;J�`�A�Mj��6�Gʷ�rRr��,�pB�������T�l�Gɢ�m>�����">m��S�k�V��sNn�?�e�)�o��x�[��N;�|FH��xV�����8G���i�����/�/�
��q�W�X�B��@g)!-^�^�9Ǆ��u1��##7��+~�ʤ�����ߵM�l�TbPn�D�*68�̈D\�	���c���ܱG����=
������X+�%ّ�<<�Q�Ĵ��w�Q����N� �6���^���(_�����f��<����EB��D��˟R�ef�|}t*e���"c�MM�hI$b]��$�x��ٙhPV_�:p~ۑ�qUB��}��W�c�뽤q��~&E,OfE����K�!׏�C��?
��2�e~~�|�!)��K2��#��>��sX���m��禢���������&���F�xb;K���S@:�$�e3<��G}E*z���O�*n1}�= >Z)�� =�8�)�� si@6��1�K�}�/M��&d�2P��B�U��Ɇ&	H���p�M~���)�="(	��\`G���^B��HB��.��
�B��S��:B`Bf���2#\f��ph�Ծ�1�����3���|������10�(�����8�*�+��ة���C��<2&jz&h��_�_k�8x/�?��a���ʵ�6�ܓ�.[�g�M>'�ݜ����so��~����|��VG�1��74;��Lف�V���m��8��P��:���lzu����fǰ]�G)�M�0���ӕ�=�sFp�	���v�u�T8��ù�ʕ}���齳���N4��8�A��T�sKi�d]�K+%�9N.�k�Ȃ%9�y�:�"�e�:(�x)]l�'�9��|4�F��މ��0Q��m_��>�M�����hŲ�%5a�K;��[���;��f��+G9.q���1?�p��޴팟�t�ĭ^��>+jF�����\0�g��.�����{i"�2D;ej6���9��Q��=
u�\��;�v�7jN;n��v]�o|��N�┛:��;�(su-/��Q�Vd�N�s�E�p��S��!
5wΆ�J�C<��H+��
�3�z��YR���SN��D�[S6���7�̻�(��j�k���2Մ������=���p�2�g	��`J��R;��&�Ӈ�`o�`�C�F�/U����F�v�Zs��^�`����0�&�<X.0ǵ�6>m��9���9��9x�7��6y�~C�$��	2�Ԉ>����h�z��dY,E5��1���sz)�b��ј�0X���(N�9'x�%֒����mHV����� q���EM�٭��~I;��6�]��f*s��u�O���\�0�5�s2��c=E&
��pm����*']�EwL����ѨmN�~ҽ���/����KY�G��4�F�?g��2k�w�ƻ��
c ��1�7p.p��|r�`jtFn�A
wt�G���ԡNh4�]�Pf�QXM�H��]�ohE%�Ըte���)��d��g�!�fVL�����uJ`�/k���uܰ�*�`�@���%�t$�Mp�i\��HmG3|��#�[y�R(
�Q�jǜ>�w�bu@�t-ĜC�rV4aڮ�6�t��xߢ�$��`�	0��X�]��q��i���d�:-�z6�^�hN����ʣ�/�b�S�`�	�Ȃ�	훚��1L�59	p��	F7�(�ʆ��w�19��d�i.0����1����
�\�-��c�/넥,��!60���e���e/�Ga5'ׇ'�陁=�s�~�r�d��l�c/u�l��j�k].��6�Fo�!�}<�����SH{ژ��w�i򱦻���6�uS�د�J����j�OC��69י�j�W��>;W��ϒ'��TS�-�`��ʧ���~I� �(hW��5�6���8� $NI^�Pn�uI[{L���h��,XnǱ�`��Q��5�%�x�F������lmnn��^���bɓ�m(��ta�ETã'�<q,rⵑ�׾�!�q��L�Q��֌�$.]�mg����e=����ކ�(\�:'�,�:<@�zTھ�1m�Kyj�o��������Fu�yJ�h�����X��z��0��F��>X�6�0.jg���P�</q*��k�d�ќ#��#i�0�a���d�Θ��X���p����SoB�#M���	�&�W�h��h�կ�a�Z`����|�>l�K\�
�p���ѷ�讃[z|l�>!�x�I�ݕ�6Ø������K�4۵�j=4J<<�����%��W��P�ȟ��
�	�՞r�p�	��UF7���F���±��(G7W�&Yn%t%+C�`(�_������t4��k3��x�Td]J=i�K���d6�Z���\�F��m�Gȑ��&\�p�R�{������^�4b�AQ�m���:��^�S_�'��dd���Ѳ�_�^�+l����y��ˉ�W2=��Y�_�:_0'H/xͮ�\��sv�>9��>�r��+�����f�tW������6kk)>>�x�����M~dO?�U7�����A][}O㇯�^&����Vo�Dk4��8^Ibғ}�O}�6�VD<�&m�A�6�p��B=�vA�x�$b��M��UJ{[|}��=��`	��!�WճO�b#���6\���dU�2�9���g��}�4#�T1eBm˨-W)nMUؾJ`ʐ�Y��͛���x�S}��-R�#m��C�B�1x��kɔfCrR>>/��o�YS5�.Ew�MN��u� �4�S��UǠ|����u�~q�.]�s9�0ҝ��+��-}����+c�*���@
�V��~2�ǷB.���{(c��1J�'}�FP��,����Hw��/_w�ĤoX��}���6D3���p�� ��X    �4�ϻ����h���ߚ@N;r"\i���]9���՛6�	<�O�DL�;�$�=����9��$�gf���;��X)�i�Qn��{�� *��"*д�\܋�w��/�L�s��\����%y��)q�"��,	��Po�s.�E���~��֮O�^���H��i�d%���]0�1����7ħ�j�n����"��!�gp-b+����L�ל6��q��B��w]y�c�D@�/��2v�1�S����m]�h���� uj\yt_XTK�t�𦨼�Ȇ=BI�R.���`��<�>'TiR��i2'k��P]����i�.q �I�mP��������ܜ�<�p�� �ų�4끐�3m���tX���{����Up�Ƒ���%���@jcmm�0���a
o�s��&���)��)�Q�q30g\�۔�=�>�-��*]où�a�ᒸ_+�j�}c�6�d뼍���c@`×��YH�2Z-��>K���ѫ�)��700g����e��Q���K�Rc4B�R���%W,M�je x5��W&˖Ȳ���mW�����{���C�9���$s<N�`�Y��·7��\o��"z�}��'=\���S��m'�e�	�3$��R��q]�U!y�ZZ>و�H(�%��+��te����U�{(�hߘ]���]k�\5�n��u�3ή�1C��L	�8�r�"0�Ϣ��jhbD��/캿˲>\.��6��ee�Ve]� 3���s�ᆇ�\1��HLҙ��{(Ã���ګ4�q�,_�+U����(&�TC9�+c~M������Ȁ$�l��pŝSz}���^߃<��I���p p������3/�&pz�|H��/��?-���J���Z#C9��t�"XD��\����0/3�'$����ss,�	54���"�Cb��sc�sc���=V5�-��YV{��!���B��D��I�Bl �&�IO�{#D:l�J�#0�
���Ql/��(�Zv���
�t�5�����^�fW�G�fy����M�X�%������������&z9��TȆ���3�9�zNG�!���ė-�e��La�(�-fC=I��
�h�I�ǯ�5~j�mi�GN��el���3k��>�ܠq�.�?~i��#̣J�̯�Ό=L��9a�TL��53��Ba���i��~��&m��"�;F�|�a�z-νZ��R�k�|�}ye��+K5Y�+�LnWޑ�?��S�ܓhcz��6pUڊ���4yl�Y�e���cPE�d��Z��7q��36<�r%��I�0?�s��KU��V�T΁��y	������",6$5<1�CԦ�|�H�s�ݸz\�:��Þ�:���m�YE�_5�>�届�����{p.Ԏ��ɶ6蕸Nm�2H�&������!����y�!}����Yr��X���g�&.&	��}4��V���,���YTss;�"�ͫ���؆ל�5-nçR�ps�D�iL�c���`{��L�5�}�e��-��߱��al��s��6x�Ɖ�O[�'ʛ@]G��Ƶg�-�Ω�6�2G�zf���o�+�����{GiR�}�_�ik�R��&ΘC�nI�!�S�RB"�ɯ�Ť�,�0���0�b5L�e,�`-��]A��2_(�2@�$kcF((.���(��2	p.�ǩ�B��?�hZ̽>�m�[�=�K��-�I�'�T�
���>�R�^<�"a�*aT��f�M�,}��4��3QY(Sΐ;j�ٴx
��!���?���f/�)G^�����[�|B�芺��_���������cM�_|����P]�ͭ�]�=��O��C�@�����~g��n@��j�uh�\?�Uiq�����	��5z)��o��S���߁ͣm�#����l`��w���GI٫=X{��x�>b�t	�{6��Qr�4�����/��"�?�w�k���,�e�NO�n����\|"�F�o���<�*���;��k����6�d�M�\��޿�x�*�|m�ڿ���Z��N�!�5�^24�W���d�P{�f���.�z��Ґ4pz2vX{m�!�P�%jm�Z��|����v)k��,���Z��!�x/}G��R_*�,�Pjh�gR��(54&��r��a�`1t+Qk�׻D����D-�ƃ*���e�+�Bͬ�[�_��Wp�邯%|m�k��cvQ��ND3��g�~��Es��Bٳ��J���x��@0y����1��+I�7x���b|��	���R"�J�m�
����l����� ~?�/��	�7~��#����2���@ m�Nt�}�7�)yt{̽�졥���*:�U
�!��9��,����P��U�a�,Ԗj�7QY�j����j�>�:�i���v�D4X�5w3���{��]e��~��dz+ur�.uv���2?A�ոJ��x�G�ޡ�Wi֞0kOi٥3�A�E�v��$�-÷��&�[B4}L���g{S�g�Zn��ٵi���ߘG��gx�k���-_ ����x�|+J|��>X�2�_�!�q�s�=����ʻz���,�o������_�R@W����_�z����f�m��v:G�_*�Z?{�-�J��o�2xaX�����$�[���=�M����NNV_�s���<3sY�S]ͩ��9�50��Z�3�w􍙰��8Q�(�eaNnXk�v���j�ET��B�ܰ�Fn�QC/m�c.��1����JR1�50��B�rY�7岾oLu���b	��B�rY��N5LuE�e�f�R5NV�oLV�o�F�%��:K0YK0Yj��
5�F����ićW�Ֆҫ���?X�o�%�S?Tn)�P��w5�C�����R�U�:W�l��v�����`�ɯn�+�tX(w��;������֚GwLpLe^Ņe��g/䊆�1��-6�O���kq9��\�&HL�E	a�Ql�ݩ���{L���ߢ������Z��ߤ	Z�̺�X`+��.�O)Q������q���ޝ�eYfL/��,r�8�1>��JJ�aiK��HTF�m�7���Z��k9	J��Pcv��1�V�B�;	J�}m̮�6f��Աpϋ�`���А�Ɔ�P������F`GB�)ܚ�y(�ɨ��0�P�Z������ܜ?��� ﹜��=���c��n��?!�^�v�t�������`�7ٞ^hh��m�?��ε����w�S���ue�\���f�,n������J�{Ґ��s9gH�_ѹY����=(Y���Q��V��Z�c�~�����t5f���O�u�l���L����U7&��ܩ�&{�#����9�20fڶ������T�&��69�Қ<�mg��49�6�a".0'�b(&�b(��α|�g8�,�D�w�`��x�9aO(#u�`@t�*�0�pA��n\���m���"lM�)q��ðq�)
��N�|(}�zG*��#mZ��a�.�G�g��e�~���ј������/��(�~	���7��Z��F� �s-`8��l�R��Z��/�7�7*8�,y�Z���`�^Q��x]r�g����;�C�@�l	Z".�����Ot���x�l�����)}���z8�X��]��ig2Kş �b8������=& nR�Ǒ�=�D����o�ɻ������	���/��
�X�Q8X�(��3��Rf���Q��$�O�oJ{���$��P9��������byԃ`�S���_ysׄ}R�g���m�k\3�B�|�!�v�S��z}�a�;_��e�6�Ro�P�s��ի�@�1!p����s���1������|`e����V+}��GM��x�r�֠�#1��d*�汖D}0�'�"m/��3!w'���[r�K���@Iz�ɾ��O+�'|x� '�Y����9���O8��}x�^l�ч������Ɩ������^��8���mt��6���M����tu�����}5������r�&x���˚@��q�<�������{��\si'>{�C㽔��o�GJu��?������:�9������ǯ��.�Nǈ|kX�4�>��g�o����qW�    s�����8�����4��h[��l�8��e5̃m4����?�h7�����6e�ې-
u�d�:��B�69W�M��,0���v��ؒ��8;8��g���nU�)���<��A��lM7&������
��ʧ�0E���1�3���ד+�ë��[�ݰBkk�8�7�s��6z����S�g1x�T>|�[eg���J=4��+�p��j���>�>ku�����"�7��	�8cKv������b�/�Wpe��!�%Y�҈��Z�ű��űHaM���Ӆ|�p�ߘM�t�9�(4�u;���>g�#�|���Λ��˳���"�csK��sYj���R#XNfr�="���I.��>wmƃ
"L;���o�!�`�DRy���4���/$�k���9�O�+;����cH�e�,W^ ;� M��܍���.��wI�6y������sGFkc�Ą�>���Z7���%��8��-M��wz���������8�s���bw7K]\b��M/���^d����J��^3���p�c�g���AZ�	h���9�
��������Ϳ��N����R�=9�?�<'�O|x�vk��$��y�!�g���F/���}����a�mt�Ԣ�v��l�6�&碬��(j�3�F��`�R4ǚ���O������M��R,�8���k���96υ[Q���v��c[|jh�����4i4gZ�����b	f�Elv�c��j�0a.#�"XD�f����HQu������`Q{�B-��#t�z�,����&�'�������˟y�܎|ª������?����R��&�N��}�k_�/�C�O��)�Fo�	�p	ή���A�V�{�r�f֧Jv����4|Ƌ��?\�ζ�o���<�Fv����Τ�&9�0��8b	�;������,��"�F�e���By���x���.u����܂�'��691�Y}�imdG�,h]�m�=w/"�j��)�)�x���Bm_9x�G����nly*y0^��kc�Dkӣen��
��j��+۝��t��c�M	:6u�v��MG�2ppn	E��n���,�ڌ�1_�Zb�x`K�Ƴ��15<}(�`_D�a_D��EDT�c�6հ/"԰/"԰/"�,԰-"԰�!?MD�ژ���s�6��������l���G���/A�p~nQ`���sL/�7v�6��lϕF��}jH6��a�)�a��	��'����Un�M�����6��9�6�^����q>���g��Y�au�FsF��YM"�\���?|�/��<�5�&x��ǴW�y��Ǽ�F3X�i����H���1+��J�0핼!XTˇh#�����j�K%�--�8���؀��s���N;�����ŭv����sR+�l�Xj�X�������c1Cؕ��>�<ur5���>�����91z��}2C	d�b8��W���J��Bd���J��uKǍ�1��s���_[������j�V�#��Y3�6��Skc�(ˎy�$��6��4�8��i�PÖ�P�r�j�ȷ�]گ�8g�"��+Fs?Bkc�Fk�C۾1�Y�6�Z�N��Y���`�&�
��F��h�sVi	&�R�2��#�ŬS:�Y���r����!X��}�0����,��jc�0a�j�3X�cJ+�c�*�0g�,�cJ+�#X�c�+�1��1���l4�W�#X�����am�|���W��^�ت��Y�����0�U�S��oS�yf0N��������Fsʻj��
5�J���.�2���w흽�����0�v�������N`LZ��t�'��N����������Ei�c���Y͎��8�&�����(q;G�.6y�̆ǌ|ge\t5=���������6V��\j���*�V��uB�̨��7Ը�f��W�Zv>lr���L�'�n�"\O�8&�R��d���1?����U,�m���w���.�f�1nҾ�jcg�X�ZŁ� ?�4��q�X�ak]d��P���D5���ݍ�|�^J��.)Yi=��l���9��/r���HM0�K�I=���{%L�1�t�5�&1�Kj%jk�������r�i�B>1��L��>+��I���q���B򲔒�&�R�P˶+�5��Xm�����V�K%n���:��l2�+�Dv�c�I�eY},�8�u��}r,�h4f��婥�0|�S�	�u䯦��4�6���9�&p�R	{��'��b&0�d���D`uD���M�V\�jX���&'=��~z-��M�$t0䯰 7~�m��Z� Z3y-~�� }������
P0p�ژ�km�ŵ6&ۻ%�������ɴb<�.~p��}pJj`��O��{���J��n�F�Z��#��������Y�����5l�i4��Ʀ�Pæ���]-M�]-M�m+M^��-�;8���ؔ�hl+���62��}!��}4O���&G���<�ư;�����h�oh4v(4[���Fc����%�hlh4ͱ�/0�I�"�Zݠ&G7h`N��D��49�9a�~N��#����49:2�5�~��+�����و�,�j�cUx���8����=x�D���n�1Xt���gdӏ��ޕ�S��i�	�������j��7�3��j\}m���l��ɳoy������^;"���v�P�xɄ9�+�3aC�����F��	w#����4A��%e���_��s��7�]kŵ �}T"y٧�{�"­��4����/���O5ype�xz&��㎨�˷icg���TDm;�e���8��]�ިz.w���p��Qߪ�C��m��� �2�aB�����&/����^�xMF��H4��[�/�~��ݖrk��%Y�,?Y�4C�_5{�c~:��;�M���Lm����}�+�l�/��ɯ��w#\-�m��$�=��v���y���ڙ+c	F�I�z��'�_a´O��p߳<�dA�o�"�귐�J�m�W�ؼҹ�J�l�?kI�6��T�˯m�^�^-'�_��㓽��:?0ޤfY�5�p���T��&ֆ�D����g����cm?���s<�f��H�p;�j����]�X�3�>1�����W��k�x��*��|g���k��mc�ݏ5E1cml/7v4�j�9Q�0��1ic�Q�}���Z�j+�w���LmT�'�ta�~�,6��ٱ�C�j��2J��˕}���v�\O)�g�
���Y��-[�!���-��W)�-�U�D(�Y��>|����R*�>� Q\;*�j��d����y�9����Ʋ+{�������^,��'5.Mk_9jO�F�.�<i�m�"|id�f�����0�4�Lwe��_l��F��n�aZ�!jN���m�r{�X𧒊Ƙ���#˄ܙfO/Mw�޲�k-c��k��r6���2�L���}��L�������ԆZ�|\c�C"�"��G��
�4C�㰸�!�J����1Lot?�ġ�E�P�+Kֶu<�&�}*����i=�B�ni�{��1����T����z�@�P��	W�ak�	��TI���]�:��gr���2���ŭ2E���w�>�kX>��κ�s�F�=�=����wn[;���Z���5ٰ�T�69W!^K�7�9�aΙ�[��Y2�r�vr�@V(���W���e����+����M�M�ZU����v�H0���w��\��������P�t�H2���3��\��႒-z��V��*��n�=��';�+�"\��5��}Rt��<y/)I��R���Y"Ƌ�,���qnw��Մ���y�Ҭ S`�Jȫiv�3߫���c���.��{`��^
�:7� ��ٔ�F��`2!�ڬI�;�I�5�)Qu��Û7�`��T'���X����x
��Div,��<a=G���p�)�q��1����<����jt�����6Ƙkmd����d`�a]X��+06XƠ���V�7���s�z��եe)�ʹ��$p�çF�����a^=��Tq�E��Y��Ot�����6�B����K�2� }4��N4/�x����Ρ_����OɱS��    >I�=H����*�u��4�X*=lL�1 ��SQֹBuS�ƣŴ�-�c�����K�Dfkd�B�.���d���`aUA�0�)e[����\�S��Moby��M1�8�⻈&�{�8c4��n����!
�ObYu���4�Y�+�N�3��2Ֆ��o�c�D�Qr�d�ʠO�� -̢n�z7Q����e�����
�.��y����[�����i5]^���v��pոoIz]m�c� �W뱱�C�D�ؑk8�D����wħ�M"�X���3���'6����eZ1y�8b$�_�P���s���j]eo����+��N�HSVZv��>ƽ��p����pF���̆cSߞ�m�ތ���9�P�%ONU�!Uy�?>a�{��;[�=5�<�N��Xk��1Ĳ�9�}��\���xR��q���f÷)ι2x��C�o�g���|ö�ɐ�O�3��4�r���@����\����<�F�	�֧X7��9�"�Yy�WM����8��M��]�!e�@����1vU�\"]�q������mn��40��q6<�#���W0���,R��W�"c�F��%�MΙ���Y��3���`�8�� RdI��M��!k��/��5U�r�"��Bc͎��v�A�X�UD����o���S�F/�����P�����9�Y���ĉ�g��(7�x2U�8��)L���r��<�,���S�B����?��C{;�����rv�>��xJ�'�J==)���֮�zNw~c�#��y�����_I(����6='�2�I�~��	��4�!s]2uVl	���]&J_�!WMe�3[������9$�X
�*c]B��-I�d{�[kcMD���er�R,<����a�-��6a�uO����k%e+Te)��V�{r�g���lOH����!_��\u���<id�~��6[���j�:<��C���9O��A{�7T��>c�J��^�E"��lp-Bv��M~,��^0�q��&�͛��w�{o"�qA��c��l�m4'�6zʎ��M|���qp��5P�Ȋ�n4������Q�݂���"�������1�U�� �YQ�l�\C`L�$e���O�逍�P4Ǩ�FO)Z�8W�gg��V����jEU:��҄A�i�pU;s�s,�Q���d������~@�+����������e��j�6ŝ�w�)RK1L�|�Bv���0gEn���c�a,���u"{��$O9�	ct=֊k}8;l�t*��f��������_��?��2�����=�Fc}L&�v�FW-0���+{�D:���ۼGԒ:���t�&��8���ո-�ErS�e�G)0Ꙉ�m�3���S�{��y��9iF8�ISw!��h��ma���!ϊ���Sa�ܵ�4f�q�A���}�k����9H��:'��x�>�z��{��T�ϯ��ذ�ءc�}q������h!umd����
�%��k�u��2{n�I�ɯi�����9�f�J���/�b`-�c���9+��簰K%=��z�xB�];j8�6��ߐo(�@� n:ҋ��X�8y�8ʝ>)f�<��pe���//�C@�B9_�ntI�������^�x��{@�%�ʁ��i��Z�����ޙ46;~G*0˺P�B��Z/�y�����=��6�9��ԗȱ����/)r�A�����0�m4�i6�c!���Fs���Xv�}����0��1���9��8N�_��+O�}c�m�9<�ʨ��j"�jh<̹������.�ppyZ�~���ı��Q9�������g�i��~��&铒��C-���퍅�0p�tu-\��$��r.M>|岌J*�A���1�5-d�E5�mr�K���&1�і�q���s�(�nsT�#K��rP��b~���g����9吲L���z��#�y��'�`�(3�A�8��lX��6/u93i{�[���H��nW�\ۜ��T칠��[�����1E7�1hg��7���b�O�Xf�ĸrEG��wŹ[�4Q�9*���R���ز&�l||[ȣϕD��+ �?�Lp'S���d
�PigI��[K	EY��r�IfKiRE�j��S�9n�@�nXvn���Fb�#��8��iWmS9m�H�䜄�[�]6�o
�Ywl�ig9�2`�$O�o�'�#����S�h��Eʒo���r3�ڠ�e�<\��+y��XA�@b�+�B�K1��Χ#[��j�s�z!�1�����H_��i��Χ�̉�M>3��n?�$֐���p��ǰ۹*#�0�6�9Cא������L��U�[l=�&��6��則;(�����B�0�E���M����p��f�3Y��F�����5�����&�{�uB�s�m`���I{a�p�TU�O�wX!��ou䦎g�\����7���s>h�q.�ٱ�!����<�ƅ:M�Q�L�Z�cs<;��iX�Y�R�Y�qs̃�� ��7�cX�y��=�,���5�n����|Ǡs�9�%+r�ǚ��[�1/����:]1��,kN�v��i�����V������~9��XᴧK"]K5��^�Zl�-ʼ��Ǡ�Zz��Kek��x���W,�I��#0���֊'sR6<^i����}cYG�i4:5���zD��lJ~!�!�Da>$i�ߑ�,5G9�U1R��@m��l"�1�Y�Fx:f322���D8l��i���c�.�c�����>\^Ά"�k�/ks�ɽ�G.�6���
�iic�G%�ID�,X=G���L[�x*q��9d�`ID������m)ŵ�%��(#�NŁ��+��o��2����Ƈ}�s��2/S"��n��@��n�f�2����##����>���68n��ڣ���vgy�w���7�ti� _�x�cʼ���$20��U����f�9�jK)0�o��A00_�c\aԌ�\f��q�m�O�2�j%ܦ>�2�4�S!��^��ّ)����F���q���6z4s�A�����V�z�Ɯ�U2m#1�,��č�dBC$�r]�i�0C��7v��,g��-pq�<Z��L�X"��Y֯Q��]���<���}��b$$���F5j8ZdA�x�{(���T5���,m� x5�6�U$�2��e,�j�B�r��KZr��F�E��-��+�96�0b�+��hqO��ۡ�ݰ��XK��D�krm�s�QD�£3	��}m��VIzsf;LƄ]�c�@���11H�.�䘸�jS[�ǻcUP��_�,�Y�Nܙ��'�$L�ek>�%U���
 ���c��u!����"4�
cC]L���:=���U9nd��İM�suH����":�d\,Y�ɴ6�&�t�|4����ElӤ�K(c�K`<�*w�]��FSO�%.�;\=W��� �2�����U)q����*��Y/0f���E��>���_�JUĖ7�m[�9��9�t��:~aӳ˱��[�>����U�i�!?�`��m4�``�
�9���@��l$s��"*���9$50Li�sJ+�b񎾸�nks��}#�P㺕�"�-��l����|:|�ƶ5> &Q�Z'.��U#�$�X�Y��x��P���l/w�4�`�p�G,��B=��0m8����I�t�N�)�~Z<��j��c����K���H`�JM[�6�j�U��3���e0��J^�jډj�
����C�)㇉�X6�0=�"���<�ǷZy��^��~�o���s�Hr�v
��֮o&8���AyZ4�r)�f�eM��9OХ���R$��K��$��4�@�xS3N[`�W*�`�pni�C<.�c�S<�uB��­N盨s��L@�S�����M��N�����|-5��(ۄܕ���m`�ĕ�mvg�מ�jx֕��A�J�ul��`�C6��nS�r���/��03���J�z �����鄕�,IL�����qM�0?��i�7�}krL�e�XW�����`!UG�&��b;l�.�a�rc�%���+IV֕Yb�+�.��gsJ.��V��5lo��<}�������|���sn~�������zJ�s8�*j    `~�K`�ZƄ^k�����o���U�:i4��>9j�bd;K��s��	~��[�ϵ3RC���S�[��j���l��B8�)A8��c���1�d������+�PP�D�L�F�Ta��������ɻ��s���Ո2v�}Nc�I��@�O���ͻ�L�te�qzg��*!w���/��Q��	C)��~Lzv%y�WV\r�f����>���%C��.�x���}> �KHFX���g�6b��ӦǺ��?J�]dr�gxD��� w�Sj�`��|v:z��Q�F�g������Ji�KT���5��?
�]�&�|&e���I�|�(r�'�$px[����w�u�Ҝ��I)�uy���偮�wY���yB�`W�|�y�F@�c�ʉ��`
��O)�f\Yڢ_�v��rW�ztc8����V_��TOd݇�������6������u����S�cO������}�27��N�9[��2M����L�7�+U�|ߘ��ژU��)F�)�sgMY��:�e#(���)�v�D�6�.�V��!��շ|g�הᮝF�f=�p����+�*���/7D�I�S�>�t��a�"Py�-/6��S/�Q���M�?�67��yoiu�p��V�:�{k��y=�h�FM�cr������	<�Ngq^wj�q�`�Y�5��sz�S��SG��@������]�V��S[à�fϊx�h��"�ґ���M�A��:�����hLO��9Q�JT�g[}q�%Q�;�*;͙�Fc���eyj��^�h�$�偻�������cC_I#F�6��g�s���C-����nb0��es��9{S�m�%�t.�q�Ӆ���M�����cj��a)FLA-6�p�C�t�LiZ��u����\�n\nӗ�= ]�0�pc�"���p|�y��.aNt.���2�F;�x\,E�$q�R��l��,���R҆�{�F:M�z��N�YOz�L�Ѫ�h|[٭:��0_'O{���1D�Z����]+�惾�����%��f��f��� �dY�%"I�2�Fc}I�EY�����<w)9��x^�$�s|���n5���5'K�0�lF$����u���S_IEYΈH`/�!�)�����%*13g~J��8Z\�O�u̫5K�2S���m8�ɛ/�7��C���->������瓕�dG���X|��y5ķ2#S���(��Z�A����uLw{�N��	���D�-yN�J�͏�=ߑ]o�^�������b\�����������	�_/0G:B%��َ<��ɧ8i���qÂ���-���_FU:$!�rr���j�90����M?�1���H�%a[>7̞��h���(��u���sJ$�c�&�Cm5���f6������L�����*���$����nKV�sR3�6Z9m�N69~`�<G;%�Ɗ��6k4�P����-�)�h>1 C@�9�kE��Y<'����&�U�s�zH�Ίl!.xi�������Ո��"��S��Ipy�	#�e}��c`��49j���8L��!�Ksp=\�犂��'L��R�P�.�QI0�K1�jX��#X���J2mu��*'�����
s�>��ĒHƮfs�\��J*o�58�l�IQlg����c*QƲ��O}��E	9!�mC> ��ZQ��_��"�Uf==)9&��β�t��+9�1ז��Mrr��sv}ٵ���ZS�كj8Z�aA���4ݕ6��h�$�t
xB�c��(�in�O~�n���	l��U]��>'+��E���zT�ix1!��_��.GN�W����L�$�[�egX����ވFc�/�H4{f����W�8�<q^������^m�9�?lv����Xx}��/O�a*M�w-9x:�ۓ� �ka�<50���x�����9=�ΉJ�1cù���afht��5�����Λ�,x��v�q�Tp�̧(̩�p�3��z�����χ�����ML�!�x6}��+q�4_�{K���w���k7�`;�:���#��BcZC}�'�|	��U�����Vϙi�M9��.L����\��Z�� (c��n��H�ϟ�L�a$�`�NLs�2��������.���k4M�����M���l J�v��G,K&bx��y2�;\�o�䥕#�M+�0I^�r'f��ٷ��Xԓ��Td�x^`,���$0�ĕRK[A`z�+�����pOF�K_��Y qm^fj��(D����/L����-ˎ�q!���I{t��d<�"<(,�4tU�����x�'�ec�,�P���8b��t��"bF�NB��_k�˛��|]1C��O{�-�=�d �|��Gc$ ۊ�
q4���ve@��� [9�toS v&��Rd�b�ie�>X��Rq�)5���K%F7��Lz��E,0I����,��KX�T�FcOW��q�0�b�ަ��2�b��LWo���Տ�^�������pa�K�?���%�]�z�۪Sd��������B�h���|�1���r����Z�/��4�����������6{�t����W:a��) o��r-{xV��B�6;�=������D7�P�ge��EJӻ'�pw��D�����Yn�q�.�'�u�-����<M��э�SHO1#G1�2�9���r�8ֺmq.%�g�H���3�v�0�>ӥu�9��'�w�'�Ƿ�)�؎!��D W$�r�iX\��`l���mJ�0S���q����m�0m���)�F7}9W�*X���4y6���D䳮CIDҊ9���T�&a�Mj�&�o���Rv�Ḇ����N6n`
�ٵ��^d��6�T�Ú�8���*�qۏ��̚`,�ϙ�ΐ,��J�1��KV׊��]eQ=?n���,��w~��%�3zj���ާ�k���3�g$�!� ��b���� ��߿��j��8ބy����8�ĵ~����l*�`,��	/�1����).W%�;�趬����0X]�˚*U�G�#�z&Μ,	�2�8��HB���(��0����D�lz>,q���t��x�K��G�����y�Ӌ{�mH����;�ǒ��9�������>=��)��9�7z�[`t�B�=��9r5�8v�ќ��6��Q�EU4Q6��G�Fy���5�܍��ﹱ$����Oh�4�ꂍ���u�=n�����!�0kE֦��F���7�<e��m�k����k�*�Y�:���;([��B�/+\9����bd/�4��o��V�4xSL]2e�L6��9�Z�����w5y.���=%Qy�qТ�=�K�p��1P�y^M 1W&�sf=e�&0&Zb�U����zi9�X����Y���Q��9M˰m��g��|I�Q�m47�5�p����������������f�RB,A�,XN�ɧ��X�bIS��Ԛ��ʲb�/0��c�)o��esb-�b)E����q7���ӈ����h�>l#&)�����R1�l���s���c�l�O������!��swb���C��AK�\O�Ez�X���������\�>~�=6U�2����nb��W�`���g �yYꆛ�_�/�����&�8�i��Hh���^��~�d�W�~E�)��~�!o^6G���9���1����LO��!c���1K|7l���x��[
��U�̔_����	�m���?v��S�Kx,�lf	��/X-��O�]����Xy���ַI�������\}�]^�v�c���W��:N�z,e׷��1�i��`,�,���!<�n'~WL�������:�
�Y�IY�g��S��;�/W���Us�a��ɐ�)�l㼸q�\���eB���Xm20^�-0_�nw��o��'x#�a���G�����D��	��a���<|�[rg�\�}���M�8H���������Uós�� �cGOL_*�\M��S�M��2!����)�G��Ld�	�z�kCL�7�@�Dvl��q`B&��M�2���j�D��������f�w8ϡl!��j��a�R��,��X���q=Z�[�fW/���Q��e��թ���8�Td"��\/%    �0rMXN���kim��F�3��c�a�����H�1W�@ݙ�=�7��0�r_��W�#���w��#
��'����n�'��̇uE7�Fi��@�k������_�w�Z*���|_�&�z�6��X��F��Y���`�\↋�~a!M<�lC�6�2]O%��8���j��3ajX*�iŞ��v�DT,ZxL��Y�,f��i��&��Z҆;��;�4�����?��X��a�#�D�#����LM��EN��"+6�F���g�8Ζ8b�^�➖u�.��gyS��Sjl�ˍ�,q� q�[�ó^��ӥ������40F1�l"���hS�.����i���A\��na�nA�9.5��� [�:J
����q�֨ "�d��1*�ɧN�x���7�
9Zݑ�&�y�+�F�i8;\�e
���|������65�/$��U��ha5kϽ�ᨮ�$:"_�#�׏_7��'�D;�|Z�g��2�;EBn)��$�c�P;��[�u
����mb�xM"1Xq8�$Y�>�T�{q}�Q�	���"��*f["ܖ�����=90���G��c�W��6��?�nՙ���&����2Y�!����>� h`��=��;8�X���k��>&�d#���Ħ�������)TrU������4�7������c1(�	�;�~0$�9r�,uD%�:�@pi��dL����bJaU����Z#�n捓5-��G�/�j��kIw�|z[24�y���FW���.�N��xOp,ȥa�-�a�-a���	��E����f�8��8bYBN�
��#4걑(��퍈��'3{�ޞ��7��S*~0�偲o�p��o�����+��F�:Ǳ�(��$u�;W�پ����O��ڗ/x�T~��@!�����ͱ��&p$2/�O�)n3�k�ooC�߀=���0P�`�`�}ʯ��K����{������SL~����7^ml�;�5;^F��90�h:��l�́�6N�H��n.������������6N�7:L��S~+0>�ł�XF5:��� �'s�}�O��"W�
~�����=�>�#�i���|)�O�xx:�U��ӊ��iv��IsTy����4s06�}vl�ko{i�Z��ϐ�2]���c?����g��:nW[�![�����erx�O�O��9����K�Qe�0X�6���NU`���ST6��t	�p����	���y��o�tͩ:�	+Y2%X(�D+��I�z�!���{4����90w�P��w��,1�YK���l-hc�FʧR��ҕ�C��/!�KcSͣ���G�N~��5�.3wܱ*,�R:��H7ƹ��ߜY^r|y���ua
�​��2xK��w'�4�hzM�Y:�}M��F`��W�6��݊x�Eb���7�E8��dK��9{������"lp�"	U<��z��x*�}^�Z�;q>���EcaG)�wJ�]�,M���2tՕ����7�\U������)��\��tC@ �[�D;0���dSMN�:��^�GB���a�Mw��I�����mmM��h���N@��.�5�}��ƽ$?iu���Lb�S�����?x6R�5l�,0�P��_ ����v�s�1����#�ʵ��k��(��x���mgx	�P���tLdmm�l4��6��"6��":��wYT9] V~�鴵�ؾ8f�f�,�b�'�b�a�s�B�|N�~f�8Y�01�rL1�ct��eJ� �Fb�KHX�n�\=�9W�F=D��`�A<ǰ^��5��5LH$X䓪`MF��rq�I�:1��tai��gN�):G>���f���.Re��s��&g�ȸb+T��a��Z7�p(���V������Z���"4�%Jz~�L�������Vn5~�I�s�!y���܈е.n�V,Ҙ���.G�G�Du,���Xk��Xg]Y�4��u*`��xi�ۿ��QB<��щN�T�{9�Ud��k��~�eP5�,{�p6�`M�M}��I��:W�#0�2�gh1��ن�C��*
��^�o�6����a�0)���@XH̹T��*?|��w���v�U8)*�e����j4V��z��LF�e�d�B�i��}��h��r�Lid�%���B1c���h^��c $���O.�ئ�L,�kF�%�4�"�����-迍_���y���m���30�6;*6z��=�40Q69�G���m�4ц3��7�|q:�����.��l�\�8Ʋ�������5=��Uцs�g`�����h6�K"�9=���^��b4�4�^GCd�=�E,-�H�O���t��9��1d��O���@��Y�0wY�h����1E��td��&������+���H��0��5t���Tj��@��35�*�LW>m��H�0Ԑ�aM�6΅M�mJWڡ��N��bs\�o�q����W^~
}����C�*���pǘ_lK�?ÇGGC�ű�.�CC U��_���r��k��f�V'%�h%�y�ɷbyj>1�|����P��g���V�����(��)����h��@I�4sL���p�ٵ�ֹĖ��t%ԧ���ެ�Z��P?�@�{���� �iX�{YOL�oLF$��CʟrSD�R�ц���+�dGn����f�j�zzh��E�Og{UV��5]Q��]�6#��u���+�V���D��&�����أ��������r-�U-�}�/O�����
��0��Җ�e�Lpا�ײ	T�C����X�������Ν}o��� ڣ6�5̉����zZ5�_���UQ��b?<sFF�ed��"#�9e5|b��Az��r�B����:pot>l�s���}�(� "R{T�1��J֚�"����It���^z�)wtb�+�L"c<!���!2n�F�#�m~���<�ƫ���ע���k����9�F�B�:�������wk���M������y:=��%5�՟3��l���6:�����F�o���k�Z�}O�����})[����'0�A�-Z�*v*D�#Y�-&>�B���p&���Vް���a(2f�$7��il>�!ߋ��hC�1� 2bTu���cb�*U��	�8lccjA�#8W�x PB�MC�3nף���M���d�叔���Ybż�xS����>��?���9��I�[R9�(43�;h�Žmp�rZ�%��Nziw[�ĊG�4�|vhF��-�������F~*�N���kړ�ô�"ˠ����4�FO憩Q��ײ���TrC ��.��ux��x���񬆖q���h�J�����?�\$:�?j�?���{�4�X�ks�^rذX���jX�#��6F���-�1��E�˅,�B֌s�;Bd��)��z��bz�td.��l��5>�,�m3����^.Q}Pڈ�#�G���G��I}d~tV�c躹�U�oF�JsoҶ���ݍLb�s֜��f����Z�ml��b��x榉�I0W̖f~����.�~���&�a�G��(A��83!�A�.�aY�Z3��8��έ�9N��N>�p>J�C�{p����<%!O��{D��.� d�d0�Α��XL3C�%��'j]`/2����i�rǿ�A1ؒ�#�Rk$�\��.��*���u΅Vu��q��`�&΃� 0n��!��x�T/?">�:��5q<.��)��{��H'H�� k�T�7���d�R��I�iۘ��������o9��1�+K�i.��a������w�zA�1�����OT4�0��ps�U\?w9G4vi5	~K�?#�d~\�!�L	+�s�
0]mJ唊t�&������9���)Y�콴�q���`��^��8�8����9B�᱌vm���5q,�H�k��9�+����k)Y�-"r����՟���\�?$�S��q�%�T���3�#����jK?�.am�G�o��5t�����gmeu��f�[�⹵i��.2=-eD������&v�Ҋs$k1bjTc�].i!7�2��c�� D?q��������
g�����W�E����2։�f�/�<[�� �+�    �Z�5���m�~��M.���FG�i��Z�h=f�.f�"��xG�k�sM�G_�$Ѡň�����H��1�p���L�щ���_߀��(�r�����h�?� ��Q�sj@�Ep~;pn��-VN!�9�?�����x��PC�~Ă��(ݥ�aFKj�(Vc�#o���ѿ���x�Y����9g&���ȌߍS#3��ƹ�F�.��X%6��jb��5�������S.��H�y#Y������:�J�@Խ��^F���ņ�_:)e���o)վ�0����56�{���b���+�g��\��A�Ç�C63&s�:��iJ>\�u~g�Ch��_����������=*���PU�["y�����(��,�MEC�%�d�[�!�V*�h����\Lo�|o�|��"ozd�`���([�!YO�p��tg!�U��PO�ck��ފ"Hv����5��ͣd�u�$GN�+ز�ؿ��X�#TT��e���P��d���v��Km�%�2����V�Se���?*�c�_Ǝ�J��t�}���K��0�!�����~�����F*k�܀��6q����|+��:�ls9�=�5����_���y�/6x������K�7�Z�,u�8U��<��=e����<V��w��|�L�A�/2�\)+�TL�G^˘�w~�m���c���y�>�.���<�6����	<j,r��18��u:<�m=]�������+&����]zIsqS��3S�=����c���:ǣĦ.�K�X����5�ep�>k�xD�#�nwk���Yu���� 98��#>�jAl����xD�:�gM��F�=Q3�ʥ6:�
�Z��3ZJX��`�@�1v���+�:>>��<��%5�������| #P�������������hN_jf���	)�)iӊ��������'��{�R�e$s�uȗ��b��:y�=7��9��e���ȯ�Z;��u��0?'� �����=����ocSA�ip�
h��M-���w���z7sZjs�b9��}�&vךy*���������+��z���c�bVA�<i�����Yq��_c���Q������fR|�j��ҡ?�g��@O>��c��_>.��r�D�h���jC�K�$x�(���N'�k��5�9$�D�6|���Aj�����RD�#6���!�#{�͕��2ם"0Wj��_9�#�7�ì���l�*�yz5m\�2xc��`�M�a���\"_���_�Ep�/������K�έ5���؝,f��F�r�:ǘ\*�
GkMAu�X���Tkl� 4�R��:/��k,�,F��C�{+[�]%)�=Sk:G�Z�QL'c�%���'2b�6o:��V���&FP���͘��u~���t������r�B���>���8����c�P����YOkM>]cc�)2�3*��c�6�&ոU.�.{��F�q�T���ֶ�k4�3�o�X)�|�k��1�^���M/Իw$:�ƍw��M�e�����]k���0��5����:ܜ�22�D�k�� cJ�97*�7�FY���)�Ӭ]��J�Ҷ%�B��Rq25�霂��Ef/q%���oEǭ�))��ip1GI��[���\9��=�wLM��lAByJb��׍z���-jm$Zz܇����9��y���@[Ŕ�h:���Z�i�_�|=i-l���I���9f�k�R�ߦ�7�9ax$s��m�#P�ƦP�t�`7k�+����Y�&����Iő���U:�����c�u�z}>})��v�KttR�9� ����ՇO7?���v�b;ޑz�b�/hS{c�5�F�fΔ'i��ڬ�[�9O?����o�`����+]C���C�s[����65~���ʏ�O4���I�9!`�cI\��]B@���k�/���h��Yʥ��/jYk~��u��A���mjT0sq�׍.� ԑR(+2g:�e�5vL��.�bK�mba��a#�ƥ��ڝ�o�F���8�Ǿ�R,]jO)�A�O�e|�Z3���g�.2"D<݊����b`z?.05:G�2�%��Ls�� �+�mbXk�90U���q+�������S�y��S�t���q�)���S:Ŝ�͌/$knSIQ�xì���.�j�c�O�8�a�t����"�3��"��A��4����X3�J|�]:�V!�O���NɥL�t���Q񶎮������H�ws��(	��t��>f#$�X7_�v��U7�Ɛ�Am
wi�÷a"WbC #�ck���9}�\�f���z��l��SК7b,��%sp�I�`
Zb�\��dE7�dk�˒1��1��!ZF�{�آ�w�v6�/q�D��q�6�--���aP���z���kbOa�;gT+�Xǃ�3�Á�e����S.�H���V1myDjt�w���j�����F7#�e�U�h�e��팭c����!���pe��1n|Uw�&T�	U��^��S�W�?�Z8�V��� x[�!��c���z7�rF��3oaj�5�r�F��kQm��1Y{�%����/z+C�}�������o�5� ���AJ4�8�D���[��.9N�n�.�w�;7�ћW��N�k�sa�:Ǔ�b=�=�Wt�Rqep��p���׈�"mr�Q����MlMtI�s������4��=UW�ᒷu�sW�8��F����.z�8ht��"#NU��%X̪H�عi?���[�|A��3yn/��J�#Ԓ@/�1D�N�77�\ZC�4�t��L�LgԚF������=�8�􀄎d	����Ĺ"cz@c��c��G���r���py�(T_���$��s��$t��V�]��p��B�Y�s�b�	��3GڷJ���*���u�ɨs����&{�C�-C�-�b�R���v�j�0Z�3��z�o~|N�����p�q�LA��8��bQ��~��3�ˌ��zG�,��s=2���r`u���d����11����q#�r1�;n�>�����*Pmڮ��n�is���C�,�b�cԖ��?	l@�壋R�V�|,U�2X�b_�i��$��n��I���9�����h?�G�~��S�aJG�����G��n�s����(�:�:��N�5�֚A�o�'|�����7��e'V.?�s�Uڼ�5#sE�:�Ka�h�g=��L�ڧof� 7~�LJIHq�k�=~N���'u��8U����h12(lmc3�Zҁ�3�Nߒ���֜�������o1�g�z��$l�<��gn��
���5眑5߲�^����H4:bENG��;�s	�|L�݅cM�8s�
`� V���aJ)�Zb;���83���W��٥YD��})Ew9'�Ꭷ��Sd�YH���a���gP�����Q��%,1�\^�{����'��������e�84��֤���8�:��[�1[bd�ں9��2���VB��'��9K޺s����BK햱��&.���3��������27��R@!�9Ű�W�J�Wd�!����Zb��:�~m8��%U��r(	ӵbq�XCt�y#zUpE����1���P����ǣ��&6��VaJI\�wF��Ikl:b����*����:�8��9�VJ]��᧫b�:�{	�"F�*��2=�H��CܑD��LKGW<�E\��Ku����9�-��(��^&Q��P5_D~�y-C�|w��Zs�˚��mp��Zk�ƍ������f���Z{������$2�?��I���pc-BR����Ri�x��zO�r�zǫ�SU~wa��g��ΨU:�w�57V��F�idF�F^�|��dǄ�F�k�Z�R/�dR����<f���|vZc#���9�K��\���Ai�j+�����W�X47�~J�}m�?��2X�_D�����`��C�n��+�AJ��a���'�6gqR+�0M<�AW�W�����8ǌ�|��Z�X��o�7��捁��j����%}P�??��RA`m��њT~jf�4v�o'ē)���f�S���Ԏ��#wyG�{X��Z�]���P�3�#��8ǀ_�(    ��R�
Η&oA�;O\���"��.���8�46�2��
O����Ak͏\���X/�`kM�����c�s�2'�݊��K'�Z:AT�ֈ�eNKiN}!�dƀhc��51ďYS�ge����O<%��Ri�n&��N��>�z���t:?s��	`�c��	�ٽ��Y�'q7᯦��\�!�3=b��<�����Z�!@��P������wRF���J���[\.��C���r�J?�����p�� ׏����$^h��8㍷��Y~d~�Md�#��f���L^�5�[��V�<o���IM<���!L����їR���		3&��[R珚w/���(u�32��,s]�.2c��X�΍̟kK'O��c��m%x�R&�T.������#���d���3�b�`>�����<]�?Sj�z12�DƄ������Sb��ĆY.��b��?%5�8�$����W��̬=f[����4<�'s��{��a�_RG�I0y���w>s���إD�;f�&46vnR�+č̸]�aR@�]�=�͘q�Z#��#�<&�ıw�S�����HPs�s��1���=��������)E������Y�t,C�?�/�մ��;yW�Y�z������Y��Ȉv�0������8�gE譱z��˜bJ�ع��k+Bde`�y#�k�%$K%X���+n�c���\m�wBp�u��\r����R����՚:��l�ɻλ����	���/٤�y_��?~���$�~Ŧ1<
�c=`�P��EK��lF�����E�i����c�g�<?�|8�-�b�@jOq�{�����8-�����r}򥬟��F�c�ֈ��5v��ˣTH��y5d~"[�3 ��S]ۧ<�y����z����Djp��L�#�k�x���=���7�\kp������q�m��c[��>�T�?[�?w�02�4�g�q�u�5w�5�g�<=�u{�*�b>fs���[�n'�1��=\���w��SG+�bh�1��9˥�u�w|�fEjlDb"#�42���\����-_Cxl^�'��q-���h���ǚԗ����3���j��d�<�56B�Ŧ�8PccVƊ�&�����´����Y�b1�\H\�.��|O�d^~�3��KÌs~�A�'�;!�
�D2G*�":��*��t��5���u���Z�bg��ޒK��t!�Y
f�]< ��XK�B�U�\1P�V{�����!�,&M�S;y�+�\rC�k��q�W����3�(�!�U���\�*JAx.���
��~��aj@C��-��
b\M���l-��T��۩"�a���nq\0���r�-�O/��Ӵ�`z@Q9`q�U�]:G{F�G:n�����k�`�T��r�f���}�}����O7Σ�_6�M �I���,rʜ1d׾�v�������zk��©��GF�'2�8#�\h}+���Ss�t���r��7>���F8Odƿ68�kM-�L�s�Mr�[s�s62����e�:f�%�&�Ң:¼\K�1d��}p¯"�6x����72M����##B�T�R��9��uF��N�	&� 5�#6n+�t����j	&������	ӌ�Ȭ����C�;�cJm�0i��/����x?'�M���`^#�N��^ �s�9�Xm����g��g��kpLJ���M�63�֭5ئ�:T�˜˿fn�T��*k�*�̍�y�o*�RBL`d��M'����N����6D5�6��\����]b�5ʖ4�b�x�ڼ����&�nN�x|��E�p��fn�yԎ���e��+�戅Z��ЦT�6>�2��}7�P�	��;���0��	�5����8��B����	D6r*t�.~EP���	5׊/o7�)5���?���m���`�6��mC���y��-#�lqk-�n�X�j9�g'2��>^ץ�6����#�l�3�W��"ic���3�W��M�T�l��N�,����T�m&Eؼ��L������:$��H�ηT.���ŏ,n���ڗ����}�c�{�k��(��%&DDN�ݸ�f=���v�y��i5�s5�=�j�wg��9��<�%���[�SF����j��M�{���Wcl<�����e$vƙsZ���h*G$���Aδ����"	f�̹�~0��C�ƵycV�杮����-}�=���S�8HJE�/�ˌ�X�	]����yn֜�fS礆Y3g�9�j͝kf�)z�W�c,���,[K,����kl�]�)�s
jN��9?�ΒK<e��j:C�m3�w��@x+��[���I0��8�tF��66��*Bk�F��k���5<��A��yPɀ��{�ռ��خ�غ���q3�D^#��^�p*�72f�*����A����@C�����c��=a�-j���6ˤӉe�r:�-�*�dd��a�!����LH�Ț!	�Gh'T�X�����;7�p.D�[ڎ�8o�����R,ݖ����r��c�W�N�o�2"(���n銶x[����8ϣ�#�s?��H���U�TP�Z����Z1c!�a�EzC�e��q�Vy}5�V��SL} ���_��Qq�����
Zl�<N��|�Ŵx�ܭ�;�����߆��\�����B3~�̦��Q�FG�nd�t����+#���m�x�kq8�T� W���7�lZ��sk�ߋ��83�xJ;l�~w���੹�ɻM�*��7e��K�������U#�%�w�c�ӌ��~����4�r�b��R2ѹ��џ�R�@ȝ;F�Ff�ld<>��������1@��9��%X:�.�0J5{g��f ���Ǫ5B9	]������X�ʠ�dpW�ssI=��nzk�aX�uu�k���HN��#J�J�5"bҼo�s�����&� Vc�P�g��\}!S�k��e��\�kc@�e��e.tS[*\*��
��\�]F��ܹ�$|s�ѱz,��Z���O��R�ܔԝg��;CdE	�O\�-%2w;���r������tn��w�e�Kٺ�K"o��/7�"V��f���'�1��S��ᢻ�2���n�M2�����&�8P3�
��1�(�٦�]	kJ<�0q��fq��j�Amy0��Z�g����n�e���A�N����j(�^���H�[�Z{��r����]!P�]!�x0/$���t\�2��l�c-(<V%G���6�'n�sǂ�o��x�@��~p�oϊ_���':�F�5�	~��j��u�7V��z���sF�֚�Z#���|#���a͌1�Z��{mKr�#�\��_w�^��F���6y.劼��nR�{�f��p�kܷݍqM��yʞ��`{ ��a7�=��[�q�	.��sl�O7� ���+��9��R���r�3�sL ��8XSC�.� �V�i1�`M� [���{��8�:��Z3H��s�����:��΋7L�I����*�Ę�Y��U��.���Z
��I��ِ���5Uq�{�8�J��_��-��`��<8G,kB�����&�#���y{�{꽬h�ݵ�{X��Tg�9��6�i���Tk��SS"��e�`����{Z$=xՃ߻��TqOY7��R�cC+��9�L� c�"����3ĩ�/ob=KֺW�7�%u��xC���"c�CsEs�hM3��Px�\�>��V�N�����t��p�ɱ"���*��ąL�,r���v�3Y�50fL,�#D���jbߥ�2�{v���7���\z��ԗT����^�n����� P�����J��{��Tk��I+~5�x��]���Jﹴe�;���'6����Aa��4���͐��?g��r���!��d�"�{�y��E�Z���xT���m���	�ߞT��nt?�!~�-�g#{ � 'ގ��73#�E�m�o��gb��&�������9?K�ݝ5���;��){�S$��"�]'޽���i����YJc���q�k���\K��VN�+����Nl�3��ίҘ���01Ż�����/�̠�Ȝ"R�������=\7�O���v��(���    Hçi�#J��Y���T�Zǂ�p1cvA�y�;9�I�Aͩ8��,�>�#Ij}����Z˅<��Q��n��m��`*�ȌlE��:�t�͛��j��Yc#|��"t52C4����XCd���[(u�G����$kl|�M�L�2~#��&�y���z/-y�	��Z��i��Y��:�(���II�N��b|�O}���>1W�zk~��u�0H�	т��ʉ���u*{O #��b�<�Wwhk_.���7�ó�/kk��Z��,U��0���k�E|YC.ӝj�G���OQ�S�f���52W,�K��zy)[�VZ����#��a�Hk
����9~	%�1$��jlL�s��sL�H,gT�ɜ�Tk>٭��%�_C��paT�c�RE�.��S9���n��y����
�8�������+�{���m�{�Qu�n����g�_�a��#'�K��[��rZ��V�?�fȮ�1���>����y��������sw�i�w���1g͗@��1[k����w��1���� �=2?�h=�yK�9G�A���$�'27����0��WP�ܶ��}��w/%� txut�[K���.g�v��ֻ�z����qOyU�L���f��k9��/$��w9��/��)�->�9|�NSfa���9�L��'��J�x`�u��V�����s+qkcs�Iu��vEs�L��rU
.��J�tkc�'r�h��o��~;ka�p�T��Tb�g%�������U=��SB���fv����E�������;���NyvL�ɔ��B�2*��s�;�ZO\F3��{��B�W�쨬���=�wG�*;��ݵ�䠳���S�ݻoX�[Ml�}����qW�v��f�ە�_E����s��%ѯH�������qw����9▱�-CQL���;'��:m(3���R�4VLxh�{�{�y�&�G�N����H溇�-wGI%o��La��Uk�I����"L�˽���[j>�k2�P ���5��@���I�IRi���ʫ�jӸ%nL�#1W��k�VX��N� ��>��o[`]5�>D����^����G��;k;���y`-�%�R�Ow^[�}�v�������^�6:_����X��g�F:�G��<L�=��VnŊ"О��ԛ°��b��ϊ:����M]�+u������a���a��$��bd���|F�J�~pli7?�^ϸ��c���XK�t'�����"֚r#�緩�ؚy�)��9�`��N�3��(�������LZ��{���N6��v�	����^��9[�"b@ﯾ2�"�S�[���rG dd�d�)�1#W���*t�knB��2�&�c��׽��xB��]�zz��b���ʎ����aW��pD�a6Dr/�o��ψ�C9����w�ँ�uF�w�Q���;���Q.ž�7��Y�~�Z�i�M���j�"�`i��0��J���J���L�M�1U�u�v�1E�ʉ�����r�I�Oe�]�o��L����_��{�^�s�%��J�{=J��}�g�����SX?�b�sw��8ubw��vs<�$�'�Oѫ���'�_��e�W�����Oi�}�D v9 �;�m�q�+����9�r�����1�2�b��/��97'��g��Nɐ-�v�l��d̄���1��m��+����<8�Q����<�F>JLy���I��:��Ծ�pM�!�5:���RZ��0�x���ޥ���޷�h]�sFT[����������J��_�ZJBM�.�a�A��Tcwuxk݂���T��փS�NA,��)4��"tk9�r���I-��3v�e��$K�(T�9���`u��z������h{?2�C#��\ͱ��w��F�^���D�ݝF56�F66�3u����)�oP���� �v�z���M�PB<�U�^45ҙTʉk����(�9�FXk�v<eq�2z�䷃�j��>�L"��##�[���8x��9�bd���Y��x��l6q2n��[�<�3g�(�lɜ�h虛�M��^����ZAL,�ѷJ��\�h�|pC3��.:��"�5t���-j�����A�z�DG��X��E_ͼ�]�'�Z!6{ϩ5)�?(�J�g���`���T���l4���k�A�v��ȗ��@��Հ#��yOJt4��FV�L)��r��5%x$t��6���9S-$:¤�c�d|��m��f�X0��XP��S���Z�[c�������t�gBK�����#��y����u-)�>�ư��&V�����Ҙ�n�\/Q�#�F�� �fhb�P9f9�P�ؘJh{�1�X0K*�lmf9�oˣ��w�BD.�W�TF��	��W$G��n�o�!�y�~1��,g>�ʥ},a<�#樞���r���`^r�r��p\a!j�u�V�&�މ��2K�p���5��gY[*"���&��>��k����18��̑��R�9����R��{�t)������1�k�[XJ{���n�����#3$72z#cf\d,W�5�	�r=f �֌�:aZg�j͟��/�l��c�X�i=f,/��x���`��7�����Xܦ����u�s�3�l�����E� 4�T�g�-����d�c/!� cn�Y+���:Iqw04�S���<��Bv3H��hju���)�&7̄�"xj2��ZK}ü��][�B�AH.2��$֘��'Nd�K��g��f^F���ѹ����l�zgs2�Tr9�j�#\�u��P�|����1�id��Zo�T?�Ho)M�k&�pC��Bc��e�rℬq��[��0�Wk,F7���`ۙ0;g�"6��Gpg\xoąq���^��"k���0<�<)-!�':n�#ݝ�n~
!�L�NL7�y+��]�H�ѳ;[є�`���º�x��R��l㝐`󡈟�T:м\�f&�j�S�R��3D�b���5-�ɚ8��v;�tF ��F������J҃�'�F�g|#�%���ʉ�a���������K� �o�웄� �e.T�j� Ɋm�(�q�i�N7�����)��6o$�s�ύ�X�.��M�H�1�_\�":��a�nA;�l;�Y.��|�(`k}���e�Nz��h�j4�a/c��tD�^�N�>�k>˧����O�����z�1������foB�����O�e��._{�0���_wG��_,<��!�9���y�mW�Z�� �|�-md��z��[��t��ͼ<�t���t�Z33�$�t�[Kp�51�a@�aƹ�\�7���9o��9[��Ư�՚7sM,�P��r@?�}I�tzF��	\?Nh&�ۜ�R���,��0weN�j�y���J����79��ٳ,�)s��J��ֺ<U�M��,w�N�ט u���^,{7�@sW���03�6�����\K�9�%#I�W0����zT��_j-a)P�c�E�洇�o��\�w:g���|V��z ���9^��]�#X��2���9q���� �k kTnk�n��7�QJ��a��Ze��P��V��Q��W�j������%z�D^+C�a»�ί��ɇ#+~�N{y]
LƈiYI����].s�R��{�lu����S��$�E����8Oݝ>�c�	����
#B��LbS
�w�*E*ְ������!,��#���*礨ZӁǦr�Fy���x����}�&U,.��!:�2��F��Q.C��xa@��y#�u�15�R���>i��<��L.\��1	�Nε���"k�3������vC��-���e��8�Y�� ֗����~pY�K��G���]����n?����:���z��)1�{�W��V��f'b�yl#��C�}�:��M.1?��}��]@�]9�mbclk[�]��%nJ�s�F檎Ć����J����s�\��������̗�i�h˧{�Zt�P@�g��=��`�h0\,��p�F�e����Ǝ���?��q�����Q�L=�zf��bg�.�V	Y�j��r�&��{���zg�.�"���ㆬ�����r��#ڸ]l)�3�y�>5q�X �Z�#�    m)�X�p���n�a�A�A�*��Z����:�d���Uk�Gv�xct��af�/k-����~��)���������j�yPHpi)M�,�a&G��1	����c���8M�bsMѵxG����JW�	��r����&�ͼ�:�QZ�O%�5�OO~^N+Jg[��s��'@���J�;&�U$�����#��Y�.�a�����T�(�91�$]GpE��;IN�cj/�Һa�,{¨ZZ��ڳ��u�U��`*G��U�As�*�@B���YJ	��n�hB-�����,{�³XÄ���Oa0#�
�� ��
��N�9l,�1�*ֱl!k��0�&�.����o���]�����[*Y�oD�����^�4���k<�p<.�2:�0�O��������Z��GZ���.>;M4W���\BZ�CZFǫ�e	��o�Qk�HMCKI�62����{]�[��/�X�9��9652G��kY����9��t!i�:�!RB!�{4��t�i,����V�w�՟ݳ�9�*��yu�f�D��k3�3�Z���4�4��z�-S�cJXZA�/������@�s4 {D�|X^�\k-���G�@��&�CJ0	iM &�ˬ��$�s��;���^�2�@KoYl^����+uOq�dN��wL������߾�C�ᑧǌ5^��K��N�����D���4����R�bα묕̇��yrw����	��ZHx6P
k�k�{J��LyK��a�VB�n>3iͣ���ش�`zO*ðY���-�)'>��|A��EC?��|]��8����o��Z�L���D���y��g��J��U$U̮i�X���b6X��.����j�V���(T��.02�%��mG�u8^F��/��V[HW�{�|�buf6k�5.�ĺy�"s�Y���(×����r1��yK���A�*�!
�*�֚9�[u� U!�[u��e<35�3Bk��Q#�g���<@�閱bZ���{g�|�L�?�n2��2/��v�c��-.F�'���E�����ۓբ�]�5���N�m���5�Gގ����,�O[�3��9/c��P��Y���ZG4�Vy��<�c�W��y۱�cN�vq���q�'�/mc��8�'�D� ����Q��	�6*w֚7c��D�'��1�Ҽ#Ic1]1�B�����<�Y�ۓL�<5�t.Z�wL��7tRiY�������-a��9�!Z'�e��m����9R�Ka��?�g�L=����Țk3��^-�k,S��$��rzD�cnN+	sgf���k\���1�&�b�M��|
�| ��k�F!&�?>Fo�G�T��j�f�B[z�˳Z.2q���:�љT# ��V�x�N�r��N��;V|d��s<2-2~�+�i�f����{Ig�JlhO|�b�*��#J�2:A){L�z�B/��B��r���xG\-2U���_�Y�"B�ǽ�&ȵ��$���W�D���X�����QJIG&�S�&ߵ��]��)&�i�5��ɭo������5g���q��������5z������&0��s��V��zSz��ydD��\�������8(@�&y�jV��1u��/7���*bz�7�L�?n|�A��i����u����#X�/�l��5���=�/�;z��������p���Jo]�3㆏|��Zj���̅su~�f׽4�裩1�ZM0b�u4���jS+�㻹��N��L��)m1��t��^�c-�:ܼ����g������8���z�����Ad��RF%FfԢ�a�GC�/�#��yk����A�F�yc�.{<K������)cs&� ̵ֱ,��7:��%����0�y<���\��f�R����9~��2��;V��^C�́E	�N|4�{2"���Z�*��w3�2,�&cp�Kc�\d���بQ	�C�:�_G֦��XB�������U/�׸^V��v��Z�?e���v����VK.��z<�p�v��#���P).���W�o�b�hP�Xx���j�p�V�#��iij��,�Ds�	��:"��v��7�}�Fbl�r��gh�1��H��(X�/Q�@!�cJY3;K��ּ#I)��{&�q���p�:����XJ�w�2�H�f�[A"=��>J,���~a���'�5o$�5���5�e+~)S�ݧ�n3�auC沴���<��cߣg:?$6X�OΉ��"�-�H���4s�ҋ�����h�����b>��ǝݜ��Vi%�׵}��{��q���Z����G�	��EB����뫢_37��mN~��|�G:�I_�+����U�qO�bѡ}����u���\T=�� �:O zs Z���q�{M��M=��#'��N�F�0�p0��|����dc����iͬ�e�F�o�U%7�6��Nr���9�A�W��KL&�S��[�V�th�ȼ�K0��lp��dnac7Ow��������N����<��@�י�>o�e�	+]�5NH�)�yFr�C,�Lٗ�4�����Y����g*�+��z�Z�ș0lb�/�5��1wۖ�_rb�%��8�m����ݷ�3���y����x�_���X]Wk,aK���ԡ|g _�|ű��yz�pq�\k͜ )�U�V+m+�2�g6"���ή���\i�	�o�%��������dt��Q�Ă�Z�zD���^;�U��]p6��ڈǿ;E�n+�*��!�9V����~�Ur[1W��[����l���.5~���Tz��9� r��|�s�r�a���L�'r`mlX[�v.� >爏�)�ޣ���d��K�S��b��D�yJ�L$�����a�zT��{?�< 2�<�[�y���#����U�.먇	�ε]a�V���6�_�;ֽ5���}|�uϲ7���~(W��0��oږ��r�=�5�R�7�Q�)��B���}���i��o���������}���<���_�9(د����o�(�ڧ5�	U�=���1��FN�M==W<R���t�89uu�&�9�k�>�,1��Ao�Dj��9�M�)�v���Џ+L��S�4���{4��%���r��\��34ɦt����u��Mp���Nav�!�i�N��͛�D�9�>j��i���{Wkt�����\��0�lA��9��s��M�0�^��nS+�nN����v?�9u���&7:��T�>�=c��:K�t�^��j]f5ϱN�r�tk�<����=z4�F�x������fO��3�~a2�	�*�] ��Y§�9��-��3����y/��YD:!rť��(��Q"�)-��8�դ�W+����ly�1� ��}��u��{�V�?G�Z�p��d���!���-Ҕ�8����e���Ķ��Jywt�˝�[��[nF���_��D�wc-fQTh� sT>�gN�+��'�ĀCmngl}�α^�O ����?��؂zn��6��k� nS
�����;/ĿM���mbQ�����0"�1�����ϭX��n��:ok!fr\��-�����]�͜R�r �6x:)�Ek��w/ь�mn	E��uwt�\n���tB�5OQ�Ԫb��d�dj+-��2�>w,�����|����XcJ1�n����-�MNd�j�ď���c�7x��[C�wC�fm�/!�g��Ǔlr9�֜j��Ef?��m��8�:��bcnM<���Z��'�<=�:�l͗=*m���|)�����`�జ/�q`,2��E�"@c=��Ep�9�̛ܯ����7��7�бI��r�-首�R˷�e��H�h�Z�髥�>%�ҁ}1��y(u�V�|�􎷉���OA4��1�66n��<n�(m��SZ`wi���v�~蟟Li&����d0cb�ӥ�c������B��Z�{�C�"����R��qo��h�3.�����C�"�X8�Ʀ[X���a-�x���yVw}V;}��L�\�Z�3"c%Gl�.�l�duN���0���TjrI@rfTd�T{nRC����?m��t��������k��̴1Č��`�1�!�\;��[���ΓA    �܀<�Uv���h������Z�Ko��h6Σ{tw�5鎬U��d��-� ������r�ó#|V�G���Ĩl�&��Zֆ~Y�F�-�]�s��)��z��3�j��W�a�D��#m�s�Z��Zk�<z7��i�!���Ē
}<}j�7b��Q��)���Xw�㥯��*M�;��|D}?���J��\_�E�M��x�� LFk�!0W�4���\?�r���VkՖÇ�����wC�oC�//��r~iPd���7�����e ��?:W�E� 5<��mt<���Q��1�{�L����+�ꜗ���56����}V����銜 �� �G�c�� �}���;��M�hĚ3��\��9������T?��{mOw37�������B�'��K+���"[�CW-��F�L�Ʀ��ml���8}�XP�}���	w-�P�	�PR8I;m���r5zL	��;�q�RuU5�^�ؼ_J��T�Z�Mu�I ���k�Ƥ�s�>�y o#�ӗ9'��d��&vLX�T��fiG	���1m�(�s��.Oo���:ǓZ��R�`i�n�
&s$�h����� Y\̷����G���1���9g�0�I3�(f]�ѡ�6��e܍p����R,�:��Vb��OX��)x��Yd�GK�g4�+Xczvs�򷅊�_K��"owi�
����Mm;��.T���g�_�j��v�}��ǰZ�ZG=k����T�]I'og9v� ��Vkܔd�%5���>mn�F`��{kѷ�M��Z�-'�:n)�L($�T�0�L��s���gcnN�c�A���"�a�M>�<�z�x���U�����˫�0��reɘ.�hl�1��J�|�A�l�Hb�H_����͠���W {������`�=6t��g���C���j���m��=��zo�9����]���嘛�'6u�����9���7O~�{���^��}�p��1���la���@~g�j����N�Jrc=<�rLsur�������#J}��}�c�]�qf����}ۢ��^gͷ��uD�_�N������-�w-YrYJ�t֖���[������L������g�ȿ�T�ˉ���'2A�fV:��sk�z��Y�Ŕ.f�Jk��R�*�Xhk�|\I0nr=����Ѹ�wD~ʅ�E�l�D:ya�x{K������,g>�{h��(����o���q���cK�\K��g^���uIJ=�؟X�u|�=�tw�o<���m�%�?�D�֪�wٺ�{:��R�81	���k�Ǿ���ZB}���a��_>b�˱�ny����ä�pF�W���z�Q��j���6o�3�~�B7_u�ģ�G���Ѹ�k�
W�}��/kiNc�+�vu�t�*�k�.=��|�J�r���>��4��{8.k��������y��p�J���Hg�8�7̾#A��.��}t��I�frI�W���ds�r����W��>N	t�;Ί�"q犿Rtw����5���8�|΀}�����y󎣵P�8}bO_�C���z�˝�1�Xgr_on}�"�S�z ����ct�V�H�_I)A�#L��S��`�Hj�r�^�8��߷�1Yq�����`������x��z_K�z�Ͻ���N��R�{~�o��>h��]ǧB����~��8�=R%2cW�W��rfM�#n���O����9���s8o��e�u��ze�k�e������g�/Ci�6r�}M�X��wMg�|�=��˽*ԘC�*�#٘���p�Rr+��k��Y���#�}2æq�|�K���ȈDF�/�c��I��I&��� ��9O��ˤj����m���A�A�?Rlt��Rn�����/sLdm�ml�A"#06�8�8H+�T��Td��RYp������B ��4����^i�.Y�����r9�=\H��/bI���e�>53ď�J]3;��}[X޲u'3@��!��3�Ѽ��ZfQ){w�C�	k8�!�ԫ�;�<5��L��O��{���)�����3�$'��j-�2|���8�,2�Wq����%����Ӷ%�Ql�#�|cR��9�/�E2w9�����_��1밎��0J���Q���"D�%����:���V�h�
?�
��2�T�H�z�QL�"�@x+�h�I!�S�|U9C�2#1��)2Y{��qb�z��1�Vb䢎�û�h�{��u���]�������
��~D[�oX�Bř� ��Fʢ�����zז�!��7�!�R�	����ĝ�]��6x�ݹ �O\���H�q�KJ_Qz�q�|{��#X{`k�s,�:�<��.����7<��Z����=�!���#�{�9c.�������Xs�K��z����;[�8��Ϧ|a����`�Pܿs�A�c�A��q9M�n�$��]I^r�K���q^C����X4��f��`61�<�؜cS�q����%F�_�R�0n7����Cw-��X�K���2H�b֜����̠I.m���U��s�B�ʷ�Z7�Z�C���sEz��sZN�V#ǚ��po��u�t{F���!ĖN��
U.�sImF�;bh)��f�hOdL'il�L�u`��l�����Ϲ���\��1��:�T�XC|��aVD����b�Eh�P����Ub�������QdI'g�	G֚�`�kTc�˟�מ�|�?%�e�}G��}\�3� y�+��
�9�9�ΜM�wj��֌I4��vx�G��8�*k�Z��Io)�ҙ�$c��~T:���t�cp��R�oj����N���7_ꍥ��y�(�7��-���c�ߋ�����3 ��0�%֗J�g7�����e6jx��c�n�Ԇz'������@dLf��`"n��=��Ý��Z#���؏1� �@�+ֱ�$2�{dOo%��y�/;Ε,²����&(}�{����n��F��a, ߏ9k	kn�K�s��_�Z���ۻ�Ñ��p�7��َf�<�ȝ�2?��I��߶^�=�����zg�|�=9��֌�7f���ʼ�����=��HAh	Q�q�dc���u�A���������ᣑ/��Y�֚�I��
**T�c�^�1�`�m��8�"�b�Z&�А��g5����)�;��6qv�j������� �9�/�|Oy���He옍��e���xp�-��`XS�K�YK���q.G�+zf_�1h����%r H�߫�����������1_�ޙkc�<�����1e�?-��Ǽ�ǳ��Q���j7�D���jA��A��JL��[��ח۹�Y�봩�Q�
x�Qd��b��sܰ�㞢�1� �aR�,b)���������_t�㷈�f䪖�%�4�9�f���imXQc�?P���1�9���:����*��}'��3<c"Q�j�:��;��#(C쑾=��]�,&��՟������#�v�����;�Ǚ�xD���R���z�X���)�:�y�����ZcJ@�Ɣ�,*��_�+z\L� rc��6st�Zj8�%��{1�W���!b/�H�ZA��TďI|�#���=�	'#��c�T��%T�E�:��#i��Z�ż���X��F޾�;w\��\��B�cԽL����ۈ[��W�������Z+���:��x#�j�ZK�9G�����Ӭ1à��+�v��Xk�Zmh<$+*��Uϔ�P��u|� V[�LP�$�bTF�&-v�F�ۻ����i��g������ �����[k}���Ȉu�m�t�3�*i�0���t�+�ȴ�>|h+��<�$�B��~���N��x�}4 oW�ာ�����/�cAf���2 �=�>��>�A8f{��:Z}�U��|p^#ӱ{��s��M���w:��no��S��9ӎ,uƮ���͍��ֈAM��i���<���ZI�{��ޚ�W��	׿�a%D���Ld�oy�GGF �AWM��jk+�)%�Ɍ���rW�,�a�ٶ-9�()h��2���G�~�y5�r)�cǳ/���8���0�cB��t�D�]R�g�n��fD+_�R�c��<#"u��iRw��>��ܶz�|F���͈���)7E�d�l���l�pd.S    � ՞DEZY(V)d%�c����IXO��S.�	�-;@�O T+�@�Ve���ݻ�K�:���rR"/d�e���r_�������V*�/��\�Yۺr�m9͂)���uN��O���Z|~��3���[jdċx�M>m�앓�e���f}%[por�v.x-E�O<)�f��&�1���R���=�2��^�k��h���F��j��ʨ�vlNX�������ѯBi	����s���u�8Ks:�y�a�c��w�E����%di\�W�f��sY ���(�+I�0�tX�Z,�����62K�!�)���ۊ븒ω���0���1,vOC˸����Z0隍��D��͝�4���q�Lw]�$�-�T�7��9�f���۔(��c`�����"�Ӝ��M1��g�)qաP�*b��]���l`dڄ�0TlQ1S�qՖp�|S�wq�Hǽ/yPT�m�&�	9��F��\BTq�Um�FjTį꙾����%iHVɑg����y�����kw%"_yr�,b�m�PHg��P\%\��g�j�K�tfU����2-�Ċ0Jj�q���+��%!O�4
��)?-�]^_,wٶ�;��a��L�����>mK,���"�V͈�!^Uτ���Y�%�*�$p%�	��g���/����ْ�R�J��kQ^@TZ��ԂI�{��Y]|�C�m�M�`ӯ�5}=l����I$��^��������=�:�s��M.�
~��ZYP����2!ʡKd�E�~���7�_�+��U��N��ǄM&���?�щM��E�}_ؿ�FG�b�#�@�/���/�
�3��F�=��>�$m\�u�(�� �ॽ�F��������(&�ts���K¤h^¤ ��:��E lmq\5��d�.��4�7:�c:N͈Рq��Z	���&I����*eը�H��{���Z��d�w�������z�~ѿR"�.���a�ef뵮�YщF��f �5�L��AH��ڎ$�+���\D�NnD�2>�W�K��y�u��6ѱ���sǗ�A\�F��jd�M˿�=7��K��@��5b���;!�L�����kJ�o��-X&W$,���Ƅ�d�����ة�=��_
&�,gL���L�R�����Z�t�Y¢�R0�
0(@�"����󂒆���
�Z��i�����J���y�*n��J�N]���E F:*AL�
a��� ՄΚo
l&�Zgw�z�SzR�y�Sޡ<�؊�v���m+�8PT
l��3�z8<��R*�G��4C���G�[�<�ߥW�ZR���b�`�VDryW:	����HTM��< %��W���Ȭ���jl�"�b�'��^�	�]�صV9mx��1�Z�.F`	ZҢ���ZJ����QO�<�+}��
�6�k��bf_F�G`�����FL��kLU'[o��ilѱկmz�Zf�j��:k����j���iCS!��bŨ)jr��Ȟ����+U���mWs��}O��t>B����1q�M
���(�&�uM���1����܄�83Wה錢fL�x��k���e#oi�Kʨq�F�$Ss�o*E��e1(Z<��S�Gz���2}N)���������"ɟQS�D=�W��˕�b�XJ��U�e�U�>��Jww�4��2ڥ{�ZJ�J��bK��ݗ62�#�k�8I� �#��Gl�{��7�����oW�ͺ>j�շ	|�F}S�R�E�Y��,��J��@@&�7g�G�-��*q��[�s��S�=�PҸ5��@N����!F+WM!��Ee-��a�	]�j)�q��/uM7DJ��Zט���:�b2KqU��),�k�b��9�i�9RҢ���9�A�,)�!*%�D��|K#�C�o!�&�����-}|�|/�"�omՙ|2�X9�(�@�z�~hVT�Q[ڛ� �q-�d��J T��'�*�i�LWl�1&�Ɣ�,	�i�PN������\~�<B�3Y|���"D(-�Y-�S:�!-QzE��>��4�E�툫2F|z�I�V"e��h�U��i�6����L�7�����d��쫏dW~iGT�F�[o���ψ�G#?2�GlT<Df�0��)~�y�6�t��1W�񖎪.�k�[�Sdm��^`T<��=Bzᡎ��5�޳N�[K���:06�6�O�J&�	ıq�]��3���-~r,*�Ì��6ל�&�$� Jw㤵�]רxՓVe"$�2���"�U�s��仴(�&qPx#ҩ�!��qcn��~ڌ)���)7,'AYgM�����x,F�EW<SX-���J~G��<�,+.���hF����VӔ(b��$%�Y���&�&}30�������K�'jK9Rɣ.K�����|�Y	��/��T��
O�tdnm�!���氹␵Nw�:Hoa�Vd���DM E˔s%�4)�d[�ůA\��R#`-���+*S1ִe<ee��Z�� �*�Б,��tέ��reV��ݢ,*�Q/a�_g��&.<�,%��x�l�}�SI�D|0K[��yP�ǖ�V�y�iQ��BW�*��8RX}��z���I���JKyّ-l~+�F�s{8=�_֚2`���5+*k�$�*�F�{I3���ȩ�1���INO���i�ӂj�9?m?���:&�,�'�"�C�0�����'R
T:���Dň�����o_[�U���«Lw��;�v[�Y[�6�RT$�c�멨����_���~n!�����t�:7>M�P�M
C���eT̾ڸ�N�Q1j���B<��.6c_73/:Qa\�{�<�n=��2B/2Z0&����Q�o�,���#H4*_���D�� �[wO�,��E�ur��t��s5�jK������Mo����z8%i#t�L��_3j�&�9e5&�)yRLf|a_m)��Q��l5�$��
D�$�j��560:si�*�2ʡj\�{r��XϘi�:'Go<���\�x7Y�r���̋�D Fs"�'/�~���0�X����3dӤ�CB͗�Gn�A}���Y5��q�L�G)RQ�˾蠙l�\���ĵ:rU�A�8+j���m�^g�E�LemB�oT0@g/e^f�RN`,U� šj���:��I��h
�h[%t����
�(ˡ�H���I�T���Ŗk"	��Qc�|�4e�5�Ң;[x"F�Ȗ��Z�t�GN��I�J˚9LQi�ȑG_���K�di�BTy̫f�1�"y����Y�G�?�4�Ƅ�� �+�|�J)D�g�o�d�t^FZbT&��]j�ӉL�iJ�~����:[�)Gp�����C�t�F���Z�_7��T��ݦ�7�i�s:�!���N^#X��#<�gS���uM�Jԑ:�M ���e�5�k����dL�++֖^��L�����8B�kh�����g'L\�T%j� S�\+������
�(�1arjs�9���m\���G��l�+Ik��/��2����Idʿ[U[ʌ�v+�LI��e�y�\��b9�O:�:_u�Tjj��bSq���z��D�Rb�k7�Ȯ�㦈�Ή�89���єщ���un�9�O� �~�y�ۻ���d���{�8��S3>z8P���Fۿ�8��tKS��9Q�N�bAQӾ8��R�S-���N~-���x�kF������R��/�>�ij���UfsM�4_r��Q,�Ӟ�A`�-��%e��j=��J����3�<K��$㚯T7���/��7!�����B��)�1�=���!yőǷLm�O�kZ��T|��~K�m��B�h!�#S��<�H�j�Ib6��Qo�M�����O�����D�܄�����HԊ����V[W�k1�6��FO�#�y¡��(W�&�z��I+��1Jۮ�T������$K���0A��L>�_���7^K%��T���=��m3^R�54^Ӓ�����=�<@ߨ�=��c[N�Y��0&��|��m���_��5��k��k�>������܅~�Ow�[(��~���J�
=����V�����^��ǽ��	�k�,љ�Ι���~�ѧ�[��������p��/���k��"��񵏻�=wCk���;���+#b�    6��dֻ��=��}�����i���~��?s����8+�}�=�/���3�;�xf�ar�7_v��<��~ϩ�Z�7���#s~ޔ��Ü7���a�s~V��⚼�}Y�$�G�7ԍ7~��{I�S�m1��G�Z$_���R*#��L���7U�'&_��c�����~rI�Q��	f}�n*���~&q��1_+.�Sb�|�J0�~�é��yo���˷ux��z�����.;�^�����T�-��������hm)�1��TNYv[
���`Ny��[��?��t��>?���dǕ�v�������	Y�y��wa3ω'�>�x�!�X��6���j���y#[�q��4��i}}��~W�����:\m�&�m��Q~j9_~ �g퟽� "&���]��1w��m��Y�D�x�}������$��a�2W�1=�ʖ�q�y��z��:�o���+j~��?��C˱��ad<Ua䛫q�d��Pm�~��q�ЖĆ�0r��s�������?�cz�����
��W�s�>���[�qs�1�����"\���r:�8sE����O�d~I���ݘlF��2���![r��m+�D�Z%�+��r7�����*��_�[-\b�����{�lg��9�$�7�.���Ϊ��0�%7�&�<���8�����PSE�E����G����=��oK��wY��x�N��p���¡õ�B��Z�6��w�Ӿ���$' w}�����?%}r������y������>}�+��c��'�|a�H�>z��\S�[_q�9�O���� %?�|t��^_�f��i!��i�J>s^��O�of��?�]�aK��N��K��
�&�gJ���>w�y?K��N��1ů v�[��\W��ߜc6dĞߕ ?o�1�K'��H���碉�G?�p�#���l�-x��S����=�����f-}�uh7��
�Ca�+|A�76gb���U�i|��Xc��Y�N��8��-}���� ߵa���~��i�B��?m3�չ� ��uL}�H��{���N�sb�o�������X*Ute+�(Gu<�����x��!�aˏ��ڴW���oo��^��Y����]WK�`j���j)���g�|��'>g؆�ݚO�����򷍇sj_�w�뻳c��i�wq�F���D?��x�6}�ֿ9}i�Ρ�Ct?�����V.9�\�}9w"���I!��c�B#7#����Y�YJ<{��0���?�[;͈�CVf��*���ܥ_Vj1��r�/4����X��w*}(�����F;���"�����,����r�K���}�{-�sW��7�Xe�,����3��>�x�d��Ⱦ�=�����6~�LO1	#��R�V,����f�����J��O��؊C��x�I[8��� ����N��r���}�{��>��N�����ӟA_��������W������bB8�����#�˯�|�*���̦=����.�>�=�����}�{�IC��z7����?���R��X�e��⩸��_/����I�C��i��%{gg�/�\�O ���C�ߡ�p��W��*���μz?�˧qr��cAӳ�ky�`ү���V���(�?����o�{v�~���������O\Zk���f�0��<���!�:�x� �`G���W��; �~����}��`���&p�(Ai�\~�pNo��y�d��~����Æ��F�}�}���n3x��>�>T���՜�1��� C{���W��X(K�{������[=ţp�J|�
�8��p�j?1d�z�b4@�ć���K�s�������:�JG�n�^���&x��:�M�e�{�0�J�O�0�	�V6f��p�:�s�>q��J+x��A��0�{��r��{���@#е�V�3g6�}F3r�H��NԁI1�R�p��0�z7����klٙS	&�%�:��p��������+m�p+��n]��xw��"���M��AyG�0�;�x�Ӂy������)���U���$�h�������m2�eL3n
w�ӈ޳��E>ڕ��M>����]�������޾�xU�W=s20S���p�B�\�S�S�hc��wb�6�c,�:8n9��:��K�f������	9m�~���lY�V2D<�!�~�;٣m����9�:��b�u<��_==~�sp���R\�c������2DF�oDb1��� k�;���1�t�a���p�w��
n��Ϻk 2p�Rn}s�ȸ� �	��A���HEA�5k����hn��m6��{�:\����#����!���[�}�?�ޚ��%P����l����ۙ.���]����g8���m���,N�~w���9;����� ��y��2M�}XLv�<��Oi���9��K��"_��������~{�5j�#���ʩ���>��-���$�=��W�k�_o�=0}�:�r��R>s���;�ɯNҼ����Ç�C�7`������O7D��8<p I��b��z�>C�����?}d�����Ncp��eH�4�������&���k/�$���C�m( �w����Y#���[��X#�F7Ϡ�9 �xLum�A�h�e� 2�bw	=1��L��bl��h���#�7�����e��k��f�3[��j��d%�JH�5r��4c��{�S��,�g��ˢ4]�*g_Jo�9��uJq�'e%�h�#j?�Y�ud]�1�h����C��)���ʿcC��
���"�}���2@u�M1��w�)i�������p22-_i���EI�~,H���s�I1u}���;���:�I2z�<CF����%�0�#��� �uyeG���M�9ƴ��$�;��ϢB�����?�R���G1�r%��#� ����t���C����K�� ���� ub��Pg\�#��:�P�'@냇:)4W�QƱ�Xu%a��rI�),�ӭ����q���I��� �QN���G�q��kK��쑠��:�%�3L��md�ai��J���Y��+��_+�]��	�w<������ߵ���������q3���:��������>/B����O����Xk�����������!�8��=�{a4�)�F8��� ��'|,\�����B&��wf櫸��E�1�8�aj�
�j��f�Ŕ��Z/e�ofD\y6�թɏn�	߁������1�b�K}��h�/uf���g����P���t9��=�:b�nn�73��rxpD�%3��f��6�rW|���g�{�I��_�-�}*ں��,,&-]�)ן���g�ǳZ{)��,0'm��otL94N���Q����x�@�s��e�߰B΁Ӷ�`LIH@i��cB�&BL*H�O���!,6��LH��9��=�}�oo��E��;�%�l��D(��	@Ĳ�t���|���b��m^	�f4��m��R�*��S����{���X1dom
�Տ��~����`�rKd�?ӳM�5��1�20��H�������>�C����%���>@c3�/-��K]y��bR�`�K=pp{��.��
���)�ސ�{0�c?����Ob�e�x�� ��K]�x�~���_��d�\�:�X���� ����ba�$����J��ݑ?��d0��As�_��|���G1��N�+얻IL�����Z�BLֹt[-m�|ةM�z�y�zs�?X�d���$Vj.Q\ O��)���6p)co˛��򦇺�0�.�_�C�KB�n�h��㻭=���߭C�d�r�^�p�I�7�P��Uw��r_q����)���u�g���7�k�w]ck�H}kH��w���c|F��'���h�w~������2[��C&�=>�?٘�ӿ���[��̫��/��;~Z���'�&��}���h�u=��l�|.�y}�?P���&��(}�^ {=�vw(v��g���,�i�I3�6�5b���}O��|����{^ȡX����Xmg�_&����E��V��R���f    ��{��ohn��A}�F3���!z��m��Km]�CKk���|C��$���F��|��[�����s�)Թ��Q�]n��B<F��k���8>nf@�B�~��>�3VR]޶���K��M��R����ҁu��%uP�b|	õ��Ny˨�y�am@��A���� F���։:��o�<m99�r���5��0��[F�t �e�?�k*⌐���I��q�e�2�ڨ�2<��� �L�*�3���ׅ�g��/9�-}�p��CCxL��,�5G�g��E�����U<s�x<Ñu��ϥ���ʈQ~@�k|MI\el2ƃ>��yڎ�6� }o�-��o�=;�~|©�O�5:	[��Gn_�4&CB�U�~���������`2X˵���P�o_�[�?��A�!��1}�&�o=�!�:w����:�4�m�L@s�w��޾X6���j�K0�b��y;Y"5j�����i�CO;�ט�|��ʒ9uj��[֚O�:	JBu�vĶo*��x�@����D\����6�t�nl�!�F�j��9�ׂ\�{hb�#o-�,�p��O����1H�����ʫ}���d��yS�L�1?��߅K�!o\�a��ˍ/�}��=x��	�:�d:����ɕ���>H�	Z�>Tom|��;�/ղ点��#�{<�p��n�9���GLD��V%*�][3��-�����X�@�wk䆷�f?�������H=ud�����`� f*�aCۑXv�养�O_��l����:�&����7փ	)��{�5���GpfL��t2��YY��6B>��Bp)�?�l,�A7)�>v�H|Э���k[�u���)NmKQ���U���O��\j�#yo����~����~ �@���I�s�6@�׍����� �5�W�s�����#����D��z�o���͑��Eg���1��O�.?���U���V��g��t��FR�]
`�'%�>��;����"�ӷ��?cω)��Y}�2�`zK���-��� �����=\!|�1>�n�v,��_�4g����ˣ�o��[O����gos�r��5A>^#Ǐ�5����JD黰p�HJ�� ��J��$�x���vÏ���4I>�`��Sc ��e�_�-,� b��7O�#d&�9K�O&h��F7���q�k/W�yCm%|�����xSz�I������dC\g��	�sb�>'&�t�>������w�k��`{�\�l2������дNnϨl��.0�/R�1�AN��b��bm�3کS�V*���|�K�?���b�$�d���|�]���`�xw�~]@����߯Ϗ�#���Ҷ|y�#�}��������Pr�oe�j����M�ߡ���*�V�k����Ɓ���G�p�w1����o;n|滐�}��������������$[VU��vcn����r�ߎ��"X��U�LEE�.�LK3c���k�}����Ž�kg~@�[o{�n�>]o7�Ik��l�QO>I����PV�^���_� rnA(����+����boqvgF1���-u�PP��!�;,�t�"Z=~�.����$����E,}�2�w��y��f�]72�|h��F�h��oZ�Z��Ÿ*����l��E�H�X���0�d	-�0�)���sFt6
��#��jo�7�M��Ʀ
֝x�~�TM\������[^�le��=,��3���|݃�|�h���k��� �I:�;��q��P����x˷:�=�7�Ѵ�Pb�&��<%= ��Kt��Ny��ܐ���L�d��F NP�ʭA��2�8�@w��|l*������D�&�=�B!>6����0?������i �	��	]�,NO�_x��֠������[�,�ġ�S�y�߿^�����'�˜�/'�dH��/R�7����=p0�ޗyd��Mq���RxU�
��"kDF�켹3f���Y-�R�,���BU~��x[U�G)i���ф�����Q��C�*wݛ��C�{Ȝ�i�����X��QQ�Ur�d���/��N��ӓ����@[��e쏗M�Q�cl��G��.,B�}k\�?T���$�ոp�����U��Wh�I��_�v%�߉<�N��qN�&�s�������# ��S��9wӢ'ʥ"����7������n?�G�����R���<��r�����C���HΕC]0lw�����*'��NѬ����%;s�ئ̬�V_o��{x��r'�Z�� �7��aI
�k�3�p!0b���"��^ 2���㐟�7���������l�ߙAF$�@�����`Y���Qa@��8�F(�1���M��h�]?�S3�@w�� ���X3y�{h������%�س}MZ�v˴)L�U�	�_aS����.�e��A�zt�{'����@�=���s�Q�c�*���P������0�qp݁����@��ݵr��Ǹw�(�M6���8���b:@��6����u?�M��+єs�x߈I �n,�އ��mϴo�� Cf�1��JI��g���L L�w� job�jY������̏x�v)�/�z�1���g��<C|-�������K����#�6� �|l��BF�	z�ٔ��$�_�Y�L�`��H^n/���Pz����kq'����@8����s�56��CY�I&@ƺM�(�j�!���켁
��Np�:~�
[k=U��rO������hpżw���5@>���p�5E,��Em��5�.�G9/�p��Q)E~�p��>���Q`�&8Lo��c,��MB��M��&t�Fp}M�Ǯ@]�C�����#7#d�C;���lR����/����^��b�H���&��C����^��(���)����|/�^���d�_�����H�{�}�f~���ޮ+΍GqJR��U��~^=��Z���W~`���o������嵽���ӌ��R����9���,����P摼�q�-�DA,�3�q�6�M����>��^F!Ή��� �BspG������������Ce�*6�G���zMR:}�.t���	�y9�BF��}�X�wu#���.��|cs7ÅJ��Vև��{}X$��!��:A����	;�����Q	��'Q]���~/{�e�8V�p�~-���"c��L�-}|�����T>wk�<���Δ)�c�$���m�H�:����n�2>�4
~�9���h�6-�.�\Û�=�Ⱥ}˯x��~!H�c�2��K�5�m,��w!�D���xVyB��GN���y,��m<���sB��r��=����/"v�1��}b*3���T;���U�Y�da9�}��3����Nɞ���W70n~�㥜_6	�p���2�b$��׬,\H�?�����aď�;|����
n�<���-YF6�!��O�%͎ ����"�W�R'�	�GqGGoxE v2'K�M���1�Ƞ�
�F�p.b9����!�� 
�ܤ�����f��n-�9�A�"����c0	�O�w����sH��F���Qd��,N�Zv]N�uy���Fk'_<��S��</�<Q)�?��qc�Z��۱P)�[����vy~OekP���AkB~��{oj2e�� (�S�ޕ�3�'"�c_�����eO�~��q�Q��𪾳�2D�Б�������ؑ˒���HE�?HNE�b_�Y@�1��0AY�I�  >��zFnʴ�#����w�`k�������ܓ-��
��S������=8���������!hH��q�SI$�!t}WM(�E�`'1��WS��D�@�4�K��D9@��p� � v�c-K�N���8p���^�O�����^��&{N6�_p�p>f��'��+�+_p�Lxo�ϝs!s�W.���	��nA!d�Ɓ�"s
���F��S��Ze��X���]���P���M���#���    �ɣ���юf�ġC/[,7��X���=6{��8|Q��fE�dla�W�UN�;�y�@�⳿-�t��c7�|��n����~~�/)��6��
j���8Pp��Y�A;2 b��d�� G�� >^��Pd��T6	GC�����4��{�7���&g�� �]	T_P�jo��UE}�Q"��~Kh��)3x^7��$���m��\~ #�HJ N�	q�ײ�(��]�Ꮘaj�֦�b�����OX��*�:�YG~λ�>����ө�{�uk��oH����6#0�c��1�/�`@�Xz+�1��~rࠨ�+����r�2�}�k���T�e�7ʑ�A�X������q����X���}~`���~肔��:�����k�sQ> v�7 �\7�[@����%���j_����	�N�?6kkm���-�'�&�f���D�%\4�!z�d�`���E��&��Wb87���Sh A�H��.3\v�V8�`�%�n%*��ؘM�����M�am"�w�`L���n%2�D��6
��"����ȴ�u`������/�N!{�ʅbL��uJ������� 3vY��A��" ��+3���7�B/�I��)���?+�3��?k�>����k��Ȫ��^���鍑��	��Tn�eB�9r�[�g�k�eZ+��%B?�G��{�/��C7���A��+~ϦG
 ��!���>��z@e��,��E�n�f&�C �����/��b����G���~���-xxO�I�Rҏ�]f�Bf|ƏM]I$��e�i�`H�jJ�O,w�r�8Gn�1��q���8�i3♔e����r^��E��_��m�#?�w=oć%��Ѝ�T��-Z�n��=�A��q21k��~���:b/��0�K�����V3�5Txy�����ؑ>�ˏs��)c{���1XEN61���Y�Kq=��Y1���f-�����[�<ד1ʚr���ڧKZ��E�U�I˧�u=9-��Լr�<��=�n(���J:.����$���W�Z05�?����ؿ�t���zq��Mf���s/���s�{�u���؞?�i|h򖳅]~��^nr�����:~e.�Z��ˁ*�U���)�t��I��ն_�@c傇�I?`S��N8^?���ǆ>�h�7�O$����f�Jo8t,8tL<�1�G�T~�A�ꓬ�����\1�Ϸ�I^�ǉ�>��;��y&��}!x�\wQo�ǂ�.�E}�#`*�%x%�=t���ׇ��������fI���˅xlfN�M�V"D c���:֏����-�y�z=��s4�@z�P^��e_1ߎ�
b��`�e��FQ�c��n<�6��3����]�W���o"�=�=z���,'�=`�&? 1`��O�:�5{b����$F(~ ��� ���O�9�:�X��*\�,'�Vg�V�|�ξ���k������~��54(x+�Zt�W��3c�sB��bpNYv.k�A5k_��Ƃ�"��0�LF�/BƩ�Kr�J�bw>ݍ ?����踾��;{ 	�HW�6
G��)`���(��YR����ù�>aS�2�\L{)D��������A/���W�g���_�6�%3@���U�:[�#L�_i"��	��V�ɛo]��Lsf��8zj�z�_|��av�@+Z�늧�*���VeiW# wB1��ꍓ��zPȻ�~O'��jěV�bp�2*h1ń4�k������
b�/�@������H7܋��Rه�8|��#���{����"�E�+�lR�טol��S�����os���|O��rq���?�.*�},��ع �c.��_�@�X�\�J/V�����L��J$#�e8oP�M%[�ȷiؼl�wQU{?�q7Dy�x@.�J�.�1��5��6x��ө5��H���V�?�g�����S#df���$y��{�[;P���-����8l�'�˞1�������WlU4߿����L j�*��N���(ڱ��&OW�Y1#f吱�ZvGe�@7��G�u���^eV�C!d����B���u$����u��2 �@�����K*�l���^婈��pZv-dl��"渚�TVp�PN=��1c�
�o�W�/���uF=YBX$�h79v�}qⰒ��4f�j�O�1D�P���%K�r~����iZ^l�f������e�b�Ԝs���C�8�u�*�W�QE�ƺj�祇 �`���P[�����.Pv���U�V=�(;�M��?����?����?|�rװ���B���(_M���v�ls3����{�bv5����weq,�I,�)����% BL� 2F��,h� �Ŏ�-��ؕ9cG�P10�(���8�F@����e�t£�>��tyqV�^t�Uܝ�$ʬ<����v;*��О�N9S�z�|���("��*�HV�'��ߎ�# e/vǃV����cg?)�'e����Db��j_���������-<�#���u�_�q��|�{�i�Y���~�����j^_�z�L������_��+��yf; h����w �r��q�6���2,;���"���[�3����{���f�{�������ni�l*��[�w�sk/��@��mn)���� 7�����,-3���� 
��]�W̲>�&���%.)����ȒEG���Z |Z;�C[�
���y�Y�٨�"V���JE?�.�������s�Z�O�A��CK�p��O>#����HQڏM��?C�-l��9�k,
q���k�AN���Y[x-�X2�apց_��������������%�-�r���Ș�*c�P���ʹ���p����Sir#�=Y�v��ی�Co�y���C�t1chR[����^�?�ܪ75]W�0c&��6���rd��W`7�M�8@I~[��2C��2tn��X���p����9�9ŋ]�Q����D��)��r�h=_d�=�r�A�������dSO��P�]+4#���7vA!��Gp�� �<�s>�Q�N��#\�����Ě�H��LG�$��T�J:�U�M�f�X�6Rr\��b���u8f@NG-��q����B��Y�0�� ���3<����jF>X�E�S�!�����tM���U�?�����0���xa�O�"�AT.���>�.<�.���ϟ��*��N��;r��36&\fA����Ow���E��_9 ��P�`j�>�p��6f|*�w~�� ��}���<�ȭ�����ڋC�-e��;���)������3�s��A�o���;3(_���J1 ,�۩���i�p�ni���lޒF����@M��N��+�@vd�����2��}���w��-�w=�A}7�kM����w�\d蘶�������{���G��޾�k.�H���r����X��B|T_�3u�y��5�K�����5�m^��W�w-4qL~���ky|&�L=&?���/�=�b���lI��;/�e[/񝫴bU�oc���� H�_|���Q���tV8����@��^�1��ސh�U�|�ل�o��M�� ��l~��;{1R�/��o� :�%`�[c����\���Ԯ��l�����d=M�!W��=ɇ�R��ӫԗo�9?��i�C�_N+��SY��p��o����	�K?F)��-��&���f�'G��ێ�!�~�z�Q��bp�ڡM�o�����'֧����.�n���l�����T�����1Z����1�O&�rj����[������!�p
����6���<N�w���坁Ar%��\-U1�ۓ��Gɭ�����W�c[��{=�:��{�`�mb/ï�'ct���g�d��!º���a�|�t�i��׫ ��
��;@�mo!��A��C 	�C7&���	���~^!�K�����o+D����&�:o(~q}=��av/S��g��� �j���@���@�]��B��W��m���Q�k`H��    �N��)9BP�7��wZ��`�����/Q��&���5��^d�me�\k6N��1\�	F�c���k� f�Ƃ"H���ꍺ�������;�>�׭=�Q<�1�4G��0�2�M�Z3�6U}μ��h�u��=h����f8Y�G�es
�ݸ8��.:�q�k~h��aۙ���r��C�vk� $Ы�G4[g�� \o���u_�5��֕��ӂ�'�wG����2.�ʳ�-����r���,�C���".p��B[�8`r	80i��\����k0r!K(z��&�2���}�
�I2 �;E�в�'��M������)���~�G����%�[p�.�B�蝷f9,������E�q�T|�e�����V^գ�����`�<A��78���@���I�5�?��Y��T�e՘��&~Y���èj����'0(>0������ý��O�`��x����Fz}n���ȏ�M"m�޸On6{.�3�s��ȧi�?��v۳��I+;��Y4�o�k�Ơ�y�V�^��'�m5�����j�R:�T{���N��8H`ݸ�'�I{ܩ�c�#�(�`{��{o�#�g�{WŢ�������Y�����)W������TE�e��(��K����b���1��k}<�4��.s�O8���qq�w�����Φ�S�Ѝ����`���
O��`k���6�����RK�t� �e�e�|�S�l�Ð���=�}t�p��;��C������=ܚ��鶝�'���[3��&�{�{�$<��:0|�I�R�}��*B׎�F!���ٌ�]hM1�&���6��#��ȉ�O���Jg����އg��+�;�ӂ��oG�}���uw9Ж.r�]#pv��lY�����yp7`^w~�#كw����d���b0�= �1����v�?LG��G���%3��h����"b����R�{2�N�'s}����]I� +#w6+z*��)�,]�>�Ǖ�X?�1���w_��N�� ���b����N":.خ��E�jej��� 0^P�#,�::^����E|�
��� Ҡ��D����V �����-�M�v$&?�KN�kc5� 
8�K� C���8DK��!X�{oWr� f1,B��d�v�����и00+�C7�s�����>[�H����7��T�v���A�K��d��$��pj�Zz�$M'���P~�����6!�<����?��jO��������e���x��j����p��q�_���`�h�����=2��������۞Ү�臬�>����2?�^�o��3U��ϯnᒪ�c��OL����ĸ����C5@��ߚ�nxH�Z"�%,�lTt�o���,RľZ\j}l�t|TNN�w#����β�l�L�\���z"��5���#�[g�-�\�����2{��p�gx
�WI�y�������#��( g���qaV�3~޿�"Fd~��%����.�{/�}��XT��A�g��&\�7�<p/#�#L� �T'�A��,;�]��E[�ڽ�<��q)bs��/&�� A�GX�,'�� q�2O (�k���2�g��Jެ��b�^�Xil�DP ��c��{��W�x���E�5�<���hY#�d�5��	�З�cǩM<h������W�V����"��@��Ӵx�q�g�d�����^"�d����Q�X$�Ap�� �@��y�Wqsޅ�!#1�����wjd�O�PR~!�Ǐb���N#X�V�
Gk'dr�a����G��=�
��ź�s\ꫫ�G�)���]?���<.���z�`&�z?���t!\�@�gj����B������BTx\q��hqY��|7n�p��G��1��'%wGz�=��̩4i�Z^Q:�����U�22����ɴ,���x#B6Fʸ�S��-O*�<��C{%�:<E�7o#p6�O	)A�ςO��<<��/4!L� kE�o�	-(s��NC�G��ћ�O�V���c�@�ّ}Bf�,[�g���X�����d��v�kk�:�j��ӞՊ�<yT������xh �|��XY�*�\��6l������*h��ѯJ@vt&l�Z�=�bI����,D�S�g��^�Rkǥ&Jy�*��^�A	�6ь_xs��(��Ffh^xqZ�p$l�f8���lx\܅5*���:��ϋ>E�~ЮrN��'�?�g��Wo�y�A7�w���^��$]�Z��AV�f�L p��Pe8�[ެ�0���@�I�<@l�RM��к�X�"f@�g]�Wi�H����eW���%1;���l'�����#�_��Ѐ���\;�uS�3��-�S-F��}��-�,�0>ba^��:�Q��}:���=�.�D�'�\v��B�2Ni�b��ܔ�W��]�jZ[�\�$6aV�e8�^.��������� 7'�{#f��~����\i�E
8C����8R��ƹU��E*������j�JWJ����$�M@o�VW;�դ���&�����+)ƚ���q��c��S���
���yft�R"(��2Έ���iM��cw�����`WAR{C����"����	
���`/?*v?x���K�0�Ѐw��;�h�[͐���)T_&ʌ�7?�]E������tK^/,�R���?��c���ͻ�
"-Ģ!opa��j���ۓ��8p7`қ޿��L�� �!�K�ϛ�<��	7ܚ�-;܊�c}w�ܯCݪ|���`��A0c�!�1 �0j̓����=L�_g~ya�1?|�|����X�4~��?z����������R)�1@2�N��5���2�G*ڵS��
�ˍ'����f���9S����4�{���}6�#�`������X���q���{%�xKڞ¿�M��G�j����#t��;�_��#�L��"�Y���d�n� :%���%�Y�$�^X#V�&�}�7ˮ&x��Kn9/�`7b ��� ���/�͌��_��6��_��\�O}�#��@�� ��� ��
�]9	��o0���@f���5��&�.��x�#�/����#� ^B�.O��~��
�Ka����w��	pX.O ����z��ZO�ځ7�]w�+��Bɺ�ޡh�V�.���%\�+󃵆��p~�c�ʑ�G�`*I�2v��ub���G`��	=�� ��t��#z�'�m���-cר� v�}�b�,���}��t�{藔�A���}�=���C��b��SZ��qK��Ow�&������őal��.�a�����`�2�t�Z�y�a�ے��{����v�.�l^Ma�^�Qv��3:po����$'��,�'���`�"�� ji���mE���ٟ���j�d�����ao�����)J�yuuQs�@)�3�ɧ��ے���^]��N����Fj�����?ޢy�q�?�o�{��8������G�:����:ՠ{qq�����g�Dh��.�!��C��}_Ɩ��Kv2����� N)��}��e�����z�,n5c�V���:*��/;PڟwIݞWy+����������?L�aa���y8���<��ȓ��$�3����k�����Z�_?Ƀ������D).�ٍ[�+Ż���Q�c�k�85N$3!�)��d��F)�|�ǯV��eOЋl���/]�<	���[��q�g&,ހ��3Z�z!]�w���W���FL�^|�i_�I�J�٨q!�,c8cx��Ξ�*@��Z����A�R=E�CTO��EuM�A,��!�T�C�z��ױ6��
�GN�W����W��\�Mv�8���-"��3���=�.������R�L�^�On�6?Js�s�>��F�	�K��zH���w^��0m@�,����~�6��q��!����G���~S/~p�c��*��n!�cD�9� Ѕ#�)_|��
�n֚G��%4#��=�k��'�㺆rU�[tfR9j��ƇQSk|����-M�%ҳ����fːx Й@    i�JR�� ��k���	O�ߔ!��ne7�_@��.9i�jk��R�3d�9F κ���ۼg�G��m�Ϻ�G(+	Ė�M��k��������ދ�|�3a2
���p
���#İ83Y�F�q��ǻJˉv'w�ȶ��i!�Hk�� kl����t��޲�c�m�;+��b]���q:;�������(|M����یޏ�������|U�O'2�LFO���.O��u�|t��V��@)N�7U�YO�T���ܻ!sC�z�k�t�k�L��w�|�u������s3�ù��X�D�E�x��u�,Ԧ"�^?/}�B�$��{�ڳ�O1?��v�G��6E�"�{`!�F��ū�Οč�f�lv��p�T �l�q�g�:��hY�M0���\�������P�W�' ���"���� v�3�q��T*�&�����^�|D���"T�=-�>)����Τ"+ā.�AX(��&فp�*W�X��z��u��˅��ʅ3���W��} �v6�+?6!c}�i\Ų�p�s2�
�A-�v����B&�D"?�� �B��]l��tX��7��!��<IQ���SՒ�).]=�#���e]m���V}O�s�}n����
�eo�,!��#+Ir�GtG����AP�C�]܃s��GR �G؇ �˵��q�{szU@Q�`��U習���O��Tj���e���!+���$p��̓&W�}os2����,��`)!���½�ȥ��=���=jDC���w	R%�����h�{��t�MC*�n�]`�Cq�e�muS[�-�5�{?��؛X4�G:��0u�'{�l3���	��y�F~M��V�����kk|\���x@Vz6s�����7]�_x���TY8L���C�0-����z��_㹡��Y[��p�8R�s���9u�����YDs�
=�<�)�]�#�ʻ,�}]�s�&:�5h7r����T���,��BL����Bڻr)W��1`�9�A������ˠ@��F��j�������X4F�!���yd�<2�؉�ʗ�W�w�=x���On��>��@5����}�v	�O��Wq��p��_�#���_�M.��ט�0j�$���^kn�!��=�W? �-���;�a���G+>2n�� �ܿ
�օ����!��'>P��7Y����xpȂd[0�t
�����M'���1�1�[߂Λ"��	�}�P{��Z�b��A�T�O��˸Ѓ��S�v�Ж:)S�ٱ��I�s_Xl���)��3��=�sì�zj�}�e�3�y�O���j5ܪ>L7���$�,����X���p����?�n&m�o�$�n=�R�u@K���x�OX���~�a���պ#��O����erĉ���<��!�`������p�%�CN%+���}xn�3��D��K=KN\��HW���U�^����ZG}�
�$C>��L�g��:�==X���~��_c���y����(�C����<���f���<��KHN���zz2�d���9�b�����z�悌��R��z�7�Q+�鑅���-�ÇK�'Ft�<1�THT9�9r�{��}7�Tz��E���K�!����L��	ܳ�s�.l��A�ɛѻu�ы���n��$X�I\��3��$�F��,�h�{��8'���/?O���,�4ڻv�t���'����1���V(��Zn��=߿�K
z5;Tz�x�f] ����u_�#����.<8桅9�cк�>�vMn$��G��3����<=Jv�_���N]r.pv�g��g13/�5��eh��:t9�5��=)��b��e:��D�J\v�}�GJe.��K5uO���.)_�R���H��P��)����O���|K5���`��������+9d&&�$�{�8iT'Ș�w��(|�
�ஜ���;�M���ʘ���*c�9/v��qK������]����^C12�jz�f̪0~�i���>`����)�"�r��<^o��s��5%֧�!+E�
��Z��2�h�ǆ�+S�>G��r���K|�B塲B��� ��wF%Y�BL].�XguQ�#�+����a��a�*���Z�m��3�WX+��\���W�5Y��h�8�NV�����EJ��9|�dӡ/`�E˺!�J��N*�m��Q�D��Nui'f�dտ��꾧��O�y�o��{���X��|��?A���g��v峝���O;�]��}�)	?�-j��۪�@~S�Y5�6�ݪ���e0�;�UiS}�$�v�8}�i�4R�\��&=q{6�Å��qAf�q~/1|�(iA�������;��Y]��U�tܤI��'�<K_�{vV��0�"��K>��P�`R����4�����(g���a�b����rr���kl�㯱сQæ9��X �ĭ�ʽ/iza�jԅzbQ=����H�!�`�幡,�s{Q��܁�&�c=�1Ǣz&0���L/ԃ}^��en湱�σcQ�b(p��̝���&Ee�T%px&K���TA<�O���iTtf���@�௡�E�@��Y<Ӽ��ec
N�~ OM��$��HP2;��+w��UP�������Fm�������dv������ҚɇQ��|T����g~ڣ�����#8�R�|�Y�>22�'�y�Q�
��o�_񫖞X.�Z���TN����(�+I0���5b��k��q�0-%=�Zի
�'R]�ۻ���I�bI�i"���>�F&q�|5�4�*�����UWk����턛��'e��$�6ڡHkN����r;7S������)�fĩ�,qS�`��)�U���!y����E�tmtsflx�E?P�m���8�Q�lsJP�������[�+kC0Ā�x4�V��p{�JB��Z�BJdp(K
jXq�m�����$ʘ'(4��"��~i��s��Z�`����/[G��ے�����-Ss�ֳ�T���uW25L%���P��B}I�L��L�8�ն�?�B<8�e�).4T9y稊�[}nc;<��ӏ>�$��h�KB�r;yl�1����.I��:��G1�o���<_.��-:���M)fS���r�>gzN�/CO��^[t����.\�A�y�`+�e%8IKbE�ʼ�=�,A��sEǙ$/�[���_#)|}��6�:!��^��+C1Y�"��U#�{1xn(&��4O�>ݖu�ɍ�]4�ܲZZ��vU�]���(q���vsS�6;4f�u�M����$��0�FX�ƌ7�t�bf ��Y	�����SC(�e�{S6列�9nZ_q��.�S,iݔf(�W�(�UQL��J�}Z�	sq�V����'*s�K�o��>�.���
I�z��EM�]\O5%g��g��s����J��c`S�DK�]G�yu�����6Vz��;<���Cve��|���xe�´��Rl�|,�E�N�Y�v@�/J�,	���Ro%�"(�&(�	��T<2��22�xE0Z��[zG�s"�~n[#2�K�%�b�
���P��&.%��E:�I���9=�ü3��;�2$���.�3��D��$��ܡ�~���"�Fr�n�� �ט�ynx9sL��5�5�5I���C���0a{�M�������^���e"*���@�9\	���T�]B+Aff���[*̛K��ϋ1	W�/�Dd}Y��`��yv~�l�d��GD6�Q
�;�x�ן��ӄ�ן���*<iMu�����_��͘�i�������A0c^��<�?�qNLv��''�O�k��MM{��ßf�*��!�
Ϧ՗
�t&s�[R�e�4?R��[G�i�k5\CpZ��k �΋nwE�v�kx�}�sH�睞����ė��Z�T�:>=x0c���2�'S+K(5��:�8/̧��"A�A����-8߃�CJ^���c0�f��f�yrxhk�
��9��Q�_3��0�h�!�6�#���f���;w� U
  ͅ���#u_�5_$6=�d�!�1�w5�y����{`��"˦��㯙==%<��,Ԅ�<��`>�<�]�r�$
���>���V!���3���8�-���=��k>Q��PӼ������t��B�<g�o8\��~�B�̴��#�_���Fm^�j6��&�ZX���~�T�X�D�E���a�"�=���1������������P��̃wf).O!����<��uC���Z�F(2�xp:`�F��ub�n�e��yn��1�I�;h���'3��`^7�P��L^�$.7�L����rb=<��@ϻl�~-�,/����Vv�����;���3A�PKO�l�����ï�~��~����!xi79$�=7����q2j�x��zњfZ%<�5x��O�F���9��j�8ڔ�V-N�%��������=��s�ю7�F�w�ñ�R����o Fs���e6��J�El'���4�U��ػ�#�}�Ȍ����R]�$�ͧ=}��&�*R�=�-�0�>�����kK4��O�)����K�����dL��{*3�������?��|�M:R$��3��̳#<t
�܊lgm!��#��yZi�a�����K�w��6_�~|E -��Nwï��5�ݠ����C�46C�ֵ>M�������׾�~���}���VSԉ[qۢV�}"&����3�]�k�W��^٢p�Pʨ'��D��B�Ã7�Z1�������Sy�B�q~p�/�Qq���Y���8��+#ܔ�|�@�A��!��M�2O+�ں���[�l�|~���/���.iW��z����+Wp��O=}�35���+K�mka�o"c\���/�\aBL�z3_qݺ�D�/��ׯ�׏R
L�?�����ٺ��s�%g)W\�)/m�E9���6r����Ӄ�/�:�Z�f<�H��1C���}	->�7��-�@�r@��E��_�uj�{^�� �2�ïyn��������@!P�������,߇s�GrY�Rxbm(/��E�I�3�+[xb�͋�b�F`�|1XlS)<��j��e��`�f<מW��xn޵��n��Ã�˶�ޭ���@�x�X0�`9�������{�岌7sK�������������ΏI�Ľl�=*`��X	,>u�� /@�T%IH����Jߕ�'-���7�Q�+P�m�m]y��$��楷oa��ĂYr1�����օ�ȁErÇ-$#c����_f��Q�F#�����u�NM�X���x𫀣�=�f��Y�y�M�zɑUr�M`�E�6.J�_�iwG�c��n;)��'�"�L��5!�)��	ՈⴀO9�0�A.��T\*����x��A�h���e��$�U�o��c:�r�o7x�T.K��(�z�=�����q(F�-��vS6�&���D�q��ܯ�eÀ�3��m�`��Yڟ#9s��Ąe~'F���'�2oKy�':�V����)��Q�9%�X�M�jB��R�>u��s0j3��W��I��b4?!�9��=_��M�|�A�Wh��n����B�ǕϬ�ɍ	�r�?�ԩ
	��CJ/3ZY�����Ň��:�
��/�?v�<v4�H������>/ַ1�	m��m}>!nE����L��])�~@	�*��4��U��#����)C�"%�\U���1e*y�^F�dx:UO+�3�k:X��r+��M�����'���o�g?,��ޅ:R2q���}�P)}=��k�ҕ�E��Q����S8���v|�_�a�� ~��n�g�jo�I �����a�s�'����00Uq�=,9�u�\S���n>��	�������e�R��S��~#�B�U�4ٶLND���/��#��t1�g����T|�|m�ݾq�q1�鬣K��2�G�/L����F�5?�fơ��M�0���X�\��f��{���tg���C'��*T$�`Nq�ˌ+]�CG�a?��\��N�@D~�(o�2���N`D�1��������br��2w.H��Li�%�#	�y�B������0-���Ij�s�Q�C���C��K�%g<<?�z�q��	�i��͌��l�1���W	\��?I�p��#S���qk!n}�}u��ݡ�����>w>�����ؓv�¯�������;,�a0d��X�N��:���C�I�V��������v�b��m4��! �ROb��,\����-\��щj�+<!#x��jO��(�����䔷�K��̅�VW��W��d�
��|n���y[���,�;#�9�*[{U�~7ͰxK�}!�Q�ns�`�y�ߣ��QXH��c[�ׄZ~lH��!�^�;xp�ϝ�&قs�3d�"�CԘ	�8~8R���e��K�%.;܊ō���!�0��>z�<�iG*�'n�����+�^J��et�B�GB�z�O�-k�骛ֱ;AE�ڧ0�\CQ�[�
o����mH?BN��|�o�)�5�5!��U%,�C�Q��Y{HЅ޵�4�+(�V$q*��9�7]$�F�y�E���w���c/���WH�1^
u<̄2j/�."s�%��8xeFҺ���
��,*�)�����I�}������������     