 create database db;
 use db;
 create table signup(
   Sid int primary key,
   firstname varchar(255),
   lastname varchar(255),
   phone varchar(13),
   email varchar(255),
   password varchar(255));
 create table login
   (Sid int references signup,
   email varchar(255),
   password varchar(255) primary key);
 create table forgotp
   (email varchar(255) references login,
   password varchar(255) primary key,
   confirmp varchar(255) references forgotp);
 create table quiz
   (Sid int references signup,
   subject varchar(255),
   a1 varchar(1000),
   a2 varchar(1000),
   a3 varchar(1000));
 create table quiz1
   (Sid int references signup,
   subject varchar(255),
   a1 varchar(1000),
   a2 varchar(1000),
   a3 varchar(1000));
 create table subject
   (Sid int references signup,
   language varchar(255),
   sub1 varchar(255),
   sub2 varchar(255),
   sub3 varchar(255),
   sub4 varchar(255));
 create table admin
   (Aid int primary key,
   email varchar(255),
   password varchar(255));
 create table admin_forgotpassword
   (Aid int references admin,
   email varchar(255) references admin,
   password varchar(255) primary key,
   confirmp varchar(255) references admin_forgotpassword);
