create database lms;
use lms;
create table user1(
	user_id int auto_increment primary key,
	name varchar(100),
	phone_no bigint,
	email varchar(100),
	address varchar(100),
	reg_date date,
	password varchar(100),
	upload_photo long
);

ALTER TABLE user1 AUTO_INCREMENT=100;

insert into 
user1(name,phone_no,email,address,reg_date,password,upload_photo) 
values('Ankit',4578008234,'ankit@gmail.com','noida','2021-01-03','ankit','img.jpg');

insert into 
user1(name,phone_no,email,address,reg_date,password,upload_photo) 
values('Rahul',9586234712,'rahul@gmail.com','banglore','2021-03-03','rahul','img1.jpg');

insert into 
user1(name,phone_no,email,address,reg_date,password,upload_photo) 
values('gouthami',8524379162,'gouthami@gmail.com','anantapur','2021-02-03','gouthami','img2.jpg');

insert into 
user1(name,phone_no,email,address,reg_date,password,upload_photo) 
values('iswarya',9256279162,'iswarya@gmail.com','nellore','2021-02-22','iswarya','img3.jpg');

insert into 
user1(name,phone_no,email,address,reg_date,password,upload_photo) 
values('harshitha',7456279162,'harshitha@gmail.com','vijayawada','2020-01-22','harshitha','img4.jpg');

commit;

Select * from user1;

create table contact(user_id int references user1 , name 
varchar(30), Email varchar(20), Phone_no bigint, Messege 
varchar(20), contact_id int primary key);

insert into contact values (100 ,'Ankit', 'ankit@gmail.com', 1234, 'Message',1);
insert into contact values (101, 'Rahul', 'rahul@gmail.com', 1235, 'Message',2);
insert into contact values (102, 'Gouthami', 'Gouthami@gmail.com', 1236, 'Message',3);
insert into contact values (103, 'Ishwarya', 'Ishwarya@gmail.com', 1237, 'Message',4);
insert into contact values (104, 'Harshitha', 'Harshitha@gmail.com', 1238, 'Message',5);

select * from contact;


create table admin ( admin_id int primary key, name varchar(100),email varchar(100), password varchar(100));

insert into admin values(1,'rahul','rahul@gmail.com','pass');
insert into admin values(2,'ankit','ankit@gmail.com','pass');
insert into admin values(3,'gowthami','gowthami@gmail.com','pass');
insert into admin values(4,'aishwarya','aishwarya@gmail.com','pass');
insert into admin values(5,'harshitha','harshitha@gmail.com','pass');
Select * from admin;

create table course ( course_id integer primary key, c_name 
varchar(100),c_desp varchar(100), c_fees 
varchar(100),c_resource varchar(100));

insert into course values (111,'JAVA','Programing language',299, 'video.mp4');
insert into course values (112,'C Programming','Programming language',199,'cprogram.mp4');
insert into course values (113,'C++ Programming','Programming language',199,'c++program.mp4');
Select * from course;


create table feedback(user_id int references user1,name varchar(100),email varchar(100),f_id int primary key,feedback varchar(100));

insert into feedback(user_id,name,email,f_id,feedback)values(101,'ankit','ankit@gmail.com',1,'good');
insert into feedback(user_id,name,email,f_id,feedback)values(105,'harshitha','harshitha@gmail.com',2,'good');
select * from feedback;

















