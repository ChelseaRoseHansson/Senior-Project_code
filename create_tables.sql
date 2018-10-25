CREATE TABLE spells(
	name VARCHAR(150) NOT NULL,
	obstacles INT(2),
	description TEXT, 
	origin VARCHAR(15),
	element VARCHAR(15),
	duration VARCHAR(15),
	aoe VARCHAR(15),
	impetus VARCHAR(15),
	resources INT(2), 
	actions INT(10),
	CONSTRAINT pk_spells PRIMARY KEY (name)
	);

CREATE TABLE char_spells(
	user_id INT(5) NOT NULL,
	char_id INT(5) NOT NULL,
	spell_id INT(5) NOT NULL,
	name VARCHAR(150),
	obstacle INT(2),
	CONSTRAINT pk_char_spells PRIMARY KEY (user_id, char_id, spell_id),
	CONSTRAINT fk_cspells_spells FOREIGN KEY (name)
	REFERENCES spells(name),
	CONSTRAINT fk_uspells_user FOREIGN KEY (user_id)
	REFERENCES user_data(user_id),
	CONSTRAINT fk_cspells_char FOREIGN KEY (char_id)
	REFERENCES characters(char_id)
	);
	
CREATE TABLE traits(
	name VARCHAR(150) NOT NULL,
	description TEXT,
	trait_type VARCHAR(10),
	points INT(3),
	CONSTRAINT pk_traits PRIMARY KEY (name)
	);
	
CREATE TABLE char_traits(
	user_id INT(5) NOT NULL,
	char_id INT(5) NOT NULL,
	trait_id INT(5) NOT NULL,
	name VARCHAR(150),
	die_trait VARCHAR(20),
	CONSTRAINT pk_char_traits PRIMARY KEY (user_id, char_id, trait_id),
	CONSTRAINT fk_ctraits_traits FOREIGN KEY (name)
	REFERENCES traits(name),
	CONSTRAINT fk_utraits_user FOREIGN KEY (user_id)
	REFERENCES user_data(user_id),
	CONSTRAINT fk_ctraits_char FOREIGN KEY (char_id)
	REFERENCES characters(char_id)
	);
	
CREATE TABLE user_data(
	username VARCHAR(20) NOT NULL,
	password VARCHAR(16) NOT NULL,
	user_id INT(5) NOT NULL,
	CONSTRAINT pk_user_data PRIMARY KEY (username)
	);

CREATE TABLE characters(
	name VARCHAR(150) NOT NULL,
	user_id INT(5) NOT NULL,
	char_id INT(5),
	age INT(3),
	will INT(3),
	perception INT(3),
	power_stat INT(3),
	forte INT(3),
	agility INT(3),
	speed INT(3),
	CONSTRAINT pk_characters PRIMARY KEY (name, user_id),
	CONSTRAINT fk_chars_users FOREIGN KEY (user_id)
	REFERENCES user_data(user_id)
	);
	
CREATE TABLE skills(
	name VARCHAR(150) NOT NULL,
	primary_attribute VARCHAR(10),
	secondary_attribute VARCHAR(10),
	description TEXT,
	obstacles TEXT,
	forks VARCHAR(100),
	skilltype VARCHAR(15),
	tools VARCHAR(30),
	restrictions VARCHAR(30),
	CONSTRAINT pk_skills PRIMARY KEY (name)
	);
	
CREATE TABLE char_skills(
	user_id INT(5) NOT NULL,
	char_id INT(5) NOT NULL,
	skill_id INT(5) NOT NULL,
	skill_name VARCHAR(150) NOT NULL,
	routine_needed INT(1),
	routine_have INT(1),
	difficult_needed INT(1),
	difficult_have INT(1),
	challenging_needed INT(1),
	challenging_have INT(1),
	CONSTRAINT pk_char_skills PRIMARY KEY (user_id, char_id, skill_id),
	CONSTRAINT fk_cskills_skills FOREIGN KEY (skill_name)
	REFERENCES skills(name),
	CONSTRAINT fk_uskills_user FOREIGN KEY (user_id)
	REFERENCES user_data(user_id),
	CONSTRAINT fk_cskills_char FOREIGN KEY (char_id)
	REFERENCES characters(char_id)
	);
	
CREATE TABLE lifepath(
	name VARCHAR(150) NOT NULL,
	years INT(2),
	resources INT(3),
	stat VARCHAR(10),
	leads VARCHAR(50),
	skills VARCHAR(255),
	traits VARCHAR(255),
	requires VARCHAR(255),
	restrictions VARCHAR(255),
	CONSTRAINT pk_lifepath PRIMARY KEY (name)
	);
	
	
CREATE TABLE char_lifepath(
	user_id INT(5),
	char_id INT(5),
	lifepath_id INT(5),
	name VARCHAR(150),
	CONSTRAINT pk_char_lifepath PRIMARY KEY (user_id, char_id, lifepath_id),
	CONSTRAINT fk_clifepath_lifepath FOREIGN KEY (name)
	REFERENCES lifepath(name),
	CONSTRAINT fk_ulifepath_user FOREIGN KEY (user_id)
	REFERENCES user_data(user_id),
	CONSTRAINT fk_clifepath_char FOREIGN KEY (char_id)
	REFERENCES characters(char_id)
	);
	
CREATE TABLE glossary(
	term VARCHAR(150),
	description TEXT,
	CONSTRAINT fk_glossary PRIMARY KEY (term)
	);
	
