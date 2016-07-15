# Dependencies

## Python, virtualenv, virtualenvwrapper

First, ensure Python3 is available: `which python3` should give something like `/usr/bin/python3/`, 
and `python3 -V` should give something like `Python 3.5.1+` (at time of writing)
If `which python3` does not return a valid Python binary, try `sudo apt-get install python3-dev` -- if that fails, turn to Google.

With python3 installed, run `sudo apt-get install python3-pip && pip3 install --update pip` -- failing that, download [get-pip.py](https://bootstrap.pypa.io/get-pip.py) and run `python3 get-pip.py`

Now for virtualenv and virtualenvwrapper. First, run `sudo pip3 install virtualenv virtualenvwrapper`
Then, `nano ~/.bashrc` to edit your shell startup file, and add 
```
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
```
to the bottom.

With that done, create a directory somewhere on your system, e.g. `~/SpanishAcquisition` (`cd ~/; mkdir SpanishAcquisition`) and initialize a virtual environment: `mkvirtualenv -a . --python=/usr/bin/python3 ENVNAME` where ENVNAME is a name for the environment (e.g. `spacq`, for a full command of `mkvirtualenv -a . --python=/usr/bin/python3 spaqc`). The purpose of this virtual environment is to protect the installation from any changes to system-wide installed packages.

## wxPython-Phoenix

See [wxWidgets/Phoenix](https://github.com/wxWidgets/Phoenix) for a full outline of wxPython-Phoenix's dependencies

Using
```sudo apt-get install dpkg-dev build-essential python3-dev libwebkitgtk-dev libjpeg-dev libtiff-dev libgtk2.0-dev libsdl1.2-dev libgstreamer-plugins-base0.10-dev libnotify-dev freeglut3 freeglut3-dev```
*should* install all the required dependencies to build wxPhoenix.

Once those dependencies are installed, download the wxPhoenix source tarball from [Phoenix snapshot builds](https://wxpython.org/Phoenix/snapshot-builds/) -- you want the .tar.gz file with the latest release date -- should have a name along the lines of wxPython_Phoenix-*number*.dev*number*+*hexadecimal*.tar.gz

Extract that tarball, then inside from a terminal while in that directory (e.g. `cd *extracted directory*`) run `python build.py dox etg --nodoc sip build`

_*Note*_: This will take a *long* time. For me, over an hour on a two-core laptop. AFAIK, there are no available pre-built wheels. Much apologies. Such sorry. (Many doge.)
