﻿#Использовать asserts

Функция ПолучитьСписокТестов(юТест) Экспорт
	ВсеТесты = Новый Массив;
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЭтоИстина");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_ЭтоИстина");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЭтоЛожь");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_ЭтоЛожь");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Равно");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_Равно");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Больше");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_Больше");
	ВсеТесты.Добавить("ТестДолжен_Проверить_БольшеИлиРавно_И_Минимум");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_БольшеИлиРавно_И_Минимум");
	ВсеТесты.Добавить("ТестДолжен_Проверить_МеньшеИлиРавно_И_Максимум");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_МеньшеИлиРавно_И_Максимум");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Меньше");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_Меньше");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Заполнено");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_Заполнено");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Существует");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_Существует");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЭтоНеопределено");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_ЭтоНеопределено");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ЭтоNull");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_ЭтоNull");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ИмеетТип");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_ИмеетТип");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Между");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_Между");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Содержит");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_Содержит");
	ВсеТесты.Добавить("ТестДолжен_Проверить_ИмеетДлину");
	ВсеТесты.Добавить("ТестДолжен_Проверить_Отрицание_ИмеетДлину");
	ВсеТесты.Добавить("ТестДолжен_Проверить_КомпозитныеУтверждения");
	ВсеТесты.Добавить("ТестДолжен_Проверить_КомпозитныеУтверждения_ВПеремешкуС_Отрицаниями");
	
	Возврат ВсеТесты;
КонецФункции

Процедура ТестДолжен_Проверить_ЭтоИстина() Экспорт
	Ожидаем.Что(5 > 1).ЭтоИстина();
	Ожидаем.Что(Истина).ЭтоИстина();
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_ЭтоИстина() Экспорт
	Ожидаем.Что(5 < 1).Не_().ЭтоИстина();
	Ожидаем.Что(Ложь).Не_().ЭтоИстина();
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЭтоЛожь() Экспорт
	Ожидаем.Что(5 < 1).ЭтоЛожь();
	Ожидаем.Что(Ложь).ЭтоЛожь();
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_ЭтоЛожь() Экспорт
	Ожидаем.Что(5 > 1).Не_().ЭтоЛожь();
	Ожидаем.Что(Истина).Не_().ЭтоЛожь();
КонецПроцедуры

Процедура ТестДолжен_Проверить_Равно() Экспорт
	Ожидаем.Что(5).Равно(5);
	Ожидаем.Что("некая строка").Равно("некая строка");
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_Равно() Экспорт
	Ожидаем.Что(5).Не_().Равно(7);
КонецПроцедуры

Процедура ТестДолжен_Проверить_Больше() Экспорт
	Ожидаем.Что(4).Больше(2);
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_Больше() Экспорт
	Ожидаем.Что(7).Не_().Больше(11);
	Ожидаем.Что(7).Не_().Больше(7);
КонецПроцедуры

Процедура ТестДолжен_Проверить_БольшеИлиРавно_И_Минимум() Экспорт
	НекоеЧисло = 9;
	Ожидаем.Что(НекоеЧисло).БольшеИлиРавно(5);
	Ожидаем.Что(НекоеЧисло).БольшеИлиРавно(9);
	
	Ожидаем.Что(НекоеЧисло).Минимум(1);
	Ожидаем.Что(НекоеЧисло).Минимум(9);
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_БольшеИлиРавно_И_Минимум() Экспорт
	НекоеЧисло = 15;
	Ожидаем.Что(НекоеЧисло).Не_().БольшеИлиРавно(20);
	Ожидаем.Что(НекоеЧисло).Не_().Минимум(16);
КонецПроцедуры

Процедура ТестДолжен_Проверить_МеньшеИлиРавно_И_Максимум() Экспорт
	НекоеЧисло = 30;
	Ожидаем.Что(НекоеЧисло).МеньшеИлиРавно(32);
	Ожидаем.Что(НекоеЧисло).МеньшеИлиРавно(30);
	
	Ожидаем.Что(НекоеЧисло).Максимум(37);
	Ожидаем.Что(НекоеЧисло).Максимум(30);
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_МеньшеИлиРавно_И_Максимум() Экспорт
	НекоеЧисло = 17;
	Ожидаем.Что(НекоеЧисло).Не_().МеньшеИлиРавно(16);
	Ожидаем.Что(НекоеЧисло).Не_().Максимум(11);
КонецПроцедуры

Процедура ТестДолжен_Проверить_Меньше() Экспорт
	Ожидаем.Что(5).Меньше(10);
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_Меньше() Экспорт
	Ожидаем.Что(5).Не_().Меньше(3);
	Ожидаем.Что(5).Не_().Меньше(5);
КонецПроцедуры

Процедура ТестДолжен_Проверить_Заполнено() Экспорт
	Ожидаем.Что(7).Заполнено();
	Ожидаем.Что("!!!").Заполнено();
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_Заполнено() Экспорт
	Ожидаем.Что(0).Не_().Заполнено();
	Ожидаем.Что("").Не_().Заполнено();
	Ожидаем.Что(Новый Массив).Не_().Заполнено();
КонецПроцедуры

Процедура ТестДолжен_Проверить_Существует() Экспорт
	Ожидаем.Что(0).Существует();
	Ожидаем.Что("").Существует();
	Ожидаем.Что(Новый Массив).Существует();
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_Существует() Экспорт
	Ожидаем.Что(Неопределено).Не_().Существует();
	Ожидаем.Что(Null).Не_().Существует();
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЭтоНеопределено() Экспорт
	Перем Переменная;
	Ожидаем.Что(Переменная).ЭтоНеопределено();
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_ЭтоНеопределено() Экспорт
	Ожидаем.Что(0).Не_().ЭтоНеопределено();
	Ожидаем.Что(Null).Не_().ЭтоНеопределено();
КонецПроцедуры

Процедура ТестДолжен_Проверить_ЭтоNull() Экспорт
	Ссылка = Null;
	Ожидаем.Что(Ссылка).ЭтоNull();
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_ЭтоNull() Экспорт
	Ожидаем.Что("").Не_().ЭтоNull();
	Ожидаем.Что(Неопределено).Не_().ЭтоNull();
КонецПроцедуры

Процедура ТестДолжен_Проверить_ИмеетТип() Экспорт
	Ожидаем.Что(Новый Массив).ИмеетТип("Массив");
	Ожидаем.Что(5).ИмеетТип(Тип("Число"));
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_ИмеетТип() Экспорт
	Ожидаем.Что("").Не_().ИмеетТип("Массив");
	Ожидаем.Что(5).Не_().ИмеетТип(Тип("Дата"));
КонецПроцедуры

Процедура ТестДолжен_Проверить_Между() Экспорт
	Ожидаем.Что(5).Между(3, 7);
	Ожидаем.Что(3).Между(3, 7);
	Ожидаем.Что(7).Между(3, 7);
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_Между() Экспорт
	Ожидаем.Что(1).Не_().Между(3, 7);
КонецПроцедуры

Процедура ТестДолжен_Проверить_Содержит() Экспорт
	Ожидаем.Что("Некая строка", "Строка").Содержит("ока");
	
	НекийМассив = Новый Массив;
	НекийМассив.Добавить(1);
	НекийМассив.Добавить(2);
	Ожидаем.Что(НекийМассив, "НекийМассив").Содержит(2);
	
	НекийФиксированныйМассив = Новый ФиксированныйМассив(НекийМассив);
	Ожидаем.Что(НекийМассив, "НекийФиксированныйМассив").Содержит(1);
	
	НекаяСтруктура = Новый Структура("Ключ1, Ключ2", "Значение1", "Значение2");
	Ожидаем.Что(НекаяСтруктура, "НекаяСтруктура").Содержит("Значение1");
	
	НекаяФиксированнаяСтруктура = Новый ФиксированнаяСтруктура(НекаяСтруктура);
	Ожидаем.Что(НекаяФиксированнаяСтруктура, "НекаяФиксированнаяСтруктура").Содержит("Значение2");
	
	НекоеСоответствие = Новый Соответствие;
	НекоеСоответствие.Вставить(1, НекийМассив);
	НекоеСоответствие.Вставить(2, НекаяСтруктура);
	Ожидаем.Что(НекоеСоответствие, "НекоеСоответствие").Содержит(НекийМассив);
	
	НекоеФиксированноеСоответствие = Новый ФиксированноеСоответствие(НекоеСоответствие);
	Ожидаем.Что(НекоеФиксированноеСоответствие, "НекоеФиксированноеСоответствие").Содержит(НекаяСтруктура);
	
	НекийСписокЗначений = Новый СписокЗначений;
	НекийСписокЗначений.Добавить("знач1");
	НекийСписокЗначений.Добавить("знач2");
	Ожидаем.Что(НекийСписокЗначений, "НекийСписокЗначений").Содержит("знач1");
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_Содержит() Экспорт
	Ожидаем.Что("Некая строка").Не_().Содержит("!!!");
	
	НекийМассив = Новый Массив;
	НекийМассив.Добавить(1);
	НекийМассив.Добавить(2);
	Ожидаем.Что(НекийМассив).Не_().Содержит(7);
КонецПроцедуры

Процедура ТестДолжен_Проверить_ИмеетДлину() Экспорт
	Ожидаем.Что("Некая строка", "Строка").ИмеетДлину(12);
	
	НекийМассив = Новый Массив;
	НекийМассив.Добавить(1);
	НекийМассив.Добавить(2);
	Ожидаем.Что(НекийМассив, "НекийМассив").ИмеетДлину(2);
	
	НекийФиксированныйМассив = Новый ФиксированныйМассив(НекийМассив);
	Ожидаем.Что(НекийМассив, "НекийФиксированныйМассив").ИмеетДлину(2);
	
	НекаяСтруктура = Новый Структура("Ключ1, Ключ2, Ключ3", "Значение1", "Значение2");
	Ожидаем.Что(НекаяСтруктура, "НекаяСтруктура").ИмеетДлину(3);
	
	НекаяФиксированнаяСтруктура = Новый ФиксированнаяСтруктура(НекаяСтруктура);
	Ожидаем.Что(НекаяФиксированнаяСтруктура, "НекаяФиксированнаяСтруктура").ИмеетДлину(3);
	
	НекоеСоответствие = Новый Соответствие;
	НекоеСоответствие.Вставить(1, НекийМассив);
	НекоеСоответствие.Вставить(2, НекаяСтруктура);
	Ожидаем.Что(НекоеСоответствие, "НекоеСоответствие").ИмеетДлину(2);
	
	НекоеФиксированноеСоответствие = Новый ФиксированноеСоответствие(НекоеСоответствие);
	Ожидаем.Что(НекоеФиксированноеСоответствие, "НекоеФиксированноеСоответствие").ИмеетДлину(2);
	
	НекийСписокЗначений = Новый СписокЗначений;
	НекийСписокЗначений.ЗагрузитьЗначения(НекийМассив);
	НекийСписокЗначений.Добавить("знач1");
	НекийСписокЗначений.Добавить("знач2");
	Ожидаем.Что(НекийСписокЗначений, "НекийСписокЗначений").ИмеетДлину(4);
КонецПроцедуры

Процедура ТестДолжен_Проверить_Отрицание_ИмеетДлину() Экспорт
	Ожидаем.Что("Некая строка", "Строка").Не_().ИмеетДлину(1);
	
	НекаяСтруктура = Новый Структура("Ключ1, Ключ2, Ключ3", "Значение1", "Значение2");
	Ожидаем.Что(НекаяСтруктура, "НекаяСтруктура").Не_().ИмеетДлину(4);
КонецПроцедуры

Процедура ТестДолжен_Проверить_КомпозитныеУтверждения() Экспорт
	Ожидаем.Что("Некая строка")
		.Существует()
		.ИмеетТип("Строка")
		.ИмеетДлину(12)
		.Содержит("стр");
КонецПроцедуры

Процедура ТестДолжен_Проверить_КомпозитныеУтверждения_ВПеремешкуС_Отрицаниями() Экспорт
	Ожидаем.Что("Некая строка")
		.Существует()
		.Не_().ИмеетТип("Число")
		.ИмеетДлину(12)
		.Не_().Содержит("!!!");
КонецПроцедуры
