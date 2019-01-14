-- таблица с пользователями
CREATE SEQUENCE IF NOT EXISTS reserve_client.users_seq START 1;
CREATE TABLE IF NOT EXISTS reserve_client.users (
  id           bigint default nextval('reserve_client.users_seq' :: regclass) not null
    constraint pk_user
    primary key,
  name varchar(100) not null, -- имя (персональные данные)
  surname varchar(100), -- фамилия (персональные данные)
  phone varchar(12), -- номер телефона (персональные данные)
  mail varchar(100), -- e-mail (персональные данные)
  comment varchar(2048), -- комментарий пользователя о себе
  ord integer
);

-- таблица с ссылками на соцсети
CREATE SEQUENCE IF NOT EXISTS reserve_client.socials_seq START 1;
CREATE TABLE IF NOT EXISTS reserve_client.socials (
  id           bigint default nextval('reserve_client.socials_seq' :: regclass) not null
    constraint pk_socials
    primary key,
  user_id bigint not null, -- ссылка на таблицу с пользователями
  vk_id varchar(512), -- ссылка на вк (персональные данные)
  fb_id varchar(512), -- ссылка на facebook (персональные данные)
  twitter_id varchar(512), -- ссылка на twitter (персональные данные)
  instagram_id varchar(512), -- ссылка на инсту (персональные данные)
  ord integer
);

ALTER TABLE reserve_client.socials ADD CONSTRAINT socials_user_fk FOREIGN KEY (user_id) REFERENCES reserve_client.users 