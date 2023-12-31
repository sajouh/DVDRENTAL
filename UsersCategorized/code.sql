	  
--categorizing our customers based on their rental frequency history
WITH CUSTOMER_RENTAL AS
	(SELECT R.CUSTOMER_ID,
			CONCAT(C.FIRST_NAME,' ',C.LAST_NAME) AS FULL_NAME,R.RENTAL_ID
		FROM CUSTOMER C
		JOIN RENTAL R ON C.CUSTOMER_ID = R.CUSTOMER_ID)
SELECT CUSTOMER_ID,
	FULL_NAME,
	COUNT (*) RENTAL_COUNT,
	CASE
					WHEN COUNT (*) > 40 THEN 'frequent renter'
					WHEN COUNT (*) < 15 THEN 'seasonal renter'
					ELSE 'regular renter'
	END AS TAG
FROM CUSTOMER_RENTAL
GROUP BY 1,2
ORDER BY RENTAL_COUNT DESC ;

