-- Deploy cocktails_factory:recipe-view to pg

BEGIN;

CREATE OR REPLACE VIEW "recipe_view" AS
WITH ingredient_info AS (
    SELECT
        "recipe_id",
        ARRAY_AGG("ingredient"."name" ORDER BY "ingredient"."name") AS "ingredient_names",
        ARRAY_AGG("recipe_ingredient"."quantity" ORDER BY "ingredient"."name") AS "ingredient_quantities"
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
    "ingredient_info"."ingredient_names" AS "ingredient_names",
    "ingredient_info"."ingredient_quantities" AS "ingredient_quantities"
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
JOIN
    "ingredient_info" ON "recipe"."id" = "ingredient_info"."recipe_id"
GROUP BY
    "recipe"."id", "method"."name", "taste"."type", "glass"."name", "ingredient_info"."ingredient_names", "ingredient_info"."ingredient_quantities";


COMMIT;
