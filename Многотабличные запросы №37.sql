SELECT ((extract(day from (now()::date))::int / 7 * 7) + 7) - (extract(day from(now()::date))::int) - 1 as daystosat
