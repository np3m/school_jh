# school_jh

The goal of this repository is to enable a user to clone this repo
to the root user of a fresh Ubuntu 24.04 system and then the user
can create a Jupyter Hub by doing the following:

* Run init.scr to

  - Install nginx, JupyterHub, O2scl, e4mma, and other
    packages and dependencies
  - Create a new user with sudo privileges (you can change the username)
  - Make a few updates to the .bashrc file to ensure everything runs

* Type "make publish" to set up the nginx configuration files
  (you may need to change the hostname)

* Use certbot to obtain an HTTPS certificate

* Change to the "jh" directory and run "jh.scr" to start the Jupyter Hub

AWS, 5/23/25: I'm not sure the init.scr is fully automated yet. I had
to mess around with the python packages a bit because of confusion
between pip and Ubuntu Python packages.

