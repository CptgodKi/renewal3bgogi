SELECT ym
     , MIN(CASE dw WHEN 1 THEN d END) '일'
     , MIN(CASE dw WHEN 2 THEN d END) '월'
     , MIN(CASE dw WHEN 3 THEN d END) '화'
     , MIN(CASE dw WHEN 4 THEN d END) '수'
     , MIN(CASE dw WHEN 5 THEN d END) '목'
     , MIN(CASE dw WHEN 6 THEN d END) '금'
     , MIN(CASE dw WHEN 7 THEN d END) '토'
  FROM (SELECT date_format(dt,'%m') ym
             , Week(dt) w
             , Day(dt) d
             , DayofWeek(dt) dw
          FROM (SELECT CONCAT(y, '0101') + INTERVAL a*100 + b*10 + c DAY dt
                  FROM (SELECT 0 a
                        UNION ALL SELECT 1
                        UNION ALL SELECT 2
                        UNION ALL SELECT 3
                        ) a
                     , (SELECT 0 b
                        UNION ALL SELECT 1
                        UNION ALL SELECT 2
                        UNION ALL SELECT 3
                        UNION ALL SELECT 4
                        UNION ALL SELECT 5
                        UNION ALL SELECT 6
                        UNION ALL SELECT 7
                        UNION ALL SELECT 8
                        UNION ALL SELECT 9
                        ) b
                     , (SELECT 0 c
                        UNION ALL SELECT 1
                        UNION ALL SELECT 2
                        UNION ALL SELECT 3
                        UNION ALL SELECT 4
                        UNION ALL SELECT 5
                        UNION ALL SELECT 6
                        UNION ALL SELECT 7
                        UNION ALL SELECT 8
                        UNION ALL SELECT 9
                        ) c
                     , (SELECT '2019' y) d
                 WHERE a*100 + b*10 + c < DayOfYear(CONCAT(y, '1231'))
                ) a
        ) a 
 GROUP BY ym, w
 HAVING ym = '03'
