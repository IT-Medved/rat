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

Функция ОписаниеОбъектаМетаданных(Знач Менеджер) Экспорт
	
	Возврат ЮТМетаданныеСлужебныйВызовСервера.ОписаниеОбъектаМетаданных(Менеджер);
	
КонецФункции

Функция ОписаниеОбъектаМетаданныхПоИдентификаторуТипа(Знач ИдентификаторТипа) Экспорт
	
	Тип = ЮТТипыДанныхСлужебный.ТипПоИдентификатору(ИдентификаторТипа);
	Возврат ЮТМетаданныеСлужебныйВызовСервера.ОписаниеОбъектаМетаданных(Тип);
	
КонецФункции

// Возвращает описания типов метаданных
// 
// Возвращаемое значение:
//  Структура - 
Функция ТипыМетаданных() Экспорт
	
	Возврат ЮТМетаданныеСлужебныйВызовСервера.ТипыМетаданных();
	
КонецФункции

Функция РазрешеныСинхронныеВызовы() Экспорт
	
	Возврат ЮТМетаданныеСлужебныйВызовСервера.РазрешеныСинхронныеВызовы();
	
КонецФункции

Функция РегистрыДвиженийДокумента(ПолноеИмя) Экспорт
	
	Возврат ЮТМетаданныеСлужебныйВызовСервера.РегистрыДвиженийДокумента(ПолноеИмя);
	
КонецФункции

Функция ВерсияДвижка() Экспорт
	
	Возврат ЮТМетаданныеСлужебныйВызовСервера.ВерсияДвижка();
	
КонецФункции

Функция ПодсистемыПодключаемыхМодулей() Экспорт
	
	Возврат ЮТМетаданныеСлужебныйВызовСервера.ПодсистемыПодключаемыхМодулей();
	
КонецФункции

#КонецОбласти
