@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem ��Ҫ���ܵ�Ŀ¼
set _enc_dir_=zencrypt

if not "%1"=="" set _enc_dir_=%1

rem ���ɼ��ܺ��Ŀ¼
set _done_dir=done

if not "%2"=="" set _enc_dir_=%2

rem αװ��ͼƬĿ¼(�ǵ�pngͼƬ)
set _pic_img_=pic

rem ���÷ְ������ļ���С,��λMB
set _file_size_=5

rem ���ü�������
set _password_=123456

del /Q done\*.*
del /Q tmp\*.*

.\7z.exe a -mx9 -md64m -mfb=273 -slp -ssw -v%_file_size_%m -p%_password_% "tmp/tmp" %_enc_dir_%
.\FuckFileMonitor.exe encrypt %_pic_img_% "tmp" %_done_dir%