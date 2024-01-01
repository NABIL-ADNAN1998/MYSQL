
-- AGGREGATE FUNCTION GROUP BY



-- it return all 19 books
select title, author_lname from books

-- by naked eyes it actually return the title of unique author_lname
select title, author_lname from books group by author_lname;

-- counting how many books have each unique author, problem is if two author has same last name.
select author_fname, author_lname , count(*) from books group by author_lname;

-- now i get books count of each unique author, distinct keyword use korar dorkar nai . * diyei kaj hoye jay 
select author_fname, author_lname , count(*) from books group by distinct author_fname, author_lname;

- group by released year. count always kaj kore group by te ki dewa hoilo tar upor..ki ki select korsi ta matter kore na
select released_year, count(*) as 'count' from books group by released_year ;

-- some fancy way
select concat('In ', released_year, ' ', count(*), ' books released') from books group by released_year;

