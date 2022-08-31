INSERT INTO "Movie" (
	"movie_id",
	"title",
	"length",
	"rating",
	"genre"
) VALUE (
	1, 
	'Python Pirates',
	'90 min',
	'PG-13',
	'Adventure'
	),
	(
	2, 
	'SQL 2: The sequel',
	'110 min',
	'PG-13',
	'Drama'
	),
	(
	3, 
	'Pass the Flask',
	'95 min',
	'R',
	'Comedy'
	),
	(
	4, 
	'Quit Slackin!',
	'120 min',
	'PG',
	'Family'
	);
	
INSERT INTO "Showing" (
	"showing_id",
	"movie_id",
	"date",
	"time",
	"capacity"
) VALUES (
	1,
	3,
	2022-09-01,
	18:45:00,
	24
	),
	(
	2,
	1,
	2022-09-01,
	20:30:00,
	36
	),
	(
	3,
	3,
	2022-09-02,
	18:45:00,
	18
	),
	4,
	1,
	2022-09-02,
	20:30:00,
	40
	);

INSERT INTO "Ticket" (
	"ticket_id",
	"customer_id",
	"showing_id",
	"total_cost"
) VALUES (
	1, 
	3,
	2,
	12.50
	),
	(
	2, 
	4,
	3,
	8.50
);

INSERT INTO "Concessions_food" (
	"food_id",
	"name",
	"price",
	"candy"
) VALUES (
	1,
	'hot dog',
	5.99,
	'main'
	),
	(
	2,
	'pop corn',
	2.99,
	'snack'
	),
	(
	3,
	'beer',
	4.99,
	'drink'
	),
	(
	4,
	'coke',
	1.99,
	'drink'
	),
	(
	5,
	'skittles',
	1.99,
	'candy'
);

INSERT INTO "Concessions_inventory" (
	"inventory_id",
	"food_id",
	"amount"
) VALUES (
	1, 
	1,
	12
	),
	(
	2, 
	2,
	30
	),
	(
	3, 
	4,
	21
);

INSERT INTO "Concessions_order" (
	"order_id",
	"inventory_id",
	"customer_id",
	"total_cost"
) VALUE (
	1, 
	3,
	2,
	5.99	
)
		