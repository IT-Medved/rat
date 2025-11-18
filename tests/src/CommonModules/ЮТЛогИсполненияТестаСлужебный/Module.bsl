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

Процедура ДобавитьСообщение(Текст) Экспорт
	
	ДобавитьЗапись("[INF] " + Текст);
	
КонецПроцедуры

Процедура ДобавитьОшибку(Текст) Экспорт
	
	ДобавитьЗапись("[ERR] " + Текст);
	
КонецПроцедуры

Процедура ДобавитьПредупреждение(Текст) Экспорт
	
	ДобавитьЗапись("[WRN] " + Текст);
	
КонецПроцедуры

Функция Записи() Экспорт
	
	Если ЮТест.КонтекстТеста() = Неопределено Тогда
		Возврат Неопределено;
	КонецЕсли;
	
	Лог = ЮТКоллекции.ЗначениеСтруктуры(ЮТест.КонтекстТеста(), "Лог");
#Если Сервер Тогда
	Возврат Лог;
#Иначе
	СерверныйКонтекст = ЮТКонтекстСлужебный.КонтекстТеста(Истина);
	СерверныйЛог = ЮТКоллекции.ЗначениеСтруктуры(СерверныйКонтекст, "Лог");
	
	Если Лог = Неопределено Тогда
		Лог = СерверныйЛог;
	ИначеЕсли СерверныйЛог <> Неопределено Тогда
		ЮТКоллекции.ДополнитьМассив(Лог, СерверныйЛог);
	КонецЕсли;
#КонецЕсли
	
	Возврат Лог;
	
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Процедура ДобавитьЗапись(Текст)
	
	Если ЮТест.КонтекстТеста() = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	Ошибки = Неопределено;
	
	Если НЕ ЮТест.КонтекстТеста().Свойство("Лог", Ошибки) Тогда
		Ошибки = Новый Массив();
		ЮТест.КонтекстТеста().Вставить("Лог", Ошибки);
	КонецЕсли;
	
	Ошибки.Добавить(Текст);
	
КонецПроцедуры

#КонецОбласти
