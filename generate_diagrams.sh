#!/bin/bash

echo "Генерация диаграмм PlantUML в PNG..."

# Находим все .puml файлы в папке schemas и генерируем PNG
find schemas -name "*.puml" -exec plantuml -tpng {} \;

echo "Готово! PNG файлы созданы в папке schemas/"

# Показываем список созданных файлов
echo "Созданные файлы:"
ls -la schemas/*.png 2>/dev/null || echo "Нет PNG файлов"