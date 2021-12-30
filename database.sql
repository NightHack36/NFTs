PGDMP         4    
            y            nfts    14.1    14.1 %               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    49215    nfts    DATABASE     d   CREATE DATABASE nfts WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE nfts;
                postgres    false            �            1259    49292    collections    TABLE     �   CREATE TABLE public.collections (
    id integer NOT NULL,
    name character varying(255),
    about text,
    banner character varying(255),
    owners character varying(255),
    nfts character varying(255)
);
    DROP TABLE public.collections;
       public         heap    postgres    false            �            1259    49290    collections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.collections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.collections_id_seq;
       public          postgres    false    218                       0    0    collections_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.collections_id_seq OWNED BY public.collections.id;
          public          postgres    false    217            �            1259    49264    nfts    TABLE     5  CREATE TABLE public.nfts (
    id integer NOT NULL,
    owner integer NOT NULL,
    shop integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    blockchain character varying(255) NOT NULL,
    image character varying(255),
    price character varying(255) NOT NULL,
    currency character varying(255) NOT NULL,
    crypto_price character varying(255) NOT NULL,
    crypto_type character varying(255) NOT NULL,
    collection integer,
    token character varying(255),
    created_at timestamp with time zone DEFAULT now()
);
    DROP TABLE public.nfts;
       public         heap    postgres    false            �            1259    49263    nfts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nfts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.nfts_id_seq;
       public          postgres    false    214                       0    0    nfts_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.nfts_id_seq OWNED BY public.nfts.id;
          public          postgres    false    213            �            1259    49285    nfts_purchases    TABLE     v   CREATE TABLE public.nfts_purchases (
    id integer NOT NULL,
    owner integer NOT NULL,
    nft integer NOT NULL
);
 "   DROP TABLE public.nfts_purchases;
       public         heap    postgres    false            �            1259    49284    nfts_purchases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.nfts_purchases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.nfts_purchases_id_seq;
       public          postgres    false    216                       0    0    nfts_purchases_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.nfts_purchases_id_seq OWNED BY public.nfts_purchases.id;
          public          postgres    false    215            �            1259    49248    shops_vendors    TABLE     �   CREATE TABLE public.shops_vendors (
    id integer NOT NULL,
    owner integer NOT NULL,
    name character varying(255),
    banner character varying(255),
    nfts text
);
 !   DROP TABLE public.shops_vendors;
       public         heap    postgres    false            �            1259    49247    shop_vendor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_vendor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.shop_vendor_id_seq;
       public          postgres    false    212                       0    0    shop_vendor_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.shop_vendor_id_seq OWNED BY public.shops_vendors.id;
          public          postgres    false    211            �            1259    49224    users    TABLE     k  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    type_user character varying(255) NOT NULL,
    blockchain character varying(255),
    blockchain_password character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    49223    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    210                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    209            u           2604    49295    collections id    DEFAULT     p   ALTER TABLE ONLY public.collections ALTER COLUMN id SET DEFAULT nextval('public.collections_id_seq'::regclass);
 =   ALTER TABLE public.collections ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            r           2604    49267    nfts id    DEFAULT     b   ALTER TABLE ONLY public.nfts ALTER COLUMN id SET DEFAULT nextval('public.nfts_id_seq'::regclass);
 6   ALTER TABLE public.nfts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            t           2604    49288    nfts_purchases id    DEFAULT     v   ALTER TABLE ONLY public.nfts_purchases ALTER COLUMN id SET DEFAULT nextval('public.nfts_purchases_id_seq'::regclass);
 @   ALTER TABLE public.nfts_purchases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            q           2604    49251    shops_vendors id    DEFAULT     r   ALTER TABLE ONLY public.shops_vendors ALTER COLUMN id SET DEFAULT nextval('public.shop_vendor_id_seq'::regclass);
 ?   ALTER TABLE public.shops_vendors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            p           2604    49227    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210                      0    49292    collections 
   TABLE DATA           L   COPY public.collections (id, name, about, banner, owners, nfts) FROM stdin;
    public          postgres    false    218   !)                 0    49264    nfts 
   TABLE DATA           �   COPY public.nfts (id, owner, shop, name, description, blockchain, image, price, currency, crypto_price, crypto_type, collection, token, created_at) FROM stdin;
    public          postgres    false    214   �,                 0    49285    nfts_purchases 
   TABLE DATA           8   COPY public.nfts_purchases (id, owner, nft) FROM stdin;
    public          postgres    false    216   �2       
          0    49248    shops_vendors 
   TABLE DATA           F   COPY public.shops_vendors (id, owner, name, banner, nfts) FROM stdin;
    public          postgres    false    212   3                 0    49224    users 
   TABLE DATA           m   COPY public.users (id, name, email, password, image, type_user, blockchain, blockchain_password) FROM stdin;
    public          postgres    false    210   �4                  0    0    collections_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.collections_id_seq', 17, true);
          public          postgres    false    217                       0    0    nfts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.nfts_id_seq', 65, true);
          public          postgres    false    213                       0    0    nfts_purchases_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.nfts_purchases_id_seq', 4, true);
          public          postgres    false    215                       0    0    shop_vendor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.shop_vendor_id_seq', 16, true);
          public          postgres    false    211                        0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 22, true);
          public          postgres    false    209            {           2606    49300    collections collections_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.collections DROP CONSTRAINT collections_pkey;
       public            postgres    false    218            y           2606    49271    nfts nfts_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.nfts
    ADD CONSTRAINT nfts_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.nfts DROP CONSTRAINT nfts_pkey;
       public            postgres    false    214            w           2606    49231    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210               l  x��XMo�6=+��? (~�[�@�M���eH��HT����q׽��ưlH�H��{�$r���a1���G��iƑ�ò�,N�4�%W#�{��`�XיȦ��\v�\[��f�������-���#[8��eE�����4��=;Ls6�[ׅU��<Ƽ#[K�0y��om#���x);'���}��.D�Z!��PvM��/��t����P�ǵ�?F�I��\�;:Zj��;>}���y�3N�<U��~�?��{��iфNK�8�u �Okř��旀P�T�ǀhzo�M}oL�D��(�.�$����#�#��}���~a���a�����B.SaC�8OwX��<��.-����:�����-�9^��nE�h`	B�O�m67����J���au�p�: ن���e1n�Bx'�eC~Y������ل,��0l]�L�!c���<b���&2K�|�E�3�g(g��J�7���F��_q��lm�]2�j.!ǵ���^�a��GbZ�������Ӱ5H?k	G�(���Ķ�Rz�I�F�ۨ$��<�VF��)�R�x�0����������}��Ɋ�!jǍ�c���_��k~,ez���r��A�$�`���:Tx@L	��]>��R�y\����G����������t���I�%��sY�ͧ�:�f2;gnz�=X��G�
Z�h��>
%]H�j�DX�I�:��lM�}I \�D5��{��"�G�;�-�5Ip�mu�jQkM+�?e�����o�Z"{�o7!\���D* z�\O��N��=�b�r~�60��X��[>���kM��=�^m%3�\�Dm�Q��p.����������v         I  x��ێ��������]}��zg���7�ٛb��R�L�8O�jR�G��`_ aNE�l�����{����&�4�nlpL�������o��v����}��Ќwi|�B�R�8c�o��Xj��b����)�}?�Ⱥ�cmS��g�!�lx�wa:T��06�Ԓ�Ǳ9,���/]�aJ�ej[dC�6��^�n��C�qD':���Na,WX>�"�H9%�iw��ņ$0�1�h���m�Ot��kqsxɺT����>Mw� ��m[�::��&u�z�ّot؍�e�Mm:"w��N�N�D6�~��<�{l�0�Im���.4q��r���v�8��T��;<,��O,���"�n��l��ɩ�զVȣ��Nz�w�`�sQ�w�&p���J��D*��|T6a%�u�'(�?�.U��?l�8�/9�����F�ͫ�?n�\U�H.ŝ�4&�V�-�Jrŕ���B��_���t#�ITIw�~	%R���!��"��^H��/$�3���5�Ka�}%�Zgf�B⫡yx7�@�Fc�GJ%e
N��q��҇Z�#����E8CўP\��E%*�Ni5��6��?����H���E�79E�%1x��1�{mU�^��P�8&DyF�r3�vU�B[Е�\:;Ch6�m���!;޴�R�ax]Z��q�4d���lHNB�Q+^�4~B�
�ڭPTre
��?�cj1�7���`��U�bNx��" M�69�L�`�� �I\��\T\{���;����?����E��I hm��:�Ǡ@)�`��Ie����U
�$>�P��8��¥2�Ax�F4y�1�H���&D��A"%��%"GbЛ�k
������[=C�鄢��U�������zθ��R�B�ƚh��A;�S�@�$z�@�WE. Tf�Me��˺�.٘Z��ù;�����"A����ZbH2�d�D���ח���%���JJ:y���X@�/��t�;.e��<�偎4��r�L���|l"��uK�;�j�j��F!R�)�U�OW��y��d՚΅U�o�����V�y����+�N����(� c@)	����C���iDX۾�3�̪�S�$/����W����q4i��0�e�廣k&'C�Q�����:����J�����;9���C*/�?;$��e�Q�f���|l���@  Ĕ�{�Y��L���Ms��F�͑ OF��\e���N�yG��Ѩ��ó�5�kK�]�.�{���e��z�EsS?;���'��D.r[�+��R�(������m�Q.'4�l���<�u�G뒠��-*g�H����c>Z���o	GQ���ڇe/�_ضw?��8Є~[��R]�	D����J�i���TF���~ĩ䇳`���&q�vR��+%�9Zn#|����5;l�S��,\�H}��5:z�k�� c�Ǚ񋵃]����P����=:�3�ShJ-���%�#����sPVxnL�!�2-�]<��?��U�K��V����ݜ�?���c�>;�� �@p��sN���6є����/}*���lWe>�H�ʕ~�X�{��ŋ��Kd            x������ � �      
   p  x�]��n�0E��W�lpf��,�ɪYe�CɭL�"_9���A���;܀n^%e����%��t�%�YJm *�ND�v�Eyń������K�q�OW9�|����,��|����lT�l�"�E�S>Ď�ƛ�������~������.bLz�V�Dd)��^����������?��㯥�>%�h]bv�Ĝ���M�D�6�:����k�eƵ$6�3uy�����cPZ�A�q����1=���JK[���v�ҰWN2%���fĢ���Q�,2�S��1^�^���T�y�����t `k�G��Q�C����b�&gYw_Ng?.b�h8d�!p�\L땿�o��n���[         �  x�m��n1Ek�Wl�b���խ�p$�k7E�3��f���>���*.U�Gʋ���ۉ��'��4�Mk����ki�[�&q�)���vY-�����(.4橈��6*����0t+;��[��Aj�d�� k�|H�Վơ��T�>�G�0%*�J/k��S�%��eS �g��7���l�Z��4��JW_�@��x͎:a���K �=�:GDI�u�]h߳���t��1Ե��r5���(e�H�ܽ�c_'Z�A���R^w_^��T��ӟ�@o�u�8�l�j%b��Ƅ��Y�f�o�(+��g���(k��s�����q��/���A�RV�TJ5g���~x�:�7�i{���ķ�4���j��#�!�`�D�`�(ץBt�*N#�Ŷ_��o��79��L     