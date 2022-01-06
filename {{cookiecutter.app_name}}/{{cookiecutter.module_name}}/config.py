# pylint: disable=too-few-public-methods
"""
Central app config for {{cookiecutter.module_name}}.
"""

import os


class Config:
    """
    App configuration object.
    """

    # Logging
    LOG_LEVEL = os.environ.get("LOG_LEVEL") or "DEBUG"
    LOG_DIR = os.environ.get("LOG_DIR")
