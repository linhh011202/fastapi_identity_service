DROP TABLE IF EXISTS tb_users;

CREATE TABLE tb_users (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    username VARCHAR NOT NULL UNIQUE,
    password_hash VARCHAR NOT NULL
);

CREATE INDEX ix_tb_users_username ON tb_users (username);

INSERT INTO tb_users (username, password_hash, created_at, updated_at)
VALUES
    ('admin', 'hashed_secret_password_123', NOW(), NOW()),
    ('johndoe', 'hashed_password_456', NOW(), NOW()),
    ('alice_wonder', 'hashed_password_789', NOW(), NOW());