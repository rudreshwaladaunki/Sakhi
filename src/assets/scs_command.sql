PGDMP     8    7    	            x            goblin-store "   10.12 (Ubuntu 10.12-2.pgdg18.04+1)     12.2 (Ubuntu 12.2-2.pgdg18.04+1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    34915    goblin-store    DATABASE     t   CREATE DATABASE "goblin-store" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';
    DROP DATABASE "goblin-store";
                postgres    false                       1259    123389    scs_commands    TABLE     �  CREATE TABLE public.scs_commands (
    id uuid NOT NULL,
    pid uuid,
    name character varying NOT NULL,
    response character varying NOT NULL,
    immediate_response character varying NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    is_deleted boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);
     DROP TABLE public.scs_commands;
       public            postgres    false            �           0    0    COLUMN scs_commands.name    COMMENT     ]   COMMENT ON COLUMN public.scs_commands.name IS 'Indicates a unique identifier for a command';
          public          postgres    false    270            �           0    0    COLUMN scs_commands.is_deleted    COMMENT     _   COMMENT ON COLUMN public.scs_commands.is_deleted IS 'Indicates chat session has been deleted';
          public          postgres    false    270            �           0    0    COLUMN scs_commands.created_at    COMMENT     g   COMMENT ON COLUMN public.scs_commands.created_at IS 'The timestamp when chat_session has got created';
          public          postgres    false    270            �           0    0    COLUMN scs_commands.updated_at    COMMENT     q   COMMENT ON COLUMN public.scs_commands.updated_at IS 'The timestamp when chat_session has got updated last time';
          public          postgres    false    270            �          0    123389    scs_commands 
   TABLE DATA           �   COPY public.scs_commands (id, pid, name, response, immediate_response, is_active, is_deleted, created_at, updated_at) FROM stdin;
    public          postgres    false    270          .           2606    123399    scs_commands scs_commands_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.scs_commands
    ADD CONSTRAINT scs_commands_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.scs_commands DROP CONSTRAINT scs_commands_pkey;
       public            postgres    false    270            �   �  x���Qk�8ǟ�O��}��,˲��%mӻp]��&A���ԑ��4��߱���6�� ��0#���Fy��Tf3�9fJ1,	M1�\�2)�$�Y_���f��˴��6u���rSu~M�{���5�o{$��Нԕ{DM�Um�h��j�v�{�����f�}g�wpY�o����w]�6��L��dB�$�"��s�PSN��%�6�0�������"g�TR� �D�(uUL��g��b�uV,��� ���5~oZ��{�,7�5H�]]"e�vW�U�����<�dPgj���\7���U�ߟM�$�QΒs�h���X�8�,�+��3)Q��."sB��~v�^��p�|[u�q�o������|�u��t"���S`���Ȇ�_�#��k�$a�����ʡi�@�<���ob���R( H$��\<$<�Z�S�$ �2,R�9У�R���T���o}Uׇ�#	�A���q�(�����"to�O2/M=P��_t
@:IA���!�2�)�y�X��V�s�S�S\D����y�ϼ��a�w���+���4C�3�޷O�ΰ��8�.7K&����ѐ�,���L(������$I(�c�m�1~7�U1/V�շ#Au��������0@ѓ�{T��8�lP#�r-u_=�a�"k�j�@��ؔL�$����Z+�1�8g%�Ima�ðI�Ό�KS��"*�-x=�YοO��E�������m0#���`�F�9��wc��C���o��*8��+�2${Xt�ڶ�Sݔ&ƣ�O8�xH@\�m�!֘Y)���,�i\�T��_p�T�%4��)J��^ �[�	=�:�R�٪ב�����k��z��
V���CK�k�-����._����9�pD�	�?�0��w     