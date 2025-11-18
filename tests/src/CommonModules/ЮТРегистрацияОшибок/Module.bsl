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

// Добавляет пояснение возникшей ошибки, которое будет добавлено в отчет.
// Используется перед выбросом исключения, чтобы добавить полезной информации об ошибке, но при этом не ломать стек.
// 
// Параметры:
//  Пояснение - Строка - Пояснение
Процедура ДобавитьПояснениеОшибки(Пояснение) Экспорт
	
	ЮТРегистрацияОшибокСлужебный.ДобавитьПояснениеОшибки(Пояснение);
	
КонецПроцедуры

// Фрмирует сообщение об ошибки.
// 
// Параметры:
//  Описание - Строка - Префикс текста ошибки
//  Ошибка - Строка, ИнформацияОбОшибке - Ошибка
// 
// Возвращаемое значение:
//  Строка
Функция ПредставлениеОшибки(Описание, Ошибка = Неопределено) Экспорт
	
	Возврат ЮТРегистрацияОшибокСлужебный.ПредставлениеОшибки(Описание, Ошибка);
	
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#КонецОбласти
