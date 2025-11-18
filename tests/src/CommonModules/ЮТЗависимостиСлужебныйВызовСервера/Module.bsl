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

Функция РазрешитьЗависимость(Знач ОписаниеЗависимости) Экспорт
	
	Попытка
		Результат = ЮТМетодыСлужебный.ВызватьФункциюКонфигурации(ОписаниеЗависимости.МетодРеализации, , ОписаниеЗависимости.Параметры, Ложь);
	Исключение
		Результат = ЮТФабрикаСлужебный.РезультатРазрешенияЗависимости();
		Результат.Ошибка = ИнформацияОбОшибке();
	КонецПопытки;
	
	СохраняемыйКонтекст = Результат.СохраняемыйКонтекстСервер;
	Если СохраняемыйКонтекст = Неопределено Тогда
		СохраняемыйКонтекст = Результат.СохраняемыйКонтекст;
	КонецЕсли;
	
	Если СохраняемыйКонтекст <> Неопределено Тогда
		
		ПередаваемыеЗначения = Новый Соответствие();
		ПередаваемыеЗначения.Вставить(ОписаниеЗависимости.Ключ, СохраняемыйКонтекст);
		ЮТКонтекстСлужебный.ВставитьЗначениеКонтекста(ЮТЗависимостиСлужебный.ИмяКонтекстаДанныеЗависимостей(), ПередаваемыеЗначения);
		
	КонецЕсли;
	
	Результат.СохраняемыйКонтекст = Неопределено;
	Результат.СохраняемыйКонтекстСервер = Неопределено;
	
	Возврат Результат;
	
КонецФункции

#КонецОбласти
