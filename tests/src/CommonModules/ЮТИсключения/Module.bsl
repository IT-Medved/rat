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

// Формирует текст исключения о некорректных параметрах вызова метода
// 
// Параметры:
//  ИмяМетода - Строка
//  Пояснение - Строка
// 
// Возвращаемое значение:
//  Строка - Текст исключения
Функция НекорректныеПараметрыМетода(ИмяМетода, Пояснение = Неопределено) Экспорт
	
	Сообщение = СтрШаблон("Некорректные параметры метода `%1`", ИмяМетода);
	Возврат ЮТСтроки.ДобавитьСтроку(Сообщение, Пояснение, ", ");
	
КонецФункции

// Формирует текст исключения о неподдерживаемом значении параметра вызова метода
// 
// Параметры:
//  ИмяМетода - Строка
//  ЗначениеПараметра - Произвольный
// 
// Возвращаемое значение:
//  Строка - Текст исключения
Функция НеподдерживаемыйПараметрМетода(ИмяМетода, ЗначениеПараметра) Экспорт
	
	Возврат СтрШаблон("Неподдерживаемый параметр метода `%1` `%2`(%3)", ИмяМетода, ЗначениеПараметра, ТипЗнч(ЗначениеПараметра));
	
КонецФункции

// Формирует текст исключения о недоступности метода в указанном контексте
// 
// Параметры:
//  ИмяМетода - Строка
//  ИмяКонтекста - Строка
// 
// Возвращаемое значение:
//  Строка - Текст исключения
Функция МетодНеДоступен(ИмяМетода, ИмяКонтекста = "веб-клиенте") Экспорт
	
	Возврат СтрШаблон("Метод `%1` не доступен в/на %2", ИмяМетода, ИмяКонтекста);
	
КонецФункции

#КонецОбласти
