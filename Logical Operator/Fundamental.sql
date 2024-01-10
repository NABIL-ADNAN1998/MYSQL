
-- not equal
select title, released_year from books where released_year != 2017;

select title, author_lname from books where author_lname ='Haris';

select title, author_lname from books where author_lname != 'Haris';

-- not like

select title, author_fname from books where title like 'w%';

select title , author_fname from books where title not like 'w%';

-- greater than

select title, author_fname, released_year from books where released_year > 2000 order by released_year desc;

-- greater than or equal to

select title, author_fname, released_year from books where released_year >= 2000 order by released_year desc;

select title, stock_quantity from books where stock_quantity >= 100;


-- true false

select 99 > 1;
select 99 > 110;
select 1 > 1;
select 1 >= 1;
select 'a' > 'b';
select 'A' > 'a';
select 'A' = 'a';

-- less than or equal to

select title, author_fname, released_year from books where released_year < 2000 order by released_year desc;

select title, author_fname, released_year from books where released_year <= 2000 order by released_year desc;

select 'a' < 'b';

-- and &&

select title, author_fname, released_year from books where author_lname = 'eggers' and released_year >= 2010;

select title, author_fname, released_year from books where author_lname = 'eggers' and released_year >= 2010 && title like '%novel%';

select -10 > -15 and 5 > 7;

select -10 > -15 && 50 > 7;


-- logical OR ||

select title, author_fname, released_year from books where author_lname = 'eggers' or released_year >= 2010;


-- between x and y. tobe x, y inclusive

select title, author_lname, released_year from books where released_year between 2005 and 2008;

-- not between

select title, author_lname, released_year from books where released_year not between 2005 and 2009;

select title, author_lname, released_year from books where released_year not between 2005 and 2023;

-- cast
-- we need casting in datetime when use between and not between

use datatypes;
select names, birthdt from people where birthdt between cast('1980-01-01' as datetime) and cast('2023-01-01' as datetime);



-- in / not in

use bookshop;
select title, released_year from books where author_lname in ('lahiri', 'carver','smith');

select title, author_lname, released_year from books where released_year in ('2003', '2010','1996');

select title, author_lname, released_year from books where released_year not in ('2000', '2010','2002', '2004', '2006');

select title , released_year from books 
where released_year>=2000 
and released_year not in ('2000', '2010','2002', '2004', '2006','2012','2014', '2016') 
order by released_year;

-- modulo(%)

select title , released_year from books 
where released_year>=2000 
and released_year % 2 != 0 
order by released_year;

-- case statements

select title, released_year, 
    case 
        when released_year >= 2000 then 'modern literature'
        else '20th century lit'
    end as genre

from books;


select title, stock_quantity,
    case
        when stock_quantity between 0 and 50 then '*'
        when stock_quantity between 51 and 150 then '**'
        else '***'
    end as 'stock rating'     
from books;

select title,
    case
        when stock_quantity between 0 and 50 then '*'
        when stock_quantity between 51 and 150 then '**'
        else '***'
    end as 'stock rating'     
from books;


select title,
    case
        when stock_quantity <= 50 then '*'
        when stock_quantity <= 150 then '**'
        else '***'
    end as 'stock rating'     
from books;
