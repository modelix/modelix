CREATE SCHEMA modelix;
GRANT ALL ON SCHEMA modelix TO modelix;

CREATE TABLE modelix.model
(
    key character varying NOT NULL,
    value character varying,
    reachable boolean,
    CONSTRAINT kv_pkey PRIMARY KEY (key)
);
GRANT ALL ON TABLE modelix.model TO modelix;