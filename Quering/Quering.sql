-- database: d:\MySelf Learn\Backend\Database\CS50-introduction-to-database\longlist.db

-- Use the ▷ button in the top right corner to run the entire file.
SELECT * FROM longlist;

/* using double quotes her not important but it It is good practice to use double quotes around table and column names, which are called SQL identifiers. 
SQL also has strings and we use single quotes around strings to differentiate them from identifiers. */
SELECT * FROM "longlist" ;

SELECT "title" , "author" FROM "longlist";

select title, author from "longlist";

/* Limit  */
SELECT "author", "title" FROM "longlist" LIMIT 10;

-- WHERE
SELECT "title" , "author" FROM "longlist" WHERE  author = "Jon Doe";
-- also you can u use logical operators and or 



-- NULL
SELECT * From "longlist" WHERE "translator" IS NOT NULL;


-- LIKE 
SELECT "title" , "author" FROM "longlist" WHERE "title" LIKE '%Love%';
SELECT "title" , "author" FROM "longlist" WHERE "title" LIKE 'T__%';


-- Ranges
SELECT "title" , "author" FROM "longlist" 
    WHERE "year" BETWEEN 2019 AND 2023;
SELECT "title" , "author" FROM "longlist" 
WHERE "rating" > 4.0;
 
-- ORDER BY
SELECT "title","rating"  FROM "longlist" 
    ORDER BY "title"  DESC , "votes" DESC
    LIMIT 10 ;

-- Aggregate Functions
-- AVG
SELECT avg("rating") FROM "longlist" ;
--Round (number , number of decimal point => default 0)
SELECT round(avg("rating") ,2) FROM "longlist" ;
-- We Can rename column
SELECT round(avg("rating") ,2)as "Average Rating" FROM "longlist" ;
-- Max 
SELECT max("rating") as "Max Rating" FROM "longlist" ;
-- Min 
SELECT min("rating") as "Max Rating" FROM "longlist" ;
--SUM
SELECT sum("votes") FROM "longlist";
--Count
SELECT count(*) as "ALL" FROM "longlist";
--here dont count null
SELECT count("translator") as "ALL" FROM "longlist";
--here get disncat
SELECT   count(DISTINCT "publisher" ) FROM "longlist";