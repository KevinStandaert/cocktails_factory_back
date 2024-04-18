-- Revert cocktails_factory:init from pg

BEGIN;

DROP TABLE "recipe_category", "recipe_ustensil", "recipe_ingredient", "category", "ingredient", "ustensil", "recipe", "glass", "taste", "method";

COMMIT;
