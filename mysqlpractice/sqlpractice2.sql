use fsd1;
show tables;
select * from Users;
select * from Events;
select * from Users
where registration_date>curdate()-interval 30 day;
select * from Users;
select * from Users
order by registration_date;
select city,count(user_id) from Users
group by city;
select city from users
group by city
having count(user_id)>1;
select * from Users
where full_name like "A%";
select city from Users
group by city
having count(user_id)>1;
insert into Users values(6,'KL Rahul','rahul0@gmail.com','lucknow','2026-05-24');
select * from Users
where dayname(registration_date) in ('Saturday','Sunday');
select * from users
order by registration_date
limit 1;
select month(registration_date),count(user_id) from Users
group by month(registration_date);
select * from Events;
select u.full_name, e.title from Users u
Inner join Events e
on u.user_id=e.organizer_id;
select * from events
where status="upcoming";
select city,count(event_id) from Events
group by city;
select * from Events
where datediff(end_date,start_date)>2;
select e.title,u.full_name from Events e
inner join Users u
on  u.user_id=e.organizer_id
where e.status='completed' and u.city='nizamabad';
select * from Users;
select * from Events;
select full_name,email from Users;
select * from users
where city='hyderabad';
select * from users
where email like "%gmail%";
select count(user_id) from Users;
insert into Users values(7,'vaibhav sooryavanshi','soor0@gmail.com','bihar','2026-05-30');
select * from users
where registration_date=curdate();
select * from users
order by full_name;
select distinct city from users;
select * from users
where full_name like "%i";
select * from users
order by registration_date
limit 5;
select * from Events;
select title,city from Events;
select * from events
where status='cancelled';
select * from events
where city='hyderabad';
select count(event_id) from events;
select * from events
order by start_date;
select * from events
where start_date=curdate();
select distinct city from events
where status not in ('cancelled');
select * from users
where year(registration_date)=year(curdate());
select city,count(user_id) from users
group by city
order by count(user_id) desc;
select * from users
order by registration_date desc
limit 1;
select * from users
where length(full_name)>10;
select city,count(user_id) from users
group by city
having count(user_id)=2;
select * from users
where registration_date between '2026-01-01' and '2026-04-30';
select city,count(user_id) from users
group by city
order by count(user_id) desc
limit 3;
select * from users
where email like "%gmail.com";
select count(year(registration_date)),year(registration_date) from users
group by year(registration_date);
select * from users
where city=(select city from users where full_name='Abhishek sharma');
select * from events
where start_date=curdate()+ interval 30 day;
select * from events
where month(start_date)=month(curdate())+1 and year(start_date)=year(curdate());
select title,datediff(end_date,start_date) from events;
select * from events;
select e.title,u.full_name from events e
inner join users u on e.organizer_id=u.user_id;
select count(event_id),city from events
where status='upcoming'
group by city;
select * from events
where start_date=end_date;
select datediff(end_date,start_date),title from event
order by datediff(end_date,start_date)
limit 1;