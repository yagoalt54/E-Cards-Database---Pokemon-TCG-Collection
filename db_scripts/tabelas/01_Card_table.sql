CREATE TABLE tbl_collections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    collection_set_name VARCHAR(100) NOT NULL,
    release_date DATE,
    total_cards_in_collection INT
) ENGINE=InnoDB;

CREATE TABLE tbl_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE tbl_stages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    stage_name VARCHAR(50) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE tbl_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    collection_id INT NOT NULL,
    type_id INT NOT NULL,
    stage_id INT NOT NULL,
    hp INT,
    name VARCHAR(100) NOT NULL,
    info VARCHAR(500),
    attack VARCHAR(200),
    damage INT,
    weakness VARCHAR(50),
    resistance VARCHAR(50),
    retreat INT,
    card_number_in_collection INT,

    CONSTRAINT fk_cards_collections
        FOREIGN KEY (collection_id)
        REFERENCES tbl_collections(id),

    CONSTRAINT fk_cards_types
        FOREIGN KEY (type_id)
        REFERENCES tbl_types(id),

    CONSTRAINT fk_cards_stages
        FOREIGN KEY (stage_id)
        REFERENCES tbl_stages(id)
) ENGINE=InnoDB;

