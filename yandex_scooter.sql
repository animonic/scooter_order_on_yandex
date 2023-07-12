SELECT c.login, COUNT(ord.id) AS delivery_count
FROM "Couriers" AS c
JOIN "Orders" AS ord ON c.id = ord. "courierId"
WHERE ord."inDelivery" = true
GROUP BY c.login;


SELECT track,
    CASE
        WHEN finished = true THEN 2
        WHEN cancelled = true THEN -1
        WHEN "inDelivery" = true THEN 1
        ELSE 0
    END AS status
FROM "Orders";
