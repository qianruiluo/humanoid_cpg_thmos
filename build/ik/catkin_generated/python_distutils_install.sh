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

echo_and_run cd "/home/CAD/butai01/ws/src/ik"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/CAD/butai01/ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/CAD/butai01/ws/install/lib/python2.7/dist-packages:/home/CAD/butai01/ws/build/ik/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/CAD/butai01/ws/build/ik" \
    "/usr/bin/python2" \
    "/home/CAD/butai01/ws/src/ik/setup.py" \
     \
    build --build-base "/home/CAD/butai01/ws/build/ik" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/CAD/butai01/ws/install" --install-scripts="/home/CAD/butai01/ws/install/bin"
