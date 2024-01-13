
-- aggregate function


-- how many books
select count(*) from books;

-- how many author_fname
select count(auhtor_fname) from books;


-- how many distinct suthor_fname
select count(distinct author_fname) from books;

-- how many distinct author
select count(distinct author_fname, author_lname) from books;


-- how many title contains the word 'the'
select count(*) from books where title like '%the%';

 
