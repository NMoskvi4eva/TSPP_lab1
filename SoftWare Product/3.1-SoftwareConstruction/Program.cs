using System;

Console.WriteLine("=== LitraStability-Hub Prototype ===");

// Моделювання FR2.1: Отримання даних від датчика
double currentTemp = 26.4; 
Console.WriteLine($"Поточна температура: {currentTemp}°C");

// Аналіз комфорту
if (currentTemp > 24.0) {
    Console.WriteLine("Статус: Жарко. Рекомендуємо літературу для емоційної стабільності.");
    Console.WriteLine("Рекомендація: «Intermezzo» Михайла Коцюбинського.");
} else {
    Console.WriteLine("Статус: Комфортно.");
}
