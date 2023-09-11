--who is the better peforming staff and is their performance significantly better?

SELECT DISTINCT (P.STAFF_ID), FIRST_NAME,
	LAST_NAME,
	SUM (AMOUNT) OVER (PARTITION BY P.STAFF_ID) AS PROCESSED
FROM PAYMENT P
JOIN STAFF S ON P.STAFF_ID = S.STAFF_ID
UNION
SELECT DISTINCT (P.STAFF_ID), FIRST_NAME,
	LAST_NAME,
	COUNT (RENTAL_ID) OVER (PARTITION BY P.STAFF_ID) AS PROCESSED
FROM PAYMENT P
JOIN STAFF S ON P.STAFF_ID = S.STAFF_ID
ORDER BY PROCESSED;

