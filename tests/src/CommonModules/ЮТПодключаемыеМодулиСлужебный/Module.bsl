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

Функция ГенераторыОтчетов() Экспорт
	
	Возврат МодулиПодсистемы("ФормированиеОтчета", Ложь, Истина);
	
КонецФункции

Функция ОбработчикиСобытий(Подсистема) Экспорт
	
	Серверные = Ложь;
	Клиентские = Ложь;
#Если Сервер Тогда
	Серверные = Истина;
#КонецЕсли

#Если Клиент Тогда
	Клиентские = Истина;
#КонецЕсли
	
	Возврат ЮТСлужебныйПовторногоИспользования.ОбработчикиСобытий(Подсистема, Серверные, Клиентские);
	
КонецФункции

Функция ПодсистемыПодключаемыхМодулей() Экспорт
	
	Возврат ЮТМетаданныеСлужебныйПовтИсп.ПодсистемыПодключаемыхМодулей();
	
КонецФункции

Функция ИменаМодулейДымовыхТестов(Серверные = Истина, Клиентские = Истина) Экспорт
	
	Возврат ЮТПодключаемыеМодулиСлужебныйВызовСервера.ПодключаемыеМодулиПодсистемы("ДымовыеТесты", Серверные, Клиентские);
	
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Функция МодулиПодсистемы(ИмяПодсистемы, Серверные, Клиентские)
	
	ИменаМодулей = ЮТПодключаемыеМодулиСлужебныйВызовСервера.ПодключаемыеМодулиПодсистемы(ИмяПодсистемы, Серверные, Клиентские);
	
	Модули = Новый Массив();
	
	Для Каждого ИмяМодуля Из ИменаМодулей Цикл
		
		Модуль = ЮТОбщий.Модуль(ИмяМодуля);
		Модули.Добавить(Модуль);
		
	КонецЦикла;
	
	Возврат Модули;
	
КонецФункции

#КонецОбласти
