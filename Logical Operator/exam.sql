select 10 != 10;
select 15 > 14 && 99-5 <= 94;
select 1 in (5,3) || 9 between 8 and 10;



select title, released_year from books where released_year < 1980;



select title, author_lname from books
where author_lname like '%eggers%' || author_lname like '%chabon%';

-- different way
select title, author_lname from books
where author_lname in ('eggers', 'chabon');




select title, author_lname from books
where author_lname like '%lahiri%' && released_year >= 2000;



select title,pages from books 
where pages between 100 and 200;



select title , author_lname from books
where author_lname like 'c%' || author_lname like 's%';



select title, author_lname,
    case
        when title like '%stories%' then 'short stories'
        when title like '%just kids%' || title like '%a heartbreaking work%' then 'memoir'
        else 'novel'
    end as 'genre'
from books;



select author_lname,
    case
        when count(*) = 1 then '1 book'
        else concat(count(*),' ','books')
    end as 'count'
from books 
group by author_fname, author_lname;
