# ☯ ☯ ☯ Бесплатный веб-интерфейс ☯ ☯ ☯
## 🔥🔥🔥 Для замены лица в видео 🔥🔥🔥
<strong>полностью бесплатно для всех</strong> 

Удивляйте друзей знакомых, дарите смех и восторг. 🔥🔥🔥



## Примечание ℹ️ 
<p>
🎵 🎶 🎷 🎸 🎹 🎺 🎻 🎼 🔊 Reface - это бесплатный проект для развлечения, собравший в себя много разных моделей, которые уже предобучены для корректной работы. Простой и понятный интерфейс с которым разберется любой человек.
</p>

## Справка
Все что вы тут ивидете создано в качестве ознакомительной цели и автор не несет никакой ответственности.
##

## Список дел ✔️


- [ ] Создать приложение для телефонов
- [ ] Создать возможность переводить звуковую дорожку

## Начало работы :white_check_mark:  
Чтобы начать работу с этим проектом, вам нужно будет клонировать полный список программ с гугл диска и произвести простые настройки: 
  
### Сохраните репозиторий :inbox_tray:
Скчайте репозиторий по ссылке:  

```
https://drive.google.com/drive/folders/18bXlXmzx2b9qlBKCjEv2QVRXVwPYTmV7?usp=drive_link
```

### Произвести небольшие настройки :wrench: 
Описание настроек внутри файла bat/:
```
REM --tensorrt для активации TensorRT ускорения (Nvidia RTX 20xx, 30xx, 40xx)
REM --autolaunch для включения автозапуска
REM --gpu-threads N - Выбор оптимального количества потоков для вашей видеокарты важен. Слишком большое значение может вызвать ошибки или снизить производительность. Например, 4 потока потребляют около 5.5-6 Гб VRAM, а 8 потоков - около 10 Гб VRAM, с возможным пиковым потреблением выше этих значений.
REM --share_gradio для удаленного доступа
REM --max_num_faces N - установка максимального количества лиц для замены. 
REM --max-memory 8000 - количество выделяемой оперативной памяти (работает раз через раз)
```

## Запуск приложения :rocket:
Чтобы запустить приложение:
```
start_portable
```

Браузер откроет URL-адресL:
```
http://127.0.0.1
```
or
```
http://localhost
```
