//©///////////////////////////////////////////////////////////////////////////©//
//
//  This file is a part of RAT.
//
//  Copyright © 2021-2025
//  BIA-Technologies Limited Liability Company and contributors
//
//  SPDX-License-Identifier: LGPL-3.0-or-later
//
//  RAT is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Lesser General Public License as published by
//  the Free Software Foundation; either version 3 of the License, or
//  (at your option) any later version.
//
//  RAT is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public License
//  along with RAT. If not, see <https://www.gnu.org/licenses/>.
//
//©///////////////////////////////////////////////////////////////////////////©//

#Область ПрограммныйИнтерфейс

// Выводит отладочное сообщение
//
// Параметры:
//  Сообщение - Строка - Сообщение
Процедура Отладка(Сообщение) Экспорт
	
	ЮТЛогированиеСлужебный.Записать("DBG", Сообщение, 0);
	
КонецПроцедуры

// Выводит информационное сообщение
//
// Параметры:
//  Сообщение - Строка - Сообщение
Процедура Информация(Сообщение) Экспорт
	
	ЮТЛогированиеСлужебный.Записать("INF", Сообщение, 10);
	
КонецПроцедуры

// Выводит предупреждение
//
// Параметры:
//  Сообщение - Строка - Сообщение
Процедура Предостережение(Сообщение) Экспорт
	
	ЮТЛогированиеСлужебный.Записать("WRN", Сообщение, 20);
	
КонецПроцедуры

// Выводит сообщение об ошибке
//
// Параметры:
//  Сообщение - Строка - Сообщение
//  Ошибка - ИнформацияОбОшибке
Процедура Ошибка(Знач Сообщение, Ошибка = Неопределено) Экспорт
	
	Сообщение = ЮТРегистрацияОшибок.ПредставлениеОшибки(Сообщение, Ошибка);
	ЮТЛогированиеСлужебный.Записать("ERR", Сообщение, 99);
	
КонецПроцедуры

// Возвращает признак, что логирование включено.
// 
// Возвращаемое значение:
//  Булево - Включено
Функция Включено() Экспорт
	
	Возврат ЮТЛогированиеСлужебный.ЛогированиеВключено();
	
КонецФункции

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

Функция УровниЛога() Экспорт
	
	Возврат Новый ФиксированнаяСтруктура("Отладка, Информация, Предупреждение, Ошибка", "debug", "info", "warning", "error");
	
КонецФункции

#КонецОбласти
