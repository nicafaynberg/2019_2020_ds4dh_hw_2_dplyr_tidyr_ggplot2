# Анализ данных для DH, hw2: dplyr, tidyr, ggplot2

## Задание 2.1
На Pudding недавно вышла статья "Finding Forever Homes", посвященная миграции и эмиграции собак в США. [Здесь](https://raw.githubusercontent.com/r-classes/2019_2020_ds4dh_hw_2_dplyr_tidyr_ggplot2/master/data/dog_names.csv) лежит немного обработанный датасет, которые использовался в статье. Датасет состоит из 58113 строк и 5 переменных:

* `id` -- уникальный  id с сервиса PetFinder
* `name` -- кличка собаки
* `sex` -- пол собаки (`Female`, `Male`, or `Unknown`)
* `age` -- категориальная переменная с возрастом собаки (`Baby`, `Young`, `Adult`, `Senior`)
* `contact_state` -- штат, в котором находиться приют

Заполните пропуски в файле `task_2.1.R` в Вашем репозитории, так чтобы получился следующий график. На нем изображено по 20 самых популярных кличек собак в США для каждого пола. Обратите внимание на подписи осей.

![](https://raw.githubusercontent.com/r-classes/2019_2020_ds4dh_hw_2_dplyr_tidyr_ggplot2/master/01_dog_names.png)


