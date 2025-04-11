## Andmetüüpid
1. **Teksti või sümboolid** - VARCHAR(50), CHAR(3), TEXT
--Näited: nimi, nimetus, telefoniNumber, isikukood - VARCHAR(11)
2. **Arvulised** - int, bigint, smallint, decimal(5,2) = 5 - kokku, 2 - peale komat
--Näited: vanus, palk, temperatuur, kaal, pikkus jne
3. **Kuupäeva** - DATE, TIME, date/time
4. **Loogilised** - bit, bool, boolean

   ##Piirangud - ограничения
   1. Prymary Key - Определяет первичный ключ таблицы, представляемый заданным полем или набором полей
   2. UNIQUE - Обеспечивает уникальность значений заданном поле или наборе полей
   3. NOT NULL - Препятствует внесению в поле пустых значений 
   4. Foreign Key - Определяет внешний ключ который задает связь между двумя таблицами
   5. CHECK - Используется для ограничиения множества допустимых для поля значений
