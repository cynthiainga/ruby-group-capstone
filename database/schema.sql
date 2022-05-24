Create table games (
  id serial primary key,
  genre int references genres(id),
  author int references author(id),
  source int references source(id),
  label int references label(id),
  published_date varchar(50),
  archived boolean,
  can_be_archived boolean,
  multiplayer boolean,
  last_played_at varchar(50)
)