DROP TABLE IF EXISTS history_rate;


CREATE TABLE IF NOT EXISTS history_rate (
    id SERIAL PRIMARY KEY,
    date_rate TIMESTAMP,
    currency_from CHAR(3) DEFAULT 'BTC',
    currency_to CHAR(3) DEFAULT 'RUB',
    value_rate FLOAT
);


DROP TABLE IF EXISTS metrics;
CREATE TABLE IF NOT EXISTS metrics (
    currency_from CHAR(3) DEFAULT 'BTC',
    currency_to CHAR(3) DEFAULT 'RUB',
    max_value FLOAT, 
    min_value FLOAT, 
    avg_value FLOAT
);


INSERT INTO metrics (max_value, min_value, avg_value)
VALUES (0, 0, 0)