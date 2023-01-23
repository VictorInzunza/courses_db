insert into users 
(
id,
first_name, 
last_name,  
phone,
email,
password, 
age

) values (
'bae683c2-b6d6-41b7-a891-e910182fd26a',
'Sahid',
'Kick', 
'+521231231231', 
'sahid@academlo.com',
'+521f5y31Sb31', 
22
 ),(
'81ccebdf-5e76-4b6a-b038-06c905139763',
'Victor',
'Estrada', 
'+526461513225', 
'victor@academlo.com',
'wrterdup', 
22
 );
 
insert into courses
(
id,
title, 
description,  
level,
teacher,
price,  
status

) values (
'63f6064e-ccf9-44d2-8b45-c7e9f80d1163',
'arts',
'Join to know more about art', 
'begginer', 
'sahid saho',
522
 ),(
'f33c9ec8-78a3-46ca-877a-d5e30829b54f',
'music',
'Join to know more about music', 
'medium', 
'victor esytrada',
150
 );
 
insert into course_videos
(
id,
title,  
url

) values (
'24385225-3a66-46d7-ae24-1e48f401f132',
'arts number one',
'https://coursea.com/ddfds4'
 ),(
'3e7f06c1-f637-4a8c-8012-fcc7243ce134',
'music number one',
'https://coursea.com/drrsdffsdds4'
 );
insert into categories
(
name,  
status
) values (
'science',
'active'
 ),(
'phisics',
'banned'
 );
 
insert into carts
(
id,  
total,
status
) values (
'e23a2367-3008-4c90-92d1-164798cc3876',
679,
'payed'
 ),(
'9eedcc7d-6e33-4bd6-b849-d483c102e6c6',
1568,
'full'
 );
 
insert into cart_courses
(
id,  
quantity,
status
) values (
'ad6c887a-66c9-46a8-8b77-5b3145a2ba82',
1,
'awaiting'
 ),(
'15c2a9ca-ae64-4423-8cf1-fdcef96042f9',
2,
'paused'
 );