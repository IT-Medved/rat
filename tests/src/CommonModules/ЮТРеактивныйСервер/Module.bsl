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

// Это разработка @zeegin(https://github.com/zeegin) aka Ingvar

#Область СлужебныйПрограммныйИнтерфейс

// Загружает реактивное приложение как в веб клиенте так и в тонком
// 
// Параметры:
//  ДвоичныеДанные - ДвоичныеДанные - Реактивное приложение, например полученное из макета
//  УникальныйИдентификатор - УникальныйИдентификатор - Для управления временем жизни временного хранилища
// 
// Возвращаемое значение:
//  Строка - Адрес или данные для html документа
Функция ЗагрузитьПриложение(ДвоичныеДанные, УникальныйИдентификатор) Экспорт
	
	Если ЮТОкружение.ОписаниеОкружения().ВебКлиент Тогда
		Возврат ПолучитьСтрокуИзДвоичныхДанных(ДвоичныеДанные);
	Иначе
		Возврат ПолучитьНавигационнуюСсылкуИнформационнойБазы() + "/" + ПоместитьВоВременноеХранилище(ДвоичныеДанные, УникальныйИдентификатор);
	КонецЕсли;
	
КонецФункции

Функция ЗагрузитьПриложениеИзМакета(ИмяМакета, УникальныйИдентификатор) Экспорт
	
	Данные = ПолучитьОбщийМакет(ИмяМакета);
	Возврат ЗагрузитьПриложение(Данные, УникальныйИдентификатор);
	
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#КонецОбласти
