-- Revert cocktails_factory:recipe-view from pg

BEGIN;

DROP VIEW IF EXISTS "recipe_view";

COMMIT;
