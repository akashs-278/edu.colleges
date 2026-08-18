-- 1. Find the mod of 165,16.
SELECT MOD(165, 16) AS Mod_Result 
FROM DUAL;

-- 2. Find Square Root of 5000.
SELECT SQRT(5000) AS Square_Root 
FROM DUAL;

-- 3. Truncate the value 128.3285 to 2 and -1 decimal places.
SELECT TRUNC(128.3285, 2) AS Trunc_2, 
       TRUNC(128.3285, -1) AS Trunc_Minus1 
FROM DUAL;

-- 4. Round the value 92.7683 to 2 and -1 decimal places.
SELECT ROUND(92.7683, 2) AS Round_2, 
       ROUND(92.7683, -1) AS Round_Minus1 
FROM DUAL;

-- 5. Convert the string 'Department' to uppercase and lowercase.
SELECT UPPER('Department') AS Upper_Case, 
       LOWER('Department') AS Lower_Case 
FROM DUAL;

-- 6. Display your address convert the first character of each word to uppercase and rest are in lowercase.
SELECT INITCAP('jss college mysore karnataka') AS Formatted_Address 
FROM DUAL;

-- 7. Combine your first name and last name under the title Full name.
SELECT CONCAT('John ', 'Doe') AS "Full name" 
FROM DUAL;

-- 8. A) Take a string length maximum of 15 displays your name to the left. The remaining space should be filled with '*'.
SELECT RPAD('Rahul', 15, '*') AS Left_Aligned_Name 
FROM DUAL;

-- 9. Take a string length maximum of 20 displays your name to the right. The remaining space should be filled with '#'.
SELECT LPAD('Rahul', 20, '#') AS Right_Aligned_Name 
FROM DUAL;

-- 10. Find the length of the string 'JSS College, Mysore'.
SELECT LENGTH('JSS College, Mysore') AS String_Length 
FROM DUAL;

-- 11. Display substring 'BASE' from 'DATABASE'.
SELECT SUBSTR('DATABASE', 5, 4) AS Extracted_Substring 
FROM DUAL;

-- 12. Display the position of the first occurrence of character 'o' in Position and Length.
SELECT INSTR('Position and Length', 'o') AS First_O_Position 
FROM DUAL;

-- 13. Replace string Database with Data type.
SELECT REPLACE('Database', 'Database', 'Data type') AS Replaced_String 
FROM DUAL;

-- 14. Display the ASCII value of ' ' (Space).
SELECT ASCII(' ') AS Space_ASCII_Value 
FROM DUAL;

-- 15. Display the Character equivalent of 42.
SELECT CHR(42) AS Char_Equivalent 
FROM DUAL;
