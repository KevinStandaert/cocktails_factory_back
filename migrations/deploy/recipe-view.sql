-- Deploy cocktails_factory:recipe-view to pg

BEGIN;

--  Create a view named recipe_view_all that returns all the information about a recipe 
CREATE OR REPLACE VIEW "recipe_view_all" AS
WITH ingredient_info AS (
    SELECT
        "recipe_id",
        json_agg(json_build_object('name', "ingredient"."name", 'quantity', "recipe_ingredient"."quantity") ORDER BY "ingredient"."name") AS "ingredients"
    FROM
        "recipe_ingredient"
    JOIN
        "ingredient" ON "ingredient"."id" = "recipe_ingredient"."ingredient_id"
    GROUP BY
        "recipe_id"
)
SELECT
    "recipe".* AS "recipe",
    "method"."name" AS "method_name",
    "taste"."type" AS "taste_type",
    "glass"."name" AS "glass_name",
    json_agg(DISTINCT "category"."name") AS "category_name",
    json_agg(DISTINCT "ustensil"."name") AS "ustensil_name",
    (SELECT "ingredients" FROM "ingredient_info" WHERE "ingredient_info"."recipe_id" = "recipe"."id") AS "ingredients"
FROM
    "recipe"
JOIN
    "method" ON "method_id" = "method"."id"
JOIN
    "taste" ON "taste_id" = "taste"."id"
JOIN
    "glass" ON "glass_id" = "glass"."id"
JOIN
    "recipe_category" ON "recipe"."id" = "recipe_category"."recipe_id"
JOIN
    "category" ON "category"."id" = "category_id"
JOIN
    "recipe_ustensil" ON "recipe"."id" = "recipe_ustensil"."recipe_id"
JOIN
    "ustensil" ON "ustensil"."id" = "ustensil_id"
GROUP BY
    "recipe"."id", "method"."name", "taste"."type", "glass"."name";


--  Create a view named recipe_view_card that returns the name, image and ingredients of a recipe
CREATE OR REPLACE VIEW recipe_view_card AS
SELECT 
	"recipe"."id",
    "recipe"."name",
    "recipe"."url_image",
	"taste"."type" AS "taste",
    json_agg("ingredient"."name") AS "ingredients"
FROM "recipe"
JOIN "taste" ON "recipe"."taste_id" = "taste"."id"
JOIN "recipe_ingredient" ON "recipe"."id" = "recipe_id"
JOIN "ingredient" ON "ingredient_id" = "ingredient"."id"
GROUP BY "recipe"."id", "recipe"."name", "taste"."type", "recipe"."url_image"
ORDER BY "recipe"."name";


--  Create a view named recipe_view_random that returns the name, image and ingredients of 3 random recipes
CREATE OR REPLACE VIEW "recipe_view_random" AS
SELECT 
	"recipe"."id",
    "recipe"."name",
    "recipe"."url_image",
	"taste"."type" AS "taste",
    json_agg("ingredient"."name") AS "ingredients"
FROM "recipe"
JOIN "taste" ON "recipe"."taste_id" = "taste"."id"
JOIN "recipe_ingredient" ON "recipe"."id" = "recipe_id"
JOIN "ingredient" ON "ingredient_id" = "ingredient"."id"
GROUP BY "recipe"."id", "recipe"."name", "taste"."type", "recipe"."url_image"
ORDER BY 
RANDOM()
LIMIT 6;


COMMIT;
