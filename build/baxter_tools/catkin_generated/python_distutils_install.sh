#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/a/ros_ws/src/baxter_tools"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/a/ros_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/a/ros_ws/install/lib/python3/dist-packages:/home/a/ros_ws/build/baxter_tools/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/a/ros_ws/build/baxter_tools" \
    "/usr/bin/python3" \
    "/home/a/ros_ws/src/baxter_tools/setup.py" \
     \
    build --build-base "/home/a/ros_ws/build/baxter_tools" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/a/ros_ws/install" --install-scripts="/home/a/ros_ws/install/bin"
