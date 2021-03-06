PGDMP         -                z           CRM    14.1    14.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    82277    CRM    DATABASE     a   CREATE DATABASE "CRM" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Italian_Italy.1252';
    DROP DATABASE "CRM";
                postgres    false            ?            1259    82279    cliente    TABLE     }  CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nome character varying NOT NULL,
    cognome character varying NOT NULL,
    ddn date NOT NULL,
    cf character varying NOT NULL,
    email character varying NOT NULL,
    invio_offerte boolean NOT NULL,
    id_offerta integer,
    indirizzo character varying NOT NULL,
    telefono character varying NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            ?            1259    82278    cliente_id_cliente_seq    SEQUENCE     ?   ALTER TABLE public.cliente ALTER COLUMN id_cliente ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cliente_id_cliente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            ?            1259    82287    offerta    TABLE     m   CREATE TABLE public.offerta (
    id_offerta integer NOT NULL,
    descrizione character varying NOT NULL
);
    DROP TABLE public.offerta;
       public         heap    postgres    false            ?            1259    82286    offerta_id_offerta_seq    SEQUENCE     ?   ALTER TABLE public.offerta ALTER COLUMN id_offerta ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.offerta_id_offerta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212            ?            1259    82295 
   preventivo    TABLE     ?   CREATE TABLE public.preventivo (
    id_preventivo integer NOT NULL,
    prezzo numeric NOT NULL,
    id_offerta integer NOT NULL,
    id_cliente integer NOT NULL
);
    DROP TABLE public.preventivo;
       public         heap    postgres    false            ?            1259    82294    preventivo_id_preventivo_seq    SEQUENCE     ?   ALTER TABLE public.preventivo ALTER COLUMN id_preventivo ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.preventivo_id_preventivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            ?          0    82279    cliente 
   TABLE DATA                 public          postgres    false    210   S       ?          0    82287    offerta 
   TABLE DATA                 public          postgres    false    212   ?       ?          0    82295 
   preventivo 
   TABLE DATA                 public          postgres    false    214   $                  0    0    cliente_id_cliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 2, true);
          public          postgres    false    209                       0    0    offerta_id_offerta_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.offerta_id_offerta_seq', 4, true);
          public          postgres    false    211                       0    0    preventivo_id_preventivo_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.preventivo_id_preventivo_seq', 2, true);
          public          postgres    false    213            g           2606    82285    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    210            i           2606    82293    offerta offerta_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.offerta
    ADD CONSTRAINT offerta_pkey PRIMARY KEY (id_offerta);
 >   ALTER TABLE ONLY public.offerta DROP CONSTRAINT offerta_pkey;
       public            postgres    false    212            k           2606    82301    preventivo preventivo_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.preventivo
    ADD CONSTRAINT preventivo_pkey PRIMARY KEY (id_preventivo);
 D   ALTER TABLE ONLY public.preventivo DROP CONSTRAINT preventivo_pkey;
       public            postgres    false    214            n           2606    82312    preventivo id_cliente    FK CONSTRAINT     ?   ALTER TABLE ONLY public.preventivo
    ADD CONSTRAINT id_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) NOT VALID;
 ?   ALTER TABLE ONLY public.preventivo DROP CONSTRAINT id_cliente;
       public          postgres    false    3175    214    210            m           2606    82302    preventivo id_offerta    FK CONSTRAINT     ?   ALTER TABLE ONLY public.preventivo
    ADD CONSTRAINT id_offerta FOREIGN KEY (id_offerta) REFERENCES public.offerta(id_offerta) NOT VALID;
 ?   ALTER TABLE ONLY public.preventivo DROP CONSTRAINT id_offerta;
       public          postgres    false    212    214    3177            l           2606    82307    cliente id_offerta    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT id_offerta FOREIGN KEY (id_offerta) REFERENCES public.offerta(id_offerta) NOT VALID;
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT id_offerta;
       public          postgres    false    212    210    3177            ?   %  x??PAN?0??{k+L???Uą(M??ց?T?T?ĩ,968	?>?/???nܸ ?Vc??h4?i΀P??k??d9+??0???#Цq?4?T?v??h?T?~??h?ZX??枪????A?	%j???C??dM?=?K?p?wO?????T??Q?c??o????0Z?A????i???En????Y?5w'pV????]8?} 1$?!'1?`'ɖД1?`y????<?8?*OoG???]?X??庲?'_???Μ??????)Kr?????? X??_k?.K??f      ?   ?   x???v
Q???W((M??L??OKK-*IT??L???uRR???2?2??R5??\??<]<???#?C\}?}B]!d???????{fz?BfNNfnfIbI????5?'-,3Z???I???v9gd&?&??",L[?? ?"h.      ?   p   x???v
Q???W((M??L?+(J-K?+?,?W??L?Gpu???* ?OKK-*I??s2?*R5??\??<]<???#?C\}?}B]!d??????????2Դ??? ď'B     