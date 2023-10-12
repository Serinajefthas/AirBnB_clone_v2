#!/usr/bin/python3
"""Script generates .tgz archive of /web_static/ contents
"""
from fabric.api import local
from datetime import datetime
import os


def do_pack():
    """Creates compressed tgz archive of files in web_static folder
    """
    now = datetime.now().strftime("%Y%m%d%H%M%S")

    local("mkdir -p versions")

    path = local("tar -cvzf versions/web_static_{}.tgz web_static"
                 .format(now))
    if path.failed:
        return None
    else:
        return path
