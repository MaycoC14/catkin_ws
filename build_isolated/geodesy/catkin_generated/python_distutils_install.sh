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

echo_and_run cd "/home/mayco/catkin_ws/src/geographic_info/geodesy"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/mayco/catkin_ws/install_isolated/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/mayco/catkin_ws/install_isolated/lib/python2.7/dist-packages:/home/mayco/catkin_ws/build_isolated/geodesy/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/mayco/catkin_ws/build_isolated/geodesy" \
    "/usr/bin/python2" \
    "/home/mayco/catkin_ws/src/geographic_info/geodesy/setup.py" \
    egg_info --egg-base /home/mayco/catkin_ws/build_isolated/geodesy \
    build --build-base "/home/mayco/catkin_ws/build_isolated/geodesy" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/mayco/catkin_ws/install_isolated" --install-scripts="/home/mayco/catkin_ws/install_isolated/bin"