-- Revert cocktails_factory:recipe-view from pg

BEGIN;

DROP VIEW IF EXISTS "recipe_view_random";

DROP VIEW IF EXISTS "recipe_view_card";

DROP VIEW IF EXISTS "recipe_view_all";



COMMIT;
