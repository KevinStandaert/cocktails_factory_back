-- Verify cocktails_factory:init on pg

BEGIN;

SELECT * FROM "method";

SELECT * FROM "taste";

SELECT * FROM "glass";

SELECT * FROM "recipe";

SELECT * FROM "ustensil";

SELECT * FROM "ingredient";

SELECT * FROM "recipe_ingredient";

SELECT * FROM "recipe_ustensil";

SELECT * FROM "recipe_category";

ROLLBACK;
