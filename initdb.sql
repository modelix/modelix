CREATE SCHEMA cloudmps AUTHORIZATION cloudmps;

CREATE TABLE cloudmps.model
(
    key character varying NOT NULL,
    value character varying,
    reachable boolean,
    CONSTRAINT kv_pkey PRIMARY KEY (key)
);

ALTER TABLE cloudmps.model OWNER to cloudmps;