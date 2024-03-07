-- This model performs the logic within the function using the initial values of a, b, c
-- Replace `your_initial_values_model` with the name of your initial values model
WITH initial_values AS (
    SELECT * FROM {{ ref('read_global') }}
)

SELECT
    CASE 
        WHEN a < 2 THEN 1
        WHEN a >= 2 AND a < 3 THEN 3
        ELSE 10 -- Add additional logic as needed
    END AS c,
    CASE 
        WHEN b < 2 THEN 2
        WHEN b >= 2 AND b < 3 THEN 4
        ELSE 100 -- Add additional logic as needed
    END AS d,
    a,
    b
FROM initial_values
