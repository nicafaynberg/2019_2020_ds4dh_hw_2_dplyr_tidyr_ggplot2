# Анализ данных для DH, hw2: dplyr, tidyr, ggplot2

дедлайн для задания: **14.11.2019, 23:59**

## Задание 2.1
На Pudding недавно вышла [статья "Finding Forever Homes"](https://pudding.cool/2019/10/shelters/), посвященная миграции и эмиграции собак в США. [Здесь](https://raw.githubusercontent.com/r-classes/2019_2020_ds4dh_hw_2_dplyr_tidyr_ggplot2/master/data/dog_names.csv) лежит немного обработанный датасет, которые использовался в статье. Датасет состоит из 58113 строк и 5 переменных:

* `id` -- уникальный  id с сервиса PetFinder
* `name` -- кличка собаки
* `sex` -- пол собаки (`Female`, `Male`, or `Unknown`)
* `age` -- категориальная переменная с возрастом собаки (`Baby`, `Young`, `Adult`, `Senior`)
* `contact_state` -- штат, в котором находиться приют

Заполните пропуски в файле `task_2.1.R` в Вашем репозитории, так чтобы получился следующий график. На нем изображено по 20 самых популярных кличек собак живущих в приютах в США для каждого пола. Обратите внимание на подписи осей. Нестанадртные цвета на этом графике появились благодаря команде `scale_fill_brewer(palette="Dark2")` (см. файл `task_2.1.R`).

![](https://raw.githubusercontent.com/r-classes/2019_2020_ds4dh_hw_2_dplyr_tidyr_ggplot2/master/01_dog_names.png)

## Задание 2.2
Используя датасет из предыдущего задания, посчитайте какую долю составляют собаки разного возраста в подгруппах по полу. Должно получиться что-то такое:
```
# A tibble: 4 x 3
  age      Male Female
  <chr>   <dbl>  <dbl>
1 Adult  0.476  ...
2 Young  ...    ...
3 Baby   ...    ...
4 Senior ...    ...
```

На всякий случай: доли в каждом из столбцов должны давать в сумме что-то вроде 1, если у Вас выходит значительно больше -- значит что-то Вы делаете не так, как ожидается.