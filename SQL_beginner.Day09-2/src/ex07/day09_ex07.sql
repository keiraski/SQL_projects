CREATE FUNCTION func_minimum(VARIADIC arr NUMERIC[ ])
RETURNS NUMERIC AS
$$
SELECT min( i ) FROM unnest(arr) g( i );
$$ LANGUAGE SQL;