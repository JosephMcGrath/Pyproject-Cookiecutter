# Conda Environments

These are the definition files to create the Conda environment used for the module.
There are 2 files:

1. `conda_environment_def.yml` - used to simply define the Conda environment,
2. `conda_environment_freeze.yml` - an exact copy of the package versions used,

To create the Conda environment from it's definition file:
```bat
activate
conda env create -f conda_environment_def.yml
activate {{cookiecutter.conda_env}}
conda env export > conda_environment_freeze.yml
```

To re-create the environment:
```bat
activate
conda env create -f conda_environment_freeze.yml
```

Then to update the environment later use this:
```bat
activate {{cookiecutter.conda_env}}
conda env update -f conda_environment_def.yml --prune
conda env export > conda_environment_freeze.yml
```

And to update the environment from the frozen file:
```bat
activate {{cookiecutter.conda_env}}
conda env update -f conda_environment_freeze.yml --prune
```
