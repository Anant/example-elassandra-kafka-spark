DROP KEYSPACE IF EXISTS content;
CREATE KEYSPACE content WITH replication = {'class': 'NetworkTopologyStrategy', 'DC1': 1};

CREATE TABLE content.data
(
    id            int,
    Title         text,
    Description   text,
    Channel       text,
    PRIMARY KEY (Title, Description, Channel)
);