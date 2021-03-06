DELETE FROM todos
WHERE user_id = $1 AND route_id = $2;

SELECT t.id as todo_id, t.user_id as user_id, t.route_id as route_id, r.image as image, r.latitude as latitude, r.longitude as longitude, r.name as name, r.pitches as pitches, r.rating as rating, r.star_votes as star_votes, r.stars as stars, r.type as type, r.protection as protection, l.slot_1, l.slot_2, l.slot_3, l.slot_4, l.slot_5, l.slot_6
FROM  todos as t
LEFT JOIN  routes as r ON   t.route_id  =  r.id 
LEFT JOIN locations as l ON t.route_id = l.route_id
WHERE user_id = $1;