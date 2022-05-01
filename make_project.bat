@echo off
set /p target="Target directory: "
call activate
cookiecutter %~dp0 -o %target%

pause

E:\Scratch\2022-05-01
Personal Data Warehouse
