INSERT INTO tbl_collections (id, collection_set_name, release_date, total_cards_in_collection)
VALUES (1, 'Base Set', DATE '1999-01-09', 102);

INSERT INTO tbl_collections (id, collection_set_name, release_date, total_cards_in_collection)
VALUES (2, 'Jungle', DATE '1999-06-16', 64);


INSERT INTO tbl_types (id, type_name) VALUES (1, 'Grass');
INSERT INTO tbl_types (id, type_name) VALUES (2, 'Fire');
INSERT INTO tbl_types (id, type_name) VALUES (3, 'Water');
INSERT INTO tbl_types (id, type_name) VALUES (4, 'Electric');
INSERT INTO tbl_types (id, type_name) VALUES (5, 'Psychic');
INSERT INTO tbl_types (id, type_name) VALUES (6, 'Fighting');
INSERT INTO tbl_types (id, type_name) VALUES (7, 'Darkness');
INSERT INTO tbl_types (id, type_name) VALUES (8, 'Metal');
INSERT INTO tbl_types (id, type_name) VALUES (9, 'Fairy');
INSERT INTO tbl_types (id, type_name) VALUES (10, 'Dragon');
INSERT INTO tbl_types (id, type_name) VALUES (11, 'Colorless');


INSERT INTO tbl_stages (id, stage_name) VALUES (1, 'Basic');
INSERT INTO tbl_stages (id, stage_name) VALUES (2, 'Stage 1');
INSERT INTO tbl_stages (id, stage_name) VALUES (3, 'Stage 2');


INSERT INTO tbl_cards (
    id,
    collection_id,
    type_id,
    stage_id,
    hp,
    name,
    info,
    attack,
    damage,
    weakness,
    resistance,
    retreat,
    card_number_in_collection
) VALUES (
    1,
    1,
    4,
    1,
    60,
    'Pikachu',
    'Mouse Pokémon',
    'Thunder Jolt',
    30,
    'Fighting',
    'Metal',
    1,
    25
);


INSERT INTO tbl_cards (
    id,
    collection_id,
    type_id,
    stage_id,
    hp,
    name,
    info,
    attack,
    damage,
    weakness,
    resistance,
    retreat,
    card_number_in_collection
) VALUES (
    2,
    1,
    2,
    2,
    90,
    'Charmeleon',
    'Flame Pokémon',
    'Flamethrower',
    50,
    'Water',
    NULL,
    2,
    24
);


INSERT INTO tbl_cards (
    id,
    collection_id,
    type_id,
    stage_id,
    hp,
    name,
    info,
    attack,
    damage,
    weakness,
    resistance,
    retreat,
    card_number_in_collection
) VALUES (
    3,
    1,
    3,
    3,
    100,
    'Blastoise',
    'Shellfish Pokémon',
    'Hydro Pump',
    60,
    'Electric',
    NULL,
    3,
    2
);


INSERT INTO tbl_cards (
    id,
    collection_id,
    type_id,
    stage_id,
    hp,
    name,
    info,
    attack,
    damage,
    weakness,
    resistance,
    retreat,
    card_number_in_collection
) VALUES (
    4,
    2,
    1,
    1,
    50,
    'Oddish',
    'Weed Pokémon',
    'Absorb',
    20,
    'Fire',
    'Water',
    1,
    58
);


INSERT INTO tbl_cards (
    id,
    collection_id,
    type_id,
    stage_id,
    hp,
    name,
    info,
    attack,
    damage,
    weakness,
    resistance,
    retreat,
    card_number_in_collection
) VALUES (
    5,
    2,
    5,
    1,
    40,
    'Abra',
    'Psi Pokémon',
    'Psyshock',
    30,
    'Psychic',
    NULL,
    1,
    43
);