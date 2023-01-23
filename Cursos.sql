CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "first_name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "phone" varchar(16) NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid,
  "title" varchar UNIQUE,
  "description" text,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL,
  "price" money NOT NULL,
  "category_id" int,
  "status" varchar
);

CREATE TABLE "course_videos" (
  "id" uuid PRIMARY KEY,
  "course_id" uuid,
  "title" varchar UNIQUE,
  "url" varchar NOT NULL,
  "duration" time
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar UNIQUE,
  "status" varchar
);

CREATE TABLE "carts" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid,
  "total" money DEFAULT 0,
  "status" varchar
);

CREATE TABLE "cart_courses" (
  "id" uuid PRIMARY KEY,
  "cart_id" uuid,
  "couse_id" uuid,
  "quantity" int DEFAULT 0,
  "status" varchar
);

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "carts" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "cart_courses" ADD FOREIGN KEY ("cart_id") REFERENCES "carts" ("id");

ALTER TABLE "cart_courses" ADD FOREIGN KEY ("couse_id") REFERENCES "courses" ("id");
