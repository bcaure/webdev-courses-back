DROP TABLE IF EXISTS games;
CREATE TABLE game (
        id INTEGER PRIMARY KEY,
        name TEXT,
        summary TEXT,
        first_release_date INTEGER,
        cover TEXT,
        similar_games TEXT
    );
    

DROP TABLE IF EXISTS games;
CREATE TABLE game_review (
        id INTEGER PRIMARY KEY,
        comment TEXT,
        note INTEGER,
        game_review INTEGER
    );
    

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(191499, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1653004800,'Dolmen: Day One Edition', NULL, '25311,80916,81249,86477,96217,103303,105049,105269,106987,115280'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(152336, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1642636800,'Tom Clancy''s Rainbow Six Extraction: Limited Edition', 'The Limited Edition includes a copy of the Rainbow Six Extraction game as well as digital content, the Obscura Pack, which includes the universal Cephal Black and Cerulean weapon skins along with the Redacted and Anagram charms.', '19164,32902,34024,38030,76263,102868,103301,105049,106805,119177'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(221074, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1665705600,'Stroke The Spider', 'There are many out there that are scared of spiders, and those that would never touch one.

Well now you can stroke one without the fear of it jumping on you. Just stick out your hand and stroke it, let your fears float away.', NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(228027, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1648080000,'Fuga: Melodies of Steel - Way of the Sword Costume Pack', 'This costume pack features the 12 members of the Taranis crew in samurai or ninja attire. You can modify what the children are wearing under "Change Costumes" in the Options menu.

Contents:
Way of the Sword Costumes for Malt, Mei, Hanna, Kyle, Boron, Socks, Chick, Hack, Sheena, Jin, Wappa, and Britz (can be used during intermission and expedition)', '17613,25311,35994,36258,65827,79134,87485,103232,109339,112754'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(185245, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', NULL,'Wonder Woman', 'Single player open-world action game will introduce an original story set in the DC Universe and allow players to become Diana of Themyscira in the fight to unite her Amazon family and the humans from the modern world.', '19164,25636,37419,49428,81249,82090,100800,103303,113111,113895'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(209917, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', NULL,'The Football T', 'Dribble the ball to become the best football player in the world.', NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(130000, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1593043200,'Hunting Simulator 2', 'With your hunting dog by your side, explore the Texan desert and forests of Colorado and Europe as you track down 33 animal species. Choose your gear from over 160 official weapons, accessories and clothing items (including Browning, Winchester and Bushnell).', '25311,26574,35994,76263,79134,95340,103232,105049,105269,109339'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(150241, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1703980800,'Luto', 'Luto is a first person psychological horror narrative experience where you will embody a person unable to exit his own house. Finding the way to leave it will lead you through a series of paths that will challenge your senses.

Explore the pain caused by the loss of a loved one, the horror of the insecurity to the deepest darkness hidden behind anxiety and depression...', '13189,25646,27266,55282,68271,87514,106992,110737,111130,120201'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(146505, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1619049600,'Call of Duty: Black Ops Cold War - Season Three', 'The Cold War heats up in Call of Duty: Black Ops Cold War - Season 3. Experience Verdansk in 1984 as Perseus'' brainwashing scheme is revealed. With Wraith, a cold and calculated Perseus spy joining the fray, you''re going to need plenty of backup. Fortunately, Season 3 delivers with new weaponry, Operator Skins, and Legendary Blueprints.', '32902,34024,38030,43367,76263,95340,102868,105049,106805,119177'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(173033, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1651190400,'Ravenous Devils', 'An horror cooking simulator where you manage an evil family business. Improve your shops buying new tools and serve your customers.', '27266,28277,29173,37419,55282,55888,65827,79134,89562,111130'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(217811, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1662768000,'Pretty Bird 4', 'Pretty is a young bird learning to fly. Help Pretty get over different obstacles and most importantly get the highest score you can!', NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(96218, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1650585600,'Bot Gaiden', 'Stage completion time affects both boss health and rewards! Every 15 seconds, the Golden Skull will fill up a battery. If you haven''t reached the Henchbot (boss) yet, it will be added to his health. After you defeat him, any remaining energy is converted to batteries you can spend on upgrades (which help you go faster)!', '25646,28070,29032,55190,68582,96217,106987,111130,113360,113895'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(214874, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1675382400,'Dead Island 2: Hell-a Edition', NULL, NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(172891, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1680134400,'Bat Boy', 'Ryosuke isn''t just your regular high-school kid. He and his fellow sports-star friends secretly battle against the evil invading forces of Lord Vicious, hellbent on hosting sinister athletic events for his own amusement! Aided by the power granted to them by nameless deities, Ryosuke is Bat Boy!', '28070,29032,55190,68582,96217,106987,111130,113360,113631,113895'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(135671, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1703980800,'Test Drive Unlimited Solar Crown', 'Test Drive Unlimited Solar Crown is an open world driving and lifestyle experience. Grab your keys and live your life of luxury. Remember, social status is everything In the world of Test Drive Unlimited.', '3772,27378,37419,44178,44242,105011,107196,118871,119161,120126'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(221233, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1666224000,'The Jumping Wrap: Turbo', 'Join Big W on his exciting journey through the kitchen and make him jump! Enjoy the colorful comic graphics accompanied by atmospheric music.', '17613,28277,65827,76340,87485,100794,101573,105264,112754,116582'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(142812, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1620345600,'Resident Evil Village: Collector''s Edition', 'The collector''s edition comes with all the digital items from the deluxe edition, as well as the following items:
- Chris Redfield figure
- Artbook
- Poster
- Box and steelbook case
- Trauma pack (same content as in the )', '11668,13210,25646,68271,102584,105049,109550,111130,114455,115304'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(142813, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1620345600,'Resident Evil Village & Resident Evil 7 Complete Bundle', 'Experience survival horror like never before in this bundle containing the definitive version of Resident Evil 7 biohazard, and Resident Evil Village, the 8th major installment in the franchise. With detailed graphics, intense first-person action and masterful storytelling, the terror has never felt more real in this heart-pounding narrative of family tragedy.

This pack includes the following content:
• Resident Evil 7 biohazard Gold Edition
• Resident Evil Village
• Resident Evil Re:Verse
• Trauma Pack', '11668,13210,25646,68271,102584,105049,109550,111130,114455,115304'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(132594, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1645488000,'SCP: 5K', 'SCP: 5K is an upcoming multiplayer tactical shooter title set within the SCP mythos. Succeeding the events of Tanhony''s SCP-5000 — Why?, SCP: 5K follows the Anti-Foundation Alliance''s attempts to impede the OMNICIDE: the SCP Foundation''s plot to annihilate the human race as quickly as possible, by any means necessary.', '17548,19164,47823,96217,103298,106987,109550,111130,113360,116530'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(229481, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1674864000,'The Jumping Onigiri: Turbo', 'Join Big O on his exciting journey through the kitchen and make him jump! Enjoy the colorful comic graphics accompanied by atmospheric music.', NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(114795, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1549238400,'Apex Legends', 'Conquer with character in Apex Legends, a free-to-play Hero shooter where legendary characters with powerful abilities team up to battle for fame & fortune on the fringes of the Frontier.

Master an ever-growing roster of diverse Legends, deep tactical squad play and bold new innovations that go beyond the Battle Royale experience—all within a rugged world where anything goes. Welcome to the next evolution of Hero Shooter.', '241,1011,2031,7351,8173,8744,11544,17447,25657,103281'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(137591, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', NULL,'BulletVille', 'BulletVille is a free-to-play, multiplayer, third-person parkour hero shooter & platformer featuring a grapple hook, high-mobility and wacky characters.', '19164,25901,55042,57187,76263,95340,105049,106805,119177,119385'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(145814, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1631145600,'Life is Strange: True Colors - Deluxe Edition', 'Alex Chen must embrace her volatile psychic power of Empathy to uncover the truth about her brother''s death.

The Life is Strange: True Colors Deluxe edition contains:
- Life is Strange: True Colors: the complete game.
- Exclusive Bonus Story: ‘Wavelengths’: play as Steph in the year before Alex came to Haven Springs, in a standalone story set in the iconic Rocky Mountain Record Traders store and KRCT radio station.
- Exclusive Life is Strange Hero Outfit Pack: change up Alex''s look with 4 new outfits inspired by past protagonists. The pack includes clothing inspired by Chloe’s Misfit Skull, Sean’s Wolf Squad, Daniel’s Space Mission, and Max’s Jane Doe outfits, with one outfit available for Alex to wear in each chapter of the main game.', '27092,27725,55984,75240,96217,103266,106987,113360,115653,116530'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(172814, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', NULL,'Xenocider', 'Blast through corrupted worlds in this HD remaster of a cult classic! Xenocider is a third-person rail shooter inspired by arcade classics and presented in nostalgic 32-bit style!', '25311,32902,43367,55042,76263,105049,105269,107318,113362,113895'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(59598, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1677196800,'Clive ''N'' Wrench', 'Clive ''N'' Wrench is a 3D platformer that takes inspiration from the collect-a-thon games of the 90''s, but with an added time traveling element.', '19150,21564,24426,28070,55038,55173,55190,56033,58114,89597'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(173110, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1645142400,'Horizon Forbidden West: Regalla Edition', 'This edition includes the following:
- Horizon Forbidden West (Digital) PS4 and PS5 versions
- Horizon Forbidden West SteelBook Display Case
- Download code for the game will be supplied via voucher in the box.
- A Regalla-themed, custom sculpted Tremortusk and Aloy statue
- Statues will require some assembly; detailed instructions will be provided with the box!
- Replica Focus and custom stand
- 2 Art Print Cards
- Replica Sunwing and Clawstrider Machine Physical Strike Pieces
- Mini Art Book
- Canvas Map
- 2 Special Outfits (Carja Behemoth Elite and Nora Thunder Elite)
- 2 Special Weapons (Carja Behemoth Short Bow and Nora Thunder Sling)
- In-game Resources Pack including ammunition, potions, and travel packs
- In-game Apex Clawstrider Machine Strike Piece
- Exclusive Photo Mode poses and face paints
- Digital Soundtrack
- Digital Version of The Sunhawk, the first Horizon Zero Dawn graphic novel', NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(185248, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', NULL,'Slitterhead', 'New horror game by the creator of Silent Hill, Siren, and Gravity Rush that takes place in Kowloon Walled City.', '55282,99307,111130,219368,220571,221301,224167,228751,233460,233830'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(204524, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', NULL,'Bread & Fred', 'Grab your best bud for help in this new co-op challenge to help two adorable penguins, Bread and Fred, reach the top of the snowy summit. Time your jumps, cling to walls and swing across gaps to see how far you can make it before you tumble all the way back down the mountain.', '20342,25646,28070,29032,55190,96217,105269,106987,111130,113360'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(27304, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1469059200,'Ys VIII: Lacrimosa of Dana', 'Ys returns with a brand new adventure for the first time in 8 years! Adol awakens shipwrecked and stranded on a cursed island. There, he and the other shipwrecked passengers he rescues form a village to challenge fearsome beasts and mysterious ruins on the isolated island.', '22387,24426,27092,27209,28168,28309,35994,36198,55038,55199'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(222815, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1623715200,'Assassin''s Creed Valhalla: Mastery Challenge', 'Mastery Challenge is a free update that introduces replayable trials to test your expertise against Melee, Range, and Stealth objectives. Unlock new unique rewards as you perfect your skills, including weapons, tattoos, decorations, and more!', '26574,34155,80916,81249,96217,103303,105049,106987,115280,115653'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(181616, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1619049600,'Raiden IV x Mikado Remix: Limited Edition', 'This edition includes the following
- Game: Raiden IV x Mikado Remix
- Background Music and Soundtrack CD
- Reprint Original Soundtrack CD "Raiden IV -Ultimate of Raiden-"
- Reversible Cover', '306,22799,27283,55038,68286,89550,105049,105269,106805,113362'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(159120, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1653436800,'Knockout City: Season 1 - Welcome to Knockout City', 'Now grab a ball, round up a crew, hit the streets, and make a name for yourself!', '32902,43367,76263,96217,105049,105269,106987,111130,113360,113895'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(135732, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', NULL,'Dark Fracture', 'Dark Fracture is an indie psychological horror game played in first-person, targeted for early access release in 2021.

Over the course of the game, the player is faced with the character’s inner chaos – witnessing the world change around him as the barrier between reality and imagination seems to crumble.', '11668,11737,18020,18225,25646,26574,28070,55984,107614,111130'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(191757, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1655424000,'Final Vendetta: Collector''s Edition', 'Final Vendetta is a hard-hitting action packed beat ‘em up for 1 or 2 players in the vein of classic arcade titles. Featuring stunning pixel art and a thumping soundtrack with exclusive tracks from Utah Saints! Brawl with bad dudes and tough girls as you fight through dangerous environments.

Collector''s Edition includes:
- Deck of 32 Collectible Character Cards complete with bio and stats to compete
-The Original Soundtrack featuring the music of Utah Saints and Featurecast
- A radical "Bin Chicken" sticker!', '25640,43367,59858,90011,96217,103369,107262,111130,113895,121036'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(52764, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1502409600,'SturmFront: The Mutant War - Übel Edition', 'Arcade action game in the vein of Commando, Ikari Warriors and Shock Troopers, mixed with bullet hell elements. You play as an experimental cyborg battle unit fighting against unrelenting mutant hordes to a soundtrack of aggressive heavy metal and psychedelic electronica.', '22799,25311,28070,43367,54844,55038,55042,76263,105269,107318'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(206673, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1670544000,'Death''s Door: Ultimate Edition', 'The Ultimate Edition includes: Physical PS5 or Nintendo Switch game, An exclusive artbook, The game´s Official Soundtrack CD in a carton sleeve, and A Collectible tuck-in box housing all the contents.', '19164,54775,81249,96217,103168,103303,106987,110474,113109,113636'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(206828, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1656460800,'The Basketball B', 'Dribble the ball to become the best baller in the world.', NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(183112, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1631577600,'Tom Clancy''s Rainbow Six Siege: Crystal Guard', 'Introducing Crystal Guard, Rainbow Six Siege''s third season of Year 6! This season, we''re introducing our latest Operator, Osa, an engineering prodigy from Croatia who brings expertise to Nighthaven with her quick wits and unapologetic enthusiasm for ''60s sci-fi movies.

This season is packed with a plethora of updates including changes to Operator armor and DBNO scoring as well as balancing for Twitch, IQ, Mute, and Fuze. Players also have a new way to customize Elite Uniforms.', '19549,34024,38030,76263,102862,102868,105049,106805,118218,119177'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(224918, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1668124800,'The Jumping Falafel', 'Join BIG F on his exciting journey through the kitchen and make him jump!
Enjoy the colorful comic graphics accompanied by atmospheric music.', '17613,28277,65827,76340,87485,100794,101573,105264,112754,116582'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(136712, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1668643200,'171', '171 is an open world action adventure game with a Brazilian inspired ambience.', '1877,17379,19164,26574,37419,76263,105011,105269,113360,115785'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(174188, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1634774400,'Disciples: Liberation - Deluxe Edition', 'The Deluxe Edition contains everything you need to take your journey even further. Within, you will find two unique sets of armor, two new weapons, an emotion shard for Avyanna, wallpapers, a digital compendium, the soundtrack, and two packs:

• Yllian Resources Pack - get extra resources to build up your hometown

• Pack with 5 Additional Skill Points - get extra skill points for Avyanna', '7615,13196,26268,36258,93694,99118,102057,112191,115653,119171'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(74653, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1675123200,'8-Bit Adventures 2', '8-Bit Adventures 2 is everything you love about NES, SNES and PS1-era JRPGs - with all of the charm, heart and soul, but none of the inconvenience. Dynamic turn-based battles & pixels with personality!', '17548,19150,22387,24426,28309,36198,47823,80916,96217,106987'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(208418, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1701388800,'Paradize Project', 'Fight, Hack, and Survive! Alone or with friends, explore a mysterious open-world infested by zombies. Collect materials, craft weapons, and fight for your life. Learn to hack zombies to assist in fighting, protecting, or farming. Welcome to Paradize!', '25311,26574,35994,81249,96217,103232,105049,106987,109339,113402'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(223949, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1667347200,'OlliOlli World: Finding the Flowzone', 'OlliOlli World: Finding the Flowzone is the final expansion that can be purchased individually or as part of the OlliOlli World Expansion Pass or OlliOlli World Rad Edition. OlliOlli World base game is required to play expansions. Please be careful not to make duplicate purchases.', '32902,37419,76263,96217,105233,106987,111130,113895,121036,121542'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(213264, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1669680000,'Soccer Story', 'It''s been a year since The Calamity tore apart the very foundations of soccer as we know it, and since then, Soccer Inc. has made dang well sure that not a soul has been allowed to even look at a soccer ball, let alone kick it.

Soccer may have been banned across the world... but now there is hope! A magical soccer ball has chosen you, our Savior of Soccer! Soccer Story is a physics-driven adventure RPG, where every problem can be solved with your trusty magic ball.', '19164,25311,26574,35994,37419,80916,81249,96217,105011,106987'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(165316, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1629763200,'Destiny 2: Beyond Light - Season of the Lost', 'In Season of the Lost, players will blur the line between technology and magic to find Mara Sov''s lost Awoken as they search for answers.', '25311,52189,55038,103292,103301,103329,105049,105269,107318,113362'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(38782, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1497916800,'Outbreak: The New Nightmare', 'Return to the roots of co-op survival horror as you face monstrous hordes, scrounge for supplies and attempt to survive the nightmare. You have one life. Make it count!', '25311,25646,68271,80916,96217,105049,105269,106987,107318,111130'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(127749, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1578960000,'Bunny Park', 'Manage your own bunny park! Give snacks and toys to your bunnies. Improve and decorate your park to increase its popularity and collect all the bunnies!', '17111,17519,29173,31515,36346,55036,55590,55689,65827,79134'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(227712, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1669507200,'Reckless Auto Racing 2', 'Race like never before in this medieval style world. You are a miniaturized version of yourself. You will be racing in a world where everything will seem too big. So pay attention to the environment and your enemies. Finish the race first and become the winner.', '25905,27378,90965,103018,109292,111151,233514,233521,233528,233755'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(228376, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1637107200,'Firefighting Simulator: The Squad', 'With Firefighting Simulator: The Squad, you can become part of a major US city''s firefighting team and experience how it feels to fight fires.

Start the siren of your fire truck, grab your hose, and fight realistic fires to save lives. Discover over 40 diverse deployment locations spread across the city inspired by the North American West Coast. Equip yourself with authentic firefighting gear such as helmets, firefighter boots, and a breathing apparatus model by well-known North American firefighting equipment manufacturers.', '17613,33603,36258,36962,51577,65827,76340,79134,107992,112754'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(173211, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1632787200,'Behind Closed Doors: A Developer''s Tale', 'In Behind Closed Doors, you plays as Ethan, who works for a small indie company, trying to support his pregnant wife. He gets an unexpected phone call during the middle of the night, and is teleports to another dimension, where he has to face a series of challenges to get back to the real world.', '28070,28277,75948,81183,87514,103063,106992,110503,111130,117311'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(148182, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1588032000,'SnowRunner: Year 1 Pass', 'Expand your SnowRunner experience with the Year 1 Pass, granting you access to the exclusive Sabertooth skin for the Heavy Duty Derry Longhorn 4520, as well as new vehicles, new skins, new missions, new maps to explore and more.', '17613,28277,65827,76340,87485,100794,101573,105264,112754,116582'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(201795, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1703980800,'Miasma Chronicles', 'From the creators of Mutant Year Zero: Road to Eden comes a beautifully crafted tactical adventure you won’t forget. Embark on a quest across a post-apocalyptic wasteland torn apart by a savage force known only as the ‘Miasma’.', '25311,35994,79134,87622,96217,105049,106987,107218,111130,119171'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(133807, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1593561600,'Trackmania', 'Trackmania, the racing franchise from Ubisoft Nadeo, is back with the most compelling remake of Trackmania Nations.', '15851,23314,43367,47161,87728,118871,119161,119422,120795,121036'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(231032, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1673913600,'Mrs.Cat Between Worlds', 'Two otherworldly games featuring the incredible leaping Mrs.Cat', '28070,29032,76253,87622,96217,104008,105049,106987,111130,113360'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(28366, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1493683200,'Nioh: Dragon of the North', 'Return once more to the Yokai infested landscape of Japan’s warring states and venture deep into its embattled northern provinces.

In this story expansion for Nioh - Dragon of the North follows William’s valiant struggle in the main game and opens up the Oshu region, where ambitious ruler Masamune Date is secretly gathering spirit stones.

Encounter fearsome enemies and allies across three distinct stages, and develop William’s combat skills further with powerful new Ninjutsu, Onmyo magic and Guardian Spirits. Plus, discover legendary armor sets and weapons, including the Odachi great katana.', '19164,28168,54775,55038,55199,81249,96217,103168,103303,106987'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(229482, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1671667200,'Valkyrie Profile: Lenneth', 'An intricate and evocative tale of fates woven by gods and mortals, steeped in Norse mythology, punctuated by groundbreaking combat, and brought to life by a soundtrack considered among gaming''s greatest. New features such as rewind function, quick save and load, visual presets, etc have been added.', NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(128253, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1621296000,'Guardian of Lore', 'A mystical library houses books of ancient folktales from lost civilizations. Play as prince Sayri, and protect these stories from wicked magic that aims to erase their memory forever. Enter each story and save it from within... or at least part of it.', '25311,28309,30245,55199,80916,96217,105049,105269,106987,111130'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(185985, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', NULL,'Neptunia: Sisters vs Sisters - Special Edition', 'This edition includes the following:
- Hyperdimension Neptunia: Sisters vs. Sisters
- Limited Edition Box, Note from Nepgear
- 52-page Visual Book, Soundtrack CD
- Nepgear and Uni Lovey-Dovey Poster', NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(171860, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1645660800,'Dusk Diver 2', 'Dragon Vein is a type of special energy that spans throughout all dimensions. Kunlun is the homeland of the higher dimensional beings who have developed advanced Dragon Vein technologies. The story begins with a girl named Yang Yumo and her classmate Liu Yusha when they accidentally trespassed Youshanding and started an adventure.', '28010,54775,81249,96217,101608,103168,103303,105049,106987,119244'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(169183, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1632182400,'Kena: Bridge of Spirits - Digital Deluxe', 'The Kena: Bridge of Spirits Digital Deluxe Edition includes the base game and the Official Digital Soundtrack, a unique Kena Staff and Golden Rot Skin.

A story-driven action adventure with a stunning visual aesthetic combining exploration with fast-paced combat. Players find and grow a team of charming spirit companions called the Rot, enhancing their abilities and creating new ways to manipulate the environment. Kena: Bridge of Spirits seamlessly blends action and narrative into an unforgettable experience. Travel with Kena, a young Spirit Guide on a quest to uncover the mysterious story surrounding the demise of the village.', '28010,28070,55199,81249,96217,101608,103303,106987,113360,134588'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(106821, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1652227200,'Soundfall', 'Soundfall is a dungeon crawler that combines looter-shooter action with rhythm-based gameplay. Venture out solo or with up to 4 friends locally or online. Collect loot and time your actions to the beat to become all powerful. Play the Campaign Mode, Free Play 100''s of songs or import your own music!', '19150,28309,30245,36198,47823,80916,96217,105049,105269,111130'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(143100, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1628726400,'The Plane Effect', 'Players take on the role of Solo, a lonely office worker who''s trying to get home to his family after his last day of work. Somewhat worryingly, it seems Solo experiences some trouble remembering his family, and also has to contend with the shifting balance of space and time.', '18011,25222,25311,25646,27725,28070,80916,81275,105269,111130'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(127743, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1630454400,'Lake', 'It''s 1986 - Meredith Weiss takes a break from her career in the big city to deliver mail in her hometown. How will she experience two weeks in beautiful Providence Oaks, with its iconic lake and quirky community? And what will she do next? It''s up to you.', '25311,26145,26574,29348,35994,79134,96217,105011,109339,115653'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(145735, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1630540800,'WRC 10', 'Hailed by reviewers and professional drivers, the standard-setting off-road racing simulation has been reinvented! Reach the 2021 season podium, and to celebrate the 50th anniversary of the competition, relive the highlights at the wheel of legendary cars. Never has the WRC experience been this intense! Rise to the challenge!', '27378,44178,47161,107196,114285,116136,117855,118871,119422,120126'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(152249, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1635206400,'Marvel''s Guardians of the Galaxy', 'Fire up a wild ride across the cosmos with a fresh take on Marvel’s Guardians of the Galaxy. In this action-adventure game, you are Star-Lord leading the unpredictable Guardians from one explosion of chaos to the next. You got this. Probably.', '1877,19164,19564,25311,55038,90099,105049,105269,107318,113114'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(165189, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1628640000,'Call of Duty: Black Ops Cold War - Season Five', 'There''s a spy in our ranks and a numbers game in Verdansk. Call of Duty: Black Ops Cold War - Season 5''s offering of free content includes a first-in-the-franchise Double Agent mode in Multiplayer alongside new and classic Black Ops maps, in addition to new Zombies content and new Perks in Warzone that are set to shift the meta and more.', '19164,34024,38030,76263,83727,102868,103301,105049,106805,119177'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(186705, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1614729600,'UniPlex', NULL, '10603,19222,25905,41349,86974,87507,88511,90788,95776,106992'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(145783, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1646870400,'Aztech Forgotten Gods', 'Aztech Forgotten Gods is the cyber-stone action-adventure following Achtli, a young woman who battles the colossal Forgotten Gods. To uncover the truth behind her far-future Mesoamerican metropolis, she''ll have to turn the Gods'' power against them, as she soars through the city with power and grace using an ancient artifact, remnant of a time long forgotten.', '19150,24426,28070,29032,36198,55190,96217,106987,110503,113360'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(134564, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1635984000,'Demon Turf', 'The 3D platformer with attitude! Join Beebz in her ambitious goal of taking over the Demon Turfs and becoming the Demon Queen herself! Jump, spin and punch your way across the turfs with unique mechanics like momentum-driven combat and self-placed checkpoints. Face the Demon King head on!', '20342,28070,29032,55190,80916,89597,96217,106987,111130,113360'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(134582, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1623369600,'Ratchet & Clank: Rift Apart', 'Go dimension-hopping with Ratchet and Clank as they take on an evil emperor from another reality. Jump between action-packed worlds and beyond at mind-blowing speeds, complete with dazzling visuals and an insane arsenal.', '1877,28070,55038,57187,103292,103301,103329,105049,105269,113114'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(186297, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1675209600,'Rhythm Sprout', 'Fast-paced rhythm action with original music and a wacky story mode. Fight charming bosses in rhythm battles. Run to the beat through juicy 3D environments. Remix the levels with modes for infinite challenge and replayability. Can you stop King Sugar Daddy?', '25311,25646,68271,80916,96217,105269,106987,111130,113360,113895'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(116996, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1568332800,'Borderlands 3: Super Deluxe Edition', 'Borderlands 3: Super Deluxe Edition includes the Season Pass and Deluxe bonus content.

Season Pass:
4 campaign DLC packs featuring new stories, missions and challenges
Butt Stallion weapon skin, weapon trinket, and grenade mod

Deluxe bonus content:
Retro Cosmetic Pack
Neon Cosmetic Pack
Gearbox Cosmetic Pack
Toy Box Weapons Pack
Equippable XP & Loot Drop Boost Mods', '19164,25311,55038,80916,90099,96217,105049,105269,107318,116530'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(204998, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1655596800,'Weben Blocks', 'Connect the same numbers and get the biggest tile you can get!

Reach the highest score and share it with your friends!', '10603,19222,25905,41349,83578,87507,88511,90788,95776,106992'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(136977, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1659571200,'GigaBash', 'GigaBash is a 4 player arena brawler, play from a colorful cast of characters inspired by classic monster tropes, each with their own unique skillset. Rampage around the world in familiar battlegrounds, such as cities & jungles, each with a unique mechanic designed. Transform into an S-class Titan for an epic comeback, or dominate your foes in style with your Ultimate. The game emphasizes on accessibility & pure fun, seeking to unite players on the couch for a casual bash or a competitive brawl.
About th', '43367,54775,90011,96217,103369,106987,107262,110503,113360,117533'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(33503, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1462924800,'Super Impossible Road', 'In the future, you’ve got to play a little dirty if you want to win races. Master hairpin turns across dangerous courses that twist and coil-over beautiful galactic backdrops, knocking opponents into the void of space. Kick into hyperdrive with temporary speed boosts and use every opportunity to jump off the paths of the rollercoaster-like tracks. Bypass gates and checkpoints and roll over competitors on the way to first place!

The spiritual sequel to the award-winning Impossible Road is back and more ferocious than ever with all-new modes, 60 FPS local multiplayer, insane online play, and much more! So what’re you waiting for? Crack those knuckles and jump into the fastest, craziest, most spectacular racer you''ve ever played.', '3772,18869,19150,22387,36198,43367,55173,55190,56033,121036'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(121764, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1600992000,'Port Royale 4', 'Set sail and join the colonial powers of Spain, England, France and the Netherlands in their fight for supremacy of the Caribbean in the 17th century.', '17613,18623,23345,36553,55036,65827,76340,79134,102163,112754'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(112870, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1599091200,'Spellbreak', 'Spellbreak is an epic fantasy action-spellcasting game where players fight to become an all-powerful battlemage. Weave spectacular spell combinations, craft strategic builds, and master your environment as you dominate the Hollow Lands solo or with friends in a non-stop quest for survival.

The servers are currently shut down, but the developers have generously released a PC standalone version that allows you to host community servers or play offline.', '28309,47823,55038,55199,76877,80916,96217,105049,105269,106987'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(120056, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1598486400,'Vengeful Heart', 'In this world corporations control even the most basic human necessities. Betrayed by the calculated cruelty of an evil corporation, Josephine finds herself homeless, jobless and without a heart. Believing she has nothing to lose, she joins a ragtag group of rebels seeking vengeance.', '25311,28277,29348,35994,79134,96217,105269,106987,107169,109339'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(233576, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1688083200,'Strayed Lights', 'Explore a dark and oneiric world of rampant nature and corrupted cities. Embody a tiny being of light on its path towards awakening. Fight your inner demons and restore your balance.', '25636,65672,87622,87728,100800,105233,106805,109277,111130,113895'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(226090, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1669075200,'Ping Pong Peg', 'Ping Pong Peg is an intense arcade style game full of RPG elements and strategy. As the player, you control the top and bottom paddles trying to hit all of the pegs in each level by keeping the ball in play with the bumpers. Clearing the levels allows you to upgrade the bumpers, balls, and abilities to improve your odds of beating the levels and defeating the bosses. Do you have what it takes to master the pegs?', '23195,25905,68458,78489,87150,87170,87728,90788,90965,103018'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(11198, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1436140800,'Rocket League', 'Rocket League is a high-powered hybrid of arcade-style soccer and vehicular mayhem with easy-to-understand controls and fluid, physics-driven competition. Rocket League includes casual and competitive Online Matches, a fully-featured offline Season Mode, special “Mutators” that let you change the rules entirely, hockey and basketball-inspired Extra Modes, and more than 500 trillion possible cosmetic customization combinations.', '97,1905,3772,7331,7333,11009,19564,25076,36662,78511'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(231776, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1673913600,'Star Wars: Demolition', NULL, '44178,80382,103018,104983,107227,109292,233070,233073,233367,233522'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(170031, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1636675200,'Treasures of the Aegean: Collector''s Edition', 'The Collector''s Edition includes:

- Game: Treasures of the Aegean
- Artbook
- Original Soundtrack
- Cloth Map 42cm x 40cm', '20342,25646,28070,55190,55984,78550,80916,81275,89597,110503'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(114009, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1579219200,'Dragon Ball Z: Kakarot', 'Relive the story of Goku in Dragon Ball Z: Kakarot! Beyond the epic battles, experience life in the Dragon Ball Z world as you fight, fish, eat, and train with Goku. Explore the new areas and adventures as you advance through the story and form powerful bonds with other heroes from the Dragon Ball Z universe.', '25311,28010,54775,55038,81249,96217,103168,103303,105269,106987'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(228591, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1670284800,'Far Cry 6: Lost Between Worlds', 'Conquer life-or-death trials in this all-new Dani Rojas story. Lost Between Worlds is a rich, action-packed gauntlet with deadly crystal enemies, multiple player paths, all-new lore, and a wide variety of unique gameplay challenges.', '520,32902,43367,76263,95340,103302,105049,106805,107155,119177'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(203272, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1666828800,'Warhammer 40,000: Inquisitor - Martyr', NULL, NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(204462, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1655251200,'Rocket League: Season 7', 'Welcome, esteemed Rocketeers! Season 7 features luxurious rewards like the Maestro Car and golden painted pro tier items. Rank up in the Utopia Coliseum (Gilded) Arena, or compete for tournament rewards.', '15851,87673,96217,106987,111130,113895,118871,119161,119422,120795'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(103078, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1514678400,'Dragon Lapis', 'A thousand years ago, a great battle ensued between two dragons, one gold and the other silver, where they were sealed away. However, the real tale begins many centuries later after the Silver Dragon reawakens, and launches an assault on a frontier village in the far north. There, a royal knight by the name of Lucas serves as a guard after being relegated to the rural and much isolated location by the King. Yet, little does he know he is, in fact, a descendant of the hero, Alaric, who once sealed the Gold and Silver Dragons in human form. Nonetheless, when tragedy strikes, he soon finds his place, and after teaming up with a band of unlikely companions, sets out on an adventure to save the world.', '13196,25311,35994,79134,96217,103232,106987,109339,113402,115653'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(122314, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1585180800,'Control Season Pass', 'An expansion pass for Control that was included in the Digital Deluxe Edition and will be available for purchase separately later. 
 
Gives access to the 2 expansions, "The Foundation" and "AWE", when they are released first on the PlayStation 4 and later on Xbox One and PC.', '25311,55038,90099,103292,103301,103329,105049,105269,107318,115283'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(214044, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1639526400,'Tanks vs Tanks: PvP', 'Tanks vs Tanks: PvP is a local tank battle simulator game where you try to destroy as many enemy tanks as possible. Combat your enemy with unlimited but time-based bullets. Pay attention to your health and don’t forget to collect extra health. This is your only way of success in this war gaming.', '25905,43367,90965,117939,119493,224857,224859,230171,230740,230786'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(229117, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1703980800,'Transport Fever 2: Console Edition', NULL, NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(196251, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', NULL,'Max Payne', NULL, '52189,55984,75242,76877,96217,103266,103292,105049,105269,111130'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(202418, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1663804800,'DreamWorks Dragons: Legends of the Nine Realms', 'Unleash your inner dragon and fly beyond the Hidden World, on a fiery adventure to rescue Thunder’s family and save the dragon kingdoms!', '25311,80916,81249,96217,101608,103303,105049,105269,106987,115280'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(204995, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1655424000,'System of Souls', 'System of souls is a first-person puzzle and platform video game. You will control
L-064N, a soul transferred to a last robot model that will try to remember who it is
and what it does in the ION facilities with the help of Aura, the artificial intelligence of
the place, which will make it go through different tests logic with the final purpose to
stimulate your neural network and obtain the memories of L-064N.', '20342,25311,25646,28070,55173,55190,80916,89597,105269,110503'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(145989, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1625011200,'GreedFall: Gold Edition', 'Greedfall: Gold Edition is the most complete way to experience the critically-acclaimed RPG, including the base game and the De Vespe conspiracy story expansion. Explore uncharted new lands as you set foot on a remote island seeping with magic, and filled with riches, lost secrets, and fantastic creatures. Forge this new world''s destiny, as you befriend or betray companions and entire factions. With diplomacy, deception and force, become part of a living, evolving world - influence its course and shape your story.

Greedfall: Gold Edition includes; base game, The De Vespe conspiracy expansion, 3 lithographs, double-sided poster, and sticker sheet.', '17548,26574,27092,81249,96217,103168,103303,106987,115653,116530'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(223105, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1679616000,'Resident Evil 4: Steelbook Edition', NULL, NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(119622, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', NULL,'Lunark', 'Lunark is a 2D cinematic platformer in the vein of ''80s and ''90s classics. Run, jump, hang, climb, roll, and shoot your way through mysterious alien ruins, a flying penitentiary, a high-tech megalopolis, and a majestic forest.', '25311,28070,55190,80916,89597,96217,105269,106987,111130,113360'); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(229119, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1679011200,'Peppa Pig: World Adventures', 'Play in the bigger, wider world of Peppa Pig, and bring your family into the story! Make pizza in Italy, walk on Hollywood Boulevard, climb the Eiffel Tower and more on your world tour. Create your own unique and dazzling family home, and discover more characters, quests and fun than ever before!', NULL); 

INSERT INTO game(id, cover, first_release_date, name, summary, similar_games) 
values(208565, 'https://images.igdb.com/igdb/image/upload/t_thumb/co1wzo.jpg', 1660089600,'Book Quest', 'Book Quest is an action adventure RPG presented in retro pixel art style featuring cinematic cutscenes and dialogue. Throughout this medieval fantasy, gameplay alternates between top-down and side-scrolling perspectives.', '68582,81249,94772,96217,101608,103303,105049,105269,106987,113360'); 

