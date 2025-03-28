-- Add LastUpdated and Status Columns to the Table
ALTER TABLE Students
ADD LastUpdated DATE;

ALTER TABLE Students
ADD Status VARCHAR(20);

-- Set Default Values for New Columns
UPDATE Students
SET 
    LastUpdated = CURDATE(),   -- Sets current date as LastUpdated
    Status = 'Active';         -- Sets Status to 'Active' for all records


-- Delete Records Where Status is Inactive
DELETE FROM Students
WHERE Status = 'Inactive';

-- Delete Records Where LastUpdated is Older Than a Specific Date
DELETE FROM Students
WHERE LastUpdated < '2024-01-01';

-- Check Records Before Deletion
SELECT *
FROM Students
WHERE Status = 'Inactive'
   OR LastUpdated < '2024-01-01';

-- Verify Remaining Records After Deletion
SELECT *
FROM Students;

