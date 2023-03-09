-- Comments in SQL Start with dash-dash --
-- 1 playstore=# SELECT app_name FROM analytics where id = 1880;
--         app_name         
-- -------------------------
--  Web Browser for Android
-- (1 row)


-- 2
-- SELECT id, app_name FROM analytics where last_updated = '2018-08-01';

-- 3
-- SELECT category, COUNT(app_name) AS app_count FROM analytics GROUP BY category;

--4
-- Find the top 5 most-reviewed apps and the number of reviews for each.
-- SELECT app_name AS top_five, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;

--5
-- Find the app that has the most reviews with a rating greater than equal to 4.8.
-- SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

--6
-- Find the average rating for each category ordered by the highest rated to lowest rated.
-- SELECT category, avg(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg(rating) DESC;

--7
-- Find the name, price, and rating of the most expensive app with a rating that’s less than 3.
-- SELECT app_name, price, rating FROM analytics where rating < 3 ORDER BY price desc LIMIT 1;

--8
-- Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.
-- SELECT app_name FROM analytics WHERE min_installs < 50 AND rating IS NOT NULL ORDER BY rating DESC;

--9
-- Find the names of all apps that are rated less than 3 with at least 10000 reviews.
-- SELECT app_name FROM analytics where rating < 3 and reviews >= 10000;

--10
-- Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.
-- SELECT app_name FROM analytics where price BETWEEN .10 AND 1 ORDER BY reviews DESC LIMIT 10;

--11
-- Find the most out of date app. Hint: You don’t need to do it this way, but it’s possible to do with a subquery: http://www.postgresqltutorial.com/postgresql-max-function/
-- SELECT app_name FROM analytics ORDER BY last_updated asc LIMIT 1;

--12
-- SELECT app_name FROM analytics ORDER BY price desc LIMIT 1;

--13
-- Count all the reviews in the Google Play Store.
--SELECT COUNT(reviews) AS num_reviews FROM analytics;

--14
-- Find all the categories that have more than 300 apps in them.
-- SELECT category FROM analytics GROUP BY category HAVING COUNT(app_name) > 300;

--15
--*Find the app that has the highest proportion of min_installs to reviews, 
--among apps that have been installed at least 100,000 times. Display the
-- name of the app along with the number of reviews, the min_installs, and the proportion.

-- SELECT app_name, reviews, min_installs, min_installs/reviews AS hi_proportions
-- FROM analytics
-- WHERE min_installs > 100000
-- ORDER BY hi_proportions DESC
-- LIMIT 1;



