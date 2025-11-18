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

Функция ПараметрыГенерацииОтчета() Экспорт
	
	Параметры = ЮТФабрикаСлужебный.ПараметрыГенератораОтчета();
	
	ОписаниеФормата = ЮТФабрикаСлужебный.ОписаниеФорматаОтчета("dumpjson", "Дамп результата тестирования в json");
	ОписаниеФормата.ИмяФайлаПоУмолчанию = "report.json";
	ОписаниеФормата.ФильтрВыбораФайла = "Дамп результата тестирования (*.json)|*.json";
	Параметры.Форматы.Вставить(ОписаниеФормата.Идентификатор, ОписаниеФормата);
	
	Возврат Параметры;
	
КонецФункции

// Формирует отчет в формате JSON
// 
// Параметры:
//  РезультатВыполнения - Массив из см. ЮТФабрика.ОписаниеИсполняемогоТестовогоМодуля
//  Формат - см. ЮТФабрикаСлужебный.ОписаниеФорматаОтчета
// Возвращаемое значение:
//  ДвоичныеДанные - Данные отчета
Функция ДанныеОтчета(РезультатВыполнения, Формат) Экспорт
	
#Если ВебКлиент Тогда
	ВызватьИсключение "Формирование отчета в формате JSON не поддерживается в web-клиенте";
#Иначе
	Поток = Новый ПотокВПамяти();
	Запись = Новый ЗаписьJSON();
	Запись.ОткрытьПоток(Поток, "UTF-8", Ложь);
	
	ЗаписатьJSON(Запись, РезультатВыполнения);
	
	Запись.Закрыть();
	
	Возврат Поток.ЗакрытьИПолучитьДвоичныеДанные();
#КонецЕсли
	
КонецФункции

#КонецОбласти
