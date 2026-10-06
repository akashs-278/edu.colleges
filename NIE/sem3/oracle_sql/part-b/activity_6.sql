-- =========================================
-- CREATE PHYSICS TABLE
-- =========================================

CREATE TABLE physics (
    reg_no VARCHAR2(8) PRIMARY KEY,
    name VARCHAR2(10),
    year VARCHAR2(10),
    combination VARCHAR2(5)
);


-- =========================================
-- INSERT PHYSICS
-- =========================================

INSERT INTO physics
VALUES ('AJ00325','ashwin','first','pcm');

INSERT INTO physics
VALUES ('AJ00225','swaroop','second','pmcs');

INSERT INTO physics
VALUES ('AJ00385','sarika','third','pme');

INSERT INTO physics
VALUES ('AJ00388','hamsa','first','pmcs');


-- =========================================
-- CREATE COMPUTER SCIENCE TABLE
-- =========================================

CREATE TABLE computer_science (
    reg_no VARCHAR2(8) PRIMARY KEY,
    name VARCHAR2(10),
    year VARCHAR2(10),
    combination VARCHAR2(5)
);


-- =========================================
-- INSERT COMPUTER SCIENCE
-- =========================================

INSERT INTO computer_science
VALUES ('AJ00225','swaroop','second','pmcs');

INSERT INTO computer_science
VALUES ('AJ00296','tejas','second','bca');

INSERT INTO computer_science
VALUES ('AJ00112','geetha','first','bca');

INSERT INTO computer_science
VALUES ('AJ00388','hamsa','first','pmcs');


-- =========================================
-- 1. UNION
-- =========================================

SELECT *
FROM physics
UNION
SELECT *
FROM computer_science;


-- =========================================
-- 2. INTERSECT
-- =========================================

SELECT *
FROM physics
INTERSECT
SELECT *
FROM computer_science;


-- =========================================
-- 3. SECOND YEAR - UNION
-- =========================================

SELECT *
FROM physics
WHERE year = 'second'
UNION
SELECT *
FROM computer_science
WHERE year = 'second';


-- =========================================
-- 4. SECOND YEAR - INTERSECT
-- =========================================

SELECT *
FROM physics
WHERE year = 'second'
INTERSECT
SELECT *
FROM computer_science
WHERE year = 'second';


-- =========================================
-- 5. PHYSICS MINUS COMPUTER SCIENCE
-- =========================================

SELECT *
FROM physics
MINUS
SELECT *
FROM computer_science;


-- =========================================
-- 6. COMPUTER SCIENCE MINUS PHYSICS
-- =========================================

SELECT *
FROM computer_science
MINUS
SELECT *
FROM physics;


-- =========================================
-- 7. PMCS - UNION
-- =========================================

SELECT *
FROM physics
WHERE combination = 'pmcs'
UNION
SELECT *
FROM computer_science
WHERE combination = 'pmcs';


-- =========================================
-- 8. BCA - UNION
-- =========================================

SELECT *
FROM physics
WHERE combination = 'bca'
UNION
SELECT *
FROM computer_science
WHERE combination = 'bca';


-- =========================================
-- 9. THIRD YEAR - UNION
-- =========================================

SELECT *
FROM physics
WHERE year = 'third'
UNION
SELECT *
FROM computer_science
WHERE year = 'third';


-- =========================================
-- 10. RENAME TABLE
-- =========================================

RENAME computer_science TO cs;

DESC cs;


-- =========================================
-- COMMIT
-- =========================================

COMMIT;
