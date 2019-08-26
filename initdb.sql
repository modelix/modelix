CREATE SCHEMA cloudmps;
GRANT ALL ON SCHEMA cloudmps TO cloudmps;

CREATE TABLE cloudmps.model
(
    key character varying NOT NULL,
    value character varying,
    reachable boolean,
    CONSTRAINT kv_pkey PRIMARY KEY (key)
);
GRANT ALL ON TABLE cloudmps.model TO cloudmps;