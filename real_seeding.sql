BEGIN;

INSERT INTO "method" ("name", "description") VALUES ('Shaker', 'Cette méthode consiste à mélanger les ingrédients d''un cocktail dans un shaker avec de la glace, puis à secouer vigoureusement. Cela permet de bien intégrer les saveurs et de refroidir la boisson.'),
('Mélanger', 'Les ingrédients sont mélangés dans un verre à mélange avec de la glace, puis remués à l''aide d''une cuillère de bar. Cette méthode est utilisée pour les cocktails contenant principalement des spiritueux, afin d''éviter de trop diluer le mélange.'),
('Piler', 'On écrase des fruits, des herbes ou des sucres dans le fond du verre à l''aide d''un pilon pour libérer leurs arômes avant d''ajouter les autres ingrédients. Cette méthode est souvent utilisée pour les cocktails frais et fruités.'),
('Mixer', 'Les ingrédients sont mélangés avec de la glace dans un mixeur électrique. Cette méthode est idéale pour les cocktails glacés et les smoothies.'),
('Superposer', 'Les ingrédients sont versés doucement sur le dos d''une cuillère pour créer des couches distinctes. Cela crée un effet visuel attrayant et est souvent utilisé pour les shots ou les cocktails festifs.');

INSERT INTO "taste" ("type") VALUES ('Doux'),
('Salé'),
('Acidulé'),
('Amer'),
('Épicé'),
('Fruité'),
('Herbacé'),
('Floral'),
('Boisé'),
('Fumé'),
('Umammi');

INSERT INTO "glass" ("name", "capacity", "description", "url_image") VALUES ('Martini', 20, 'Verre en forme de cône avec un pied long et mince. Utilisé pour servir des cocktails comme le Martini, le Cosmopolitan, et d''autres cocktails "up" (servis sans glace).', 'martini_glass.webp'),
('Old fashioned', 25, 'Petit verre à fond épais, aussi appelé "rocks glass" ou "lowball". Utilisé pour les cocktails servis avec des glaçons comme l''Old Fashioned, le Negroni, et le Whiskey Sour.', 'old_fashioned_glass.webp'),
('Highball', 35, 'Grand verre cylindrique. Utilisé pour les cocktails servis avec beaucoup de glaçons et un grand volume de mixer, comme le Mojito et le Dark and Stormy.', 'highball_glass.webp'),
('Margarita', 30, 'Verre en forme de bol avec une large ouverture et un pied long. Utilisé principalement pour servir les Margaritas.', 'margarita_glass.webp'),
('Vin', 30, 'Verre à pied avec un bol large pour les vins rouges ou un bol plus petit pour les vins blancs. Utilisé pour servir le vin, mais aussi parfois pour certains cocktails à base de vin ou de champagne.', 'vin_glass.webp'),
('Flute', 20, 'Verre étroit et long avec un pied. Utilisé pour servir le champagne et les cocktails pétillants comme le Mimosa et le French 75.', 'flute_glass.webp'),
('Shooter', 5, 'Petit verre sans pied, utilisé pour servir des shots d''alcool pur ou des shooters.', 'shooter_glass.webp'),
('Digestif', 20, 'Verre à pied avec un bol large et un col étroit. Utilisé pour servir des spiritueux comme le brandy et le cognac, permettant de concentrer les arômes.', 'digestif_glass.webp'),
('Mule', 25, 'Tasse en cuivre avec une anse. Utilisé principalement pour servir les Moscow Mules.', 'mule_glass.webp'),
('Hurricane', 35, 'Verre courbé et allongé, en forme de lampe à ouragan. Utilisé pour les cocktails tropicaux et fruités comme le Hurricane et la Piña Colada.', 'hurricane_glass.webp'),
('Irish Coffee', 20, 'Verre avec une base solide et une anse. Utilisé pour servir des boissons chaudes comme l''Irish Coffee.', 'irish_coffee_glass.webp'),
('Tiki', 35, 'Mug souvent décoré de motifs polynésiens. Utilisé pour les cocktails tiki comme le Mai Tai et le Zombie.', 'tiki_glass.webp');

INSERT INTO "ustensil" ("name", "description", "url_image") VALUES ('Shaker', 'Outil essentiel pour mélanger les ingrédients d''un cocktail avec de la glace. Il existe trois types principaux : le shaker Boston (deux pièces, généralement un verre et une tin), le shaker Cobbler (trois pièces, avec un couvercle et une passoire intégrée) et le shaker continental (deux pièces comme le boston, géréralement en argent il est souvent utilisé dans les palaces).', 'shaker.webp'),
('Bar spoon', 'Longue cuillère avec un manche torsadé, souvent avec un petit disque ou une fourchette à l''extrémité. Utilisée pour remuer les cocktails dans un verre à mélange et pour créer des couches dans les cocktails.
', 'bar_spoon.webp'),
('Mixing glass', 'Verre à mélange large et épais utilisé pour mélanger les ingrédients des cocktails qui ne nécessitent pas d''être shaké. Utilisé avec une cuillère de bar pour mélanger les cocktails comme les Martini et les Manhattan.', 'mixing_glass.webp'),
('Strainer', 'Passoire utilisé pour filtrer les glaçons et autres solides en versant le cocktail dans le verre de service. Les deux types principaux sont la passoire Hawthorne (avec un ressort) et la passoire Julep (en métal perforé). Utilisée pour filtrer les glaçons après avoir shaké ou mélangé un cocktail.', 'strainer.webp'),
('Pilon', 'Bâton en bois ou en métal utilisé pour écraser les fruits, les herbes et le sucre dans le fond d''un verre. Permet de libérer les arômes des ingrédients dans les cocktails comme le Mojito et la Caipirinha.', 'pilon.webp'),
('Doseur', 'Petit outil de mesure en forme de sablier utilisé pour doser les ingrédients liquides. Il a généralement deux côtés, un côté plus grand et un côté plus petit.', 'doseur.webp'),
('Presse-agrumes', 'Outil manuel ou éléctrique utilisé pour extraire le jus des agrumes.', 'presse_agrumes.webp'),('Verres à shot', 'Petits verres utilisés pour mesurer et servir les spiritueux purs ou les shooters.
', 'verres_a_shot.webp'),
('Blender', 'Mixeur électrique utilisé pour mélanger des ingrédients à haute vitesse. Idéal pour les cocktails glacés et les smoothies.', 'blender.webp'),
('Zesteur', 'Petit outil utilisé pour prélever des zestes d''agrumes pour les utilisés comme garniture ou décoration.', 'zesteur.webp'),
('Pourer', 'Bec verseur fixé sur la bouteille pour verser facilement et avec précision les spiritueux. Utilisé pour contrôler le débit des liquides lors du versement, ce qui permet des mesures plus précises et une présentation plus professionnelle.', 'pourer.webp'),
('Limonadier', 'Outil multifonctionnel comprenant un tire-bouchon, une lame pour couper et un décapsuleur. Utilisé pour ouvrir les bouteilles de vin, de bière et les sodas.', 'limonadier.webp');

INSERT INTO "ingredient" ("name", "description", "url_image") VALUES ('Vodka', 'Spiritueux neutre et pur, distillé à partir de céréales ou de pommes de terre.', 'vodka.webp'),
('Gin', 'Spiritueux distillé à partir de céréales ou d''orge, aromatisé principalement avec des baies de genièvre et des herbes.', 'gin.webp'),
('Rhum', 'Spiritueux distillé à partir de canne à sucre ou de mélasse.', 'rhum.webp'),
('Spiced Rhum', 'Spiritueux distillé à partir de canne à sucre ou de mélasse et ajout d''épices', 'spiced_rhum.webp'),
('Tequila', 'Spiritueux distillé à partir de l''agave bleu, produit principalement au Mexique.', 'tequila.webp'),
('Mezcal', 'Spiritueux similaire à la tequila, mais produit à partir de divers types d''agave et souvent avec un goût fumé.', 'mezcal.webp'),
('Whisky', 'Spiritueux vieilli en fût, fabriqué à partir de grains tels que le maïs, le seigle, l''orge, ou le blé.', 'whisky.webp'),
('Whiskey', 'Spiritueux vieilli en fût, fabriqué à partir de grains tels que le maïs, le seigle, l''orge, ou le blé. D''origine américaine ou irlandaise.', 'whiskey.webp'),
('Bourbon', 'Spiritueux vieilli en fût, fabriqué majoritairement à partir de grains de maïs. D''origine américaine.', 'bourbon.webp'),
('Rye whiskey', 'Spiritueux vieilli en fût, fabriqué majoritairement à partir de grains de seigle. D''origine américaine.', 'rye_whiskey.webp'),
('Brandy', 'Spiritueux distillé à partir de vin ou d''autres fruits fermentés.', 'brandy.webp'),
('Triple sec', 'Liqueur d''orange utilisée par exemple dans les Margaritas et les Cosmopolitans. La plus connue est le Cointreau', 'triple_sec.webp'),
('Amaretto', 'Liqueur d''amande, souvent utilisée dans les cocktails comme l''Amaretto Sour.', 'amaretto.webp'),
('Limoncello', 'Liqueur de citron d''origine italienne', 'limoncello.webp'),
('Liqueu de café', 'Liqueur à base de café. La plus connue est le Kahlúa d''origine mexicaine.', 'liqueur_de_cafe.webp'),
('Sirop de sucre', 'Mélange de sucre et d''eau en proportions égales, utilisé pour sucrer les cocktails.', 'sirop_de_sucre.webp'),
('Sirop d''orgeat', 'Sirop au goût d''amandes', 'sirop_d_orgeat.webp'),
('Crème', 'Crème liquide', 'creme_liquide.webp'),
('Amer italien aperitivo', 'Aperol est un amer léger, orange, avec des notes d''agrumes, de rhubarbe et d''herbes. Il est moins amer que le Campari et possède une saveur plus douce.', 'amer_italien_aperitivo.webp'),
('Angostura', 'Bitters aromatiques utilisés pour ajouter de la profondeur et de la complexité aux cocktails.', 'angostura.webp'),
('Amer italien', 'Campari est un amer rouge vif, avec des saveurs d''agrumes, d''herbes et de fruits. Il est connu pour sa couleur distinctive et son goût amer prononcé.', 'amer_italien.webp'),
('Liqueur de framboise', 'Liqueur à base de framboise', 'liqueur_de_framboise.webp'),
('Liqueur de fleurs de sureau', 'Liqueur à base de fleurs de sureau. La plus connue étant le Saint Germain.', 'liqueur_de_fleurs_de_sureau.webp'),
('Jus d''ananas', 'Jus d''ananas.', 'jus_d_ananas.webp'),
('Jus de cranberry', 'Jus de cranberry.', 'jus_de_cranberry.webp'),
('Jus de fruits de la passion', 'Jus de fruits de la passion.', 'Jus_de_fruits_de_la_passion.webp'),
('Jus de citron', 'Jus extrait du citron, utilisé pour ajouter une acidité et un éclat de saveur.', 'jus_de_citron.webp'),
('Jus de fruits de la passion', 'Jus de fruits de la passion.', 'Jus_de_fruits_de_la_passion.webp'),
('Jus de citron vert', 'Jus extrait du lime, souvent utilisé pour son acidité vive et son goût légèrement amer.', 'jus_de_citron_vert.webp'),
('Citron vert', 'Citron vert', 'citron_vert.webp'),('Feuille de menthe', 'Feuille de menthe', 'feuille_de_menthe.webp'),
('Ginger beer', 'Soda sans alcool pétillant au goût de gingembre prononcé.', 'ginger_beer.webp'),
('Ginger beer', 'Soda sans alcool pétillant au goût de gingembre prononcé.', 'ginger_beer.webp'),
('Lait de coco', 'Liquide crémeux extrait de la chair de noix de coco.', 'lait_de_coco.webp'),
('Blanc d''oeuf', 'Blanc d''oeuf.', 'blanc_d_oeuf.webp'),('Aquafaba', 'Jus de cuisson ou liquide de conservation des pois chiche.', 'aquafaba.webp'),
('Expresso', 'Café court.', 'expresso.webp'),
('Prosecco dry', 'Vin effervescent italien', 'prosecco_dry.webp'),
('Pisco', 'Spiritueux à base de raisin au goût floral. Provient du Pérou et du Chili.', 'pisco.webp'),
('Eau gazeuse', 'Eau pétillante également appelée soda.', 'eau_petillante.webp'),
('Vermouth rouge', 'Vin fortifié aromatisé avec des herbes et des épices, souvent doux.', 'vermouth_rouge.webp'),
('Vermouth blanc', 'Vin fortifié aromatisé avec des herbes et des épices, souvent doux.', 'vermouth_blanc.webp'),
('Vermouth dry', 'Vin fortifié aromatisé avec des herbes et des épices, souvent sec.', 'vermouth_dry.webp'),
('Rondelle d''orange', 'Rondelle d''orange.', 'rondelle_d_orange.webp'),
('Tonic', 'Boisson gazeuse contenant de la quinine ce qui donne un goût lègèrement amer.', 'tonic.webp');

INSERT INTO "recipe" ("name", "description", "advice", "history", "url_image", "step_1", "step_2", "step_3", "step_4", "step_5", "step_6", "method_id", "taste_id", "glass_id") VALUES ('Margarita', 'La Margarita est un cocktail composé de tequila, de liqueur d''orange et de jus de citron vert, souvent servi avec du sel sur le bord du verre. La boisson est servie shaké, avec de la glace (on the rocks), mélangée avec de la glace (margarita frozen) ou sans glace (straight up).', 'Salez le bord du verre pour une Margarita traditionnelle. D''abord, il faut mouiller le bord du verre avec un morceau de citron vert, puis passer le verre dans du sel.', 'La Margarita a été inventée en octobre 1941, au Hussong''s Cantina à Ensenada, au Mexique, par le barman Don Carlos Orozco.', 'margarita_cocktail.webp', 'Mouiller le Bord: Utilisez un quartier de citron vert pour mouiller le bord du verre à Margarita.', 'Givrer le Bord: Passez le bord du verre dans du sel pour le givrer. Réservez le verre.', 'Dans un shaker, combinez les ingrédients suivants : 50 ml de tequila, 25 ml de liqueur d''orange (comme le Triple Sec ou le Cointreau), 25 ml de jus de citron vert fraîchement pressé et Remplissez le shaker avec des glaçons.', 'Secouez vigoureusement le shaker pendant environ 15 secondes pour bien mélanger et refroidir la boisson.', 'Filtrer: Versez le mélange à travers une passoire dans le verre préparé.','Déguster', 1, 3, 4),
('Italian spritz', 'Il se compose principalement de trois ingrédients : Prosecco, Aperol (ou parfois Campari) et une touche d''eau gazeuse. Ce mélange crée une boisson pétillante, légèrement amère et rafraîchissante, souvent servie avec une tranche d''orange. Traditionnellement, le Spritz est apprécié comme apéritif lors des après-midis ensoleillés ou lors des apéritifs en soirée, offrant une explosion de saveurs vives et une couleur vibrante qui reflète l''esprit convivial de la culture italienne.', '
Il est possible de remplacer l''Aperol par d''autres liqueurs : le Saint Germain pour une explosion de fraîcheur et un goût floral, le Campari pour une amertume encore plus prononcée, le Limoncello pour une note citronnée, ou la liqueur de framboise pour un goût très fruité. La seule limite est votre imagination!', 'Le Spritz est un cocktail italien emblématique, originaire de la région de Venise. Le Spritz aurait été créé au 19e siècle lorsque les soldats autrichiens, alors en occupation en Italie du Nord, ont commencé à mélanger le vin local avec de l''eau gazeuse pour le rendre moins fort et plus rafraîchissant. Au fil des années, la recette du Spritz a évolué. Au lieu du simple mélange de vin et d''eau gazeuse, des liqueurs comme l''Aperol, le Campari, et le Select ont été ajoutées, donnant au cocktail ses saveurs distinctives et sa couleur vive.', 'italian_spritz_cocktail.webp', 'Remplir le verre avec de gros glaçons.', 'Verser l''Aperol, le Prosecco (de préférence extra dry pour ne pas ajouter trop de sucre) et l''eau gazeuse.', 'Remuer doucement pour mélanger les ingrédients.', 'Ajouter une rondelle d''orange', 'Rajouter de la glace si nécessaire', 'Déguster', 2, 4, 5);

INSERT INTO "category" ("name", "description") VALUES ('Classique', 'Les cocktails classiques sont les recettes traditionnelles et intemporelles qui ont souvent été créées dans les années 1800 et au début des années 1900. Exemples: Martini, Old Fashioned, Manhattan, Negroni, Margarita.'),
('Sour', 'Les cocktails sour se caractérisent par une combinaison d''un spiritueux, de jus de citron ou de lime, et de sucre. Réalisé au shaker. Ils peuvent également inclure un blanc d''œuf pour une texture plus soyeuse. Exemples: Whiskey Sour, Pisco Sour, Amaretto Sour, Margarita, Daiquiri.'),
('Fizz', 'Les cocktails fizz sont similaires aux sours mais incluent une touche de soda ou d''eau gazeuse pour une texture pétillante. Servi sans glace. Exemples: Gin Fizz, Vodka Fizz, Ramos Gin Fizz, Sloe Gin Fizz.'),
('Collins', 'Les cocktails Collins sont similaires aux Fizz mais ne sont pas shaké, ils sont réalisés directement au verre sur glace. Exemples: Tom collins, John collins.'),
('Highball', 'Les highballs sont des cocktails simples composés d''un spiritueux et d''un grand volume de mixer, généralement servis dans un verre highball. Exemples: Whiskey Ginger, Cuba Libre, Dark and Stormy, Screwdriver.'),
('Tiki', 'Les cocktails tiki sont des boissons tropicales souvent élaborées avec plusieurs types de rhum, des jus de fruits, des sirops et des bitters, et servis dans des verres ou mugs décoratifs. Exemples: Mai Tai, Zombie, Pina Colada, Blue Hawaiian, Painkiller.'),
('Champagne', 'Les cocktails à base de champagne sont des boissons pétillantes qui utilisent le champagne ou d''autres vins mousseux comme ingrédient principal. Exemples: Mimosa, French 75, Bellini, Kir Royal, Champagne Cocktail.
'),
('Dessert', 'Les cocktails dessert sont des boissons sucrées souvent servies après le repas, parfois avec des ingrédients crémeux ou des saveurs de chocolat et de café. Exemples: Espresso Martini, Brandy Alexander, Grasshopper, Mudslide, White Russian.'),
('Frozen', 'Les cocktails glacés sont préparés en mixant les ingrédients avec de la glace pilée dans un blender, créant une texture similaire à un smoothie. Exemples: Frozen Margarita, Frozen Daiquiri, Piña Colada, Frozen Mudslide.'),
('Bière', 'Les cocktails à base de bière combinent de la bière avec d''autres spiritueux, liqueurs ou jus de fruits. Exemples: Michelada, Black Velvet, Shandy, Beer Margarita, Snakebite.'),
('Chaud', 'Les cocktails chauds sont des boissons servies chaudes, souvent associées à l''hiver et aux fêtes de fin d''année. Exemples: Irish Coffee, Hot Toddy, Mulled Wine, Hot Buttered Rum, Spiked Hot Chocolate.'),
('Low', 'Les cocktails légers en alcool utilisent des ingrédients à faible teneur en alcool, parfaits pour ceux qui souhaitent une boisson plus légère. Exemples: Spritz, Americano, Sherry Cobbler, Vermouth and Soda, Aperol Spritz.'),
('Punch', 'Les punchs sont des boissons préparées en grande quantité et servies dans un bol à punch. Ils peuvent être à base de rhum, de vin, ou d''autres spiritueux, et sont souvent accompagnés de fruits et d''épices. Exemples: Sangria, Planter''s Punch, Rum Punch, Pimm''s Cup, Holiday Punch.');

INSERT INTO "recipe_ingredient" ("recipe_id", "ingredient_id", "quantity") VALUES (1, 5, 50),
(1, 12, 25),
(1, 29, 25),
(2, 19, 60),
(2, 37, 120),
(2, 39, 20);

INSERT INTO "recipe_ustensil" ("recipe_id", "ustensil_id") VALUES (1,1),
(1,2),
(1,4),
(1,6),
(1,7),
(2,2),
(2,6);

INSERT INTO "recipe_category" ("recipe_id", "category_id") VALUES (1, 1),
(1, 2),
(2, 1),
(2, 7),
(2, 12);

COMMIT;