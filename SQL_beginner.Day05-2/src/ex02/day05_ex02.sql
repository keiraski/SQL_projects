CREATE INDEX idx_person_name ON person (upper(name));
SET enable_seqscan = off;
explain analyse
SELECT *
FROM person
WHERE upper(name) = 'Kate';