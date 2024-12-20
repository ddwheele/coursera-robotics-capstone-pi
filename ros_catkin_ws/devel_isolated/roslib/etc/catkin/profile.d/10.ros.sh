# generated from ros/env-hooks/10.ros.sh.em

# scrub old ROS bin dirs, to avoid accidentally finding the wrong executables
export PATH="`/usr/bin/python -c \"import os; print(os.pathsep.join([x for x in \\\"$PATH\\\".split(os.pathsep) if not any([d for d in ['cturtle', 'diamondback', 'electric', 'fuerte'] if d in x])]))\"`"

if [ -n "$ROS_DISTRO" -a "$ROS_DISTRO" != "indigo" ]; then
  echo "ROS_DISTRO was set to '$ROS_DISTRO' before. Please make sure that the environment does not mix paths from different distributions."
fi
export ROS_DISTRO=indigo

# python function to generate ROS package path based on all workspaces
PYTHON_CODE_BUILD_ROS_PACKAGE_PATH=$(cat <<EOF
from __future__ import print_function
import os
env_name = 'CMAKE_PREFIX_PATH'
paths = [path for path in os.environ[env_name].split(os.pathsep)] if env_name in os.environ and os.environ[env_name] != '' else []
workspaces = [path for path in paths if os.path.exists(os.path.join(path, '.catkin'))]
paths = []
for workspace in workspaces:
    filename = os.path.join(workspace, '.catkin')
    data = ''
    with open(filename) as f:
        data = f.read()
    if data == '':
        paths.append(os.path.join(workspace, 'share'))
        paths.append(os.path.join(workspace, 'stacks'))
    else:
        for source_path in data.split(';'):
            paths.append(source_path)
print(os.pathsep.join(paths))
EOF
)
export ROS_PACKAGE_PATH="`/usr/bin/python -c \"$PYTHON_CODE_BUILD_ROS_PACKAGE_PATH\"`"

# env variables in develspace
export ROS_ETC_DIR="/home/pi/ros_catkin_ws/devel_isolated/roslib/etc/ros"

# unset ROS workspace
unset ROS_WORKSPACE
