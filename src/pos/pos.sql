PGDMP     *                    y            sales    9.6.22    9.6.22 
    G           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            H           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            I           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            J           1262    16393    sales    DATABASE     �   CREATE DATABASE sales WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE sales;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            K           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            L           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16399    items    TABLE     �   CREATE TABLE public.items (
    newitem character varying(55) NOT NULL,
    price character varying(55) NOT NULL,
    qty character varying(55) NOT NULL,
    total character varying(55) NOT NULL
);
    DROP TABLE public.items;
       public         postgres    false    3            D          0    16399    items 
   TABLE DATA               ;   COPY public.items (newitem, price, qty, total) FROM stdin;
    public       postgres    false    185   2       D   !   x��LUp��L�N��44�4�43������ [��     