CREATE TABLE "user"
(
    id       BIGSERIAL NOT NULL PRIMARY KEY,
    username VARCHAR   NOT NULL,
    password VARCHAR   NOT NULL
);

CREATE TABLE authority
(
    id        BIGSERIAL NOT NULL PRIMARY KEY,
    authority VARCHAR   NOT NULL,
    user_id   BIGINT    NOT NULL,
    CONSTRAINT fk_authority__user_id FOREIGN KEY (user_id) REFERENCES "user" (id)
);

INSERT INTO "user" (username, password)
VALUES ('admin', 'admin');

INSERT INTO authority (authority, user_id)
VALUES (
        'ACCESS',
        (SELECT id FROM "user" WHERE username = 'admin')
);