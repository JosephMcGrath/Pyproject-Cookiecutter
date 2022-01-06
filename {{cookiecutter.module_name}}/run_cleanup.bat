@ECHO OFF
call activate {{cookiecutter.conda_env}}

ECHO.
ECHO : : : : : : : : : : : : : : : : : : : : : : : : : : : :
ECHO.

python -m isort .
python -m black .

ECHO.
ECHO : : : : : : : : : : : : : : : : : : : : : : : : : : : :
ECHO.

python -m pylint {{cookiecutter.module_name}}

ECHO.
ECHO : : : : : : : : : : : : : : : : : : : : : : : : : : : :
ECHO.

python -m mypy {{cookiecutter.module_name}}

ECHO.
ECHO : : : : : : : : : : : : : : : : : : : : : : : : : : : :
ECHO.

@PAUSE
