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

// Данные словаря.
//
// Параметры:
//  Кодификатор - Строка - Имя словаря в метаданных
//
// Возвращаемое значение:
//  ФиксированныйМассив из Строка
Функция ДанныеСловаря(Кодификатор) Экспорт
	Если Метаданные.ОбщиеМакеты.Найти(Кодификатор) = Неопределено Тогда
		ВызватьИсключение СтрШаблон("Словарь с именем (%1) не найден", Кодификатор);
	КонецЕсли;
	
	Макет = ПолучитьОбщийМакет(Кодификатор);
	Возврат СтрРазделить(Макет.ПолучитьТекст(), Символы.ПС, Ложь);
	
КонецФункции

#КонецОбласти
