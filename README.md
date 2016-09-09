#Утверждения

Добавляет в скрипт функционал "Утверждений" (assertions). Возможны 2 стиля использования:

Модуль "Утверждения" - утверждения в стиле фреймворка xUnitFor1C
Свойство глобального контекста "Ожидаем" - [fluent-API утверждений в стиле BDD](http://habrahabr.ru/post/260013/)

## Пример

    МояПеременная = ВычислитьЧтоТоТам(); 

	// xUnit style        
    Утверждения.ПроверитьРавенство(1, МояПеременная, "Моя переменная должна быть строго равна 1");
    
    // BDD style
    Ожидаем.Что(МояПеременная).Равно(1);