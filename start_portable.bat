@echo off
set pypath=home = %~dp0python
set venvpath=_ENV=%~dp0venv
if exist venv (powershell -command "$text = (gc venv\pyvenv.cfg) -replace 'home = .*', $env:pypath; $Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding($False);[System.IO.File]::WriteAllLines('venv\pyvenv.cfg', $text, $Utf8NoBomEncoding);$text = (gc venv\scripts\activate.bat) -replace '_ENV=.*', $env:venvpath; $Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding($False);[System.IO.File]::WriteAllLines('venv\scripts\activate.bat', $text, $Utf8NoBomEncoding);")

for /d %%i in (tmp\tmp*,tmp\pip*) do rd /s /q "%%i" 2>nul || ("%%i" && exit /b 1) & del /q tmp\tmp* > nul 2>&1 & rd /s /q pip\cache 2>nul

set appdata=tmp
set userprofile=tmp
set temp=tmp
set PATH=git\cmd;python;venv\scripts;ffmpeg;cuda;cuda\bin;cuda\lib

set PYTORCH_CUDA_ALLOC_CONF=garbage_collection_threshold:0.8,max_split_size_mb:512
set CUDA_MODULE_LOADING=LAZY
set OMP_NUM_THREADS=1
set CUDA_PATH=cuda

call venv\Scripts\activate.bat
python app.py --gpu-threads 4 --max-memory 8000 --autolaunch --tensorrt
pause


REM --tensorrt для активации TensorRT ускорения (Nvidia RTX 20xx, 30xx, 40xx)
REM --autolaunch для включения автозапуска
REM --gpu-threads N - Выбор оптимального количества потоков для вашей видеокарты важен. Слишком большое значение может вызвать ошибки или снизить производительность. Например, 4 потока потребляют около 5.5-6 Гб VRAM, а 8 потоков - около 10 Гб VRAM, с возможным пиковым потреблением выше этих значений.
REM --share_gradio для удаленного доступа
REM --max_num_faces N - установка максимального количества лиц для замены. 
REM --max-memory 8000 - количество выделяемой оперативной памяти (работает раз через раз)