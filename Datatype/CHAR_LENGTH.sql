select char_length(author_fname) from books;

select author_lname, char_length(author_lname) as length from books;

select 
    char_length(title) 
from books where book_id = 11;

-- concat and char_length together
select 
    concat(author_fname, ' is ', char_length(author_fname), ' characters long.'
) 
from books;
