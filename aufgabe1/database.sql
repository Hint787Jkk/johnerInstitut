CREATE TABLE bestellungen (
	bestellungId INT(11) UNSIGNED NOT NULL,
	kundeId INT(11) UNSIGNED NOT NULL,
	produktId INT(10) UNSIGNED NOT NULL,
	menge INT(10) UNSIGNED NOT NULL,
	PRIMARY KEY (bestellungId) USING BTREE,
	FOREIGN KEY (kundeId) REFERENCES kunden(kundeId),
	FOREIGN KEY (produktId) REFERENCES produkte(produktId),	
	INDEX FK_bestellungen_kunden (kundeId) USING BTREE,
	INDEX FK_bestellungen_produkte (produktId) USING BTREE
);

CREATE TABLE kunden (
	kundeId INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	vorName VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	nachName VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	email VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	PRIMARY KEY (kundeId) USING BTREE,
	UNIQUE INDEX email (email) USING BTREE
);

CREATE TABLE produkte (
	produktId INT(10) UNSIGNED NOT NULL,
	Bezeichnung INT(11) NOT NULL,
	preis DECIMAL(15,2) UNSIGNED NOT NULL,
	PRIMARY KEY (produktId) USING BTREE,
	UNIQUE INDEX Bezeichnung (Bezeichnung) USING BTREE
);

