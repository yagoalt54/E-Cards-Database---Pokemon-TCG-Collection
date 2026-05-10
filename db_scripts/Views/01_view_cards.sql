USE db_tcpokemon_cards;

CREATE VIEW vw_cards_full_info AS
SELECT
    c.id AS card_id,
    col.collection_set_name AS collection_name,
    t.type_name AS type_name,
    s.stage_name AS stage_name,
    c.hp,
    c.name AS card_name,
    c.info,
    c.attack,
    c.damage,
    c.weakness,
    c.resistance,
    c.retreat,
    c.card_number_in_collection
FROM tbl_cards c
JOIN tbl_collections col
    ON c.collection_id = col.id
JOIN tbl_types t
    ON c.type_id = t.id
JOIN tbl_stages s
    ON c.stage_id = s.id;

SELECT * FROM vw_cards_full_info;

SELECT
    card_id,
    collection_name,
    type_name,
    stage_name,
    hp,
    card_name,
    info,
    attack,
    damage,
    weakness,
    resistance,
    retreat,
    card_number_in_collection
FROM vw_cards_full_info;