# -*- python -*-
# To be executed with spack-python

from __future__ import print_function

import argparse
import os
import shutil

import llnl.util.tty as tty
import llnl.util.filesystem as fs
from llnl.util.link_tree import LinkTree


def link(src, dest):
    abs_src = os.path.abspath(src)
    print("src: ", src)
    print("abs_src: ", abs_src)
    print("dest: ", dest)

    conf_py = os.path.join(abs_src, 'conf.py')
    if not os.path.exists(conf_py):
        tty.die("Not a Sphinx docs directory: %s" % src)

    fs.mkdirp(dest)
    with fs.working_dir(dest):
        rel_src = os.path.relpath(abs_src)
        print("LINK: %s -> %s" % (os.path.abspath(rel_src), dest))

        lt = LinkTree(rel_src)
        lt.merge('.', relative=True, ignore=lambda f: '_spack_root' in f)

        os.remove('conf.py')
        shutil.copy(os.path.join(abs_src, 'conf.py'), 'conf.py')

def main():
    parser = argparse.ArgumentParser(
        description=("symlinks a sphinx docs directory, but copies conf.py and "
                     "sets it up for a new language"))
    parser.add_argument(
        'src', action='store',
        help='a valid sphinx doc directory (contains conf.py)')
    parser.add_argument(
        'dest', action='store',
        help='destination where documentation should be linked')
    args = parser.parse_args()

    link(args.src, args.dest)


if __name__== "__main__":
    main()
