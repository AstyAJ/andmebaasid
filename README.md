## Andmetüüpid
1. **Teksti või sümboolid** - VARCHAR(50), CHAR(3), TEXT
--Näited: nimi, nimetus, telefoniNumber, isikukood - VARCHAR(11)
2. **Arvulised** - int, bigint, smallint, decimal(5,2) = 5 - kokku, 2 - peale komat
--Näited: vanus, palk, temperatuur, kaal, pikkus jne
3. **Kuupäeva** - DATE, TIME, date/time
4. **Loogilised** - bit, bool, boolean

   ##Piirangud - ограничения
   1. Prymary Key - не даёт возможность добавить доп. ценности
   2. UNIQUE - Уникальный
   3. NOT NULL - не разрешает пустые ценности
   4. Foreign Key - можно использовать ценности другой таблицы
   5. 
