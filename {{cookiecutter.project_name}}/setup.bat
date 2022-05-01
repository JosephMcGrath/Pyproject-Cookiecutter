@ECHO OFF
REM Setup for every time that's not the first time.

ECHO -= Create Conda Env -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
call activate
call activate {{cookiecutter.conda_env}}
call activate personal_data_warehouse

PAUSE
