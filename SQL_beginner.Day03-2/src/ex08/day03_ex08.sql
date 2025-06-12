INSERT INTO menu (id, pizzeria_id, pizza_name, price)
VALUES (
    (SELECT MAX(id) + 1 FROM menu),   -- Вычисляем следующий id, используя максимальное значение из таблицы menu
    (SELECT id FROM pizzeria WHERE name = 'Dominos'),  -- Вставляем id пиццерии "Dominos"
    'sicilian pizza',  -- Название новой пиццы
    900  -- Цена пиццы
);
