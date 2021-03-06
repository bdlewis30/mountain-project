WITH ins as (
  INSERT INTO routes
      (image, latitude, longitude, name, pitches, rating, star_votes, stars, type, mp_id)
  VALUES
      ( $1, $2, $3, $4, $5, $6, $7, $8, $9, $10 )
  RETURNING name, id, mp_id )
INSERT INTO locations (slot_1, slot_2, slot_3, slot_4, slot_5, slot_6, route_name, route_id, mp_id )
  SELECT $11, $12, $13, $14, $15, $16, name, id, mp_id FROM ins;
