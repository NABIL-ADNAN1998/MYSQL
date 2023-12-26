
-- DATE MATH
-- we are using people table from datatypes database
-- provide only difference of day not time 

select datediff('1998-04-14 4:45:10', '1998-03-07');


select names, birthdt, datediff(now(), birthdt) as difference from people;

-- date add and sub

select birthdt, date_add(birthdt, interval 1 month) from people;

select birthdt, date_add(birthdt, interval 1 year) from people;

select birthdt, datediff(now(), birthdt) from people;

select birthdt, birthdt + interval 1 month from people;

select birthdt, birthdt - interval 1 month from people;

select birthdt, now() - interval 3 month from people;

-- eta vul . evabe kaj kore na . interval koto seta clearly janay dite hoy.. etar jonno datediff() function use korte hobe
select now() - interval birthdt from people;

