CREATE TABLE drill.kaitou
(
    mid                         INT,
    id                          VARCHAR(10) NOT NULL,
    title                       VARCHAR(30),
    age                         VARCHAR(10),
    mondai                      VARCHAR(500),
    kaitou                      VARCHAR(500),
    pass                        VARCHAR(64),
    CONSTRAINT PRIMARY KEY (id)
);

CREATE TABLE drill.mondai
(
    mid                         INT NOT NULL,
    id                          VARCHAR(10),
    title                       VARCHAR(30),
    age                         VARCHAR(10),
    mondai                      VARCHAR(500),
    CONSTRAINT PRIMARY KEY (mid)
);

CREATE TABLE drill.user
(
    id                          VARCHAR(10) NOT NULL,
    pass                        VARCHAR(64),
    name                        VARCHAR(20),
    CONSTRAINT PRIMARY KEY (id)
);

