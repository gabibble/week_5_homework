CREATE TABLE IF NOT EXISTS "Customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(60),
  "last_name" VARCHAR(60),
  "billing_info" VARCHAR(100),
  "email" VARCHAR(100),
  "phone_number" VARCHAR(60),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE IF NOT EXISTS "Movie" (
  "movie_id" SERIAL,
  "title" VARCHAR(100),
  "length" VARCHAR(60),
  "rating" VARCHAR(60),
  "genre" VARCHAR(60),
  PRIMARY KEY ("movie_id")
);

CREATE TABLE IF NOT EXISTS "Showing" (
  "showing_id" SERIAL,
  "movie_id" INTEGER,
  "date" DATE,
  "time" TIME,
  "capacity" INTEGER,
  PRIMARY KEY ("showing_id"),
    FOREIGN KEY ("movie_id")
      REFERENCES "Movie"("movie_id")
);

CREATE TABLE IF NOT EXISTS "Ticket" (
  "ticket_id" SERIAL,
  "customer_id" INTEGER,
  "showing_id" INTEGER,
  "total_cost" NUMERIC(6,2),
  "order_date" DATE DEFAULT CURRENT_DATE,
  PRIMARY KEY ("ticket_id"),
    FOREIGN KEY ("showing_id")
      REFERENCES "Showing"("showing_id"),
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id")
);

CREATE TABLE IF NOT EXISTS "Concessions_food" (
  "food_id" SERIAL,
  "name" VARCHAR(60),
  "price" NUMERIC(6,2),
  "type" VARCHAR(60),
  PRIMARY KEY ("food_id")
);

CREATE TABLE IF NOT EXISTS "Concessions_inventory" (
  "inventory_id" SERIAL,
  "food_id" INTEGER,
  "amount" INTEGER,
  PRIMARY KEY ("inventory_id"),
    FOREIGN KEY ("food_id")
      REFERENCES "Concessions_food"("food_id")
);

CREATE TABLE IF NOT EXISTS "Concessions_order" (
  "order_id" SERIAL,
  "inventory_id" INTEGER,
  "customer_id" INTEGER,
  "total_cost" NUMERIC(6,2),
  "order_date" DATE DEFAULT CURRENT_DATE,
  PRIMARY KEY ("order_id"),
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id"),
	FOREIGN KEY ("inventory_id")
      REFERENCES "Concessions_inventory"("inventory_id")
);





