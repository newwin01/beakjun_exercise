SELECT B.AUTHOR_ID, AUTHOR_NAME, CATEGORY, SUM(C.SALES*A.PRICE) AS TOTAL_SALES FROM BOOK A INNER JOIN AUTHOR B ON A.AUTHOR_ID = B.AUTHOR_ID INNER JOIN BOOK_SALES C ON A.BOOK_ID = C.BOOK_ID
WHERE
    C.SALES_DATE >= '2022-01-01'
AND
    C.SALES_DATE < '2022-02-01'
GROUP BY B.AUTHOR_ID, A.CATEGORY
ORDER BY B.AUTHOR_ID, A.CATEGORY DESC