-- Main tables schema
CREATE SCHEMA IF NOT EXISTS reserve_client;

-- Dictionaries schema
CREATE SCHEMA IF NOT EXISTS dictionaries;

CREATE SEQUENCE IF NOT EXISTS dictionaries.table_status_seq START 1;
CREATE TABLE dictionaries.table_status (
  id           bigint default nextval('dictionaries.table_status_seq' :: regclass) not null
    constraint pk_address
    primary key,
  name varchar(100) not null,
  ord integer
);

COMMENT ON TABLE dictionaries.table_status IS 'Статус стола - забронирован / занят / свободен';
INSERT INTO dictionaries.table_status (id, name, ord) VALUES (1, 'Свободен', 1);
INSERT INTO dictionaries.table_status (id, name, ord) VALUES (2, 'Занят', 2);
INSERT INTO dictionaries.table_status (id, name, ord) VALUES (3, 'Забронирован', 3);
INSERT INTO dictionaries.table_status (id, name, ord) VALUES (4, 'В обработке', 4);