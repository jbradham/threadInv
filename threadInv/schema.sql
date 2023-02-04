DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS thread;
DROP TABLE IF EXISTS amount;

CREATE TABLE thread (
    id INTEGER PRIMARY KEY AUTOINCREMENT
    brand TEXT NOT NULL DEFAULT 'DMC',
    color INTEGER NOT NULL,
    desc TEXT NULL,
    UNIQUE (brand, color)
);

CREATE TABLE amount (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    amount TEXT NOT NULL UNIQUE
);

CREATE TABLE inventory (
    thread_id INTEGER NOT NULL,
    amount_id INTEGER NOT NULL DEFAULT 1,
    FOREIGN KEY (thread_id) REFERENCES thread (id),
    FOREIGN KEY (amount_id) REFERENCES amount (id)
);