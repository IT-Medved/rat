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

// Локализация.
//
// Возвращаемое значение:
//  Строка - Возвращает текущую установленную локализацию
Функция Локализация() Экспорт
	
	Возврат ЮТПодражательСлужебный.Локализация();
	
КонецФункции

// Устанавливает локализацию подражателя
// В дальнейшем используется для получения списка словарей с указанной локализацией
// Параметры:
//  КодЯзыка - Строка - Код языка
Процедура УстановитьЛокализацию(КодЯзыка) Экспорт
	
	ЮТПодражательСлужебный.Контекст().Локализация = КодЯзыка;
	
КонецПроцедуры

#Область Реализации

// Подражатель для людей
// 
// Возвращаемое значение:
//  CommonModule.ЮТПодражатель_Люди -  Люди
Функция Люди() Экспорт
	
	Возврат ЮТПодражатель_Люди;
	
КонецФункции

// Подражатель для компаний
// 
// Возвращаемое значение:
//  CommonModule.ЮТПодражатель_Компании -  Компании
Функция Компании() Экспорт
	
	Возврат ЮТПодражатель_Компании;
	
КонецФункции

// Подражатель для банков
// 
// Возвращаемое значение:
//  CommonModule.ЮТПодражатель_Банки -  Банки
Функция Банки() Экспорт
	
	Возврат ЮТПодражатель_Банки;
	
КонецФункции

#КонецОбласти

#КонецОбласти
