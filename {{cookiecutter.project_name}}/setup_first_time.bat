@ECHO OFF
REM First-time setup, should only need to be run once, then deleted.

ECHO -= Initialise Git -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
git init
git checkout -B "main"
git stage -A
git commit -m "Initial commit."

ECHO -= Create Conda Env -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
call activate
call conda env create -f conda/conda_environment_def.yml
call activate {{cookiecutter.conda_env}}
call conda env export > conda/conda_environment_freeze.yml

ECHO -= Run Cleanup =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
python -m isort .
python -m black .

ECHO -= Finish Git Setup -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
git stage -A
git commit -m "Finished setup."

PAUSE
