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

#Область СлужебныйПрограммныйИнтерфейс

// Получает список из словаря с учетом установленной локализации
//
// Параметры:
//  ИмяРеализации - Строка - Имя реализации
//  ИмяСловаря - Строка - Имя словаря
//  КодЛокализации - Строка - Код локализации
//
// Возвращаемое значение:
//	ФиксированныйМассив из Строка
Функция Словарь(ИмяРеализации, ИмяСловаря, КодЛокализации) Экспорт
	Кодификатор = КодификаторСловаря(ИмяРеализации, ИмяСловаря, КодЛокализации);
	Возврат Новый ФиксированныйМассив(ЮТПодражательСлужебныйВызовСервера.ДанныеСловаря(Кодификатор));
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Функция КодификаторСловаря(ИмяРеализации, ИмяСловаря, КодЛокализации)
	Возврат СтрШаблон(
		"ЮТ_СловарьПодражателя_%1_%2_%3",
		ИмяРеализации,
		ИмяСловаря,
		КодЛокализации
	);
КонецФункции

#КонецОбласти
