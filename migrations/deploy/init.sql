-- Deploy cocktails_factory:init to pg

BEGIN;

CREATE TABLE "method" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "description" text NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT now(),
  "updated_at" timestamptz
);

CREATE TABLE "taste" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "type" varchar(255) NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT now(),
  "updated_at" timestamptz
);

CREATE TABLE "glass" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "capacity" int NOT NULL,
  "description" text NOT NULL,
  "url_image" varchar(255) NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT now(),
  "updated_at" timestamptz
);

CREATE TABLE "recipe" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "description" text NOT NULL,
  "advice" text NOT NULL,
  "history" text NOT NULL,
  "url_image" varchar(255) NOT NULL,
  "step_1" text NOT NULL,
  "step_2" text NOT NULL,
  "step_3" text NOT NULL,
  "step_4" text,
  "step_5" text,
  "step_6" text,
  "method_id" int NOT NULL REFERENCES "method" ("id"),
  "taste_id" int NOT NULL REFERENCES "taste" ("id"),
  "glass_id" int NOT NULL REFERENCES "glass" ("id"),
  "created_at" timestamptz NOT NULL DEFAULT now(),
  "updated_at" timestamptz
);

CREATE TABLE "ustensil" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "description" text NOT NULL,
  "url_image" varchar(255) NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT now(),
  "updated_at" timestamptz
);

CREATE TABLE "ingredient" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "description" text NOT NULL,
  "url_image" varchar(255) NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT now(),
  "updated_at" timestamptz
);

CREATE TABLE "category" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" varchar(255) NOT NULL,
  "description" text NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT now(),
  "updated_at" timestamptz
);

CREATE TABLE "recipe_ingredient" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "recipe_id" int NOT NULL REFERENCES "recipe" ("id"),
  "ingredient_id" int NOT NULL REFERENCES "ingredient" ("id"),
  "quantity" int NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT now(),
  "updated_at" timestamptz,
  UNIQUE ("recipe_id", "ingredient_id")
);

CREATE TABLE "recipe_ustensil" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "recipe_id" int NOT NULL REFERENCES "recipe" ("id"),
  "ustensil_id" int REFERENCES "ustensil" ("id"),
  "created_at" timestamptz NOT NULL DEFAULT now(),
  "updated_at" timestamptz,
  UNIQUE ("recipe_id", "ustensil_id")
);

CREATE TABLE "recipe_category" (
  "id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "recipe_id" int NOT NULL REFERENCES "recipe" ("id"),
  "category_id" int NOT NULL REFERENCES "category" ("id"),
  "created_at" timestamptz NOT NULL DEFAULT now(),
  "updated_at" timestamptz,
  UNIQUE ("recipe_id", "category_id")
);

COMMIT;
