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

echo_and_run cd "/root/ros_ws/src/autoware_camera_lidar_calibrator"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/root/ros_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/root/ros_ws/install/lib/python2.7/dist-packages:/root/ros_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/root/ros_ws/build" \
    "/usr/bin/python2" \
    "/root/ros_ws/src/autoware_camera_lidar_calibrator/setup.py" \
     \
    build --build-base "/root/ros_ws/build/autoware_camera_lidar_calibrator" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/root/ros_ws/install" --install-scripts="/root/ros_ws/install/bin"
