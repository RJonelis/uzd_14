SELECT count(DISTINCT uw.user_id) as cnt_wished FROM user_wishlists uw
JOIN gift_exchanges ge ON uw.user_id = ge.receiver_id
JOIN events e ON ge.event_id = e.event_id
where uw.gift_name = ge.gift_name 