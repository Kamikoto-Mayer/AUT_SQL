
CREATE VIEW StudentGroupInfo AS
SELECT 
    s.lastname || ' ' || LEFT(s.firstname, 1) || '.' AS fullname,
    g.groupname AS groupname
FROM students s
JOIN groups g ON s.group_id = g.groupid;

