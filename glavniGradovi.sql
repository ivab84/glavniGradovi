PGDMP                     
    y            glavniGradovi    13.4    13.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16738    glavniGradovi    DATABASE     n   CREATE DATABASE "glavniGradovi" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Croatian_Croatia.1250';
    DROP DATABASE "glavniGradovi";
                postgres    false            �            1259    16777    drzava    TABLE     �   CREATE TABLE public.drzava (
    "ISOoznakaDrzave" character varying(3) NOT NULL,
    "imeDrzave" character varying NOT NULL,
    "ISOoznakaJezika" character varying(2),
    "ISOoznakaValute" character varying(3)
);
    DROP TABLE public.drzava;
       public         heap    postgres    false            �            1259    16755    grad    TABLE     p   CREATE TABLE public.grad (
    "imeGrada" text NOT NULL,
    "ISOoznakaDrzave" character varying(3) NOT NULL
);
    DROP TABLE public.grad;
       public         heap    postgres    false            �            1259    16761    jezik    TABLE        CREATE TABLE public.jezik (
    "ISOoznakaJezika" character varying(2) NOT NULL,
    "imeJezika" character varying NOT NULL
);
    DROP TABLE public.jezik;
       public         heap    postgres    false            �            1259    16785    stanovnistvo    TABLE     �   CREATE TABLE public.stanovnistvo (
    "brojStanovnika" bigint NOT NULL,
    "godinaPopisa" date NOT NULL,
    "imeGrada" character varying
);
     DROP TABLE public.stanovnistvo;
       public         heap    postgres    false            �            1259    16769    valuta    TABLE     �   CREATE TABLE public.valuta (
    "ISOoznakaValute" character varying(3) NOT NULL,
    "imeValute" character varying NOT NULL
);
    DROP TABLE public.valuta;
       public         heap    postgres    false            �            1259    16792    znamenitost    TABLE     {   CREATE TABLE public.znamenitost (
    "nazivZnam" character varying NOT NULL,
    "imeGrada" character varying NOT NULL
);
    DROP TABLE public.znamenitost;
       public         heap    postgres    false            �          0    16777    drzava 
   TABLE DATA           f   COPY public.drzava ("ISOoznakaDrzave", "imeDrzave", "ISOoznakaJezika", "ISOoznakaValute") FROM stdin;
    public          postgres    false    203   �       �          0    16755    grad 
   TABLE DATA           =   COPY public.grad ("imeGrada", "ISOoznakaDrzave") FROM stdin;
    public          postgres    false    200   �       �          0    16761    jezik 
   TABLE DATA           ?   COPY public.jezik ("ISOoznakaJezika", "imeJezika") FROM stdin;
    public          postgres    false    201   =       �          0    16785    stanovnistvo 
   TABLE DATA           T   COPY public.stanovnistvo ("brojStanovnika", "godinaPopisa", "imeGrada") FROM stdin;
    public          postgres    false    204   �       �          0    16769    valuta 
   TABLE DATA           @   COPY public.valuta ("ISOoznakaValute", "imeValute") FROM stdin;
    public          postgres    false    202   ~       �          0    16792    znamenitost 
   TABLE DATA           >   COPY public.znamenitost ("nazivZnam", "imeGrada") FROM stdin;
    public          postgres    false    205   �       A           2606    16784    drzava država_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.drzava
    ADD CONSTRAINT "država_pkey" PRIMARY KEY ("ISOoznakaDrzave");
 ?   ALTER TABLE ONLY public.drzava DROP CONSTRAINT "država_pkey";
       public            postgres    false    203            ;           2606    16791    grad grad_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.grad
    ADD CONSTRAINT grad_pkey PRIMARY KEY ("imeGrada", "ISOoznakaDrzave");
 8   ALTER TABLE ONLY public.grad DROP CONSTRAINT grad_pkey;
       public            postgres    false    200    200            =           2606    16768    jezik jezik_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.jezik
    ADD CONSTRAINT jezik_pkey PRIMARY KEY ("ISOoznakaJezika");
 :   ALTER TABLE ONLY public.jezik DROP CONSTRAINT jezik_pkey;
       public            postgres    false    201            C           2606    16789    stanovnistvo stanovništvo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.stanovnistvo
    ADD CONSTRAINT "stanovništvo_pkey" PRIMARY KEY ("brojStanovnika", "godinaPopisa");
 K   ALTER TABLE ONLY public.stanovnistvo DROP CONSTRAINT "stanovništvo_pkey";
       public            postgres    false    204    204            ?           2606    16776    valuta valuta_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.valuta
    ADD CONSTRAINT valuta_pkey PRIMARY KEY ("ISOoznakaValute");
 <   ALTER TABLE ONLY public.valuta DROP CONSTRAINT valuta_pkey;
       public            postgres    false    202            E           2606    16799    znamenitost znamenitost_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.znamenitost
    ADD CONSTRAINT znamenitost_pkey PRIMARY KEY ("nazivZnam", "imeGrada");
 F   ALTER TABLE ONLY public.znamenitost DROP CONSTRAINT znamenitost_pkey;
       public            postgres    false    205    205            �   �   x�=�A�0����0ޡQ�D�M���L�FJ�n��x���&n��/3T5@g\g.2%�.S���������ޯ	3Z�e��B�p8��.a!�P���6	�-0�`����{���Ot	g`*'eC�h�;]H[q�@���j� *N�Cm�E���!���@       �   z   x��A�0����x�VQL�B�0n�tbJ��	����Ƚ�ퟕ�LhaE�<ѡ�pҜ�hk~���Y&�������Ja��ǧl��T�>�tn"���]+T��=�wk�w ~��$�      �   i   x���� ��Q�+�G� �%F`��#%����X�n�n.����!]8��&slR��׍ݰ���&wt�\Hgl�}*IQvVFU.���(s���y�.!�?{�-�      �   �   x�M�1�0E��.Eq�8�3H����j�RQ�"��8D����"U�����63)�B+�R�)��p@O�:�O`^O0�5��@%��d=���ي����}�kx7�*�gy붯ϭ�e�jc�?��&��&4�s����#e�t�F�؍G������^�{����[;� �j8. �o]<�      �   N   x�s�L--������(*K,)�NT�.�K��u��M<21�$��_��W�����Y���U���P��_������ �       �   <  x�U�Mn�0���)|�r(]�j+�ndH�8v4v\�;���ܫ �Y�o�7�9��A�y�i�����T����'_��t|>�0�� /�ד��M��)._�����������	1�y�m\	�1\E9
���� �@���v�#�I��Z��^ς�*���~G|��m��4�.Rר�j���i#L��HTH��VN,����n��.�+����P��Q�48}IxJٚ�}t���k��?�K�=�����hCb��
릺�v�,R���Z��;�:&c���K�������Hb�����.� ~i�����     