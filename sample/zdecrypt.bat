@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem ��Ҫ���ܺ����ݴ�ŵ�Ŀ¼
set _dec_dir_=zdecrypt

rem ��Ҫ���ܵ�����
set _done_dir=done

rem αװ��ͼƬĿ¼,��Ҫ�ͼ���һ��
set _pic_img_=pic

rem ���ü�������
set _password_=123456

del /Q tmp\*.*
.\FuckFileMonitor.exe decrypt %_pic_img_% %_done_dir% tmp
.\7z.exe x -aoa -p%_password_% -o%_dec_dir_% tmp/decrypt.7z.*
