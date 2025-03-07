PGDMP      :                }            postgres #   16.6 (Ubuntu 16.6-0ubuntu0.24.04.1) #   16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)     W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Z           1262    5    postgres    DATABASE     p   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';
    DROP DATABASE postgres;
                postgres    false            [           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3418            �            1259    16416    post    TABLE     �   CREATE TABLE public.post (
    messageid integer NOT NULL,
    caption text,
    channelid bigint,
    fileid character varying(255),
    filename character varying(255)
);
    DROP TABLE public.post;
       public         heap    postgres    false            �            1259    16424 
   suggestion    TABLE     x   CREATE TABLE public.suggestion (
    id integer NOT NULL,
    comment character varying(255),
    user_chatid bigint
);
    DROP TABLE public.suggestion;
       public         heap    postgres    false            �            1259    16423    suggestion_id_seq    SEQUENCE     �   ALTER TABLE public.suggestion ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.suggestion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    16429    tguser    TABLE     O  CREATE TABLE public.tguser (
    chatid bigint NOT NULL,
    fullname character varying(255),
    role character varying(255),
    state character varying(255),
    username character varying(255),
    CONSTRAINT tguser_role_check CHECK (((role)::text = ANY ((ARRAY['SUPER_ADMIN'::character varying, 'ADMIN'::character varying, 'USER'::character varying])::text[]))),
    CONSTRAINT tguser_state_check CHECK (((state)::text = ANY ((ARRAY['ACCEPT_SUGGEST'::character varying, 'CHANGE_USER_ROLE'::character varying, 'ACCEPT_ROLE'::character varying, 'START'::character varying])::text[])))
);
    DROP TABLE public.tguser;
       public         heap    postgres    false            Q          0    16416    post 
   TABLE DATA           O   COPY public.post (messageid, caption, channelid, fileid, filename) FROM stdin;
    public          postgres    false    215   j       S          0    16424 
   suggestion 
   TABLE DATA           >   COPY public.suggestion (id, comment, user_chatid) FROM stdin;
    public          postgres    false    217   v7       T          0    16429    tguser 
   TABLE DATA           I   COPY public.tguser (chatid, fullname, role, state, username) FROM stdin;
    public          postgres    false    218   d8       \           0    0    suggestion_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.suggestion_id_seq', 10, true);
          public          postgres    false    216            �           2606    16422    post post_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (messageid);
 8   ALTER TABLE ONLY public.post DROP CONSTRAINT post_pkey;
       public            postgres    false    215            �           2606    16428    suggestion suggestion_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.suggestion
    ADD CONSTRAINT suggestion_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.suggestion DROP CONSTRAINT suggestion_pkey;
       public            postgres    false    217            �           2606    16437    tguser tguser_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tguser
    ADD CONSTRAINT tguser_pkey PRIMARY KEY (chatid);
 <   ALTER TABLE ONLY public.tguser DROP CONSTRAINT tguser_pkey;
       public            postgres    false    218            �           2606    16438 &   suggestion fkfx2vxgh8dgl2ildh26h9ubfgy    FK CONSTRAINT     �   ALTER TABLE ONLY public.suggestion
    ADD CONSTRAINT fkfx2vxgh8dgl2ildh26h9ubfgy FOREIGN KEY (user_chatid) REFERENCES public.tguser(chatid);
 P   ALTER TABLE ONLY public.suggestion DROP CONSTRAINT fkfx2vxgh8dgl2ildh26h9ubfgy;
       public          postgres    false    218    3264    217            Q      x��}I��Ȓ�9�W���5�/���ڗ����"E��I\$Q=f��=3�jL�{x�nЇA����������"2"3r�׵�PQA�����ō�\���*��|k��?����D�-��D���Q����_�}W�.��dj~%|k����
��R~���h�7�_B�*!4�8���7�s[fS�W!'�D����G�/���{���-rK���T>�Ng���E�+ވ�P�RY��j���Vc��L{����Fι�g�4Iz�H���?��l�<�W�u0$��,�Gr��G	�4F�7�+y�E.s��.S�p ���* y�G���i�@��eo���u��T��Nn��kjPI8� ����!��	p��]���$���n��SDv�D֐{v�T���F�,��-��*����uƷư:2�VB+[[�	��.�@�P�}����W��EG�%š��)J�3,
���1Z_��I�2�U7��ޜJ�$�ֶ+��JsU/��t?���YCd���k��|T
e�K_�Q+�F�o������o�I�w|K���ao`�"C�sO�Nͽ-���i�p�34��U�)�I%>�Ռ�d:�eK��%R{�X-�7��5梨�#P�j��ƹ��iyCgҙ�d���Zx�[ᕌ�p���A�l@e,*� �5U�v`�j��Qrtj	�垘?�j�� ��1kY��wR��,��:����Eq%�8�k�x���Ɗ�\ND<O�c�^�D���v=
�mD'��H����^�[��+\ ]�<�<���gP�{&��ֽɯڅ���_�R�8�J^�%P��U]4�ͼ�����������,	��Ht���J ����%H����5g|~<_�W-۞�PT�LIƯ��Fui8*�����x�S�L7nt��]������.�n�5�A����j�+A���������2�x�VW�{�yӗ���;���D�'��S��r{���]��颮)j�R�G[Q��> �"nÁ������>5A�_���B��j��v�����D�,��7z*��j�o��t*P��͠��< %���-��"�0u�=�a)��澺�n�w�AIo��-����$��Zv6M�U�l2��,1E)$��5n4��0Ohù��-�E�ı7�a�l�X���?�'���g@���Fv��+KqgX��e���U��Q�G����:��Y���k�/ᕃ�s�)$��f�8��X�J�n�I=z�&�kzgFwkMx��Fٷ$�xT�2G�P��J-"X���� ��,!�"(7$_���w�6^�Sܿ�*{��H�6�G���k���h��"��% �ô��DRT�IШkK�`o}Td񮄀�aqT�Li��lab�]1<��t�	�2sF���35�� �DD��6c3@��,pՏ��q�"���prPpE����R��w ��с�CD�փQ숱�� ��pɟk8	/���s �*�e�f�ۈ�1*\5{	� � *B$&�����^� �T1:^�C6�Ѐ20'�t������wש�>�@�	�5`N�w���E�_	��ݠ���[�ΰ�p���t��!{`r]� q��@�c\�|���>"�V������~�ڕ� ��E`���I6�8U��o�`A�S$�,e[�
�$ȩ���	����ID[��o�FH>Ȏ�p�[LctLD�O�By��&S�5<W�1�-�d���-���U8�P�I 0Y�rѮm~�ȩ�ڂ�:Yɐ��t�&F�	o��6,"0���[s�q���m��H	��>0���T�`�!� w�\��0l7$�


��>��{�d��Vh�G�834�x4��բ*;(WY%,}@[�1ĮB��p�1 CDd�'��~� �A����	�1Np�u�<��m��?01 ��7��#X�#��_c:wj��p���87��R�4�L��~�TD
��H%�`��;��``�.���)����+(:�~/��s-`2�a�������?$1��`�
La�/��a�X��] U���s酐����ǡAH���k@n�8��B��WL_�l�0{��˅j��0�X�0~' �8H̊�O��n�@��0�GA��8S\E�z���=�ȥ�KE�ՙ��&� ��8��V��w�#����Fu=���~�-��d�͵&��;^ Ut;U	� �:z#�Ƞ%�X/�S��2M��ցd���tX�������n�Lo������݄kG lsq\aT��9��5�..|�f��Ȑ���6�",��85���3i�'^ơ�5!'������ezl2���58�x�B��ˀ �0~EEf����n6>��G&L�`�lA׉��"��1s����Q� �<��#S�Bl�p�㩰t�UfZ�v�*�޴5t&8=>�=��`�G�>��~����EG�'@	1�rK.�����J�7�`�z�(
.�P3�J��h-��mk��1;���;@���r�$s�wN�;��g�YI�k���>���U�C]�6�����o����c�ہ0��<�h��g�	ļ�l�Su�I$͒��P������YH���^d�d"��������R���DCQ.:����o���B������&z�[ec[�]+�]P�=� �M���Gs����@�(�"Ǿ�?��W,@e��!��*.��ǣ�}~�l۲�1ğ�6��(��8dg�λ� {y�3�*��:VV-�0�w5[c�  �����R�(/��S� W)�u_`Nc��@�`
�x�a��V�	�wL9�נ%K@�Ò�\I�WjK��Ad/�ߓQ�pTH{~T&5�������N�d٘#�Kd�-Q����+搣\���@�|9�`X���(���� �����Ӊ�G����l�0hA�b�(�ӵw5��t�[�M���Kg��xp��n�w�W�#�B�B �q! ��5$�]%�x�V|T�f(!��,l�B0�8��NLt컀�(����I4���8�%�ό�*	 �c� H��G#�3ֱ������?l!(+e||�Ba ����٘�/�ZAqm���� V�J��[ ����`���SX�򔢿�v��E!��,D�x����G 0+
i����5 ��*�B���5bΰ2b���gﯲO�<��� �x� �@��~�0���XpD>�����ȳ��LG49?0�D}D�H\qk���!z����$������< ���6d&���!�#�W��D�k0W�炕��=�,S�	<����D�|�,�y�(E��	؂����.��a�5|�q����k�t�� �\�j ��~�+�V*��hc1P�|���CP���*ĭ�@�D��*O&��>H��H��||�Yr*D��Zk�v�-�8 0,}�E�:���q2we需X�c�(h�}2k6��8�u �e�u�q}���a����x(קǄ�A�שgK��|4�wI`�^��G`��%�S�&�d�;z��x�欹��+�\�1al�ͧ��wm-� o��D+�����=��멀���u�\�F��7�'ރ��R����U���Ot���J�,(�t,�nRX(�F�x�h�G�è�x��8*s���=)}+��T1��_C��kH,��Mq�(4�>`���,ؿ��a�M����̡O�5�D��g �]c� �h�O�yK�̋��շ/A�m0e���*�  ��㥧���w[S���{:�"0�=8���9,��Ú��z�N�;�k�I�[�XsC�R�$��X��d�܄Þ����#�����1߿�{t���%�p� �ʈ��.�G1w~G<{�PO��[S< �u��8�{�Eg�ؾ\#��� &
���uO|�_�͆@�a)�I��p�-�<�][�wg�S�a�&.�$��-���ә�����!��r߬��eP�NͲs7�g� ����RZ�L    ��&������j����^��b���l�0�?�Ά�S���d�d3�O�I$l��b���Ē� pƵ�"��T.<�6$�t����ͲS�֔]2/�~z,�w��a�~[�%�S���-�Y'�����J��bH��	c�`G>tT���Tl�Kj_����WX�S=Z�)�����wz<!�<!f$�}*����&���5����|� #6		��?t4�׃ Y���^/X��)	�>,]�G,b፹RWcUU�?6���:X~O�xPp=b�2������T|F����٢[��Ý��vXsr�G���p�X�/VO�����A��搱Lj�7l^�_cAs��i�����H�\&�OerG��鷢X�ɛrjS������WZe�7��4j�����Mg��V�	ʍ-Y=>��.�%/�j9:�pQ#ZXT�є��9.o!ձ���p���%3a���B؍F-{c�Fg���[V���M�4����S�~�Eg5�aMX�]}C؎����Ed:@�%
� ��D�e+��F%;���H��JX�G5;�#���p%�b(��U~ֶ��AV���6���P�4m�@̄kH�V��8L����I8���{0>��[��B�M߃0�h���)����8��@ل־��M�@E�l�3z��E�i�.�
a��?cC��7�=r�Z���*YD�1\�ITv�qo���ِ�Hx��b��+lO���-�Ƃ���p�ey����� '��T4� ���u�� ��ˀ�Nu��`�WyN��P�|��m����r�	�'8"Ҫ�[e�~��#bE{�3t��gD��`r)�k�[�o��,ȂA[$]ܤ_E�6�#۰����'�H=j�E�؅��hٮ��P���1��E!jd�Ds�5;��x'��T��jP=�g�8Y{�[�^G�c�q0U����o�i{�wQ�?�Qk�Q������N�J<QO��]bS�B�39D9N7kOԤ�X;�	&>�=����/��.�.VG!�ǈ��,���Kp_�������ɫ��������5`jg;�y��K�A*%g�Le�n&��T	�N,�̌��U��n�^����	����=h�ͽ�Y3p�O�mS�r�j���e�FT�9V��ٲ����w�D��B�0��2��!�3nw)W�{+���r�%Kp_���G����rc�
���:��u�C�Z�Y��#���J��cCN�=BFG'�e�wkY� m�� +��Ш[6ۣ5��#��d�4��qLtvz�Q$�`]w�J?�P#v�}�.�w5D����`����6��
[�B>����(�C~�M���5#T^R��;۝����q"�1�ěP�^`�(xj8tɂ���mTv��ll�9�31��`g��1u�}��b�=��vE�?ߑ �Zne=_�-;t��7y�k�6��o��-�eG�Q�Ch���F�����s��v݌�,�F��-v��,߷�r��߾���|����2hI�qˊ ��=d���,��������v�Pw�z� �q�o8�Lc��d�N��t���~��Bu���E5;��F����9��n��T�o���,5�&X5�C�{��\X���|��?�GE0���@"+@�1�����Z��i�\�[�E?U�wv�(�&mܮ����UW���Ġ*��uSB�}��@��W�����)X��ؠ�U������i�t[���qQ\��Ōq�j}w��w�V	m���:��8���g	i ��`_�R���/4:�)�$}�=|
{�	���o�`5���\?�|	�Qh`�`Dp�?��V��x�\���b[��b+ k��	/vHa��Ǻ+d��/�O,*�y���3�r3�L�g-oF~��-��󒧍�F0#�J)7`{�OJ��9w�0=+;�� A��p�����`~
�����m*�K`sq�7���!6�_�|7�s�w���tۚ�eK�P4��n��iQt\t{�ʲ<�ݸ����	w{Ѭ
��5�~d"���_Gs�y�d��a�6�O���4#
��
�Y4�;��ϑ�4yj2�f��T��Zm֋�z~T��
_�k5��Wh��og��`�䴔�#�%<ɠ��a\py%/*�vM��������E��$�2����
��&������C�_��X���4��r��?mt��n��H��:��V�-pn�֝q�m!��61�y�&F2f�����61VSx�8���6p�1TV�`un�ᴽy!��@p~K�NNN܌�������%7 yo��ĸ�|y>�]���F{��h�D����d~y���9���lU<}�U��m:=uٱ̆����q�ټ���u�U�6ji���y3GYX��W�io�?/*���x#���<�+b}k.��J:��b�b��fF�Y���ʓ�4����W��ͅ���ysἹ�+�\xfs�٩>�������F�~i�Hܫ��
ħ7��t2����J�e-v
�H���x�>�﹫�d����v|XPW-q˗Z������϶���y�&</�'�^K���i/��[ٻ����Ͽ����wλ��]��+�k�f��,��
t���*L��6\��7��1��؋��=����}����"���I�����5�;�Z�6��!���I�FD��ᦐ�(���7H&?���<1g3I�򨪸���MW��!�l�c���_P��Y��JKF}��lb��*�[eV듦2�ÕVz�nԭOA۵Ķ_���E�d�Pd|^L\y�NFwb���ݤLG��ڎ�@L}�*���h��/u�_U(���.������ջ�%�W��T��Z%�'���Tʉ��%�P[6z�Ծ�.y�}�a��sw�����NoW�B��<]��Mu���ג3�2G�L-����=��5:�~{������Y���O��S"�����g�!˳��;�zwCu��ܯ��^��WAvIo�B�>*e[�f*�I�~�G�ɟ��n�r�a�>�ue�gw͎1$���OM'��FmO.�z�D�H;kٿQY���%?�o�=/�y����ߨ��UF�?�{�:~�LC��w��Nu9�Q}�Ea���}����ˍ��������7RC����+��ڍ�8���
�s��G�RwQY��vl� ���lL��^Xx��YHA�0��a-���Y�����ܝ_�i�J�#�3��,���	O���x�gN���{�qf�m\�d<��K��ۉ�j�j�C�P�%6�T3%isd��_��Y��y�aN�;K,J]릗*Ҫ��N0�A��A,�YZH�F�6�b��/�&�[M\I����{M�__ �����*_��s�E��__���煩s����s���I�r=N�R�F�s�͹���hsn���mR�ƒ'Kҿ�����#��s��);bR���E���C�B���~S/���>x�>�o}H�V�ܿ����L���_A��'ٗ�7�{��^�KNS��D��~%{w�Ϩ�ִf颮뢸1T�oo��4^��[�$��z�S�pZ3x��������������7;E��>��0��x��Gf�Oqؗ���3��1W|�A%~��<Vݻ�e����u�<}�\_f�G�`�`�,��#P��#�?u�@�y�Ba�V��#A(d� =�T�+~���Ѝ��*�
�	��[\H��$/_�hϋ�"�gH����� k#���s��\]a��b��D;��q&��3�³C8��D�>BN6 ��= ���� W[AV�x x�fC����"[�Ԡ�pVx����eE'0��>i �,E��B�1������E�H)d�Pv�]�[|�#W����ca/� ����Ͼ��X����+V���s��!�H,ZψY]8($�+~�s�L�1�9�)sŎË>�'U}k��#�=�UE/d��B�hhҲb�k>ɥ��o�� t��+�Q��}(�Ā�z��(g��N�/9��?<|]7&`����O���&���l�k,�	[���ILM�ۻx�/�Ңh6e@��^���ʵMm�|9ȫ��[w��7?�	_K��O�����~HJOӷ��f��n�Ө;�~��_ �  �I�1�S����V[��}\l*M�����q�s�K~2�o�w���3P�a��LuD�w�d�����^�H�B�� ���R���ԛ�����?c{J�0��-�`x��$��?�;�YFc�~3�FT�RM�D�4EM���V�&�y����O�>$�Y�xx��I�MӃ�jT��gE�]o�+����uU6��D)�j���ϥs�4ΏE�t�y���s�ɛM��{>��'��f�/��'�:w����%���4Ae3��hٳ���l�7�ݓ͟[Z�niɾ���7������{u��l�<w���{��=��sw�����%�{�>��vK����B�)�We�KaU쩯9��(����wf�xP�04�!�BG��3��f���an����4��	cIv�;��.Ab`)�O�;��M�p���$A�hǶ�z����?��:�z�V�!��;T��	�r�G�F�����)�G7����s�S���%����b�&���k�ac����aQ���Iu*��ξ�{��Uګ~�	�&�w�'��@7���p�oY�|_�&2b7ǵ+�?f٦�;앭�(�����y��"����bw?83|���A��n�S1�N^�%ٓ��t��o^�9!��n^���)Z�iz�ߙ�x�he��)9[�Y/'����7\�b�S��]m�.ߚ#3�a�G�+��_DO��9�U��x��/�>;��~������1ax��%�k#<mUŞ�o��!�J�����%�W�H������t��@L�x<���H#X\�,=���d4k��j�h�s��2�u�� �[����Xk��v�j��J[�GK��k��:z�>��J�����L<�k�x� �d��E�E��*����J��Z�-N�^L�Bd&�Jϣ�t���T��8����w%i��*s���I>X��ŷ�Z�9��N�y�3zU���o�:1�\��Zf4p`�Ѩ'6�՝��oXsQ�����3���Ag$����CƲ��?��Q���_|��O2r      S   �   x�M�1�� ��ǯx]�QiS�M��T�<��ԙ�_x����~���yP��FkQ��+���{����ӛ��7p��&��5;?���D�
&`�h	gr}���8�%��i�%�z����}H�/Ea����2������j&������q�4��"���.[�� �k.;�e˙����ɞ��t
�oZ�j�2�@U)ى��
.��^��ü���فT�      T   d  x�uR�N�0�n�bO`����S5�!&M�0f�#Ìxg�����k���Gp�!"�I�s�s��ԕ��������δc�4�I�®��ê����3�H�d]g� �����51�0�q�O�����c��v��ꙉ�F!%����!!=��^߫�/Ye3!g���<ϴ�γH�h?�o�&�r�("Wv�MR�y��#�F���?��tD�{�B��6s����3�b.�2)��u�M���"�]�����:T�Du.A��ڙ�\��9��%�N[���uYmq�$C�|J�A8��i&;��Mz�@�P湔�~���L�?��I�In���0����
{��     