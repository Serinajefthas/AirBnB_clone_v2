#!/usr/bin/python3
from fabric.api import env, put

print(env.port)
env.hosts = [
        '34.207.121.47',
        '54.237.76.201'
]

def do_deploy():
    """Distributes tgz archive to web servers"""
    put("static_website/", "/var/www/html/")


