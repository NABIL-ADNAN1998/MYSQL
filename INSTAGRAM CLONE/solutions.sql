
-- find 5 oldest users

select * from users order by created_at limit 5;

-- what day of the week most users register on

select dayname(created_at) as week_day, count(*) as total from users
    group by week_day 
    order by total desc
    limit 3;

-- find users who never posted any photo

select username from users
    left join photos 
    on photos.user_id = users.id
    where photos.id is null;
    
-- who can get the most likes in a single photo

select username, photos.id, count(*) as 'total_like' from photos
    join likes on photos.id = likes.photo_id
    join users on users.id = photos.user_id
    group by photos.id
    order by total_like desc limit 10;


-- how many times average users post

select 
    (select count(*) from photos) / (select count(*) from users) as average_post;


-- top 5 most commonly used hashtags

select tag_name, count(*) as tagging from tags 
join photo_tags on tags.id = photo_tags.tag_id
group by tag_name
order by tagging desc limit 5;


-- find bots. who likes every photos of the site

select username, count(*) as num_likes
from users
join likes on users.id = likes.user_id
group by users.id
having num_likes = (select count(*) from photos);





