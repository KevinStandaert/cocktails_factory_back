-- Verify cocktails_factory:recipe-view on pg

BEGIN;

SELECT * FROM "recipe_view" WHERE FALSE;

ROLLBACK;
