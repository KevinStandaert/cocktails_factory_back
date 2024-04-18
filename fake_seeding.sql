BEGIN;

INSERT INTO "method" ("name", "description") VALUES ('Shake', 'Shake the ingredients in a shaker with ice, then strain into a glass.'),
('Stir', 'Stir the ingredients in a mixing glass with ice, then strain into a glass.'),
('Blend', 'Blend the ingredients in a blender with ice, then strain into a glass.'),
('Muddle', 'Muddle the ingredients in a glass, then strain into a glass.'),
('Build', 'Build the ingredients in a glass with ice, then strain into a glass.');

INSERT INTO "taste" ("type") VALUES ('Sweet'),
('Sour'),
('Bitter'),
('Salty'),
('Spicy'),
('Savory');

INSERT INTO "glass" ("name", "capacity", "description", "url_image") VALUES ('Highball', 300, 'A highball glass is a glass tumbler that can contain 240 to 350 millilitres (8 to 12 US fl oz). It is used to serve highball cocktails and other mixed drinks.', 'https://www.thecocktaildb.com/images/media/drink/4qnyty1504368615.jpg'),
('Cocktail', 150, 'A cocktail glass is a stemmed glass with an inverted cone bowl, mainly used to serve straight-up cocktails. The term cocktail glass is often used interchangeably with martini glass, despite their differing slightly.', 'https://www.thecocktaildb.com/images/media/drink/5xds3k1504352529.jpg'),
('Old-fashioned', 200, 'An old fashioned glass, traditionally used for serving spirits such as whisky and water, or a simple cocktail.', 'https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg'),
('Collins', 300, 'A collins glass is a glass tumbler that typically will contain 10 to 14 fluid ounces (300 to 410 ml). It is used to serve mixed drinks, especially Tom Collins cocktails.', 'https://www.thecocktaildb.com/images/media/drink/5vh9ld1504390683.jpg'),
('Hurricane', 400, 'The hurricane glass is a type of glassware designed specifically for serving the Hurricane cocktail.', 'https://www.thecocktaildb.com/images/media/drink/5vh9ld1504390683.jpg');

INSERT INTO "ustensil" ("name", "description", "url_image") VALUES ('Shaker', 'A cocktail shaker is a device used to mix beverages (usually alcoholic) by shaking.', 'https://www.thecocktaildb.com/images/media/utensils/vpxyvu1483388101.jpg'),
('Strainer', 'A strainer is a form of sieve used to separate solid from liquid.', 'https://www.thecocktaildb.com/images/media/utensils/64x64/1504388847.jpg'),
('Muddler', 'A muddler is a bartender''s tool, used like a pestle to mash—or muddle—fruits, herbs and spices in the bottom of a glass to release their flavor.', 'https://www.thecocktaildb.com/images/media/utensils/64x64/1504388847.jpg');

INSERT INTO "ingredient" ("name", "description", "url_image") VALUES ('Vodka', 'Vodka is a clear distilled alcoholic beverage with different varieties originating in Poland and Russia.', 'https://www.thecocktaildb.com/images/media/ingredient/swtsvw1472720583.jpg'),
('Gin', 'Gin is a distilled alcoholic drink that derives its predominant flavour from juniper berries.', 'https://www.thecocktaildb.com/images/media/ingredient/5j2xey1504389949.jpg'),
('Rum', 'Rum is a distilled alcoholic drink made from sugarcane byproducts such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation.', 'https://www.thecocktaildb.com/images/media/ingredient/yvqj7z1504389461.jpg'),
('Tequila', 'Tequila is a distilled beverage made from the blue agave plant, primarily in the area surrounding the city of Tequila 65 km (40 mi) northwest of Guadalajara, and in the Jaliscan Highlands of the central western Mexican state of Jalisco.', 'https://www.thecocktaildb.com/images/media/ingredient/wwxwvr1439906452.jpg'),
('Whiskey', 'Whisky or whiskey is a type of distilled alcoholic beverage made from fermented grain mash.', 'https://www.thecocktaildb.com/images/media/ingredient/rxtqps1478251029.jpg'),
('Brandy', 'Brandy is a spirit produced by distilling wine.', 'https://www.thecocktaildb.com/images/media/ingredient/7oytjs1504388844.jpg'),
('Cognac', 'Cognac is a variety of brandy named after the town of Cognac, France.', 'https://www.thecocktaildb.com/images/media/ingredient/8ozgjz1504387114.jpg'),
('Champagne', 'Champagne is a French sparkling wine.', 'https://www.thecocktaildb.com/images/media/ingredient/yd47151504363512.jpg'),
('Vermouth', 'Vermouth is an aromatized fortified wine flavored with various botanicals.', 'https://www.thecocktaildb.com/images/media/ingredient/uquxvs1504389469.jpg');

INSERT INTO "recipe" ("name", "description", "advice", "history", "url_image", "step_1", "step_2", "step_3", "step_4", "step_5", "step_6", "method_id", "taste_id", "glass_id") VALUES ('Margarita', 'The margarita is a cocktail consisting of tequila, orange liqueur, and lime juice often served with salt on the rim of the glass. The drink is served shaken with ice (on the rocks), blended with ice (frozen margarita), or without ice (straight up).', 'Salt the rim of the glass for a traditional margarita.', 'The margarita was invented in October 1941, at Hussong''s Cantina in Ensenada, Mexico, by bartender Don Carlos Orozco.', 'https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg', 'Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.', 'Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.', 'Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.', 'Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.', 'Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.', 'Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.', 1, 2, 2);

INSERT INTO "category" ("name", "description") VALUES ('Cocktail', 'lorem ipsum'),
('Shot', 'lorem ipsum'),
('Beer', 'lorem ipsum'),
('Soft Drink', 'lorem ipsum'),
('Other', 'lorem ipsum');

INSERT INTO "recipe_ingredient" ("recipe_id", "ingredient_id", "quantity") VALUES (1, 4, 50),
(1, 8, 20),
(1, 9, 20);

INSERT INTO "recipe_ustensil" ("recipe_id", "ustensil_id") VALUES (1, 1),
(1, 2);

INSERT INTO "recipe_category" ("recipe_id", "category_id") VALUES (1, 1);

COMMIT;

