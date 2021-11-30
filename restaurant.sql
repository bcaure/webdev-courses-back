drop table if exists menu; create table menu(id SMALLINT, title varchar(100), price float8);
insert into menu values (1, 'Menu Oriental', 14.0);
insert into menu values (2, 'Menu Français', 20.0);
insert into menu values (3, 'Menu Asiatique', 17.0);

drop table if exists food; create table food(id SMALLINT, menu SMALLINT, title varchar(100), descr varchar(1000), category varchar(5), price float8, photo varchar(1000));
insert into food values (1, 1, 'Kefta', 'Kefta sauce au choix accompagné de frites', 'PLAT', 9.95, 'http://cabe0232.odns.fr/restaurant/assets/meatball-gadfdea378_640.jpg');
insert into food values (2, 3, 'Poulet Tandoori', 'Tandoori indien accompagné de riz blanc et nan, épicé', 'PLAT', 12.95, 'http://cabe0232.odns.fr/restaurant/assets/naan-g67b202c78_640.jpg');
insert into food values (3, 2, 'Ribs', '500g de travers de porc roti avec frites', 'PLAT', 14.95, 'http://cabe0232.odns.fr/restaurant/assets/abstract-g39ad1c63a_640.jpg');
insert into food values (4, 2, 'Entrecôte', '300g entrecôte charolaise avec frites, cuisson à point', 'PLAT', 15.95, 'http://cabe0232.odns.fr/restaurant/assets/steak-gfcf1bb7c7_640.jpg');
insert into food values (5, 1, 'Couscous', 'Couscous marocain avec agneau et légumes, légèrement épicé', 'PLAT', 13.95, 'http://cabe0232.odns.fr/restaurant/assets/couscous-g4c758a19b_640.jpg');
insert into food values (6, 2, 'Saucisson Brioché', 'Saucisson brioché à la lyonnaise, porc fermier, accompagnement crudités', 'PLAT', 11.95, 'http://cabe0232.odns.fr/restaurant/assets/saucisson-brioche-ail-companion.jpg');
insert into food values (7, 3, 'Curry Légumes', 'Curry végétarien légèrement épicé accompagné de riz blanc', 'PLAT', 11.95, 'http://cabe0232.odns.fr/restaurant/assets/curry-gb067607a8_640.jpg');
insert into food values (8, 3, 'Nems Riz Cantonais', '6 Nems crevette et crabe avec son riz cantonais et sauce soja', 'PLAT', 10.95, 'http://cabe0232.odns.fr/restaurant/assets/nem-g51c79b077_640.jpg');
insert into food values (9, 2, 'Salade César', 'Laitue romaine, œuf dur, croûtons, parmesan et sauce césar', 'PLAT', 10.95, 'http://cabe0232.odns.fr/restaurant/assets/italian-salad-g170cd711a_640.jpg');
insert into food values (10, null, 'Tiramisu', 'Crème mascarpone, cacao amer, servi avec expresso', 'DESSERT', 3.95, 'http://cabe0232.odns.fr/restaurant/assets/tiramisu-gaed9424c5_640.jpg');
insert into food values (11, null, 'Salade de fruits', 'Salade de fruit du moment, fait maison', 'DESSERT', 3.95, 'http://cabe0232.odns.fr/restaurant/assets/fruit-gbb5803bc1_640.jpg');
insert into food values (12, null, 'Opéra', 'Une part de cet entremêt au chocolat noir et biscuit', 'DESSERT', 4.95, 'http://cabe0232.odns.fr/restaurant/assets/opera-g7d5439b59_640.jpg');
insert into food values (13, null, 'Eau 50cl', 'Bouteille Evian 50cl', 'BOISSON', 1.0, 'http://cabe0232.odns.fr/restaurant/assets/water-g3932e02ee_640.jpg');
insert into food values (14, null, 'Bière blonde', 'Bouteille 25cl', 'BOISSON', 2.0, 'http://cabe0232.odns.fr/restaurant/assets/beer-g44968734e_640.jpg');
insert into food values (15, null, 'Eau gazeuse', 'Bouteille 25cl', 'BOISSON', 1.0, 'http://cabe0232.odns.fr/restaurant/assets/drink-g3efaac850_640.jpg');
insert into food values (16, null, 'Coca-cola', 'Bouteille 25cl', 'BOISSON', 1.0, 'http://cabe0232.odns.fr/restaurant/assets/bottle-g94856f543_640.jpg');
insert into food values (17, null, 'Limonade', 'Bouteille 25cl', 'BOISSON', 1.0, 'http://cabe0232.odns.fr/restaurant/assets/lime-gcc217bb6f_640.jpg');
insert into food values (18, null, 'Ice tea', 'Bouteille 33cl', 'BOISSON', 1.0, 'http://cabe0232.odns.fr/restaurant/assets/beverages-g950c81dbc_640.jpg');
insert into food values (19, null, 'Jus de pomme', 'Bouteille 25cl', 'BOISSON', 1.0, 'http://cabe0232.odns.fr/restaurant/assets/juice-gc7ddafce9_640.jpg');
insert into food values (20, null, 'Vin rouge', 'Demi-bouteille AOC Corbières 33,5cl', 'BOISSON', 8.0, 'http://cabe0232.odns.fr/restaurant/assets/wine-g78f02a8a4_640.jpg');

drop table if exists client_order; create table client_order(id varchar(1000), client varchar(100), descr varchar(1000), price float8, date Date);
