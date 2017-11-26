PGDMP     !                    u         	   northwind    9.5.2    9.5.2 L    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16384 	   northwind    DATABASE     {   CREATE DATABASE northwind WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE northwind;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12395    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16386 
   categories    TABLE     �   CREATE TABLE categories (
    categoryid smallint NOT NULL,
    categoryname character varying(15) NOT NULL,
    description text,
    picture bytea
);
    DROP TABLE public.categories;
       public         postgres    false    6            �           0    0 
   categories    ACL     �   REVOKE ALL ON TABLE categories FROM PUBLIC;
REVOKE ALL ON TABLE categories FROM postgres;
GRANT ALL ON TABLE categories TO postgres;
GRANT ALL ON TABLE categories TO northwind_user;
            public       postgres    false    181            �            1259    16392    customercustomerdemo    TABLE     j   CREATE TABLE customercustomerdemo (
    customerid bpchar NOT NULL,
    customertypeid bpchar NOT NULL
);
 (   DROP TABLE public.customercustomerdemo;
       public         postgres    false    6            �           0    0    customercustomerdemo    ACL     �   REVOKE ALL ON TABLE customercustomerdemo FROM PUBLIC;
REVOKE ALL ON TABLE customercustomerdemo FROM postgres;
GRANT ALL ON TABLE customercustomerdemo TO postgres;
GRANT ALL ON TABLE customercustomerdemo TO northwind_user;
            public       postgres    false    182            �            1259    16398    customerdemographics    TABLE     a   CREATE TABLE customerdemographics (
    customertypeid bpchar NOT NULL,
    customerdesc text
);
 (   DROP TABLE public.customerdemographics;
       public         postgres    false    6            �           0    0    customerdemographics    ACL     �   REVOKE ALL ON TABLE customerdemographics FROM PUBLIC;
REVOKE ALL ON TABLE customerdemographics FROM postgres;
GRANT ALL ON TABLE customerdemographics TO postgres;
GRANT ALL ON TABLE customerdemographics TO northwind_user;
            public       postgres    false    183            �            1259    16404 	   customers    TABLE     �  CREATE TABLE customers (
    customerid bpchar NOT NULL,
    companyname character varying(40) NOT NULL,
    contactname character varying(30),
    contacttitle character varying(30),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postalcode character varying(10),
    country character varying(15),
    phone character varying(24),
    fax character varying(24)
);
    DROP TABLE public.customers;
       public         postgres    false    6            �           0    0 	   customers    ACL     �   REVOKE ALL ON TABLE customers FROM PUBLIC;
REVOKE ALL ON TABLE customers FROM postgres;
GRANT ALL ON TABLE customers TO postgres;
GRANT ALL ON TABLE customers TO northwind_user;
            public       postgres    false    184            �            1259    16410 	   employees    TABLE     a  CREATE TABLE employees (
    employeeid smallint NOT NULL,
    lastname character varying(20) NOT NULL,
    firstname character varying(10) NOT NULL,
    title character varying(30),
    titleofcourtesy character varying(25),
    birthdate date,
    hiredate date,
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postalcode character varying(10),
    country character varying(15),
    homephone character varying(24),
    extension character varying(4),
    photo bytea,
    notes text,
    reportsto smallint,
    photopath character varying(255)
);
    DROP TABLE public.employees;
       public         postgres    false    6            �           0    0 	   employees    ACL     �   REVOKE ALL ON TABLE employees FROM PUBLIC;
REVOKE ALL ON TABLE employees FROM postgres;
GRANT ALL ON TABLE employees TO postgres;
GRANT ALL ON TABLE employees TO northwind_user;
            public       postgres    false    185            �            1259    16416    employeeterritories    TABLE     w   CREATE TABLE employeeterritories (
    employeeid smallint NOT NULL,
    territoryid character varying(20) NOT NULL
);
 '   DROP TABLE public.employeeterritories;
       public         postgres    false    6            �           0    0    employeeterritories    ACL     �   REVOKE ALL ON TABLE employeeterritories FROM PUBLIC;
REVOKE ALL ON TABLE employeeterritories FROM postgres;
GRANT ALL ON TABLE employeeterritories TO postgres;
GRANT ALL ON TABLE employeeterritories TO northwind_user;
            public       postgres    false    186            �            1259    16419    order_details    TABLE     �   CREATE TABLE order_details (
    orderid smallint NOT NULL,
    productid smallint NOT NULL,
    unitprice real NOT NULL,
    quantity smallint NOT NULL,
    discount real NOT NULL
);
 !   DROP TABLE public.order_details;
       public         postgres    false    6            �           0    0    order_details    ACL     �   REVOKE ALL ON TABLE order_details FROM PUBLIC;
REVOKE ALL ON TABLE order_details FROM postgres;
GRANT ALL ON TABLE order_details TO postgres;
GRANT ALL ON TABLE order_details TO northwind_user;
            public       postgres    false    187            �            1259    16422    orders    TABLE     �  CREATE TABLE orders (
    orderid smallint NOT NULL,
    customerid bpchar,
    employeeid smallint,
    orderdate date,
    requireddate date,
    shippeddate date,
    shipvia smallint,
    freight real,
    shipname character varying(40),
    shipaddress character varying(60),
    shipcity character varying(15),
    shipregion character varying(15),
    shippostalcode character varying(10),
    shipcountry character varying(15)
);
    DROP TABLE public.orders;
       public         postgres    false    6            �           0    0    orders    ACL     �   REVOKE ALL ON TABLE orders FROM PUBLIC;
REVOKE ALL ON TABLE orders FROM postgres;
GRANT ALL ON TABLE orders TO postgres;
GRANT ALL ON TABLE orders TO northwind_user;
            public       postgres    false    188            �            1259    16428    products    TABLE     P  CREATE TABLE products (
    productid smallint NOT NULL,
    productname character varying(40) NOT NULL,
    supplierid smallint,
    categoryid smallint,
    quantityperunit character varying(20),
    unitprice real,
    unitsinstock smallint,
    unitsonorder smallint,
    reorderlevel smallint,
    discontinued integer NOT NULL
);
    DROP TABLE public.products;
       public         postgres    false    6            �           0    0    products    ACL     �   REVOKE ALL ON TABLE products FROM PUBLIC;
REVOKE ALL ON TABLE products FROM postgres;
GRANT ALL ON TABLE products TO postgres;
GRANT ALL ON TABLE products TO northwind_user;
            public       postgres    false    189            �            1259    16431    region    TABLE     _   CREATE TABLE region (
    regionid smallint NOT NULL,
    regiondescription bpchar NOT NULL
);
    DROP TABLE public.region;
       public         postgres    false    6            �           0    0    region    ACL     �   REVOKE ALL ON TABLE region FROM PUBLIC;
REVOKE ALL ON TABLE region FROM postgres;
GRANT ALL ON TABLE region TO postgres;
GRANT ALL ON TABLE region TO northwind_user;
            public       postgres    false    190            �            1259    16437    shippers    TABLE     �   CREATE TABLE shippers (
    shipperid smallint NOT NULL,
    companyname character varying(40) NOT NULL,
    phone character varying(24)
);
    DROP TABLE public.shippers;
       public         postgres    false    6            �           0    0    shippers    ACL     �   REVOKE ALL ON TABLE shippers FROM PUBLIC;
REVOKE ALL ON TABLE shippers FROM postgres;
GRANT ALL ON TABLE shippers TO postgres;
GRANT ALL ON TABLE shippers TO northwind_user;
            public       postgres    false    191            �            1259    16440 	   suppliers    TABLE     �  CREATE TABLE suppliers (
    supplierid smallint NOT NULL,
    companyname character varying(40) NOT NULL,
    contactname character varying(30),
    contacttitle character varying(30),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postalcode character varying(10),
    country character varying(15),
    phone character varying(24),
    fax character varying(24),
    homepage text
);
    DROP TABLE public.suppliers;
       public         postgres    false    6            �           0    0 	   suppliers    ACL     �   REVOKE ALL ON TABLE suppliers FROM PUBLIC;
REVOKE ALL ON TABLE suppliers FROM postgres;
GRANT ALL ON TABLE suppliers TO postgres;
GRANT ALL ON TABLE suppliers TO northwind_user;
            public       postgres    false    192            �            1259    16446    territories    TABLE     �   CREATE TABLE territories (
    territoryid character varying(20) NOT NULL,
    territorydescription bpchar NOT NULL,
    regionid smallint NOT NULL
);
    DROP TABLE public.territories;
       public         postgres    false    6            �           0    0    territories    ACL     �   REVOKE ALL ON TABLE territories FROM PUBLIC;
REVOKE ALL ON TABLE territories FROM postgres;
GRANT ALL ON TABLE territories TO postgres;
GRANT ALL ON TABLE territories TO northwind_user;
            public       postgres    false    193            �            1259    16452    usstates    TABLE     �   CREATE TABLE usstates (
    stateid smallint NOT NULL,
    statename character varying(100),
    stateabbr character varying(2),
    stateregion character varying(50)
);
    DROP TABLE public.usstates;
       public         postgres    false    6            �           0    0    usstates    ACL     �   REVOKE ALL ON TABLE usstates FROM PUBLIC;
REVOKE ALL ON TABLE usstates FROM postgres;
GRANT ALL ON TABLE usstates TO postgres;
GRANT ALL ON TABLE usstates TO northwind_user;
            public       postgres    false    194            �          0    16386 
   categories 
   TABLE DATA               M   COPY categories (categoryid, categoryname, description, picture) FROM stdin;
    public       postgres    false    181   J_       �          0    16392    customercustomerdemo 
   TABLE DATA               C   COPY customercustomerdemo (customerid, customertypeid) FROM stdin;
    public       postgres    false    182   P`       �          0    16398    customerdemographics 
   TABLE DATA               E   COPY customerdemographics (customertypeid, customerdesc) FROM stdin;
    public       postgres    false    183   m`       �          0    16404 	   customers 
   TABLE DATA               �   COPY customers (customerid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax) FROM stdin;
    public       postgres    false    184   �`       �          0    16410 	   employees 
   TABLE DATA               �   COPY employees (employeeid, lastname, firstname, title, titleofcourtesy, birthdate, hiredate, address, city, region, postalcode, country, homephone, extension, photo, notes, reportsto, photopath) FROM stdin;
    public       postgres    false    185   �w       �          0    16416    employeeterritories 
   TABLE DATA               ?   COPY employeeterritories (employeeid, territoryid) FROM stdin;
    public       postgres    false    186   �~       �          0    16419    order_details 
   TABLE DATA               S   COPY order_details (orderid, productid, unitprice, quantity, discount) FROM stdin;
    public       postgres    false    187   R       �          0    16422    orders 
   TABLE DATA               �   COPY orders (orderid, customerid, employeeid, orderdate, requireddate, shippeddate, shipvia, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry) FROM stdin;
    public       postgres    false    188   �       �          0    16428    products 
   TABLE DATA               �   COPY products (productid, productname, supplierid, categoryid, quantityperunit, unitprice, unitsinstock, unitsonorder, reorderlevel, discontinued) FROM stdin;
    public       postgres    false    189   ��       �          0    16431    region 
   TABLE DATA               6   COPY region (regionid, regiondescription) FROM stdin;
    public       postgres    false    190   *      �          0    16437    shippers 
   TABLE DATA               :   COPY shippers (shipperid, companyname, phone) FROM stdin;
    public       postgres    false    191   f      �          0    16440 	   suppliers 
   TABLE DATA               �   COPY suppliers (supplierid, companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, homepage) FROM stdin;
    public       postgres    false    192         �          0    16446    territories 
   TABLE DATA               K   COPY territories (territoryid, territorydescription, regionid) FROM stdin;
    public       postgres    false    193   �      �          0    16452    usstates 
   TABLE DATA               G   COPY usstates (stateid, statename, stateabbr, stateregion) FROM stdin;
    public       postgres    false    194                    2606    16456    pk_categories 
   CONSTRAINT     W   ALTER TABLE ONLY categories
    ADD CONSTRAINT pk_categories PRIMARY KEY (categoryid);
 B   ALTER TABLE ONLY public.categories DROP CONSTRAINT pk_categories;
       public         postgres    false    181    181            !           2606    16458    pk_customercustomerdemo 
   CONSTRAINT     {   ALTER TABLE ONLY customercustomerdemo
    ADD CONSTRAINT pk_customercustomerdemo PRIMARY KEY (customerid, customertypeid);
 V   ALTER TABLE ONLY public.customercustomerdemo DROP CONSTRAINT pk_customercustomerdemo;
       public         postgres    false    182    182    182            #           2606    16460    pk_customerdemographics 
   CONSTRAINT     o   ALTER TABLE ONLY customerdemographics
    ADD CONSTRAINT pk_customerdemographics PRIMARY KEY (customertypeid);
 V   ALTER TABLE ONLY public.customerdemographics DROP CONSTRAINT pk_customerdemographics;
       public         postgres    false    183    183            %           2606    16462    pk_customers 
   CONSTRAINT     U   ALTER TABLE ONLY customers
    ADD CONSTRAINT pk_customers PRIMARY KEY (customerid);
 @   ALTER TABLE ONLY public.customers DROP CONSTRAINT pk_customers;
       public         postgres    false    184    184            '           2606    16464    pk_employees 
   CONSTRAINT     U   ALTER TABLE ONLY employees
    ADD CONSTRAINT pk_employees PRIMARY KEY (employeeid);
 @   ALTER TABLE ONLY public.employees DROP CONSTRAINT pk_employees;
       public         postgres    false    185    185            )           2606    16466    pk_employeeterritories 
   CONSTRAINT     v   ALTER TABLE ONLY employeeterritories
    ADD CONSTRAINT pk_employeeterritories PRIMARY KEY (employeeid, territoryid);
 T   ALTER TABLE ONLY public.employeeterritories DROP CONSTRAINT pk_employeeterritories;
       public         postgres    false    186    186    186            +           2606    16468    pk_order_details 
   CONSTRAINT     e   ALTER TABLE ONLY order_details
    ADD CONSTRAINT pk_order_details PRIMARY KEY (orderid, productid);
 H   ALTER TABLE ONLY public.order_details DROP CONSTRAINT pk_order_details;
       public         postgres    false    187    187    187            -           2606    16470 	   pk_orders 
   CONSTRAINT     L   ALTER TABLE ONLY orders
    ADD CONSTRAINT pk_orders PRIMARY KEY (orderid);
 :   ALTER TABLE ONLY public.orders DROP CONSTRAINT pk_orders;
       public         postgres    false    188    188            /           2606    16472    pk_products 
   CONSTRAINT     R   ALTER TABLE ONLY products
    ADD CONSTRAINT pk_products PRIMARY KEY (productid);
 >   ALTER TABLE ONLY public.products DROP CONSTRAINT pk_products;
       public         postgres    false    189    189            1           2606    16474 	   pk_region 
   CONSTRAINT     M   ALTER TABLE ONLY region
    ADD CONSTRAINT pk_region PRIMARY KEY (regionid);
 :   ALTER TABLE ONLY public.region DROP CONSTRAINT pk_region;
       public         postgres    false    190    190            3           2606    16476    pk_shippers 
   CONSTRAINT     R   ALTER TABLE ONLY shippers
    ADD CONSTRAINT pk_shippers PRIMARY KEY (shipperid);
 >   ALTER TABLE ONLY public.shippers DROP CONSTRAINT pk_shippers;
       public         postgres    false    191    191            5           2606    16478    pk_suppliers 
   CONSTRAINT     U   ALTER TABLE ONLY suppliers
    ADD CONSTRAINT pk_suppliers PRIMARY KEY (supplierid);
 @   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT pk_suppliers;
       public         postgres    false    192    192            7           2606    16480    pk_territories 
   CONSTRAINT     Z   ALTER TABLE ONLY territories
    ADD CONSTRAINT pk_territories PRIMARY KEY (territoryid);
 D   ALTER TABLE ONLY public.territories DROP CONSTRAINT pk_territories;
       public         postgres    false    193    193            8           2606    16531 ,   fk_customercustomerdemo_customerdemographics    FK CONSTRAINT     �   ALTER TABLE ONLY customercustomerdemo
    ADD CONSTRAINT fk_customercustomerdemo_customerdemographics FOREIGN KEY (customertypeid) REFERENCES customerdemographics(customertypeid);
 k   ALTER TABLE ONLY public.customercustomerdemo DROP CONSTRAINT fk_customercustomerdemo_customerdemographics;
       public       postgres    false    182    2083    183            9           2606    16536 !   fk_customercustomerdemo_customers    FK CONSTRAINT     �   ALTER TABLE ONLY customercustomerdemo
    ADD CONSTRAINT fk_customercustomerdemo_customers FOREIGN KEY (customerid) REFERENCES customers(customerid);
 `   ALTER TABLE ONLY public.customercustomerdemo DROP CONSTRAINT fk_customercustomerdemo_customers;
       public       postgres    false    184    2085    182            :           2606    16541    fk_employees_employees    FK CONSTRAINT        ALTER TABLE ONLY employees
    ADD CONSTRAINT fk_employees_employees FOREIGN KEY (reportsto) REFERENCES employees(employeeid);
 J   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_employees_employees;
       public       postgres    false    185    185    2087            <           2606    16526     fk_employeeterritories_employees    FK CONSTRAINT     �   ALTER TABLE ONLY employeeterritories
    ADD CONSTRAINT fk_employeeterritories_employees FOREIGN KEY (employeeid) REFERENCES employees(employeeid);
 ^   ALTER TABLE ONLY public.employeeterritories DROP CONSTRAINT fk_employeeterritories_employees;
       public       postgres    false    2087    186    185            ;           2606    16521 "   fk_employeeterritories_territories    FK CONSTRAINT     �   ALTER TABLE ONLY employeeterritories
    ADD CONSTRAINT fk_employeeterritories_territories FOREIGN KEY (territoryid) REFERENCES territories(territoryid);
 `   ALTER TABLE ONLY public.employeeterritories DROP CONSTRAINT fk_employeeterritories_territories;
       public       postgres    false    193    2103    186            >           2606    16501    fk_order_details_orders    FK CONSTRAINT     |   ALTER TABLE ONLY order_details
    ADD CONSTRAINT fk_order_details_orders FOREIGN KEY (orderid) REFERENCES orders(orderid);
 O   ALTER TABLE ONLY public.order_details DROP CONSTRAINT fk_order_details_orders;
       public       postgres    false    187    2093    188            =           2606    16496    fk_order_details_products    FK CONSTRAINT     �   ALTER TABLE ONLY order_details
    ADD CONSTRAINT fk_order_details_products FOREIGN KEY (productid) REFERENCES products(productid);
 Q   ALTER TABLE ONLY public.order_details DROP CONSTRAINT fk_order_details_products;
       public       postgres    false    2095    187    189            ?           2606    16481    fk_orders_customers    FK CONSTRAINT     z   ALTER TABLE ONLY orders
    ADD CONSTRAINT fk_orders_customers FOREIGN KEY (customerid) REFERENCES customers(customerid);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_customers;
       public       postgres    false    188    184    2085            @           2606    16486    fk_orders_employees    FK CONSTRAINT     z   ALTER TABLE ONLY orders
    ADD CONSTRAINT fk_orders_employees FOREIGN KEY (employeeid) REFERENCES employees(employeeid);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_employees;
       public       postgres    false    2087    188    185            A           2606    16491    fk_orders_shippers    FK CONSTRAINT     t   ALTER TABLE ONLY orders
    ADD CONSTRAINT fk_orders_shippers FOREIGN KEY (shipvia) REFERENCES shippers(shipperid);
 C   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_shippers;
       public       postgres    false    188    2099    191            B           2606    16506    fk_products_categories    FK CONSTRAINT     �   ALTER TABLE ONLY products
    ADD CONSTRAINT fk_products_categories FOREIGN KEY (categoryid) REFERENCES categories(categoryid);
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_products_categories;
       public       postgres    false    2079    181    189            C           2606    16511    fk_products_suppliers    FK CONSTRAINT     ~   ALTER TABLE ONLY products
    ADD CONSTRAINT fk_products_suppliers FOREIGN KEY (supplierid) REFERENCES suppliers(supplierid);
 H   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_products_suppliers;
       public       postgres    false    192    189    2101            D           2606    16516    fk_territories_region    FK CONSTRAINT     z   ALTER TABLE ONLY territories
    ADD CONSTRAINT fk_territories_region FOREIGN KEY (regionid) REFERENCES region(regionid);
 K   ALTER TABLE ONLY public.territories DROP CONSTRAINT fk_territories_region;
       public       postgres    false    193    2097    190            �   �   x�5P;n�0��S� E��;�:0�5#=%B� 崹}i9]D�|?ꉶ�B��]���YZ�C �)`{�X��[���6�������(u�|�r�2��/���N'����lN1W��E+����RUHYb6�S=U��^��h^�d?;Kѝ,�=�}	Ǥ����w{'��������*���\6C��"7|{��*�A�#��h� s\�?�S�f��I;p��/����	�u�l��|���      �      x������ � �      �      x������ � �      �      x��Zˎ"I�]_aRK��RB���t�<���Ro�/w�D������Lw�T�QI�h�j��9��Hr�KU�x�5�v��^�`p�� ���U��<��6�rɆ"�L36���T�S��8yx�l����<mp�eM�Fa��8b�ah>���N��L3�����i�kǶ�Z0
�SĂ����0�����!VIƟ�FFt��6~�eʂ�J4�J�H�Vgy����k��Æ�/��e�ۍ�MH�5J��}g��۶]�\ÿLW�h>�\��aI*���O�LO��7?�g2���0an��m��[Ӧo��L�s�I�x�����1�o���xW���ێ�?��A�|�S��x�(�?:����g��^�s]ϫ��j���~F{��`<�Y,����{�ڤ��N����)�ȃ�.��S*�$UZ���経9�ؠ���?h��o{�	6{�+3�7��np���j�֚���DAk���enE.3,�a���0I����$T�_	�!n��pG�p<Ss^@����Y�v���ǣ	��}2[����O�e�?�Q���ӗ��K��R�).��Ys�k`����}$�����CL�l��ZM��4�R2�k8ZC��^�6j���f�ӯQ�J �]��Z���%��O��|��v0Q¯�;�@h��7q�*Wd��w��@H~�;�-��2�u��0<
��$�b��� ����\����{��po&�rC��)ea)Uԛ��]V���jXv��*�:���C��dWo'Q$R^:4c�(<���7|��$�Y�\"4^����L<	�oF�U�]Ǭ�bs�{C��p�J��ͪ��u��9kv>��;,I"�` c�%�M̗m��4�|y��� F�,�JvZ�G��A����VК?`z˼�^�{��ǃH�D�i�����>�K��,g-��a�p�4Y� ��R��Ȅ�C���o�n�u�����:�y���4��hZ�"B�-sy,v���0�������BLߧ�Հ�oޤ?�+�3}�:����Vw<��y�}=+$\�	c8�}����P��+�}���	R�65��&̏�@t�Y�Q/����x8�1��L~��a���\a��'����,K�d������܏=z�)�D�'�@�M�6䴺fa'Rq#8�B��喖G�.�� ���>Z��U�7��)��2,q+#8��@�o�~�$��*��A�����b�:�u�z{�ڬ�
�o����5���q�G�\�$�Ge2}�k�|���}�М
���u8���}��j�!�k��;�[N0Ŗ~1���"-by�g�}a�V�T�8������-�B���p�(��|���Z'��A�"&��e�qAc��7fڼOH��	B镓M��=�v�f�neh��Y�Li�;)d	e镌�4!`�T���%����͚�Ç@�T,�{(���]7-þ^9��`��B�0"�J�"Z%  �[iq�D-`�-��ش|��~��o�lΦ��}�Vp���f�I���.�a/�X�r.7��Y#h�v(�	�&X�Gւ��Q�G���9�3�i��\��-�eHߘ�;��{h �5�kd�y�̔��)pq�®���}�=dmL�Ȳ�B��	�����l�/��i��Y�vi�1Mb˓�:�̻ͳx ?���>�i���j�ɧ��[Y�%�"1t�K�O��o(����`�W���*#��Hx����Aѥ�-�H�Gn9�w|	YO�4�%d=��uM��rmٺ2<={���r������ų�f���U��4y�����5����W�5exV޴	�=�j"	�'��m���\$�h��[$J�͑Ρ��Rc�\DX���-�����k,�a�k�����)�"D����� �KDbB7 �.��M@ W�;Nyu>����P�BMQ�&XD��Jͦm�s���}0��=N� q�D����]�:����8 ���0�ED�[�]T��K�<��RB��� 	���g����-~������=�����bi�ʲ�/{� �� �x�P�R���7>A�OIh$�!]�Lcʸ�cS��KM �J:��?L0�І&�X�P�B��;�V�	�Jߠ��t1hp��1�L��N��|Et����l*���wI�:U�M��w>��W� ��pM�A��j� � �M��Z�����ٚy�ϔ��l��3��9�bU��6�r;�>�tb���xp�>�~LD�O�bD�N 7c�;@���G�?�	�6�3�o����[��R���ZҸ$R�I�B��S6YQ
9�%Q���l��JaM?PV��𫳍K��|�e�;�Z�7F���xT@{��C��"���o�>nK!��Y��Q�9��,)��A��ꦍ���2��+�&�����g�Z�x�Que�u �Ժ����:�ZM�<���#��B	�5�@\̌����s���J}���6D��5�1�@���8�kU���:jN�˜�O��>
כ�H�T��kp�/QZ7��l \�H�b�n�O���J%���Fh��#f�7s�˔֙�jVX���ɛy�T���PR8Gi	���O�'y�?�B�dl�ܝ|(U����(���Ψ������:��%k'��=.^��e�CQ,d��
_i ,^�Kw�r݊�U��	Ͱ6Z؝� �-|�N, UZkC�"`�	��72I\�v�T.��u�4�#�Qv'�r��Ur��5l(Z��rm7t�=��N�P�H����B�4) �7|���D�X�� A-�l�L	-�}PU�^1���m��_����}�Z��)��r�����AKRu��#aN����MY�Ci��*���]H´�G�}��z�,"�CUF���c:�g��}b+DB�k\Jү1��j.���s�l�f�:H��=խc\��?��2t.�t�36� &�T��i�+6�1��" ��oq�P���1UXn)�>���r��lë4�����=�z^��3�B�.������PZC������m��L"�z�����1��� ��ґ��d�g�}S�� d[��ϊ=&&ӥ@r&��$>����o�g¶+��L��/���8Tx��$!!�NH���ɰ�<�.��M[�|��0M��l]�a;��h�f�Y��wI/�p��=����Jh�k{3�).��`�d_�Q~���`�BHf��C0(H�:��i�m����o�	��QgB��̠��D�*�t��!��~.�|���%؂O�-HF*>V����7�·]�:t,�6�fԀ�4 ��H�Ӱ�C���09 ��"9 ��ACR{P���{BjaJH��;��Q���mbi��륎��fm<\W[>Iо�@>)�բm
҂֔�M�I������0�u]�.4%�g�c�i$q4ɓWC�6�L�C���R*b�¿��~��W�������"�A%A�BM���&�u�\o�W��3W��^��p<���!Ծ+;�2+��6�rD�3�%�{�x�9_�ԕ�>8�` ��1T	L�t�zC%>_f��x:��u9�D��p���4�U�T7�s�	��}!1�*�W��٣���oO!��+�)��j�V'�1�t�� ���r�� _���@�*���*z������\n�����8���?� 5��.�R^�A�q��ъ?"�W�J�&@�$�����4	�k���[��̂>	���R_s/5�gU����7�y���y��F��sFbt*"�4T�}�IDGu�q>�����g(�HOPCQ٤�\���NA�2�-�8�6���A)B�l�B��0?})�I��S�8ʤ�����4Ɓ����M+�4�M�ٳ� 7[Fô��p��c׭M:�^���	���K|	`d!�4���t�:��-p#o�(�P
dN��7z��#:C���|X0�Zc6	�Ǣ�Ӊ��f�O���`�*[ferݢ_�M�"㥷�؎Qq�+�6��F=6|�2��	T�1�7	�a5R%=��^|��"�f���#�y�&�k;o���i3�������y��`@��U��	��o�d��B��xϱ�   7�B�����_Յ�a�c6�SdH gm��A�4�AD��&'Hے�@���l��{(<߶>=�N��#�l����L}�IR�.�<�>4���x.�#2���_%ﴊX>�h�ĵ���[ae���^V1�`�격jv�G�I>�/������W�@� \ J���i���rRTLe>oa*yc����gd���|f�Bq+o�oY��]>��R}
V����?6B���Y���L�2��j��=J�\�C���@�H���8��ɵ�$�2$&)$KL��}1��I��u�UKʨ��0�
ǥ���F,L륊�`K��A�< SC�v����R,���ܸ�:Q!���W!bZ�Y"f1{�Yl��P�o�7ؐZ��A7��v'�V�trS�����Cy�kh��4�G`@5���a�{Vv��3�A��R�ɏ�;�p�Q��FDPo�<�B���_��a}�Z�m֪#]�͂���Jd"~n���E�^S(�O��˔ԡ�72�Vl�w����������#C�:��y�b��� ��\[.,~��x�uQ���zNM܁t����C�(�fŧOT[�k&!��^�y��3��Ҿ�|u�2�|�̨9
��I���(e�KҼ_P	�z3}�jSQ5�"���mn��o�]�z\eS50���R�e|����Y�:axq+����Q.s�����7~\|Ӗ1���:/_�@��k��6:���ꊤ��i k't�H�YL��vc�.�Hrc�X�+��nö����1d6��������@��_P�AQm#܊8[n�d��o]>i��J�LDJ��=~�<d��g9(E^��mص��d
'�����:}���Ԛ˖DIHh9ucn�P�*����ā9��²�q�m�R��V�:J2����F�ͻ�f��7td��~�t�>�|~Nn,�
� ?}4@����80�֢��׵�锴�����J�R�ɓ�0Y@n�z��%��6RNx<F����*�7�e56�3��ٖ�9gh{t�rz�g���!��<�e|����?� x�N�ΕevcɃ�+Mmy��j��i�W��MGߺa��k��mX��� ���ڧ����"����Kn�1�KA)����||GN��.S]��_N���n�ҞQ/�AF
��S�F%C���������R���~�l�ytl�TvWFM��&F﨩/V>/Ss&1���2:`�������l�,���#e��1K?L�
~ԭS��g��`������]��1��및p�~Dr@R�����P/D�
��N��(Yc�(NJ7�"��Յ�<A�:�\�Lhr�z�yG�]T��]��-��7M���qy窠B����\�]g]����Զ�S�vasԙog�J���Ie��D���\U�I~�ol������x�PK�N-������ ��6��˵^{F�>�@/�)齏~��d�GQ)��Хwi3����;*�'Ƚ��#�w��ڴ鍓�`:�Gz �+���@��%��d[�"�)V��x+�QA&}�D�]+���^G�쀀_.k������c�I�\Bg���EG>o�u>I��Y�L����/�5]�g�M�K�H7�>v{�"�V�^��p[Y���߷�[L��u���l��.�_R@*�_��nxo���x=ĺ{�a���v��,��i���9K��ݢ��̶E����B�ga�U�̀<�x\���=el��8��G {r���QW��sv�[����?�8�O��x^}5�
�4y��!�Q<���@�N�L���2˨��ZueT�c�V��/oسD      �   �  x��W�r�:]#_��Se)"Ej�<��J�,���&!P��}�����*�e.�t/v%�M��.t�c+QK����J'�^=K�tC�̳� I�>��;����|�ӑ���Y����Q/�~��[I�}-�Â�gI���;KG��<���|�OY�M�����.��͕.�D�_,�ߺ]Q��lv|mM�/�ي�����F��)����|:r��$�3�0Ͷ�^��_-��f�=>b��_����pw���F6O�Ң{#�o����W�_:(�!KY���_�>��x�O�d�S�NJ���x��퇔��ֵ�l�K+_�T!�-�U%�=�mve	����d���36���Un�5;v/p#1���L�Y��Y1��r+	�J^��+¤��P�2"�q�K\��^�;ux]��Sz�7B� t@u���� �E���5�뿬�EN���(��g+E��gi��S�5J�R:��z���.�.���o����M�
��8Ĺ߄n��q�4��E�D¶'�ʏ�a�RXT��cTӡ�FTY4�2��w�եO5j
���e%��.#�X���[Q��*��j��fkl��9f�!{�~Zg렬 �1��`�C7��O6��I\�Q���l<MS�4�;~Q?�C���?k��6��(m�%P�8σ�©�
T]�x)7VJB��d����u/��8�Wˍ�g�K���kx�ز��zB���7V4���R��.�1NT`�XI�R�6��Gt��(�y��]A�:�O�UI��S��ح�c����{��O�y㐱c�%Ɉ�au'�Ơ�;��}����fk��<�N;��)Z�s�Zoj�*^+(O���>_ual��!O��c	�d�ρDv4�y�[@Kbo ���u��dҳL����p��7�*�zM���� ��;�|k��Wִ��7�ы�H�6h��E[TP�f+�4;���!�	oX"���ɔ%�,,�����kk%g�>�v�~��ΦI�=�e3��q�=���9�[���Zcȸ�<EW(�'�!�+9���R��	���d�d�w�e'���c��RpM8T�~(�Xc��m�EZGRb�L�ڎK�/���^�}#b1��1������x�'C�pk_�E!�C �{Y�}�
�樓�M��z�j
Қ�U�h�K�oe}��}�����.!hM�ŴNb|Z��`�֮/S>}���t�pHg����حz��W�s��a�>[.ι,�6�*�9����׮t��1���Y ��'��t����y�:lL�� ɽ�	�r�lk������u�3u�y�Tq�A���f����;k����N�G4Z�?^,�c��ߢͶ�+c#^�1d�����h��wt2��#��4$9�Xb���HL`����~��[I�0�l����s���#��|>c�$6�X �b����;��~CӭݺH��`���ڡB�����mB��gL�:�����6B���줰,�Op4K��ǉN�)O��R��[k�2�n��ZZ{�c��{��1����n����0vz�4��v�S>4��R{f�4��(I������,;n�I2��t�e��p�~F?���;�U ̇l==@E���S����.��Cq5�{O��8gW�t/�U��-�8zN�tL�A��)�.1`x�z��z7���X��'��h�O���#��6{#^�Z��h�˟zG��Hޫ����g�o      �   �   x�%���E!е3'@xB/��:&��
G�h_�ٶ����˲�Ɗ����~%��;V �]������l.G�_c���=�Z��p��#�~F]�p�db����d���\M�Y�����,8|l�~�ȫ�<��	�3���J�D/I�r�,�G�j^/�ci^/N>�c̾T��󿿽�?��@      �      x��=I�$!���Ǥ9;�e���A�]TwY
I��"�C�/��K��/����t 5�����_Z��1b�_�c���k_���������~�_=/j��/j߯�����=3�6�>Q�'�R;��:���K�;�"I��I�����H��~��|�h�2�����;C%�q���D��&|�ww����lʴ�_9s� ����tXB��wy��r���v�kR���,�jN�Qs������2I�`V~��M�Vi�(�<!��~u��^�{�soRc����+�r屿���W7y�p����DL;���q�
R�!X��)���7=P,��),�~ew�~����yUC�����C}3���q֙L�YX���Z���k����fێgc��P��i����1E���rg��L��� �g35-�.�݆۩́��]I�oĈ��F��r�2���}�����!����B6;v=�q���P�D��#p�� ީ_W��(w6�>�#��ݦ4Q��(��3<J3����3�J0�K�Co(G�U���$y�΀;=��}vIs�i��7��v��"��Սd �9��e��z�c��� ����2-î`��d��1��{���&��nOX��u2VJq�rII��ũ@�S=#��t��Č�p3�_��3�|�3؊5d���|a������;��# l&#�.'���]
«Scz�*/����ϟ&�B%%Qd���5��ln�Ԡ7���%(���ħ�f�;n$�0��5��MR�X�gkߖ�]�22t�i���oݕ:��/a�R���K�l��i���q�7k�wu%�j�Ql7\�L�)B�&��s��&a�����s��{]���ǻt9%��Њ��p�yqs�jy��
���@��:
�?1����l�Ћd|�,k�~��`��>k�cDT����*p���l�5��,�h����Iƶ��~�K]b*ϣ|ɉ�$g�"�孂p
k2­{F�����
 ��Yy�L�,����W҇pf ��_�P<Q�i��NUqO���Z�53�ɽӞ��~��^�'f�u����E��=�R[�֨��c�`�̦�$��`Sr_��#�Y�z*�4������Z��&�N�9���7I��2�4�ؙ�<��D�<Z8#��1��_�V��tL�	�Z޴Bޚ��+ĝ_ބ�/�/9f"��ity/������l߳�&�2�i^���ؾ�H����"��'@9c>���yq``��Ȃx�� �����J��NzT�� \g��R��4\4�۴@a�|�� ��������$��i6��F<z�5�邮n*��>�'	�C�u/h����i��tp?�G[��M��os��	�����U��� ���I�m*�G��Q��n��f"��Rqc����wKM#P$m�]�⢣#t��H�T@��0"P���$nk��톲����%�K@�u�m�.�+O�0&Yq%ؽ����v~���=�,�i�%F��M�4"�,�k�Ňj���-R}L,�K��}2�x�;e�a�/j�Z,����Hl��AR�WK򵒽q���˃�vŊ�O�|��Rj��$������V�.��=�o��s����IVyGX}����	uON�	ɹ)����3-RiB��]�H�Y{>ȃ-Q��� �c���Mc�si�ǫ�3� p;ذ�����kȕ��E��|d�H�ύ&مtiQ �eÆ��i�8���ه�)W ��@p�:��d2m���U�f�y�8��o��<�rfoQo������i���4�Bq$�6�rEJ�eB�2��G��v���ٳ@$u!�f#x
� �%��|�,����-�-�����Msۏ;�ݮo�O���n錰&�dx��#�~}�>��W`z����使7���_�(�Cs��ɺ�����翈�݈��2rtfs"d��m��E�����=�9~��yR3ȴ���(��p�p>>B<1���!)p�$�k���y67��xx�L7>������zSX'>sHB��%����Ç ;�[��2@���\Pi��)n&���k�/ncE�7��IpBJ.�N!&�V�>72a�˯jX�tc^�:Or�jPϳ���G�|�x����vf��K~ÄdᰅD��3��"��(r;�����g/5F8�N^en}��{`_@����Ć�j�����O���3�g�w!�CYQV�)y�|r����^d1�ރLܫ� ���jnzr#�g�G������#L��S!�`�b�ђxc��u%�!��O��f0����n�cHo(��a7A�4񕅻�d\$��6F��V��C �J�!O<��\�
>�~
auX�n�b��z�<3�_�
�a�\�zw��ڿix�<����F#��r�Ố�9�l�9z ����.��� �;|�`�3ـx��
�j+?F3�3�JfF_��w�bd�ĺ���
?�|P"�T	�'B�������vvS�Xy�+7�Y��x��QF��0�q�W.f���
�ɼ[!�	䃰�!�#���H� 
��]ì<#�H�$���uȿ	=T�fo7 �Z�D��
�Є���`���l�ȟ7?�B��`
�e8�/|�^�m�(�K�ó�ɑd���s-fe��R�5!���6�d���)��_u�y������rY�|T�eí�=>�H ��rܱ?}��Q`_a�B� �@c'�u��FPB��;��L�)�����,
�y�$Iq�*��</4>�W�Nh �INo�U�v�>4w胔K�i~���lwUda��:Q����C�Z�y�B�,Tt��������㌋%Y�؝zࣸ$q�/��-����sf�ނ0��̧�t�yɵ{��(�Ve�b������A������)p[7G
�������;"[�P�1����+`'íq���eg��|}�ބHA�U���r.�1���ª[�8�G#�a`���4��Mbg�3��!4Q�*���m�?�vf��!���t8���k<�l��M����͗��l,��ռ|�`�jD��8�UL��q���oZ��MV��ƈ��_z��D0�匎o�X�Fj�̯�)�x�\�%%#b� F<CP��4Ϻ�ڹ�O�̪�*��f�A6��������s�G��G>�A���(��-ФuWJ��Y��OFK/<#��N[������)�.��Moh��gB��ǈ���]����5P�w_84�<@P��3f�uo��@�0<nPq���LD]		=���uw>n?�u�≘��<<,G�n�����l�����#���uPY\�jx �Y��z5.�/��= �z��7bF�� �H�w�q��ݷ}�&/��)�{~P(��ẙ"8o7��
���ʀ��:��$H�����)M�q�8��K�)��?>X�� S��j� �aY%ʹI��!�T��x�4�j:q�U�٧�w���X��7�=b e2*�p�WU�{��\�>ǅ�S���8Nu�-���@G���3����ŏ�����h���@����؀z$yi�h^=�yr�J���*����íϨ5A��0��տ&��:��$Ύ�k3ATD��G�Gv�ω��AV־'���w
���v���58bֶ��j���E� އ�~�N"6����^�=u���WE�Ĺ���M����
�~6ɓ`�ο&�����[(!mA�Y��(�Ը��L�`�G��A����}��,�㕞Σ�� �c?Ӊڤ=uc)�b ���s�v�A�"x� 0���s�1b2��WO1��7�8��ky�U �bLĠ
.v�;�d�eM���q��NX}��Ï v�#`�O�Q8fxT��f����5��Ȍ�^�ԁN�H��*�ĳF�_{����􁼖�����q��ݣi�u8cٻbzY{H���~����Ӎ�A�n³�k ���?�t ���9=Q���1���ԏ�����n��^\m +0�'x��KB���΍�gs�H!<OF6���#4��V����ф �BF��A�c+�u��;h`@��    )Q�m�k"�4*�p ��g��T��*��>�;�ؖ��c�δO^�����"�Ӑ-�ۇ�C����G������9���Y:�͒+)| #��'�Zd���- ���R+��9���H�Uq��gCZ�r��vR&��R�8�3�	ƛgZ�ߔ�?�8)�4\���%p׋�:늬���tu/6�7� ��U��2E Wn�����X�B��s�ǀ�B�#	�,r�Uhp�X��Azn�5���� �Rȵ>��2R���O^�_\�qI/��� �\I���"j5y��[=X��]���2�T�,�ݼ���#�ׂ�E��o�
�V�Y��U+Z��&��}T���T՚ ���0Ф
9��:����&I�^�!�)L�u1K�`o$:7�ᑗ�k��cPf���Wpq'*,�BK�b�N �����Z���$�'؈'��X� �/4��:�>�� �^��D��,Ɛ��pht�e�M�oyYf����kV1�'oW�W$(�֐s��՚2��C��A0ȉQ_F�ER�MrsH;C^��A�|�(���:q7Zm��=��&Ft���0=a�Q���RO8.21z&}���s_�$%M��y"�W����W��'��I�0�u�hIo/y��oN&�k?(��B� �i�)�>�u��rabt�"�D��O�n�9}a/��$����l#�N>�
X� �<����� ���"��#���N�6���d8We6#q�l�T�87���	A��x�M� �O���K�nͱ�@I���AvO��8��C�(�� �Ns8��C ���%QȏA�f���+E.���E��ȰpzJ�j�����4�lԝ_����
K}XO�(�ΡDr=<,�J����_��1�q�s7��噴��,��T�{�ƙ�-|5N��.�ы�n��+]߀�u%k�.w�~���G&Y���$7��h��Ͱ
�V��zW�,�U�9�]����Q��&&g��Ӈ.JxQ,#�q(�2�"\{$ڪt�a\*����+:��4Hk�(&/��ց�������2-""L�G�Ҿ�]��edA�����\'��4�����
��� H��僼Q�kO�&�?�h"���p��Я5`�z���%w�V��A���bU$@���K���ĺ9=��+S�4�4"إ��=&��D�␐��7��q��8���#�c�}i��2�;�0�<ryc�p8ŲJ*�?��J�Xe����U�ԟ�KK�n�G�~?'������8b�̸����k+ 
����r� ��V|H���G�R39�Q�Ǐ�U�	��@����&��a�p����h���Dx�H�\eP(��uJ�XZ.�qVg�t�?���WΠk4nK�� ��a3#�(J�e��������y��A�ˍ�_���j���|��?w��)b.��[�=��Xg�!9�yu�偱�M��R�D��	;h�/���z@��LBæ:B��1Q�A�V�������$jCRX��l?!��ac� � _?{-
�2���{ ]5 q��VK��qeoϜS��3�cC��C�C�]�Ӑ�q��f���8d�r@}���P���7�Ux�G���'�g��S�m�~&j��oU�VU/;���a$5�g�Ǹ+��ᣆ�i�m�/��"9ak�T� �Y2���mԑ���n� 懽v�{f��m��4��n�(���!��L+J�;TE���8���(;�`c��������� ƁD���`g�v��UA��@2 �y�g1�,$��#�I� ��x8m�[ڃ�&��s˄�"�ŷBfh���G�{���} 	����X2��pn�weu�����P�x�����ǅ>��;U�J%@9�8Ȑ�l&� n��&��{�{�{9��=1P����b��	:��#+���'�KA�˻�D�,v��~+�]���c���&���&l�����\l�;�0|:��U��K�&3-��Ad2��^�����6&�h.��gY�A��R�3����F~�����΍�^,jR���t� ��+����-Η�x�ߣt����0c�]��`^�F=7�ڌ�l&�y
R��G;���rۥv���z%3�>A\5Rb��u��H `'�
�ē��Ɖv&\�ex����Q��xG���B;��g'w:3+� ,<�1Q�H����H���XT0�<�E�ݿ`7Re�+�@Y�Gj�U��f�3��N�0uܤ�*���Y��-�n��cc�U�$lW�`l�m^�M�S� nR�+�)P��}>d5(S�4��:ߞjش���!Vů�5F��
{4��R=>�x�]�5>̎x��hL�A�� I����Hx8�5�dB0���X΅���XC@Aߖ�& 	� ���*A}�6���t��Dҝ�`�NޫP�>Nl
�'PB�c��ZW���L
c{�}�o�"�<`�k#����p�2��CD8� ������'�	�@Q�Ѱ@�}%����TU��ls ��F�`�V�F�D�X}⪧f���"hܾk6���hP'H�=k���� nF"3݀x2z"����Z!�,=#�/4���d��G�f��,"
�!{��ރ���&E� ���A�FA�Ξ�h���O�V�H�E	�J�<5�Ġ7�h&���CiH?n
�Z�����7��܀p�E�K&62U<�K�#�Xb����/�Jz!�[�i�4�!�a��G�8��|�A��SE|��8?�%?q�F�jB��f��ڸ$�f���yһ/��]���U/^|��+Klvl���L���`0i*	�PU (��Ѣ���K:%m��,��WJ�6��)\�}�mTb����8��6����Xc��ꑊ�X:7��V�/����z�B,�<�,���q �-j����I�J'�h_T��;�M�k4UL�f���įq��B�g-������Sظp��]���6q*���Oe��ʾh���A���Q����k�����c��$
�XO�~pC��Eܻ�j����,���mwHW%�B�6ݒ��2�.m	U�Rե �C�\ܠ�F�+>Ԕ��/�P��y��m�K"z�k����2��O��d���s>`��X���N�Ba�7�x�9�ajml�n����^��kئd\嶷���Q�����}����͢q�Q�$����-���=T		.��>�0a�/���Ka �A����W���Ɛ�R�d�>>���A^O�6�ǶǊ{�b]htnF�{�5#@by��C�$ݠB��Ʊ���t����'��ŝ��ԧ��
1:���zq`�/���4�Y$�@�U�@9��I��mcb}�#���/6M�72����n ��Ce��E��c�� O]H����tR�2/�r���ԅ_ �x�r~�m�٢||9��*�<ގ&�
FhvE�+����0: �X��UW�oVs������v�@#1'rs�LC�C��\�ػ:�;�vH�(�XX!F�pW�A�	��B/�|���}�:�(�O�Y�(�:9~g`����P+�4Ny����s�^�k!c=Р	���x�G���9��r�'���ԉVp6�`]*Bi\�3�Lz�@Rs�����@�Q~�BKx��������m��`;ĊqKe'�c��Adk"�K��w=}e�"����:96\���!'	�%jv�'��= ���s�X��3�#��ӣ��'݃3;����x�Ś������g�t؛^�,F,���mq���y���=u }���^P��;df.JJ[�k���mL��Gzj��ʳ����Y�n��"\M[�hb\�yn��A�� �R� &S5n3_P�1
�}o���� �Xˇ߀�돋n��}���e@ח�x-^�d�_~�Ҧ��Nvɷ����%���V*�b�-����_*?��r�E�t+��G
_z3čb�\<� ���ut��;]�й�g�*���O ����r�f���CEw1����@�mU�ܩz�rUv�_����f� �  Q?u֡�M�
�J9�& �WNs�.�K�� ,#�5�T�(sW+�;	����"f�t1�7���y��Q������.�R",q[j6PU�~ց!�8��h$�u��V�P�(q�� 7�K�*��-"]��5o1J������	fH#ތ�K��	�k�tE�E%.�p��%-H���+�%�����uC:����s׊��	ĉ�p5���L���� ��jeZ�����us,ڦ�~B�[%KgՕ"�ګr�p�g�����<M��6��J
7��םXV�#���	h�d���bf�3�'� UK6�<��N����%H1{��v�zq�[��uh��'�lW�_<CtЋE��s��띖�k�U�j����7��\ �O @/7H��Bj�U �����*ipz�ۘ��v��d��X�%�H���e
:<����aL��J�#:��4|b���WдTq��_iD|=8��Q�=kL�]�B����S�u������: �/^S���!r$9�B �I��I��A9��z�)��	W�gj����t�!^D���ʚY��;*��-3��Y�2�^��k=M�h�t`|��s���!�9]G��{�I�߱��{[t7���\pm��\H!/���ҕ���pER�V���@+#\�	��yYh{��@݈�C�-9I��~M��N�W�4�1�nƕA5��,��x��?�b��c��
z���7.҄n��-R�;��\��*�Dr>�+Ę�)���)�J/��'AXݶ>]#���B4e���\_7�P�ܦ�ܾ��B�X�sD�[xYNƷ�(�����M�W�\� [��6�`m�`�������Ż�ᕳŀ��1��Tp1&���M%��u /�=_J�~���vw��Pb�)�^	C!z��A"!+�<7�н3/Ux%Z�S5LH̑Z����G����
u ؂�����A�����|�nɭ�>�!$��p����_T�܅�5������~���3q��0�\h�+L�iܬ��-� &��ͷ�|�\��F�B���l? �_f�T7(��=�c�x?S8��0�	��0.h	�H�3�@�&���u��=��Ç�1OKiq
�$mu}�ݼ�qS ]w�Y�g9~�(��T	h|�TG\�A��a�rE��Cp�p��ժX	����t�ۡU�T���j�i�va}�}�]�Ҹ�#$�4��R�O���L���%�ܘ���Y|�m��Q1����V�"���n0� ��>�uٕ�s������s���)�)Pt{n��f��;�yS/x�@b.bt،�~<�}n;D��^WL=���{���. ᚺ�:Z�3�����ʮ|{5:fD�%�S��ب�y�S�DS����g�a�&��c���{_N���O{^�u�����[ĭN�#�Ĉ=���V�L��~fc�lɋ�	��$F.��9�����x��+H	A���'��q�����$��"0�G�c �M ��AВ�������ɍ5^�ma���F���5�!��� A����G\|:�ܹ���?���-�U� ��,<�x�1%o�pLV��{�0�)8��Dd��p��C�!�
2���`�W��$q��gK0��d�����Ŷ.X�nMbt��5�o�����Kki��pa�/h:$r�W�]0�2Ś|Q8}����~�+���/��i�>������t��P(�&<3���\b-�u�ƀk��%@a�`P�K"=0�R��Y�Z�>ǈ:�"�{(@C�P�V(�U4_���?�M���8dG��e%0�o�! C��;C� 	4]����#N�`�I����d-�ҏ0�Z���� �����A���R:I�ro�$�ҧ��}c N� ���F{�I[��5�f���6u�pI6_�� n����us���݃mr4�)'���#g����2�C��O�u{�A`<��/h	׊�����Ṅ�\�Yo	��e�V[�&}Zq��	�o��T,�$%w���u���`�7T�\��E_@{ڸۥ�/�<�N#$�:M�Ps����/�� u��	��<�\�J�J|�o�a��ڀil�0u���6�E�ץ���~�ɶQt081��jQV�`wXaz�U?�:.��=B��� ,(�ܔ���w<q~�62} ���Apy�6��[��*>�0]5�V���X��f5���	�t�fd������8#��7"%�>1�i�оs
���
������p���Mvcb�K��=��Ata8�@Q7�e��������z� �����m��e��J�;�����ic@S �ǈ��;و��#����UK����cm��k��6m�A�{Z�+��ꄂS8�*Y������l�utl#BIrc�=v�S���dp���o�����İSE��W�f��kyv�ܺ�[B���PR<P��:�l�<��1�3`4_�d#L�lh;���7��*D�� ���y��G���*����oi�>= �7\�I6�:�Ƒ�����IY�!��Ӧ@��������D�z[&| �� ��xN[~� �o1l�����@ڡ�������X��^�x�ܒ�%Tc<P��$���?��h�`h+5�o�ӽDβ)�Oh�rw�ä-�J���F-��]C?�%���b|j����7>�cˆt|�t�Ǽr���^,�A��DQL�$9`��hT"�Se6\�1B��aR�HL;�^�n��P57^��{����\t�tɃ"su����$��������8B����͛�a���E�]�8��f����◣�|�C�V�M>&��BCpy�	�*�*��^�_��O�Җ6_:�D��!�Yqִi5�"D�nN�|�>8�c�_��NH�񧡁�C�1	G�c���N�������?�׶�X      �      x���KoY�&���0�Iy�y��$)Jb��Luf�"=�h�"��P�r?�cnu�'�Š�^�j�Ǯ�y��	��.�T��D;;f�ٓ�\��Ǔ���B�9��6�j?�g5�e�����u]3V�8�-�vU6ӛ�|�,�����t�.
��ź-o�r���w�/mq�N>.��v^(��x�hf7�?1 �닳�7��ɫ�<�euka���������S�������jg��z�lg�բ*a[g��|�� Y)kk����c3��tU]�:8?�,dO������ZUV�m�5�Iy�,f���\7���|������R��r2Ǎ����b^\~_�J*��].�_&SO�����Ntu�XHV		�k�~�Z7�鴅�������C���.��?����8�2�᾵��6��V������s�m�&��`ۊUO���ZZ���#����u:�����S���my[]Wr����f1m�	R?|�a��a;}?Y��E<v�]l��%�6�o+����#�,�^]��"��X�{�/D u�+gp�����g�u��|ha=�O+�i����E�r��d�K��6�[OS�'GW?��TG�ѫ�C���_��������G�]|XW�f��~nߗ
xyv��>�H�q��M��x{|zzB��+�k`�L�V��D�N'�����<��i�X5��E�N�������p	�0�mx��y&���m�W'�Ev��
�uq���r��������w0���K_���似�e|n+d���|�nڮVm�_�3���fV-&���?�5�����o�&�|U��Y�˺�6~y�8�<�zU0z��$��+��T�y�xR�~�m�������}�\��.^���>l<}��R�8:>�>�'ѿv�3#G��Q;[-�]|� �ʳ��
��)�@�.�%�;�5�M	� �~���f^>�^T�������/q�..��O^�U�O�HZ�JU�2�b���\_������ӻI{��-�@�����+^���ԿUᨬլ���ϏwR5�j�³�#H������p�x��O�ϕ�>}.�{��F����R�����;�W���]q٬V mg͇�nr�}~�.��2S�M��V�/��`�n�o�v�+��
k@�?\x�"���+��q�b@W�Bɷ�i���/�J�F��� �i��A���O?������������]�oV��.��z����gVJ�W?����*O/����dG�g����h��8��qk����hў�i2]\~W~�67m�zz��;P�W+`�w����k�f��4�����WD��}G��?^�*���m�	l�U���aV�b�Y�Ka���t��\���b2K�6������$��3��-xm+e�K��~hg�����B��D��i����,7w�,\��U��l����꒰��{���Q�jݱ0�+��@b��5,b����-H�S�o�(Nn[/o��fY<Q�ڲ\n�K����g�@n�V�J)��e��nb�h:��g����~>w�3xƫ������j���-�e�y�	�:�1Qل��?|/t�����ܱa��NO.����Y2�����O`���`���-������7�EU��R*�N���?�ND�$�t���a+GS�<<��D��?�pr����Rg�:���e@B�`����j5�T\7k�_T
���hK��G�Y�s3����f���p##��M�ٯ�D$��Ib$�aTqv�l�R�'���\WN+�y����d6��-8[�qz9Y�&�	��)O׷�Ϩ�'��A��<Di�q��r�j��4����
��TzJ�Qو��W��MI_���ۦ*~Y�7������20�8��|���b���6���S�����o=��k�����rU�j�Y ?m'�~�x�]Kf2����?�|yEv������Ԩ�� �@mYӿ{���??��֟����
K*K`p����A]9eq1������:�H��4�sҰc������  �q�o�� �Z/�5�3ܺV��}�:�?���G$.�J�P��i~yqv��B>$�Fx�!�W����%Z���K���9G�cV�x�w4��n�[�ؠ�@t~j&�HOe���\�bt_z�8�pU�#�#����E����gj�ӡEP���Q����꙳�)��yy�,�ϋ���d	�`5�C(xę�2�9���x��E�מ��1�NE�N�X����<ē�c�|�:��9+���vwG�S�hD���	�(��AqҬN��Y �=���x��Y
Ps�	̡w ��+�v_���p�^>~��\5�%9xTr���=�>����ZA_ǲE�3�/B����A8��o��cx �����3�b]qxux�c�]m�����H ,�?,�x;�y���f=[�O�Ky�c�,N�d���#^�����H����섞|�N��س�������� t�`��SŃ� =��7�,���{t��A��AI�AIS���ԻV ѭW���D�����sj�vr����[T��H����'��[|5��P������<��X-�ߕ���ih!�`)��̊-�����<*b���Ŭ �?س���:���4W��d��O
�%�G�>����_n;�m�tTE�YV�`"(��������6�Į�H�Z�l>�p�V��9�����=������mŹ��ֳ��/���S�����'��V�?��-��߁E:�yV^Λ[�,��Jq� �8Y�	�9�_1ɼ;�}E:6b���/��&�-�0��p�oΟ����u��X����<x>i˷������� ��^e3��m	F;��z�z8	�UDc�z3*ћ�H�����\Ǘ:NTB�a��x~qU��Q�D�+�M0�x�r�:��`֔����P�s���J��W�g�_�z	�۪,�νA���\��D��Y�c�8}���\7��S�}���1/�/�����~�	�]��e;+ �0����j�yvs7G�8x]���[rY ���v	y����0Z� �ߐ��]�׋?�z����x�`�K Z���wa���|y��]�V��,��e�33m��חE����Y�=s�I���ŭ����Y��(k� ����:�����d�����cO��[B��2�H��ɓC�1T�18���ׯ�O���3�	�O�`�^ߵ���=*g����|��������R^����7��5�����.�	�D�s|s�@��������F�61�
b�h2��5>��b��s��2����փ���'����u w��e���)�u�9=��\xr *,Y���7�`����!8�5(���\�\��v���q����>Y"���:��/^�jig��z	�Y�^�) ���7�-�?�o�Mo.+͛�@��ye����T��(��B���=�s"���3�$����(��͹�Y@����W���Ͻ�����DZVj}�S�⡑��Z�W/�n���� =�I�m���Ĉ�'mF=i�#o����'���n�|�8:߀q�).G����7��_N0&u�2������w%�w�������y�&6-�� ��V�[�p>���s6y��]y�-��f���zw0�A��E�0�h*�@�\�x|P8��;�*r�Ɋ/k�������t��eր^��'�Ӟ�*�u'��N�V�.�$@���>4asI�	��V�c�S]^��<''�Y�?lO$���=����N N����h��A������ԧ�d6����R4ļ9e펶�oli�< �-@^�����ș'%&4�n��ؽX/ �X��5�-_,�+0�0��Y�ë�|,�(@�¯�
X�8� ��@�i�����1$���$+Q�J�������@�� )3O;�eq�Ē�A�����cC`B�������ʨ��1бQ��
�O�� ��-:�����[,[̼�7 |�Dg����_�b�"�U�����.�w�(o0�em 
)���`bg��jq�    k3-��F��M�}_�#���?��x�]X/e1�����_��K���}u�,�{^؈����E!T,�yO�H9oA������,�����I���t�5=iX��TYo ߴ˦<Y6 U�'�;�p���܇�.���=�ve�k7Jg�]l�P��Q�����V\�?��c �;�<'kA��T]6�c \|]<�*�r���WT�U����d%�k��W�v�+Q{�$�d�����!��4�Es]L��	��e�n���e�����U�*�վ��kgw��Y�+��y;��RO�?`+��o&�SV��c+��,&JTF��gS�������b�Bʘʹ�0e��}���.�jh6��*����=$a�D�ҥ��\&�)�M�����C��H�S�������eN_Tu��/�S��;�����.��X~Wbv�F\P�<&���B���{	И�������|;ښ��t-"���8S`�����QG����bf�iS~l&�C����r�̋��鲹i���0�[����w������t%K��w��P<�=?����1u*fpj|\��������N`r
EB����-����̧�r��c{� ƙ,�(�|�w�K�[����eD�����=̬P=�ۯ��./~�.rfN���#t�9R�s���-_�3x�����E��Xb�p��|q��5\:� �|MԿG����Kt8`̓���w��0 �K�L4P��qe""L߿2FD����$B{����DZ��'�; �!�1������(�^�̦idm%�O۽j?F ����(K@"pO�wkPy���'�\�S�<?�����&v1���`�U��6Jp[���j�8y�ǭ�uNC����HT�t4ɷȝ�jL�F*<��G��1�
�{]Mpg��|ѠA�n�^yP�!����t�.P��4�jݦ3g�����U�I�(0�2ݎ�B}���&��g��f5��|� �e�R�0���~�6����sz�=r�>���`F�4�i�������7p���(��ch[���W�����s"�]6����R^6SO�D�~�S�f����S��ݴ		E�f���ߍO�ar��h������bӦ���ŋ�b�_��k�O�R*�,6?��N��]W�����=�,������n��c��"`D��,���}r�6�Ⴅ��ߊ��>��#%�~����}f�X���$�H2�Q���cu����l٠�.���#ɘe�P�c^��y����8��gl]��,���m��@�]��آ��.�������X����O�}GD*�~	���� ��q�����������
�.��\�>���|��0)���k��m��V�@\���M	�-��_������ݿ�w4�ˬ�|	r�"?y^�]����>���L1�e��d��V���
�`�Mfޑs<}?���N<��g���/!d[̷�ɉcL�C~}���WC�cc\�X��65���U%Ӎ�K�`3��Z�S�3�b\b�,Xa���5������V�_�x�Ͳ�Ŗ%�n*gc�㷱�-�Nf��������r2݀)��5��m��@��O�=�$|@-��3+cًر
�X1�3���e/ª��	�0=��||�T����[�[}]�����=X�o��z��˂0 K�%�mO� s���Ʒg0�~����|	�8m�}�� ��iKhW��s�30��8�/~n�Q�7�XN�y�y��CD,V9\\_��w�{K�w�	�J�v��V�Ϟ�Q�t>\.��%(SD#���3��~_��Ei�$Q,��YS6J `�{6ו0{����xK� �˜U_T2o���;�8=ώ2������B�;������S�(I�c���?ql�`*�&� %RW��M%�b���NZ����ZYa*7�ߤu� EN�5W2�P��P���ńȫ�F�p����}��x�W�.ϓ��0,�_�7����IQ��o;�\ɬ�e�Ė}P7�3��M��a�Y��C��U���IJ�S$cJb�����u2�l�?��E�m*k�����[ւZ|���Z=��>�R��<E�g�(�c#���~�/������%�t�K5P�Ϻt�S�At)Dg�0��il[�T�;X�b�j��u��)�����N: "Tx�ZGOy���ob'y�Z��'e�y"$��x��%��w�9VI9���==yI����U&X���O G��{�C��:ߕ7w�z���՗�]�Κ	���-V.sI�䋣��@́`��Թ��/n ��:XM��}�B�;]�6Uq2{_�/����f�ݠ<�ʪ��d	�Y?;(��.�`�y��?l\���<K�:Z���+���6�j���d@����/�{]�����c�X���M�� 0]ؤ��=��$�����}'bD�����Q�wCb�l e|m
bel 7�I�����E�+���bl�R2��{�L47�,�����H8Ȑ�$wC���]�;iL25,�����AcE����co�(c�?���L\!@#L��5��XS�7�ˑX��|XW�Pc�y�&��z{�p��2��*.�*��(y�[�"����h�`V���˅�IyU}�*oݠ#�����i��yRİ�X2���i��qj���>�e$ѭR�"�9��m(��,1�d�䏟@+-�y�堟��^et��mdy�E@R�{�~�V��D���IbQ�x�|>ǿr^�cW���(h�U�9����+�1
*�b��<�"��u�l_?�䩑�������:�l�o�h�D$��Ds`&z��m^(��؈��R��� �<�Ӱ1�o�$u(>E��ˮG�X���[��qj��D7X{{��ѷ�d��D�{h�rG�H��V>��d([�> T&�*�.(�'�K�45�/+a��0�-�����|��rK��i���sKx]%���g�JP+�i�#���Jd��81}'|^گa�\%	�un>J���0��7��B��-�RP����s!�䆵��]��7��%�!ƞdU�NH`���7e��R���/�bFW*�C�uJ�b�� '��
�:�EZ��@3&�jA9�#��> ����M)Eԍ6�҇�)�3DH�o<�(���K��]�88�)�zH��,7Aj��^6B$UJM���
Id`����]���Xګ�Q�"j���#�ꑰJ@G��*z1�2C�?۹3/��_��%�����	�g��|��nO�tTE��2u��%���
UӺ�^��#��?O����b�>#LԕoMˬ�j�=d0=�J�"�f�)	P"�ulۗ�-�UJ�`Tht�蛒�XϘiR���|�j�;t��-�i*�i�7��j� ��u�[Д�~�X��Y7�N^*��t�����1���]�Lƺ�.1�|#"P̱�l�.[R�(=$S}��7�����"�Ҏ��8p:0�T�,4�!OMs?|�oT"5���g���׬o��Ґ����!e��?��#�қ�%�������lLj����C�NW�' o"���+��}h�*��v�rO��՞Ub���V��g�s���6�`�`0�:�a��q�����[uO����),�!��rciR	��g�@�E^ײ�<�u�4,��hb��[E��g�aix�?��;���Z`�kL��(����X�~6՚ ��P���ג4�T=\�̀?>,+*���q_�T��r�e��ò��XME��Hr�6��6�_7��>6#+����6�s h�S�Sa4W[��k56�b���-���d�.�X�1��#r�(��p|,���R����e� C(��`y.��ܣ$�`w��3�S�U�"z�GubX0I�����T')x_�	�G�j�˗�u���j�%� ��w��x��5�&����)��^9�NMW ��;�$+Itx���@,@��H��s�u�n_}dS�[���(@��}{4F�W�~�I4fO�;�^e��J,��&�7�'���y��� �G������|r3y��t    ��������AǸ��{$O�X1؍��X�w\dB`Cٰ�Hԁ��êb�ݿ	+�]pfw-/�\�JvFi�>�����} <X6�� 7��+�ĆG�@C�Ǧ����ұ�{�l#ǌ����U(c2���SN~xyH�?}T�&|ݮ��J����;�V+� "�y����[`�<�~���1�g/��G��='zl���G���n���=$fF�fY�a)[��"��eIِ���*�-��|�F��Eg��b�[Y�B|N)�!���J=�!7��U���|��f���<ex?W��EۗtT�?��9���6�{1_`���<�d��0��s����=Ǩ:� �TFu�m&E,T�}�`���8�cQ�Jb'��X�����SK@��\�b"�P�W��$Js����$ �@)�� ��l!{T=}Ae���b��0��M[̓te(@���ԙj��-(B��֭@��x�2����P���?}�	�DN�� v��x�,��h��ub���smRK�}㧊��}*�
����>N*
��͞�CF@��A	7��@1۝����G��H2v`�U0���vg
�6O�!�U��PA���w��(����q�����Q�k ѡ�m�п�UM���u���G��1�W(x����W�,A�f��wH����?�)��+��ѣ|[z��|���f�WoM�.����8 ��Fz�Im���4�b�1	
^錔c=�;��;fr��ۿ3���~	&�����4}��OC�%(\��Q��aR^9��G��j�G�-��z?yq�.�ռĖ�;�N����Nѓ�9�Ru���B���5�	'��I��c�>��kO�zlQ渔������)xF��t��Tv�>��[!�x�~��K�w�)���/�S����Q�x�^lA�1�N�hL\ ���.��B��2U��vC[3�7`)�	�/��|~m����C�z�3�k��6T�a	w46�S �]��D��{ǈ�W�@�����*���l?�=;Ĵ	%8h��_Z����c�F��I�-h{�ĸ�.\����}=�
�g��5�(:���K���u�xV�[���ݭKӓ8RJF���
�<��`'M����ڔ�1 �H	I��?A��}��(BZ���PI�	��4T�|@	�/�F�0z�^�u�u�ؾ����!�LAz�7@\�X��N���"��KRF�v�����U)�fEk��;�����m�*؛��u�";�D0��N���6DWHV�:8?�,��4UtG� ��r��a��Q� �2�ɾi��c��m��*��3kH�����e�Փ����Y�+t������[Mt-�Z^H�ճ}稔q&�ܱ<�dI0±�1��)��1���p�ϹƜ8��#Õ�1��[�h�j�Ck4(�J�n��I�:A�1�r+�Y�E����ht�%j`�.�E�s��,�٥��3�sm�{D�Cr���gCf
+�6RZ	U�a�Iă��㧶*�c��gR�M�~Č�`�~��Ri`� �)w�J�*�<K샋��.`�����u��4��Ԇ��0M�s���i�{;a��?��"Mf�_�fSmھ?�J1Q��"ѫ�>t:�P>�}��F��~���o�.���fG�T�?��
�:��
ǨSX`����e��X��ɮ�3�4�C�&��ʷ� 0�;���lW�(Q+� 9�F��Vr����F�qWZ1_|�A�q��5�P�4�Yn[q������T:3	֓&&�O����b�:�첓��)yxm�J�Fzm&F'�.�>Dt"g�脶�K.Y����LJ%b�ڈ�X�N�Ċ�Z����.6��M�R'�&�t~#���u$64l�seF�;*	��@_����A8�7
�	03���]�+9��܈��=Ad�jv�1��DB�}OFb���+*䶮��(��T,%�^���a	fbs�DA�/'�[���g�7?����f�����쒕8x����k�鼦�K:�M%�A ��48;_�K����x�F��?���//h�[[f=C��ϼ�v����8�v��g�R�������c�O����E�o(�v���`�fO�\�����Ｗ����Pbx8��v$�����`V0�ߠ����j�D"y]2Y�̋#�-@��P�z��f��}�ը.�u0R�,&R�]�y��6�pH���|�!m�����in�i2v�Xf2�:�q�8��bD?�ib,��T�Q,���_��|�Ec�^Ϣ{�c�+TVG��e�?���CJT��������P����=��+��뙨��Ȫ1�Fo"���u
1Djs6K���LV�ǒ�Z�5"DLOXR¾�7�o�d���ȫ�	}�;��!U`/n��Ty+�7�e�Y���0s(�,c�C���O'p���ܦ&n�׌C\n���N܄�4�7��J�Q}I�)f�e��ntAń��o��UR����zR�M�vm�R18��:��Q�&NR]��މب+�@`��03��n��H�mE	���y�架���I��^i�f���t,�7��G�i��e���:5��&�{�Ma��9��s�M�vy�C��Zlt�2=���#j�I��D�u�L�l&,�M�c�0���X�{i%��p,YKw�:�^m�\�bq?��'_��W�6�Ԏ� b(��Rq6H�R��s�aX&���x���?��`�,��y����u��B�IZ�õ���&�[�'��Xy�x��Y�P��Y���ٙ&�����T���Pt����Xl�gt�]�}'���e�?�S3NG]�X�R�& ت�>V�7g�*	�]f�dS��]V��Z#��dD�v���A�"lT���ƻ<9=��H�O��}0"H̷�)���u3m�����z�8h�W�t9�}�J8S�kP�1*�:J��ܪ�|d("Ҙf�	�]����vm �� ?ׇ1l�K$Ӭ��	s>{��\�o���)c��4�c13�w��'�Dz�r!p��Nc�3k�ߡa�ܵ�Uz��4����+h��E�Pխ�.�5fS�6���9����t���5(��W�G�淓E��ɐ$\x}�'���w6�K����/�L��o��Ͼ:\��-ή�O����qL�=����o{��2 ѥ�`�b��������,�[<��Ky�~^��هӞ6�R�\MV���?f�������y^�A�������)q�`��lX�i��C�ڤ��{+^�����R�Qw�i�I�J2G��jТ!+�7���K����A}景�:�)��.x(ҰC��`v$���:/Q�����%f�7$��;��P#b����L-ҠA���~c�����(�6������AҚ�M5JC-Fe�O�@R��j<uӱ��$�ج�"x�e��+:TL�9@M��$I�b�f�Y��I����V[Ш�]1.VL*����J�Qù}E6$R�4[\���`чg� ;��U�`M�qcß�d ��S�󄍹�ƥ���I3A͓�s!�`�%�	���:8}�����#B�ǐ������'0k Ҡ��� ���6E? �`�r^�����G��=]��Z����4}a��Z��7�xX��E�T.��+�Y�����G�PE<bB��)�*,�Z.�sc�Y<e��T5��Feo>�w�S�+��E3r�$�@y�y�BVJ�-Iժ������` �CCQ;<wC+�ae9�P �`���s��_���-��t�PC;!3� @����#w�����-�@fZU*���+�)��N�ׇ�4�6r�{�,�_2i�;Z҆Vz�̼���ɚBŜc�@�z̔�#�"�g�*����UmP��HQP��l~�����ۘ��M_F��l�Ϧ�)�j��%�����ю��^5�ꔜ��b�:�v<u�y����`} (���4�j25�6�OF���`��/�-.�c��dh�q�i�6LH�x�=z�U�x��X�bF0ߠDW�����������y���|d]�s1��]���{,#����|'����q�b`�!u�z��Ц+Ln1h�Q    �(iJ��PDdRe�<I&�CF_��z��`�'{I��d�<f��IJ�A��ȼ�5���1_ο��~"l�U)�mT�m'˛��!�Å=�ǽ�uq���	Y����<F�����s8�c��]`,��/���H�9��RE��J$K<>>��Y�cT$h��I>�lP5ݵ���cգhtEyk0;�n����l�w*�m�TZj���M��3�,� ��t�Lf$��O�.�z�S�8X�D,��T��Ӳ؝l��oy�'	�Ʊ�6%��e �B�O~�i���y��Y#���T./�"A���;�-B� 7!='R���j��u4�	��5�����I�ښo�c�BY��?ƃ���͜�6̃�4p	�8Ͻ�7�+�/�Ը˩a�Il�2�6��/KHsz��b�4je��cy�AҌu�_��������R���|H��c�f�p����Þ>x��ʐ'JDFС�E�T!94+^'�G��W�27�o���e����.e�ʻ��kP� ��h?�s�� b��(=���+�65��<ИS&.�����Z��h����7ۭ��+��熧~Ŀ����~�.R�'��X�&���:����t�	�C�K���h_+��,�͟k[�aG�^�;.����b���F'��d��\�N%�r|[�
1�ū��c@S�<���,6j��հ��ܭ�V1x���vK�T����,:ܾI�� ���!��5eJo��'��B�!��f�9��T��Q�`����Ó"h�5d2�Wؤ��(NޗGw-6ᶮ���m�Ʒ͗X��7=�]�����mp��2aS���s�bN���a�_FmE�K>�M���G׽��n��SuP�"�Ƴ�l\t�ar�l�Z���%���P$ϩ������-n���[|��[�����O�2��<4��<�0&�bش|x��)b��aF�cN�E�7x�7*�T�� À� >��	'o��]rtG����ٔ�}Ne��N��	(2�����;�2x#Y`�q�������a6�.�C��}��ԡA���R��c��$�("�$
j7#4�@&	/�81�YN���#FLx1��m5)�f�e#B�gW׾?�1��۔&ϬTFV�g�x��!�=z���`k �1�,��9����;V�Q�ԩ|�>�G�Kܮ�}�b�G��b�oBWw���t��bMTjk�oWw��K�C��wE��cq�h�%��h�ˌ�7m R\��q�g�s��ݶj�z�/Yh(f��6"�W�ߺC�}Y����`�	l���SԼ?ֵrH����1�a��	���pg�� b��SlxE	���1��1��l�(�����w��>�B�c���Zӽud{��,䈦��1���ȑ�J�S�N .;��x�0ŏ'���߱��5Ӥ�?NfK�5ӛ�|�Dh���b�G��u����5_Zt���4T�/��@�9>zN��^�Ԕ<CD�y���O��ބB�_����ǘ
�ˣZDr�HOڨ�iJ�ŝ�]�}�ul��6�αD�N}��L��U�[m�!ن/!Ж�y9��u#ȍ��t|�˃�+��f',	���s�x�x*v��۸� c�K�Z�sPY�O���42/{�[9�b{�� �\�6�9���s��zP���3��髮�Iu��N���qֻ�x�,�t���чty��#y(��, =k�L�q��25E(g�k\tQ�գ�(3�8�y�᱘@�i@۠D�x�ȟ$�¸RS�@G�hb*��po�����ҩlc��Q�X9�w��6�<�Q+'�R��V�8����ơ̩����/�(xszrI��19?�Ĉn���'0B�K ��a��_���Mu�Sp�RⴅS� Z��He�?�.�_� ��m�<w�ne>�^Z�^_U��}F.�3�(�`۳8��~�>Fױ<���^�mx�
�T�Ze4��S@ϩK�
1;�d�6vF�b����܆�Ҡ��.���?
F�,�qv*��.��4�X��A&�w��� ��*�c�v�l�����,ye0l��cK�Ks��M�_(S&�!C���o.��jS�4Q4�֟���o��Nn�^AX���`�L�����
�(�[%N�S¨b��ҸA�����Q���a��ל�#
���U��B�^�IId6��D��TTժ�$5F��lz�uC/�H�K���F��m�z[�Ų#;�0bcR�bز�x������c�2�c�A�1��#m"���=�L�����ۍ]#0.�w�!��=8�^NP�K��Rg�=N�Do�@�Ժ��>i?�O���������������-��G")M|`r�6a�$ߠ�iM�x(�D����4����;O@:"D�u�0{aU�� �M��&1<���Y���+���S �@���"�Q6��]���Mݕ퍌"1o���ꒊ����,�d ���S�KZ����/��ٿi0���"آp\����/�.��r��1��ye�UX볽Yl85bccM�xŷ-��gA�KZg�^�n� ���m�я�[�Q�����0�	���Ǻ�:�f�:���z8mP䱓��Ǳ�h��URv�pb�s2J�q<��e��M'.�C=�$޿?�q���{��33��:���V���ǔ�M�ԃU����FL���k��X����~��阠K�7�(��Py�R�M�.���GϋM7���|r����9Hp`�w��*����.���l��m�,�n4��si�(J�"���%�+$������E�>���xXқ�� ?7���<�M��6`n4�C����@�zMe�oӚ̌��L'`�tv֢ES>b�ʃE����;g��br�M�Ő�w��S�'h���+Sq�i���[,����z��� �8-&)����Y���;�4������Çݱ�	盞�D��+݌��	�N3�7=����%	�!�հ�61�#wu��l=(��<6	I����}EUp�-l�h�ӿ���N�t��7c�����+3٣�����8�K�#Vyw���qr�B>��J��,4���n��{���f���hYh��[�Y�,�U���,�1D<����:��6T0E[|�$,+͢��38h��$RA���C��`|���L4[�C�h�����V#�sh����Ȕ�%ar�{�$rdG�LF|�:��lיmc9�,�qF�]+q�m4��	FZ��C�}ӹ�'�*¬�X޵w���A�zI<t3��X�Et��L�=4��D<��uw��)aw,/� \����cp9��]g��p�fy�ڮ�c����)��F6��/$�����v�X�:���b���`�r��:<{0�+1�8�`���-���^p�*Y�kmL�l�q���E�ޓ�}++F� f�Mʳ�Lw���]ޥ�lRn��`�~�pp͊�w�p����Ȼ������̸��
V�x�le
�#�n^������c��Pנ�Vh�V��!YA��
�J#���K�|�)R!m�,ԝ���|AmȂ��4�����������\�RS2���'�x8��RD.x��+�b!�W;�bq���2zV�!N$����!����l7}`�~��=�enq�gQ�Ф�{k�HE�R�ly�[s�y�͖�]�V�jxے3���A+ud.N�X��jC�n�X̕}�C���z_V��pT �{cyi���\�sb���s6L%6����䪽�j���E�v�~)�ѵ�.��E�3=Z@�J}���H�O�!�$U:%B������=$,��Bv��U
i�æO6&n�:�`��R<�y�m$K0�7#S����qN'��U�������l��tZ��|�BJ\���伇q�L���oVbҸ��Ns�i3P�Hē���8h)Zc5�*vv�
<peֆD�Rܬ�??8���¼7�x���8>�'����bO��;�Y�j}7R��T�y�^�?�`�,�A��Q���h;����kEtW�;(���:6�����'�f �V3Z��	�D��x�z�ɮ-��    BU�S�}HYP��I
z���ku6���[Ld���a�L�%-�}by~���jsL��~�]��
�A=TxBZ?��si��#g���v.r��v��(�����-aу��<��ǘ�`���PrsY�y�0�
�A�h��g�$ �c	��}Ffp��cr�.���% �j��20e�O�8UOnC�2���~�!>Y��V��f�fT�`2��vC
Ƚ�jn3�� d�mk�|�ͭ}?P`�y��m�(0�ަ���y%tH1.00/����2�sTV	�A�Wa/�����4}a��jT\��G!&���K'*k�s�`�l�f0.��p�&MQ�J��Ƕ��1����}�0~1��N���,�Q�->z��U���%�|Í��
BNQ%���n�ڽµ�$�<�X�z!"|�kel$w��aZW���b�d�һ�[_��$���V�I�����w06}�S��TZ��xpz������a0�%��>,�޻�g���$���Mp�������(
�i��Y�J�3����QB�̩��8ڨ3i*���s�%,�IU`Nj�kB��xn@��f}/b@S�g����e�r�}���NaB����q�	`q�Ő���	��=��I��]�yH�7�˵�&u�6�}�.V&�a6���PA��C�l���p�ٝud��ď��T��ߤ���"��G]�J��6#6���G�焋91M���1׏,������V���W|3/OW�MU���W�K8��3:g7��i�U�Z����~����F���u�0%3\���7�x�̕���v����q�}����j���D�4p��+���M�N�Bؓ�lU�F�0y]��X�����;<E�hġ����(�(FPZ��/d������v�[��D>C
]��q��>Ie�S_�~[\����
��;}/H��&�)��v���^��AHw��3K�u~�1\����Oc;�b:er�w�40�	�y���lW�xv�<������H��!����]�k}���3�p��ts~��'���X6�%=�n	��T��s�"F\���:�^��2�N�B`����pkLJt#�����8;�S!���it��V<�	L^~)W����Y�#�]�y�b����Z}��������i��X��%8�- V�2���+e�9LG�"g$h$�Z���u�Cǌ�9�b�(�p���1�bt���O�(�\0�Ԯ=c������bHa��O46;��8چP*���Dc�6fߋ���vW�'c�=�s����Kn�n'�Y��8��c��-������9_���&fpH�w��8�dB0.G��p����E���S�Vَ�dt��fO-�� eVJ#�B��%��{���]��Q���%�8��H�|��ϰvp��*MԄ�u��mqfK	�:}��s`{�Z�-�ƌ��b�5�X�ℤ�:���)�ywX���{U�P�q�S�}��C��He�;�oCO�T[8���	v�Em�F�'@�q�:���i��Wx���/��9^�:�bQ-�ES�ܸ4�fܢZ'�ϝeڞ��BQm��<w�f��]4Ã�U�0�t_����N���d��\tu�� usxux�#y�,���K�� �ڂ�Q��z�B��<�,n������x��c^��2b�Lrm��>��w��X�L��dQ>\����x�)���	�N����.�`I-B����{�v�Yb��:���}��n8�%���n�r�cH��M|U�:[�ѸI�Q`2z��2';�5���f+�m�|"2t�u�3n�=��F��v���}nԠ�G�R۸-��>F��f�8%�[DQ��6�i
�+�Us`��5�يH���<�!�c���}~ V��6B���?�-!h�W�ߩU@��E�T�����XŤb�׍�:�h��uq��+2y���N״�`���x��������f���ې3p��MBI�x�u�7�+[BP'F�b��\�.O�-�9M���l�����榙�5�-_,�p9��`��c� h1_¯��Į�廹��L����{c�"��}���T"NUCԩl�/##-��Df"��-s:�ْORN��tQ���l9��g���2T'j�&9z�C��K����%�_W���5`��'F :���b6g5K{�?E�sM�ҫߝF��}vv���H���N����]�`��$8i}��t���;�������,����.L{\:ʸ��L��+;�q�I��ڌo��Y~Ì���4s8�a�/�����uU�p�N��6".B�Z�/wSϲ1� c7,"�T����X��w#,�� �m�H�|ʖ㝣d dRO�-P��Rl>�����N7�a�	Nɰ"(��
������E����*�,gp*v�!m�%,BC]�)(�K���]����]91sMh06ذl#�]PpK�hN�B 5N<��~�G�{��5#�x^++6J>� �k�C��Խ��v3����ܱ���K���STY>�RĈ��.w��e� \	���XB�-�Le��ʰ̨�+����	�8n����<��f���B���,}٢C3k "J��mtr`;ج��c$}J�f��7N9�c���|זCurW�0^o~��(T	4e��#��:L�6!�d�~��HFm�0v#&֥�� �Р{'M�'w9Ct�����=F٫eZ�;-��D�x���&Е�O���d��������`ۨ�R#���xh���$��D�r��i�P��b@���Ű�`i�3c.u^*�E�r��A�db�@f�vϥ�KC�P����|�2`ܐ�ey��M!�@� �E�Փ�J̎�� ���[%�D� �9崎r���(�B�(���������WL��c�~���dE���zR�0+l�"W�;��!|b�8����;���r���OG���:TsX��a�!l��|a?n�������&l�i�RR��]r�K�`��\���Pa{�:a������dv�.��dټk�叓����e��������cV����������0�w��\:���r�s�{�����vY��j`@���!�aK�[e�0o\ۮ h�t�B�R�X���$�lCUB�rJ�,&�)!�+�#��"��:p�X�B��^���Wy�8	��r Rn�W�����a���-+�`sQ�1���a\�Տ�yk)�5b���U�I�c'����7J�IG�_�0{=��|�	c����;��Pw�0dKꅧ�E�賗F)a��a/�������R����gɁ�Q�m�9XW������=��:�$Mo��B���0�2��C�?���)��M����ER���{3�Șf���H�8�V�")C{�����n������"fÈ�T����* j6�x��B��������دa�����\��<�_�o�y�k�i'�}�0/î�yF+A���0+�ž7)vK9BNM��kf��(�X��wQ��I�����x3t�����'����:G��u�pM�R��;�u�A3!�.u��� ��FnBYe)D�Gw�����〙-[���rK��sN�a�
`)(e���y�h�K �Á�T}��Sc�w*�|�>���V_�v���D3�Vx�ިc���C��dQD�G�ȱ�6e�ј5��T�6�ԓ�بˎ����7!�jK�@�k狚CB 0�Ф+ -7�T,�(�����(���Y��6�6iz�6u�l=b-5֠EΟ��l�f�5,�����-������z}W����h=T�Z�W+xW+�84�J0���["�*�7_G���%+S���$eȧ�b<֕�u�)�U�ڳ��%�acrg��7�N$͐��1�T���Sx��[��B�M�^^�ʤ����&ߨ�~t������G��J��'�I�Qt��+{�?�2V������f��-�L= Q#�i���ث>�'�v��S�$�
��72��L�`�]x� �Lq~qy���޽IS��X�����M���g������\����r/�- �  &�嫷�d�N��Ɛ�M�����D�x �.���j�.z�eU��b�Q����h�@��7���
����-��	(z���z$�j�	��F+��]�3F3,+�M�Ȃ�����D� R�~��X�O��͔/E�]��Gu���{�@36)zy�I�]���` �c��>_�d"�X����Q%1ds#��>g0��؇��o!��>��
^��ۘܶI5�/S���J��Ա�QO���#�	=B7��"�����Q�`(��p��1J$_�m�����2"&C=q�a@�p?
����␾j�/B�E0��a}W�����ŀ暽����`�����Z`��!�k��.�(���T�)Ew$����A�)r8'.�޻K�21��=E��f�f��d��������O��      �   c  x�uWMs�=C��=�E`0<j���ؒ����J��@C�C��Y��ڔ�{ʧ���503��e�eK"�����`�[mY�K��Ϧ��<����(X�bK|�ą�����L*~Ʌ��l��18�b"gj�d��	�r�3���v8�	��K��K�oNV�9ay�Z^(�0��������k�ap|mt睅g�/U����mǤdi��u�~m}3�7����`�d1;&�"I�������M�]�װ�ѿt�mL۾���5�b�{qr�%��s�wW6��𮭵�%�Kk�����H1^!x��]�-X�iwyQ�;��ۏ�W�ь�4� "�! ��y�ح��������n`
�	
��z��ʙ\������j�,��r��N����~L�Q�M��d)�߅k��j�\�pZ��o�+���������=|��7Q%+�D��7�mD_0I.P2� �T�P��?���4��&�,P�$�.Kٍq����ld�����I�x�?c����O�{9�#�
�)"��t`�UcK�o�̃%\��(�޺.:�/صn�n����6�;�"d3��\ *9�bF�vo��֗��=�f�r�}��qQʃ5%B]-Ċ�"p4�Ʈm���ʙ0�V�{��ʄk���}��Ta��c��Wv��;}р>|��5PI�8���f�z��7���ܙM{�R�>�8'�$RS[Ʉ=Ν�G��g�f��O+x���o��v�񷮷�
-�4�Q�XN5���p7\k~7���C��������XN׍�:JR��xh/� P���Tgo�;��Ek"�w��D,���Q�9[�[_ז��;�rf?R=B��Ŋxs���(��㗮�A7L�k��#u�K�$_���Oi`P�&@���Jk��]���?m.�X�B��:*�@����)�` f�廮������Z��
 ��X�tQ�
@�������������j�6�yA(�!�nuW�� ��
�-c������Ƞ$�b��S��U���.��1ޮ�Zw�t_n�U�eߙ�T�9���{c������=�"3�e�kt�1j��lq��G���{`N��IW����B�o�,#f�Sސ����*���/�b{&Oyy�J�%�F>������[3t�?��ms�W�� "E[�u6�, �(C 1�6��FI��)B#Ȧ(I��h6�\	�7]� (w�#�ɁE��׍ޓ@~�L/;����E��e��܅̮AM}������v3�U�ݷ��i��#ҫSۨ��>�-����� 1� ���@ӖCJN�B{K(Ld��8���:M�n����6(Sg���Y���X�0)�@<������tN�Y���I}T�����;ov.��UU$�s�)�b�
���:5ᑋ<Hۼ�aE�϶��MP�dR�!C9�1z��켥���F�hv������F~�N�H��v?����pąZ�~a��A���l%{e�qaT4m��"!��v�1!Xރ�۰��� ��t����YS�]�������n��Á��U�iV�9��������g�h�a/��$�I��O1��/a�+˝wN�c�s���0uG s�^?�`b��M�c%f*D�����}T�־v���zZ��b����s���Q���a���F,�q�� I���� ���bM��y���m��*�A��va��^�p��M�ē�%�l'�E�d*7~����l�i2���Zȱ�A����bjk.����i�� �0�����)���c-�� �k����d�Y�[�9<�\х�XH��[?��j��Pz��/s M�ϊ�,��5s�b�T1�|��,;���Y����Ê�	 ��G���%9��[=�`q��T��o�j����TN��X���9��w�� ���;w_X���HW��jCO���M7x�N����ֻ�ߜ�̧�r2���<�`�ߛ��W.�]q���*��'ݚ{c��p����uE�鎄־��A���lG�acA(J1R,W�@l���9�q��8�pg{�B;�灿i��i7��&'L���� Ƀ�'G|�:z�Ӎ������\��p���$y�޵��N7���!�`k���&���_����AF���l�Z\\\���(�      �   ,   x�3�tM,.I-��2�O���9��J2@L���R3F��� _�!      �   �   x�M��
�0F�{�"����j3
*���%��6XJH��-(��[�w8|b����J�K�)�D$]m5h���^4�{��W��Ρ����$�S��.��P�q�b�;�*�hY+%�1RU���m�j�����z��$�V��"~ �{+�      �   �  x��W�n�J]��� ��>Erv��ȉ�ǵd�"�RGT�n7)G�� �,&�Y�N?6�)�V��5[MR]]��SثϺ�埍,-;�rS�t��Bv՘bʭT:�Op)�i ��05�j��*�b/ث���	{�^ipHI�tB���/�Bv!���T�+K��S��DTr2�-MEU��3�Ҕ�P��K%mmx�q�ң��Li�G��^l�c�){?�!��ob��&��q��������^���r��W�N�\�Z�]��T�����؈W�ҵXa��y-�aR��|�MIץ�zJQόq��7,�?�!
���4Jv�Q����ӳ��w�#Q����T��p+�9�.�y'����9�8��xX��n�q9"i��/�b/|����d�}�6uYp*���-�+��p{�lj����n8�A#Η�4}��(��9n�qO_k�+���R�R���#�eQ��)-�Ĺ� ��]J�����v����~�˩�;����63M��Fwf��|��vI�<B�=�8
:i����Cz��SA��T%�J q+Ƈ�Ӻ^������{o.�����B�_�֖b������Xؗ�v;oZ���Rvŗ�^�#�h�7�u���៩d;��c�k�-�
B����(�ndp%g��d��8�+,ۺ�q�	�8zZu�,sHf�Y�W5H$m���n�t%j��VVD}��Ü�pL t�W8�*����.�i�@��ֈ�mK���>����b&�f���^�����}�ٛ ;��%:�P��Q0h�u�8�.Z�^�B15̳��	ʹ��]c�>8{�D
�ro.�,���ồ�Rf�D�/������?}+�,�qXMW��������"+d�I��n�o��N!a4Z�o����h0��? ����{5�u���Ia&��B���
JX_�Ά�i���0s�V�w U��,N���!�����;c�2���jb���|��̠㽁K�S_`�7
%Q(�V �,㱾F��q����N��S�h]?���tsw�0Mw�����6�B�\@m;���F[O��-*;A�V.� 9-����9�;SB�A%z����M׺̦s#J�1Arv�|�B�Z��4N��L�4Dٳ4�vq�̰��O&�� ���g��c�*�(�n��Q�p��҄]��1g#>{S�ʅGR׏��i�%�}y}��ll-HLv&�\����N�����,�!�)�+��8�nL�r#�A�n�{����<����벾��i]S߈{ʍ¬*�Ū�-8m۫W�Q���cQ��ԡ��R�6�@H��[��*��5���6��[������`��vF�O�w���\�	`B}\4!p}��*�\s��sT�b6��|#<A�Ax��'F��N�?�'��'��Z�0��04�j�%�B��7��~tD׍sKK�Y����������E�4�1B�������"���n��:lϔ�s�+5�PAX#GeJ�R����1pP�[$+�뻇�ly3l]���Z�D,`O(��
!�\
#�_-K'S;�1?��������e���:j(f��w�1b�T+�]d��ʍ�i��#�	l���V����!�k3�p0�I�{�E�`�sf��+5���Jv!!O��sY��#����fh���N+�x"�bq��q�g�A���9-��X�a��b�N��Ѱ)��`[�w	x#�Yҵ���ń����m�?���A5�� �OaTHg᷇�`�f6��rs��S!g3��4j[6E�S�����aՋ�
�כ1*
P��R����1��� o�%_a;dv��H�<���d$��^�����F_:m�!�)\V�J%V�bt��xw��p;P�P��U����4�a�&�`�9��8P�@=��t��[�ot@u�拣�o��]�e���q;ת6��b4��cQ���-���iz�[��^��P[s�ջ�2�3��@6�,䳯Kp��A�kw㈂$j�cT;�d��dp�n��n��*mO��W��f�k�k��7�]�_�
����Gd éG7Z�@(��V��<]�xI�D��0�:����"�휟�V[����s�ݧhӉl�Z@����)��1b�yi��3��>}N�9:̝����D˃�w��U�p�tS��9:q��Ɠ֊P���R�#��6Q:�~�{�c��]��������?E��      �   C  x�U�ˎ�0E��W�
�l��&�Z4m0`P��Vad1���ӯ/e��.���%o�w7�=&^1�%����Y)��a:���B�-�p�);X�q��pt1
V����[H�$l^��b?#�T/��@�4��S�F��SA��4��p�����S�T�6#c����Osg�w���Ꟙ> ��k�a�B��P��J5��Og*]@�����;�p>yK��NsY����L#���2�Z�|�4l��>
�pN���":��1\�=eT�dR��5�b-����hO�t�#Q��E˖ix�㹄+&��ox�ӿ��V����@]���b�|��,�0����{�.�M�%\�i%�
���^�P겛F*zx����HL���[j����������tHe���hc�8e���8����{{D�Z�rM.Җ�|�ҍ�
lv*�h���e�>�4������%J`XǺ�-&;`�;'���iW�Jt����h8�z�y,U�#K��F�@r��#�뭥�)�/q�S���S_Z��L���.j���[����l�,]�dX1�����-��F�ì9��yn�ח���A��      �   Z  x�E�ݎ�@���O�l�ǿK�3#��DY7{�=��'�8���[H#		�WEq�N���b���aԥ.n�̉�
Ri"-�)I�����ȉI����n��U�Si) M� T�ҬP�M	I��Z����a�+ve�c�Ԣ9��Z��P}����A�avFx�Ң`x�;^��GJ{	:�bI���2j8���
�gQ��GTUB*a�{<F$���(����J{4Ū�j��V\֗�t����c�.�܋�;��1�#~�Sw"�V1Y ^�=�.1cX^^�k�8�=�"/őI�Q}�4k�j�8�蘨1���%o;	�;WM0����u�5޵�sgH����H��h֝�fdG�o���p��_��l�l��{��k�oH^-u�4�?"WHb[ĻӃ�'$��#iZ�L+2�~i���Ȃ�����ao��
�GS���6��?]�x�T�H7V�o\Js��Y��oA�;�M�
>��ݧMd��m3�^��
�]���@�Î7nα������f�~���f%ޭ!�{��d����)������ΐ12Bkj-��ϑ�{�H���A��	�+i�G=c�M���C[���`�U�T�     