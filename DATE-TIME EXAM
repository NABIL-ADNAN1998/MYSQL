-- current date and time
select now();
-- current date only
select current_date();
-- day number of a week
select dayofweek(now());

-- day name
select dayname(now());

-- date format
select date_format(current_date(), '%m/%d/%y');

select date_format(now(), '%M %D at %h:%i');

-- tweet table
create table tweets(
    content varchar(100),
    username varchar(50),
    created timestamp default now()

);

insert into tweets(content, username)
values
('i love cats', 'nabil'),('I love dogs', 'nahid');

select * from tweets;
