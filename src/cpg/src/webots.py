#!/usr/bin/python3
# -*- coding: UTF-8 -*-
import subprocess
import os

try:
    subprocess.run("webots /home/CAD/butai01/ws/src/SoccerX_Penalty_Kick/worlds/robot_kick.wbt", shell=True, check=True)
except subprocess.CalledProcessError as e:
    print(f"Error occurred while starting Webots: {e}")