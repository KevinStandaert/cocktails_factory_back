-- Verify cocktails_factory:recipe-view on pg

BEGIN;

SELECT * FROM "recipe_view" WHERE FALSE;

SELECT * FROM "recipe_view_card" WHERE FALSE;

ROLLBACK;
