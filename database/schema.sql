CREATE TABLE game (
    last_played_at DATE,
    multiplayer BOOLEAN,
);

CREATE TABLE authors (
    id  INT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    PRIMARY KEY(id)
    FOREIGN KEY(id) REFERENCES item(id)
);
