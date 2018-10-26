INSERT INTO user_data
VALUES('ausername', 'apassword', 00001);

INSERT INTO user_data
VALUES('ausername2', 'apassword2', 00002);

INSERT INTO user_data
VALUES('ausername3', 'apassword3', 00003);

INSERT INTO characters
VALUES('Armin Balthazar', 00001, 83293, 26, 5, 4, 5, 3, 5, 4);

INSERT INTO characters
VALUES('Nux Vomica', 00002, 13657, 24, 3, 6, 3, 4, 6, 5);

INSERT INTO characters
VALUES('Cynbras Jay', 00003, 15674, 37, 6, 2, 5, 6, 7, 6);

INSERT INTO skills
VALUES('Sorcery', 'Perception', '', 'Sorcery is the skill that allows the character to understand written or spoken magical formulae. Should the character have the Gifted trait he can then translate those formulae into spells and thereby cast magic. He may also use this skill to create new spells. The mechanics of Sorcery are described in detail in the Sorcery section of the Burning Wheel', 'See the Sorcery chapter in the Burning Wheel', '', 'Sorcerous', 'No.', 'Men or Roden only in character burning');

INSERT INTO skills
VALUES('Falconry', 'Will', 'Perception', 'A falconer trains hunting hawks. Falconry is a very popular and expensive sport among nobility of all stripes.', 'Falconry contests can be resolved with a versus test between two falconers. Otherwise use the following: Capturing small game, Ob 1. Spotting or signaling, Ob 2. Dispatching a message, Ob 3.', '', 'Forester', 'Yes and a falcon', '');

INSERT INTO skills
VALUES('Demonology', 'Perception', '', 'Demonology is the study of the history and behavior of demons and devils. This is an academic skill that does not necessarily involve the act of summoning.', 'Identifying spirit activity as opposed to magic or a prank, Ob 1. Identifying type of spirit (named, unnamed, lesser, greater, dead, diety, etc.), Ob 2. Identifying type of summoning (circle, blood, calling, binding, unwanted, etc.), Ob 3. Identifying a spirit''s price, Ob 4. Identifying a spirit''s powers or abilities, Ob 5.', 'Ancient and Obscure History, Summoning, Doctrine', 'Academic', 'No', '');

INSERT INTO char_skills
VALUES(00002, 13657, 00011, 'Sorcery', 0, 0, 3, 1, 1, 0);

INSERT INTO char_skills
VALUES(00001, 83293, 00022, 'Falconry', 3, 0, 2, 0, 1, 0);

INSERT INTO char_skills
VALUES(00003, 15674, 00028, 'Demonology', 5, 4, 2, 1, 9, 3);

INSERT INTO lifepath
VALUES('Born Noble', 8, 15, '', 'Any', '5 pts: General', '1 pt: Mark of Privelage, Your Lordship, Your Eminence, Your Grace', '', '');

INSERT INTO lifepath
VALUES('Page', 6, 10, '+1 P', 'Soldier, City, Servitude', '7 pts: Riding, Brawling, Write, Read, Sword, Etiquette', '1 pt: -', '', 'If chosen, this path must be the character''s second lifepath and may only be taken once');

INSERT INTO lifepath
VALUES('Knight', 5, 20, '+1 P', 'Soldier, City, Outcast, Religious', '10 pts: Mounted Combat Training, Shield Training, Armor Training, Appropriate Weapons, Intimidation, Hunting, Conspicuous', '2 pts: Sworn Homage', 'Squire or Cavalryman', '');

INSERT INTO char_lifepath
VALUES(00001, 83293, 00012, 'Born Noble');

INSERT INTO char_lifepath
VALUES(00002, 13657, 21350, 'Page');

INSERT INTO char_lifepath
VALUES(00003, 15674, 55448, 'Knight');

INSERT INTO spells
VALUES('Wyrd Light', 2, 'Globes of swirling light orbit the caster and move with a Speed equal to the caster''s Will. The lights hover and float at the caster''s, command, illumnate as if they were torches, and may not move beyond the limits of the caster''s presence.', 'Presence', 'Heaven', 'Sustained', 'Natural Effect', 'Control', 4, 9);

INSERT INTO spells
VALUES('Thunderclap', 3, 'Speaking this primal incantation and bringing his hands together, the wizard causes a small thunderclap to erupt and deafen his enemies. Thunderclap deafens all those around the caster for one hour and causes +1 Ob to all actions for one exchange. Victims may make a Forte test to reduce time of deafness: 10 minutes per success. Multiple thunderclaps have no cumulative effect (What? I can''t hear you!). Weapon Length: as Polearm. Range: as Pistol.', 'Personal', 'Air', 'Instantaneous/Hours', 'Presence', 'Tax', 6, 2);

INSERT INTO spells
VALUES('Spirit Servant', 3, 'A ghostly presence forms and shadows the sorcerer, serving his need and whim. The servant may perform simple functions for the caster: carry, serve, open, etc. The servant''s Speed and Power are equal to the caster''s Will. The Servant may not leave the sorcerer''s sight.', 'Presence', 'Arcana/Earth', 'Sustained', 'Single Target', 'Control', 6, 50);

INSERT INTO char_spells
VALUES(00001, 86293, 02020, 'Wyrd Light', 2);

INSERT INTO char_spells
VALUES(00002, 13657, 03030, 'Spirit Servant', 3);

INSERT INTO char_spells
VALUES(00003, 15674, 56565, 'Thunderclap', 3);

INSERT INTO traits
VALUES('Louis Wu', 'When surprised or shocked by a revelation (especially when called on to make a Steel test for such instances), this character is prone to fits of laughter. He may replace "Stand and Drool" with "Belly Laugh" in his hesitation options. If this doesn''t infuriate friends and foes alike, something is wrong in the world.', 'Dt', 2, '');

INSERT INTO traits
VALUES('Lunatic', 'This character always knows the phase of the moon.', 'Char', 1, '');

INSERT INTO traits
VALUES('Nose of the Bloodhound', 'A character with the Nose of the bloodhound trait can tell a person''s or animal''s identity via scent and an Ob 1 Perception test. Nose of the Bloodhound also counts as a call-on for Tracking', 'Dt', 4, '');

INSERT INTO char_traits
VALUES(00001, 86293, 68745, 'Louis Wu', 'Yes');

INSERT INTO char_traits
VALUES(00002, 13657, 45876, 'Lunatic', 'No');

INSERT INTO char_traits
VALUES(00003, 15674, 58743, 'Nose of the Bloodhound', 'Yes');

INSERT INTO glossary
VALUES('Dice', 'Burning Wheel uses common six sided dice for all rolls. These dice are referred to as D6 and group sof them are refered to in a manner as ''2d6'' for 2 dice, 3d6 for 3 dice, etc.');

INSERT INTO glossary
VALUES('Player', 'A person at the table that controls a character');

INSERT INTO glossary
VALUES('Character', 'A person in the game that a Player controls and customizes');