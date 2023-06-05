PGDMP         /                {            reserva_vuelos    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24590    reserva_vuelos    DATABASE     �   CREATE DATABASE reserva_vuelos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE reserva_vuelos;
                postgres    false            �            1259    24610    reservas    TABLE     �   CREATE TABLE public.reservas (
    id_reserva integer NOT NULL,
    id_usuario integer NOT NULL,
    id_vuelo integer NOT NULL,
    fecha_reserva timestamp without time zone NOT NULL
);
    DROP TABLE public.reservas;
       public         heap    postgres    false            �            1259    24609    reservas_id_reserva_seq    SEQUENCE     �   CREATE SEQUENCE public.reservas_id_reserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.reservas_id_reserva_seq;
       public          postgres    false    219                       0    0    reservas_id_reserva_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.reservas_id_reserva_seq OWNED BY public.reservas.id_reserva;
          public          postgres    false    218            �            1259    24601    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    telefono character varying(20) NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    24600    usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_id_usuario_seq;
       public          postgres    false    217                       0    0    usuarios_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;
          public          postgres    false    216            �            1259    24592    vuelos    TABLE     �  CREATE TABLE public.vuelos (
    id_vuelo integer NOT NULL,
    aerolinea character varying(255) NOT NULL,
    origen character varying(255) NOT NULL,
    destino character varying(255) NOT NULL,
    fecha_salida timestamp without time zone NOT NULL,
    fecha_llegada timestamp without time zone NOT NULL,
    plazas_disponibles integer NOT NULL,
    precio numeric(10,2) NOT NULL
);
    DROP TABLE public.vuelos;
       public         heap    postgres    false            �            1259    24591    vuelos_id_vuelo_seq    SEQUENCE     �   CREATE SEQUENCE public.vuelos_id_vuelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.vuelos_id_vuelo_seq;
       public          postgres    false    215                       0    0    vuelos_id_vuelo_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.vuelos_id_vuelo_seq OWNED BY public.vuelos.id_vuelo;
          public          postgres    false    214            q           2604    24613    reservas id_reserva    DEFAULT     z   ALTER TABLE ONLY public.reservas ALTER COLUMN id_reserva SET DEFAULT nextval('public.reservas_id_reserva_seq'::regclass);
 B   ALTER TABLE public.reservas ALTER COLUMN id_reserva DROP DEFAULT;
       public          postgres    false    219    218    219            p           2604    24604    usuarios id_usuario    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    217    216    217            o           2604    24595    vuelos id_vuelo    DEFAULT     r   ALTER TABLE ONLY public.vuelos ALTER COLUMN id_vuelo SET DEFAULT nextval('public.vuelos_id_vuelo_seq'::regclass);
 >   ALTER TABLE public.vuelos ALTER COLUMN id_vuelo DROP DEFAULT;
       public          postgres    false    214    215    215                      0    24610    reservas 
   TABLE DATA           S   COPY public.reservas (id_reserva, id_usuario, id_vuelo, fecha_reserva) FROM stdin;
    public          postgres    false    219   !                 0    24601    usuarios 
   TABLE DATA           G   COPY public.usuarios (id_usuario, nombre, email, telefono) FROM stdin;
    public          postgres    false    217   >       	          0    24592    vuelos 
   TABLE DATA              COPY public.vuelos (id_vuelo, aerolinea, origen, destino, fecha_salida, fecha_llegada, plazas_disponibles, precio) FROM stdin;
    public          postgres    false    215   �                  0    0    reservas_id_reserva_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.reservas_id_reserva_seq', 1, false);
          public          postgres    false    218                       0    0    usuarios_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 6, true);
          public          postgres    false    216                       0    0    vuelos_id_vuelo_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.vuelos_id_vuelo_seq', 6, true);
          public          postgres    false    214            w           2606    24615    reservas reservas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_pkey PRIMARY KEY (id_reserva);
 @   ALTER TABLE ONLY public.reservas DROP CONSTRAINT reservas_pkey;
       public            postgres    false    219            u           2606    24608    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    217            s           2606    24599    vuelos vuelos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.vuelos
    ADD CONSTRAINT vuelos_pkey PRIMARY KEY (id_vuelo);
 <   ALTER TABLE ONLY public.vuelos DROP CONSTRAINT vuelos_pkey;
       public            postgres    false    215            x           2606    24616 !   reservas reservas_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario);
 K   ALTER TABLE ONLY public.reservas DROP CONSTRAINT reservas_id_usuario_fkey;
       public          postgres    false    217    3189    219            y           2606    24621    reservas reservas_id_vuelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_id_vuelo_fkey FOREIGN KEY (id_vuelo) REFERENCES public.vuelos(id_vuelo);
 I   ALTER TABLE ONLY public.reservas DROP CONSTRAINT reservas_id_vuelo_fkey;
       public          postgres    false    3187    215    219                  x������ � �         f   x�M�1�0C�9<EN��([c�6�蚡@�)�G�E���	�,��{��s}$yoF�R Q�InV��)j�=ɻ͕
��Jr�F}'����	,�4��,B|6 7�D3�      	   �   x�m�1
�0��>E.� K�	�79E��Сd��K�Z��@ ��G�M���ǽ�\�����! ��{��Ǽ��� �Q�YY�ȡa��[$Vi�~��ȰH[�V몬S�hXQ[#[I��!���a%e��_Y�UY��g�ʺ�u��oWrb�     