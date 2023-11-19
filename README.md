# Мобильное приложение для Агронома

## Что реализованно
- Авторизация с помощью логина пароля
- Считывание информации с карты с помощью NFC.

### [Ссылка на презентацию](https://docs.google.com/presentation/d/1PhfNy2VUfFSlzjDwjdgHYQjP_7r62sRAfuef0zM5Sm8/edit#slide=id.g29d01f8e30f_13_9)

## Сборка приложения

Перед началось запуска/сборки проекта запустите команду:
```
dart run build_runner build --delete-conflicting-outputs
```


Для создание APK-файла запустите следующую команду:
```
flutter build apk 
```
Эта команда создаст один APK-файл для всех ABI, что делает его большим по объёму.

Чтобы создать отдельные APK-файлы, запустите команду:
```
flutter build apk --split-per-abi
```

## Используемые HTTPS методы

## Разработчики
- Пелагейчева Мария | mobile | [Телеграм](https://t.me/MariyaViktorovna)
- Сазонов Артем | mobile | [Телеграм](https://t.me/Drygan) [LinkedIn](https://www.linkedin.com/in/sazonov-artem/)
- Олег Соколов | frontend/backend | [Телеграм](@LightCappuccino)
- Татьяна Гончарова | Designed | [Телеграм](@Tanya_d03)
