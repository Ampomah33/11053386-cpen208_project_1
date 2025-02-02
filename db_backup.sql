PGDMP                      |            engineering_department    16.0    16.0 E    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    115306    engineering_department    DATABASE     �   CREATE DATABASE engineering_department WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 &   DROP DATABASE engineering_department;
                postgres    false            �            1259    115406    course    TABLE     �   CREATE TABLE public.course (
    course_id integer NOT NULL,
    course_name character varying(100),
    lecturer_id integer
);
    DROP TABLE public.course;
       public         heap    postgres    false            �            1259    115405    course_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.course_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.course_course_id_seq;
       public          postgres    false    222            9           0    0    course_course_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.course_course_id_seq OWNED BY public.course.course_id;
          public          postgres    false    221            �            1259    115418    course_enrollment    TABLE     �   CREATE TABLE public.course_enrollment (
    enrollment_id integer NOT NULL,
    student_id integer,
    course_id integer,
    enrollment_date date
);
 %   DROP TABLE public.course_enrollment;
       public         heap    postgres    false            �            1259    115417 #   course_enrollment_enrollment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.course_enrollment_enrollment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.course_enrollment_enrollment_id_seq;
       public          postgres    false    224            :           0    0 #   course_enrollment_enrollment_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.course_enrollment_enrollment_id_seq OWNED BY public.course_enrollment.enrollment_id;
          public          postgres    false    223            �            1259    115399    lecturer    TABLE     �   CREATE TABLE public.lecturer (
    lecturer_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    department character varying(100)
);
    DROP TABLE public.lecturer;
       public         heap    postgres    false            �            1259    115398    lecturer_lecturer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lecturer_lecturer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.lecturer_lecturer_id_seq;
       public          postgres    false    220            ;           0    0    lecturer_lecturer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.lecturer_lecturer_id_seq OWNED BY public.lecturer.lecturer_id;
          public          postgres    false    219            �            1259    115435    lectures_to_course_assignment    TABLE     �   CREATE TABLE public.lectures_to_course_assignment (
    lecture_assignment_id integer NOT NULL,
    lecturer_id integer,
    course_id integer
);
 1   DROP TABLE public.lectures_to_course_assignment;
       public         heap    postgres    false            �            1259    115434 7   lectures_to_course_assignment_lecture_assignment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lectures_to_course_assignment_lecture_assignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public.lectures_to_course_assignment_lecture_assignment_id_seq;
       public          postgres    false    226            <           0    0 7   lectures_to_course_assignment_lecture_assignment_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.lectures_to_course_assignment_lecture_assignment_id_seq OWNED BY public.lectures_to_course_assignment.lecture_assignment_id;
          public          postgres    false    225            �            1259    115459    lectures_to_ta_assignment    TABLE     �   CREATE TABLE public.lectures_to_ta_assignment (
    ta_assignment_id integer NOT NULL,
    lecturer_id integer,
    ta_id integer,
    course_id integer
);
 -   DROP TABLE public.lectures_to_ta_assignment;
       public         heap    postgres    false            �            1259    115458 .   lectures_to_ta_assignment_ta_assignment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lectures_to_ta_assignment_ta_assignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.lectures_to_ta_assignment_ta_assignment_id_seq;
       public          postgres    false    230            =           0    0 .   lectures_to_ta_assignment_ta_assignment_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.lectures_to_ta_assignment_ta_assignment_id_seq OWNED BY public.lectures_to_ta_assignment.ta_assignment_id;
          public          postgres    false    229            �            1259    115308    student    TABLE       CREATE TABLE public.student (
    student_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    date_of_birth date,
    address character varying(100),
    email character varying(100),
    phone_number character varying(20)
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    115315    student_fees_payments    TABLE     �   CREATE TABLE public.student_fees_payments (
    payment_id integer NOT NULL,
    student_id integer,
    payment_date date,
    amount_paid numeric(10,2)
);
 )   DROP TABLE public.student_fees_payments;
       public         heap    postgres    false            �            1259    115314 $   student_fees_payments_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_fees_payments_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.student_fees_payments_payment_id_seq;
       public          postgres    false    218            >           0    0 $   student_fees_payments_payment_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.student_fees_payments_payment_id_seq OWNED BY public.student_fees_payments.payment_id;
          public          postgres    false    217            �            1259    115307    student_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.student_student_id_seq;
       public          postgres    false    216            ?           0    0    student_student_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.student_student_id_seq OWNED BY public.student.student_id;
          public          postgres    false    215            �            1259    115452    teachingassistant    TABLE     �   CREATE TABLE public.teachingassistant (
    ta_id bigint NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    department character varying(100)
);
 %   DROP TABLE public.teachingassistant;
       public         heap    postgres    false            �            1259    115451    teachingassistant_ta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teachingassistant_ta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.teachingassistant_ta_id_seq;
       public          postgres    false    228            @           0    0    teachingassistant_ta_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.teachingassistant_ta_id_seq OWNED BY public.teachingassistant.ta_id;
          public          postgres    false    227            v           2604    115409    course course_id    DEFAULT     t   ALTER TABLE ONLY public.course ALTER COLUMN course_id SET DEFAULT nextval('public.course_course_id_seq'::regclass);
 ?   ALTER TABLE public.course ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    222    221    222            w           2604    115421    course_enrollment enrollment_id    DEFAULT     �   ALTER TABLE ONLY public.course_enrollment ALTER COLUMN enrollment_id SET DEFAULT nextval('public.course_enrollment_enrollment_id_seq'::regclass);
 N   ALTER TABLE public.course_enrollment ALTER COLUMN enrollment_id DROP DEFAULT;
       public          postgres    false    224    223    224            u           2604    115402    lecturer lecturer_id    DEFAULT     |   ALTER TABLE ONLY public.lecturer ALTER COLUMN lecturer_id SET DEFAULT nextval('public.lecturer_lecturer_id_seq'::regclass);
 C   ALTER TABLE public.lecturer ALTER COLUMN lecturer_id DROP DEFAULT;
       public          postgres    false    219    220    220            x           2604    115438 3   lectures_to_course_assignment lecture_assignment_id    DEFAULT     �   ALTER TABLE ONLY public.lectures_to_course_assignment ALTER COLUMN lecture_assignment_id SET DEFAULT nextval('public.lectures_to_course_assignment_lecture_assignment_id_seq'::regclass);
 b   ALTER TABLE public.lectures_to_course_assignment ALTER COLUMN lecture_assignment_id DROP DEFAULT;
       public          postgres    false    225    226    226            z           2604    115462 *   lectures_to_ta_assignment ta_assignment_id    DEFAULT     �   ALTER TABLE ONLY public.lectures_to_ta_assignment ALTER COLUMN ta_assignment_id SET DEFAULT nextval('public.lectures_to_ta_assignment_ta_assignment_id_seq'::regclass);
 Y   ALTER TABLE public.lectures_to_ta_assignment ALTER COLUMN ta_assignment_id DROP DEFAULT;
       public          postgres    false    229    230    230            s           2604    115311    student student_id    DEFAULT     x   ALTER TABLE ONLY public.student ALTER COLUMN student_id SET DEFAULT nextval('public.student_student_id_seq'::regclass);
 A   ALTER TABLE public.student ALTER COLUMN student_id DROP DEFAULT;
       public          postgres    false    215    216    216            t           2604    115318     student_fees_payments payment_id    DEFAULT     �   ALTER TABLE ONLY public.student_fees_payments ALTER COLUMN payment_id SET DEFAULT nextval('public.student_fees_payments_payment_id_seq'::regclass);
 O   ALTER TABLE public.student_fees_payments ALTER COLUMN payment_id DROP DEFAULT;
       public          postgres    false    217    218    218            y           2604    115455    teachingassistant ta_id    DEFAULT     �   ALTER TABLE ONLY public.teachingassistant ALTER COLUMN ta_id SET DEFAULT nextval('public.teachingassistant_ta_id_seq'::regclass);
 F   ALTER TABLE public.teachingassistant ALTER COLUMN ta_id DROP DEFAULT;
       public          postgres    false    227    228    228            *          0    115406    course 
   TABLE DATA           E   COPY public.course (course_id, course_name, lecturer_id) FROM stdin;
    public          postgres    false    222   �Z       ,          0    115418    course_enrollment 
   TABLE DATA           b   COPY public.course_enrollment (enrollment_id, student_id, course_id, enrollment_date) FROM stdin;
    public          postgres    false    224   �Z       (          0    115399    lecturer 
   TABLE DATA           R   COPY public.lecturer (lecturer_id, first_name, last_name, department) FROM stdin;
    public          postgres    false    220   -[       .          0    115435    lectures_to_course_assignment 
   TABLE DATA           f   COPY public.lectures_to_course_assignment (lecture_assignment_id, lecturer_id, course_id) FROM stdin;
    public          postgres    false    226   �[       2          0    115459    lectures_to_ta_assignment 
   TABLE DATA           d   COPY public.lectures_to_ta_assignment (ta_assignment_id, lecturer_id, ta_id, course_id) FROM stdin;
    public          postgres    false    230   �[       $          0    115308    student 
   TABLE DATA           q   COPY public.student (student_id, first_name, last_name, date_of_birth, address, email, phone_number) FROM stdin;
    public          postgres    false    216   �[       &          0    115315    student_fees_payments 
   TABLE DATA           b   COPY public.student_fees_payments (payment_id, student_id, payment_date, amount_paid) FROM stdin;
    public          postgres    false    218   \       0          0    115452    teachingassistant 
   TABLE DATA           U   COPY public.teachingassistant (ta_id, first_name, last_name, department) FROM stdin;
    public          postgres    false    228   ;\       A           0    0    course_course_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.course_course_id_seq', 6, true);
          public          postgres    false    221            B           0    0 #   course_enrollment_enrollment_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.course_enrollment_enrollment_id_seq', 10, true);
          public          postgres    false    223            C           0    0    lecturer_lecturer_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.lecturer_lecturer_id_seq', 2, true);
          public          postgres    false    219            D           0    0 7   lectures_to_course_assignment_lecture_assignment_id_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('public.lectures_to_course_assignment_lecture_assignment_id_seq', 1, false);
          public          postgres    false    225            E           0    0 .   lectures_to_ta_assignment_ta_assignment_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.lectures_to_ta_assignment_ta_assignment_id_seq', 1, false);
          public          postgres    false    229            F           0    0 $   student_fees_payments_payment_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.student_fees_payments_payment_id_seq', 1, false);
          public          postgres    false    217            G           0    0    student_student_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.student_student_id_seq', 2, true);
          public          postgres    false    215            H           0    0    teachingassistant_ta_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.teachingassistant_ta_id_seq', 1, false);
          public          postgres    false    227            �           2606    115423 (   course_enrollment course_enrollment_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.course_enrollment
    ADD CONSTRAINT course_enrollment_pkey PRIMARY KEY (enrollment_id);
 R   ALTER TABLE ONLY public.course_enrollment DROP CONSTRAINT course_enrollment_pkey;
       public            postgres    false    224            �           2606    115411    course course_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (course_id);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT course_pkey;
       public            postgres    false    222            �           2606    115404    lecturer lecturer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT lecturer_pkey PRIMARY KEY (lecturer_id);
 @   ALTER TABLE ONLY public.lecturer DROP CONSTRAINT lecturer_pkey;
       public            postgres    false    220            �           2606    115440 @   lectures_to_course_assignment lectures_to_course_assignment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.lectures_to_course_assignment
    ADD CONSTRAINT lectures_to_course_assignment_pkey PRIMARY KEY (lecture_assignment_id);
 j   ALTER TABLE ONLY public.lectures_to_course_assignment DROP CONSTRAINT lectures_to_course_assignment_pkey;
       public            postgres    false    226            �           2606    115464 8   lectures_to_ta_assignment lectures_to_ta_assignment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.lectures_to_ta_assignment
    ADD CONSTRAINT lectures_to_ta_assignment_pkey PRIMARY KEY (ta_assignment_id);
 b   ALTER TABLE ONLY public.lectures_to_ta_assignment DROP CONSTRAINT lectures_to_ta_assignment_pkey;
       public            postgres    false    230            ~           2606    115320 0   student_fees_payments student_fees_payments_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.student_fees_payments
    ADD CONSTRAINT student_fees_payments_pkey PRIMARY KEY (payment_id);
 Z   ALTER TABLE ONLY public.student_fees_payments DROP CONSTRAINT student_fees_payments_pkey;
       public            postgres    false    218            |           2606    115313    student student_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    216            �           2606    115457 (   teachingassistant teachingassistant_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.teachingassistant
    ADD CONSTRAINT teachingassistant_pkey PRIMARY KEY (ta_id);
 R   ALTER TABLE ONLY public.teachingassistant DROP CONSTRAINT teachingassistant_pkey;
       public            postgres    false    228            �           2606    115429 2   course_enrollment course_enrollment_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_enrollment
    ADD CONSTRAINT course_enrollment_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 \   ALTER TABLE ONLY public.course_enrollment DROP CONSTRAINT course_enrollment_course_id_fkey;
       public          postgres    false    222    224    4738            �           2606    115424 3   course_enrollment course_enrollment_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_enrollment
    ADD CONSTRAINT course_enrollment_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);
 ]   ALTER TABLE ONLY public.course_enrollment DROP CONSTRAINT course_enrollment_student_id_fkey;
       public          postgres    false    4732    224    216            �           2606    115412    course course_lecturer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_lecturer_id_fkey FOREIGN KEY (lecturer_id) REFERENCES public.lecturer(lecturer_id);
 H   ALTER TABLE ONLY public.course DROP CONSTRAINT course_lecturer_id_fkey;
       public          postgres    false    222    220    4736            �           2606    115446 J   lectures_to_course_assignment lectures_to_course_assignment_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lectures_to_course_assignment
    ADD CONSTRAINT lectures_to_course_assignment_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 t   ALTER TABLE ONLY public.lectures_to_course_assignment DROP CONSTRAINT lectures_to_course_assignment_course_id_fkey;
       public          postgres    false    222    226    4738            �           2606    115441 L   lectures_to_course_assignment lectures_to_course_assignment_lecturer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lectures_to_course_assignment
    ADD CONSTRAINT lectures_to_course_assignment_lecturer_id_fkey FOREIGN KEY (lecturer_id) REFERENCES public.lecturer(lecturer_id);
 v   ALTER TABLE ONLY public.lectures_to_course_assignment DROP CONSTRAINT lectures_to_course_assignment_lecturer_id_fkey;
       public          postgres    false    220    4736    226            �           2606    115475 B   lectures_to_ta_assignment lectures_to_ta_assignment_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lectures_to_ta_assignment
    ADD CONSTRAINT lectures_to_ta_assignment_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 l   ALTER TABLE ONLY public.lectures_to_ta_assignment DROP CONSTRAINT lectures_to_ta_assignment_course_id_fkey;
       public          postgres    false    4738    222    230            �           2606    115465 D   lectures_to_ta_assignment lectures_to_ta_assignment_lecturer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lectures_to_ta_assignment
    ADD CONSTRAINT lectures_to_ta_assignment_lecturer_id_fkey FOREIGN KEY (lecturer_id) REFERENCES public.lecturer(lecturer_id);
 n   ALTER TABLE ONLY public.lectures_to_ta_assignment DROP CONSTRAINT lectures_to_ta_assignment_lecturer_id_fkey;
       public          postgres    false    220    230    4736            �           2606    115470 >   lectures_to_ta_assignment lectures_to_ta_assignment_ta_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lectures_to_ta_assignment
    ADD CONSTRAINT lectures_to_ta_assignment_ta_id_fkey FOREIGN KEY (ta_id) REFERENCES public.teachingassistant(ta_id);
 h   ALTER TABLE ONLY public.lectures_to_ta_assignment DROP CONSTRAINT lectures_to_ta_assignment_ta_id_fkey;
       public          postgres    false    4744    230    228            �           2606    115321 ;   student_fees_payments student_fees_payments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_fees_payments
    ADD CONSTRAINT student_fees_payments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id);
 e   ALTER TABLE ONLY public.student_fees_payments DROP CONSTRAINT student_fees_payments_student_id_fkey;
       public          postgres    false    4732    216    218            *   ;   x^3�tI,ILJ,NU�,.I�-�4�2��O+)O,JUp�K��KM-��K�4����� ���      ,   &   x^��4�4�4202�50".C��\�Д+F��� �)      (   C   x^3�(�OK-.�/���,��t��-(-I-Rp�K��KM-��K�2�t)������+��î$F��� I2�      .      x^����� � �      2      x^����� � �      $   T   x^3������t�O�4��4�50�54�442V�M��S.�Qp�,�����K�OuH�H�-�I�K��)�515�5��4������ P��      &      x^����� � �      0      x^����� � �     