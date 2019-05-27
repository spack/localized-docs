=================
Command Reference
=================

This is a reference for all commands in the Spack command line interface.
The same information is available through :ref:`spack-help`.

Commands that also have sections in the main documentation have a link to
"More documentation".

=================  ===========================================================================
 Category           Commands 
=================  ===========================================================================
Administration     | :ref:`bootstrap <spack-bootstrap>`,
                     :ref:`clone <spack-clone>`,
                     :ref:`reindex <spack-reindex>`
Query packages     | :ref:`dependencies <spack-dependencies>`,
                     :ref:`dependents <spack-dependents>`,
                     :ref:`find <spack-find>`,
                     :ref:`graph <spack-graph>`,
                     :ref:`info <spack-info>`,
                     :ref:`list <spack-list>`,
                     :ref:`location <spack-location>`,
                     :ref:`providers <spack-providers>`,
                   | :ref:`resource <spack-resource>`
Build packages     | :ref:`build <spack-build>`,
                     :ref:`build-env <spack-build-env>`,
                     :ref:`clean <spack-clean>`,
                     :ref:`configure <spack-configure>`,
                     :ref:`diy <spack-diy>`,
                     :ref:`fetch <spack-fetch>`,
                     :ref:`install <spack-install>`,
                     :ref:`log-parse <spack-log-parse>`,
                   | :ref:`patch <spack-patch>`,
                     :ref:`release-jobs <spack-release-jobs>`,
                     :ref:`restage <spack-restage>`,
                     :ref:`setup <spack-setup>`,
                     :ref:`spec <spack-spec>`,
                     :ref:`stage <spack-stage>`,
                     :ref:`uninstall <spack-uninstall>`
Configuration      | :ref:`config <spack-config>`,
                     :ref:`mirror <spack-mirror>`,
                     :ref:`repo <spack-repo>`
Developer          | :ref:`blame <spack-blame>`,
                     :ref:`cd <spack-cd>`,
                     :ref:`commands <spack-commands>`,
                     :ref:`debug <spack-debug>`,
                     :ref:`flake8 <spack-flake8>`,
                     :ref:`license <spack-license>`,
                     :ref:`pkg <spack-pkg>`,
                     :ref:`pydoc <spack-pydoc>`,
                   | :ref:`python <spack-python>`,
                     :ref:`test <spack-test>`,
                     :ref:`url <spack-url>`
Environments       | :ref:`add <spack-add>`,
                     :ref:`concretize <spack-concretize>`,
                     :ref:`env <spack-env>`,
                     :ref:`remove <spack-remove>`,
                     :ref:`view <spack-view>`
Extensions         | :ref:`activate <spack-activate>`,
                     :ref:`deactivate <spack-deactivate>`,
                     :ref:`extensions <spack-extensions>`
More help          | :ref:`docs <spack-docs>`,
                     :ref:`help <spack-help>`
Modules            | :ref:`load <spack-load>`,
                     :ref:`module <spack-module>`,
                     :ref:`unload <spack-unload>`,
                     :ref:`unuse <spack-unuse>`,
                     :ref:`use <spack-use>`
Create packages    | :ref:`buildcache <spack-buildcache>`,
                     :ref:`checksum <spack-checksum>`,
                     :ref:`create <spack-create>`,
                     :ref:`edit <spack-edit>`,
                     :ref:`gpg <spack-gpg>`,
                     :ref:`upload-s3 <spack-upload-s3>`,
                     :ref:`versions <spack-versions>`
System             | :ref:`arch <spack-arch>`,
                     :ref:`compiler <spack-compiler>`,
                     :ref:`compilers <spack-compilers>`
=================  ===========================================================================


----

.. _spack:

spack
-----

A flexible package manager that supports multiple versions,
configurations, platforms, and compilers.

.. code-block:: console

    spack [-hHdklLmpvV] [--color {always,never,auto}] [-C DIR] [--timestamp] [--pdb] [-e ENV | -D DIR | -E]
      [--use-env-repo] [--sorted-profile STAT] [--lines LINES] [--stacktrace] [--print-shell-vars PRINT_SHELL_VARS]
      COMMAND ...


**Optional arguments**

``-h, --help``
  show this help message and exit

``-H, --all-help``
  show help for all commands (same as spack help --all)

``--color {always,never,auto}``
  when to colorize output (default: auto)

``-C DIR, --config-scope DIR``
  add a custom configuration scope

``-d, --debug``
  write out debug logs during compile

``--timestamp``
  Add a timestamp to tty output

``--pdb``
  run spack under the pdb debugger

``-e ENV, --env ENV``
  run with a specific environment (see spack env)

``-D DIR, --env-dir DIR``
  run with an environment directory (ignore named environments)

``-E, --no-env``
  run without any environments activated (see spack env)

``--use-env-repo``
  when running in an environment, use its package repository

``-k, --insecure``
  do not check ssl certificates when downloading

``-l, --enable-locks``
  use filesystem locking (default)

``-L, --disable-locks``
  do not use filesystem locking (unsafe)

``-m, --mock``
  use mock packages instead of real ones

``-p, --profile``
  profile execution using cProfile

``--sorted-profile STAT``
  profile and sort by one or more of: [cumulative, module, ncalls, pcalls, file, line, name,  calls, stdname, nfl, filename, cumtime, time, tottime]

``--lines LINES``
  lines of profile output or 'all' (default: 20)

``-v, --verbose``
  print additional output during builds

``--stacktrace``
  add stacktraces to all printed statements

``-V, --version``
  show version number and exit

``--print-shell-vars PRINT_SHELL_VARS``
  print info needed by setup-env.[c]sh


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`activate <spack-activate>`
   * :ref:`add <spack-add>`
   * :ref:`arch <spack-arch>`
   * :ref:`blame <spack-blame>`
   * :ref:`bootstrap <spack-bootstrap>`
   * :ref:`build <spack-build>`
   * :ref:`build-env <spack-build-env>`
   * :ref:`buildcache <spack-buildcache>`
   * :ref:`cd <spack-cd>`
   * :ref:`checksum <spack-checksum>`
   * :ref:`clean <spack-clean>`
   * :ref:`clone <spack-clone>`
   * :ref:`commands <spack-commands>`
   * :ref:`compiler <spack-compiler>`
   * :ref:`compilers <spack-compilers>`
   * :ref:`concretize <spack-concretize>`
   * :ref:`config <spack-config>`
   * :ref:`configure <spack-configure>`
   * :ref:`create <spack-create>`
   * :ref:`deactivate <spack-deactivate>`
   * :ref:`debug <spack-debug>`
   * :ref:`dependencies <spack-dependencies>`
   * :ref:`dependents <spack-dependents>`
   * :ref:`diy <spack-diy>`
   * :ref:`docs <spack-docs>`
   * :ref:`edit <spack-edit>`
   * :ref:`env <spack-env>`
   * :ref:`extensions <spack-extensions>`
   * :ref:`fetch <spack-fetch>`
   * :ref:`find <spack-find>`
   * :ref:`flake8 <spack-flake8>`
   * :ref:`gpg <spack-gpg>`
   * :ref:`graph <spack-graph>`
   * :ref:`help <spack-help>`
   * :ref:`info <spack-info>`
   * :ref:`install <spack-install>`
   * :ref:`license <spack-license>`
   * :ref:`list <spack-list>`
   * :ref:`load <spack-load>`
   * :ref:`location <spack-location>`
   * :ref:`log-parse <spack-log-parse>`
   * :ref:`mirror <spack-mirror>`
   * :ref:`module <spack-module>`
   * :ref:`patch <spack-patch>`
   * :ref:`pkg <spack-pkg>`
   * :ref:`providers <spack-providers>`
   * :ref:`pydoc <spack-pydoc>`
   * :ref:`python <spack-python>`
   * :ref:`reindex <spack-reindex>`
   * :ref:`release-jobs <spack-release-jobs>`
   * :ref:`remove <spack-remove>`
   * :ref:`repo <spack-repo>`
   * :ref:`resource <spack-resource>`
   * :ref:`restage <spack-restage>`
   * :ref:`setup <spack-setup>`
   * :ref:`spec <spack-spec>`
   * :ref:`stage <spack-stage>`
   * :ref:`test <spack-test>`
   * :ref:`uninstall <spack-uninstall>`
   * :ref:`unload <spack-unload>`
   * :ref:`unuse <spack-unuse>`
   * :ref:`upload-s3 <spack-upload-s3>`
   * :ref:`url <spack-url>`
   * :ref:`use <spack-use>`
   * :ref:`versions <spack-versions>`
   * :ref:`view <spack-view>`


----

.. _spack-activate:

spack activate
--------------

activate a package extension

.. code-block:: console

    spack activate [-hf] [-v VIEW] ...


:ref:`More documentation <cmd-spack-activate>`

**Positional arguments**

spec
  spec of package extension to activate


**Optional arguments**

``-h, --help``
  show this help message and exit

``-f, --force``
  activate without first activating dependencies

``-v VIEW, --view VIEW``
  the view to operate on


----

.. _spack-add:

spack add
---------

add a spec to an environment

.. code-block:: console

    spack add [-h] ...


**Positional arguments**

specs
  specs of packages to add


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-arch:

spack arch
----------

print architecture information about this machine

.. code-block:: console

    spack arch [-h] [-p | -o | -t]


**Optional arguments**

``-h, --help``
  show this help message and exit

``-p, --platform``
  print only the platform

``-o, --operating-system``
  print only the operating system

``-t, --target``
  print only the target


----

.. _spack-blame:

spack blame
-----------

show contributors to packages

.. code-block:: console

    spack blame [-h] [-t | -p | -g] package_name


**Positional arguments**

package_name
  name of package to show contributions for, or path to a file in the spack repo


**Optional arguments**

``-h, --help``
  show this help message and exit

``-t, --time``
  sort by last modification date (default)

``-p, --percent``
  sort by percent of code

``-g, --git``
  show git blame output instead of summary


----

.. _spack-bootstrap:

spack bootstrap
---------------

Bootstrap packages needed for spack to run smoothly

.. code-block:: console

    spack bootstrap [-hnv] [-j JOBS] [--keep-prefix] [--keep-stage] [--clean | --dirty]


**Optional arguments**

``-h, --help``
  show this help message and exit

``-j JOBS, --jobs JOBS``
  explicitly set number of parallel jobs

``--keep-prefix``
  don't remove the install prefix if installation fails

``--keep-stage``
  don't remove the build stage if installation succeeds

``-n, --no-checksum``
  do not use checksums to verify downloaded files (unsafe)

``-v, --verbose``
  display verbose build output while installing

``--clean``
  unset harmful variables in the build environment (default)

``--dirty``
  preserve user environment in the spack build environment (danger!)


----

.. _spack-build:

spack build
-----------

stops at build stage when installing a package, if possible

.. code-block:: console

    spack build [-hv] ...


**Positional arguments**

package
  spec of the package to install


**Optional arguments**

``-h, --help``
  show this help message and exit

``-v, --verbose``
  print additional output during builds


----

.. _spack-build-env:

spack build-env
---------------

run a command in a spec's install environment, or dump its environment to screen or file

.. code-block:: console

    spack build-env [-h] [--clean] [--dirty] [--dump FILE] [--pickle FILE] ...


**Positional arguments**

spec [--] [cmd]...
  specs of package environment to emulate


**Optional arguments**

``-h, --help``
  show this help message and exit

``--clean``
  unset harmful variables in the build environment (default)

``--dirty``
  preserve user environment in the spack build environment (danger!)

``--dump FILE``
  dump a source-able environment to FILE

``--pickle FILE``
  dump a pickled source-able environment to FILE


----

.. _spack-buildcache:

spack buildcache
----------------

create, download and install binary packages

.. code-block:: console

    spack buildcache [-h] SUBCOMMAND ...


:ref:`More documentation <cmd-spack-buildcache>`

**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`buildcache create <spack-buildcache-create>`
   * :ref:`buildcache install <spack-buildcache-install>`
   * :ref:`buildcache list <spack-buildcache-list>`
   * :ref:`buildcache keys <spack-buildcache-keys>`
   * :ref:`buildcache preview <spack-buildcache-preview>`
   * :ref:`buildcache check <spack-buildcache-check>`
   * :ref:`buildcache download <spack-buildcache-download>`
   * :ref:`buildcache get-buildcache-name <spack-buildcache-get-buildcache-name>`
   * :ref:`buildcache save-yaml <spack-buildcache-save-yaml>`


----

.. _spack-buildcache-create:

spack buildcache create
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack buildcache create [-hrfua] [-k key] [-d directory] [--no-rebuild-index] [-y SPEC_YAML] ...


**Positional arguments**

packages
  specs of packages to create buildcache for


**Optional arguments**

``-h, --help``
  show this help message and exit

``-r, --rel``
  make all rpaths relative before creating tarballs.

``-f, --force``
  overwrite tarball if it exists.

``-u, --unsigned``
  create unsigned buildcache tarballs for testing

``-a, --allow-root``
  allow install root string in binary files after RPATH substitution

``-k key, --key key``
  Key for signing.

``-d directory, --directory directory``
  directory in which to save the tarballs.

``--no-rebuild-index``
  skip rebuilding index after building package(s)

``-y SPEC_YAML, --spec-yaml SPEC_YAML``
  Create buildcache entry for spec from yaml file


----

.. _spack-buildcache-install:

spack buildcache install
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack buildcache install [-hfmau] ...


**Positional arguments**

packages
  specs of packages to install buildcache for


**Optional arguments**

``-h, --help``
  show this help message and exit

``-f, --force``
  overwrite install directory if it exists.

``-m, --multiple``
  allow all matching packages 

``-a, --allow-root``
  allow install root string in binary files after RPATH substitution

``-u, --unsigned``
  install unsigned buildcache tarballs for testing


----

.. _spack-buildcache-list:

spack buildcache list
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack buildcache list [-hlLvf] ...


**Positional arguments**

packages
  specs of packages to search for


**Optional arguments**

``-h, --help``
  show this help message and exit

``-l, --long``
  show dependency hashes as well as versions

``-L, --very-long``
  show full dependency hashes as well as versions

``-v, --variants``
  show variants in output (can be long)

``-f, --force``
  force new download of specs


----

.. _spack-buildcache-keys:

spack buildcache keys
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack buildcache keys [-hitf]


**Optional arguments**

``-h, --help``
  show this help message and exit

``-i, --install``
  install Keys pulled from mirror

``-t, --trust``
  trust all downloaded keys

``-f, --force``
  force new download of keys


----

.. _spack-buildcache-preview:

spack buildcache preview
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack buildcache preview [-h] packages [packages ...]


**Positional arguments**

packages
  list of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-buildcache-check:

spack buildcache check
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack buildcache check [-h] [-m MIRROR_URL] [-o OUTPUT_FILE] [--scope {defaults,system,site,user}[/PLATFORM]]
                       [-s SPEC] [-y SPEC_YAML] [--rebuild-on-error]


**Optional arguments**

``-h, --help``
  show this help message and exit

``-m MIRROR_URL, --mirror-url MIRROR_URL``
  Override any configured mirrors with this mirror url

``-o OUTPUT_FILE, --output-file OUTPUT_FILE``
  File where rebuild info should be written

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope containing mirrors to check

``-s SPEC, --spec SPEC``
  Check single spec instead of release specs file

``-y SPEC_YAML, --spec-yaml SPEC_YAML``
  Check single spec from yaml file instead of release specs file

``--rebuild-on-error``
  Default to rebuilding packages if errors are encountered during the process of checking whether rebuilding is needed


----

.. _spack-buildcache-download:

spack buildcache download
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack buildcache download [-hc] [-s SPEC] [-y SPEC_YAML] [-p PATH]


**Optional arguments**

``-h, --help``
  show this help message and exit

``-s SPEC, --spec SPEC``
  Download built tarball for spec from mirror

``-y SPEC_YAML, --spec-yaml SPEC_YAML``
  Download built tarball for spec (from yaml file) from mirror

``-p PATH, --path PATH``
  Path to directory where tarball should be downloaded

``-c, --require-cdashid``
  Require .cdashid file to be downloaded with buildcache entry


----

.. _spack-buildcache-get-buildcache-name:

spack buildcache get-buildcache-name
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack buildcache get-buildcache-name [-h] [-s SPEC] [-y SPEC_YAML]


**Optional arguments**

``-h, --help``
  show this help message and exit

``-s SPEC, --spec SPEC``
  Spec string for which buildcache name is desired

``-y SPEC_YAML, --spec-yaml SPEC_YAML``
  Path to spec yaml file for which buildcache name is desired


----

.. _spack-buildcache-save-yaml:

spack buildcache save-yaml
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack buildcache save-yaml [-h] [-r ROOT_SPEC] [-s SPECS] [-y YAML_DIR]


**Optional arguments**

``-h, --help``
  show this help message and exit

``-r ROOT_SPEC, --root-spec ROOT_SPEC``
  Root spec of dependent spec

``-s SPECS, --specs SPECS``
  List of dependent specs for which saved yaml is desired

``-y YAML_DIR, --yaml-dir YAML_DIR``
  Path to directory where spec yamls should be saved


----

.. _spack-cd:

spack cd
--------

cd to spack directories in the shell

.. code-block:: console

    spack cd [-h] [-m | -r | -i | -p | -P | -s | -S | -b | -e ENV] ...


:ref:`More documentation <cmd-spack-cd>`

**Positional arguments**

spec
  spec of package to fetch directory for


**Optional arguments**

``-h, --help``
  show this help message and exit

``-m, --module-dir``
  spack python module directory

``-r, --spack-root``
  spack installation root

``-i, --install-dir``
  install prefix for spec (spec need not be installed)

``-p, --package-dir``
  directory enclosing a spec's package.py file

``-P, --packages``
  top-level packages directory for Spack

``-s, --stage-dir``
  stage directory for a spec

``-S, --stages``
  top level stage directory

``-b, --build-dir``
  checked out or expanded source directory for a spec (requires it to be staged first)

``-e ENV, --env ENV``
  location of an environment managed by spack


----

.. _spack-checksum:

spack checksum
--------------

checksum available versions of a package

.. code-block:: console

    spack checksum [-h] [--keep-stage] package ...


:ref:`More documentation <cmd-spack-checksum>`

**Positional arguments**

package
  package to checksum versions for

versions
  versions to generate checksums for


**Optional arguments**

``-h, --help``
  show this help message and exit

``--keep-stage``
  don't clean up staging area when command completes


----

.. _spack-clean:

spack clean
-----------

remove temporary build files and/or downloaded archives

.. code-block:: console

    spack clean [-hsdmpa] ...


:ref:`More documentation <cmd-spack-clean>`

**Positional arguments**

specs
  removes the build stages and tarballs for specs


**Optional arguments**

``-h, --help``
  show this help message and exit

``-s, --stage``
  remove all temporary build stages (default)

``-d, --downloads``
  remove cached downloads

``-m, --misc-cache``
  remove long-lived caches, like the virtual package index

``-p, --python-cache``
  remove .pyc, .pyo files and __pycache__ folders

``-a, --all``
  equivalent to -sdmp


----

.. _spack-clone:

spack clone
-----------

create a new installation of spack in another prefix

.. code-block:: console

    spack clone [-h] [-r REMOTE] prefix


**Positional arguments**

prefix
  name of prefix where we should install spack


**Optional arguments**

``-h, --help``
  show this help message and exit

``-r REMOTE, --remote REMOTE``
  name of the remote to clone from


----

.. _spack-commands:

spack commands
--------------

list available spack commands

.. code-block:: console

    spack commands [-h] [--format {rst,subcommands,names}] [--header FILE] [--update FILE] ...


**Positional arguments**

rst_files
  list of rst files to search for `_cmd-spack-<cmd>` cross-refs


**Optional arguments**

``-h, --help``
  show this help message and exit

``--format {rst,subcommands,names}``
  format to be used to print the output (default: names)

``--header FILE``
  prepend contents of FILE to the output (useful for rst format)

``--update FILE``
  write output to the specified file, if any command is newer


----

.. _spack-compiler:

spack compiler
--------------

manage compilers

.. code-block:: console

    spack compiler [-h] SUBCOMMAND ...


**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`compiler find <spack-compiler-find>`
   * :ref:`compiler remove <spack-compiler-remove>`
   * :ref:`compiler list <spack-compiler-list>`
   * :ref:`compiler info <spack-compiler-info>`


----

.. _spack-compiler-find:

spack compiler find
^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack compiler find [-h] [--scope {defaults,system,site,user}[/PLATFORM]] ...


:ref:`More documentation <cmd-spack-compiler-find>`

**Positional arguments**

add_paths
  


**Optional arguments**

``-h, --help``
  show this help message and exit

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope to modify


----

.. _spack-compiler-remove:

spack compiler remove
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack compiler remove [-ha] [--scope {defaults,system,site,user}[/PLATFORM]] compiler_spec


**Positional arguments**

compiler_spec
  


**Optional arguments**

``-h, --help``
  show this help message and exit

``-a, --all``
  remove ALL compilers that match spec

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope to modify


----

.. _spack-compiler-list:

spack compiler list
^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack compiler list [-h] [--scope {defaults,system,site,user}[/PLATFORM]]


**Optional arguments**

``-h, --help``
  show this help message and exit

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope to read from


----

.. _spack-compiler-info:

spack compiler info
^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack compiler info [-h] [--scope {defaults,system,site,user}[/PLATFORM]] compiler_spec


:ref:`More documentation <cmd-spack-compiler-info>`

**Positional arguments**

compiler_spec
  


**Optional arguments**

``-h, --help``
  show this help message and exit

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope to read from


----

.. _spack-compilers:

spack compilers
---------------

list available compilers

.. code-block:: console

    spack compilers [-h] [--scope {defaults,system,site,user}[/PLATFORM]]


:ref:`More documentation <cmd-spack-compilers>`

**Optional arguments**

``-h, --help``
  show this help message and exit

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope to read/modify


----

.. _spack-concretize:

spack concretize
----------------

concretize an environment and write a lockfile

.. code-block:: console

    spack concretize [-hf]


**Optional arguments**

``-h, --help``
  show this help message and exit

``-f, --force``
  Re-concretize even if already concretized.


----

.. _spack-config:

spack config
------------

get and set configuration options

.. code-block:: console

    spack config [-h] [--scope {defaults,system,site,user}[/PLATFORM]] SUBCOMMAND ...


**Optional arguments**

``-h, --help``
  show this help message and exit

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope to read/modify


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`config get <spack-config-get>`
   * :ref:`config blame <spack-config-blame>`
   * :ref:`config edit <spack-config-edit>`


----

.. _spack-config-get:

spack config get
^^^^^^^^^^^^^^^^

.. code-block:: console

    spack config get [-h] [SECTION]


:ref:`More documentation <cmd-spack-config-get>`

**Positional arguments**

SECTION
  configuration section to print. options: %(choices)s


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-config-blame:

spack config blame
^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack config blame [-h] SECTION


:ref:`More documentation <cmd-spack-config-blame>`

**Positional arguments**

SECTION
  configuration section to print. options: %(choices)s


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-config-edit:

spack config edit
^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack config edit [-h] [--print-file] [SECTION]


**Positional arguments**

SECTION
  configuration section to edit. options: %(choices)s


**Optional arguments**

``-h, --help``
  show this help message and exit

``--print-file``
  print the file name that would be edited


----

.. _spack-configure:

spack configure
---------------

stage and configure a package but do not install

.. code-block:: console

    spack configure [-hv] ...


**Positional arguments**

package
  spec of the package to install


**Optional arguments**

``-h, --help``
  show this help message and exit

``-v, --verbose``
  print additional output during builds


----

.. _spack-create:

spack create
------------

create a new package file

.. code-block:: console

    spack create [-hf] [--keep-stage] [-n NAME] [-t TEMPLATE] [-r REPO] [-N NAMESPACE] [url]


:ref:`More documentation <cmd-spack-create>`

**Positional arguments**

url
  url of package archive


**Optional arguments**

``-h, --help``
  show this help message and exit

``--keep-stage``
  don't clean up staging area when command completes

``-n NAME, --name NAME``
  name of the package to create

``-t TEMPLATE, --template TEMPLATE``
  build system template to use. options: %(choices)s

``-r REPO, --repo REPO``
  path to a repository where the package should be created

``-N NAMESPACE, --namespace NAMESPACE``
  specify a namespace for the package. must be the namespace of a repository registered with Spack

``-f, --force``
  overwrite any existing package file with the same name


----

.. _spack-deactivate:

spack deactivate
----------------

deactivate a package extension

.. code-block:: console

    spack deactivate [-hfa] [-v VIEW] ...


:ref:`More documentation <cmd-spack-deactivate>`

**Positional arguments**

spec
  spec of package extension to deactivate


**Optional arguments**

``-h, --help``
  show this help message and exit

``-f, --force``
  run deactivation even if spec is NOT currently activated

``-v VIEW, --view VIEW``
  the view to operate on

``-a, --all``
  deactivate all extensions of an extendable package, or deactivate an extension AND its dependencies


----

.. _spack-debug:

spack debug
-----------

debugging commands for troubleshooting Spack

.. code-block:: console

    spack debug [-h] SUBCOMMAND ...


**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`debug create-db-tarball <spack-debug-create-db-tarball>`


----

.. _spack-debug-create-db-tarball:

spack debug create-db-tarball
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack debug create-db-tarball [-h]


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-dependencies:

spack dependencies
------------------

show dependencies of a package

.. code-block:: console

    spack dependencies [-hitV] ...


**Positional arguments**

spec
  spec or package name


**Optional arguments**

``-h, --help``
  show this help message and exit

``-i, --installed``
  List installed dependencies of an installed spec, instead of possible dependencies of a package.

``-t, --transitive``
  show all transitive dependencies

``-V, --no-expand-virtuals``
  do not expand virtual dependencies


----

.. _spack-dependents:

spack dependents
----------------

show packages that depend on another

.. code-block:: console

    spack dependents [-hit] ...


**Positional arguments**

spec
  spec or package name


**Optional arguments**

``-h, --help``
  show this help message and exit

``-i, --installed``
  List installed dependents of an installed spec, instead of possible dependents of a package.

``-t, --transitive``
  Show all transitive dependents.


----

.. _spack-diy:

spack diy
---------

do-it-yourself: build from an existing source directory

.. code-block:: console

    spack diy [-hinq] [-j JOBS] [-d SOURCE_PATH] [--keep-prefix] [--skip-patch] [--clean | --dirty] ...


**Positional arguments**

spec
  specs to use for install. must contain package AND version


**Optional arguments**

``-h, --help``
  show this help message and exit

``-j JOBS, --jobs JOBS``
  explicitly set number of parallel jobs

``-d SOURCE_PATH, --source-path SOURCE_PATH``
  path to source directory. defaults to the current directory

``-i, --ignore-dependencies``
  don't try to install dependencies of requested packages

``-n, --no-checksum``
  do not use checksums to verify downloaded files (unsafe)

``--keep-prefix``
  do not remove the install prefix if installation fails

``--skip-patch``
  skip patching for the DIY build

``-q, --quiet``
  do not display verbose build output while installing

``--clean``
  unset harmful variables in the build environment (default)

``--dirty``
  preserve user environment in the spack build environment (danger!)


----

.. _spack-docs:

spack docs
----------

open spack documentation in a web browser

.. code-block:: console

    spack docs [-h]


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-edit:

spack edit
----------

open package files in $EDITOR

.. code-block:: console

    spack edit [-h] [-b | -c | -d | -t | -m | -r REPO | -N NAMESPACE] [name]


:ref:`More documentation <cmd-spack-edit>`

**Positional arguments**

name
  name of package to edit


**Optional arguments**

``-h, --help``
  show this help message and exit

``-b, --build-system``
  Edit the build system with the supplied name.

``-c, --command``
  edit the command with the supplied name

``-d, --docs``
  edit the docs with the supplied name

``-t, --test``
  edit the test with the supplied name

``-m, --module``
  edit the main spack module with the supplied name

``-r REPO, --repo REPO``
  path to repo to edit package in

``-N NAMESPACE, --namespace NAMESPACE``
  namespace of package to edit


----

.. _spack-env:

spack env
---------

manage virtual environments

.. code-block:: console

    spack env [-h] SUBCOMMAND ...


:ref:`More documentation <cmd-spack-env>`

**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`env activate <spack-env-activate>`
   * :ref:`env deactivate <spack-env-deactivate>`
   * :ref:`env create <spack-env-create>`
   * :ref:`env remove <spack-env-remove>`
   * :ref:`env list <spack-env-list>`
   * :ref:`env status <spack-env-status>`
   * :ref:`env loads <spack-env-loads>`
   * :ref:`env view <spack-env-view>`


----

.. _spack-env-activate:

spack env activate
^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack env activate [-hdp] [--sh | --csh] [-v | -V] env


**Positional arguments**

env
  name of environment to activate


**Optional arguments**

``-h, --help``
  show this help message and exit

``--sh``
  print sh commands to activate the environment

``--csh``
  print csh commands to activate the environment

``-v, --with-view``
  update PATH etc. with associated view

``-V, --without-view``
  do not update PATH etc. with associated view

``-d, --dir``
  force spack to treat env as a directory, not a name

``-p, --prompt``
  decorate the command line prompt when activating


----

.. _spack-env-deactivate:

spack env deactivate
^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack env deactivate [-h] [--sh | --csh]


**Optional arguments**

``-h, --help``
  show this help message and exit

``--sh``
  print sh commands to deactivate the environment

``--csh``
  print csh commands to deactivate the environment


----

.. _spack-env-create:

spack env create
^^^^^^^^^^^^^^^^

.. code-block:: console

    spack env create [-hd] [--without-view | --with-view WITH_VIEW] ENV [envfile]


**Positional arguments**

ENV
  name of environment to create

envfile
  optional init file; can be spack.yaml or spack.lock


**Optional arguments**

``-h, --help``
  show this help message and exit

``-d, --dir``
  create an environment in a specific directory

``--without-view``
  do not maintain a view for this environment

``--with-view WITH_VIEW``
  specify that this environment should maintain a view at the specified path (by default the view is maintained in the environment directory)


----

.. _spack-env-remove:

spack env remove
^^^^^^^^^^^^^^^^

.. code-block:: console

    spack env remove [-hy] ENV [ENV ...]


**Positional arguments**

ENV
  environment(s) to remove


**Optional arguments**

``-h, --help``
  show this help message and exit

``-y, --yes-to-all``
  assume "yes" is the answer to every confirmation request


----

.. _spack-env-list:

spack env list
^^^^^^^^^^^^^^

.. code-block:: console

    spack env list [-h]


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-env-status:

spack env status
^^^^^^^^^^^^^^^^

.. code-block:: console

    spack env status [-h]


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-env-loads:

spack env loads
^^^^^^^^^^^^^^^

.. code-block:: console

    spack env loads [-hr] [-m {tcl,lmod}] [--input-only] [-p PREFIX] [-x EXCLUDE] [env]


**Positional arguments**

env
  name of env to generate loads file for


**Optional arguments**

``-h, --help``
  show this help message and exit

``-m {tcl,lmod}, --module-type {tcl,lmod}``
  type of module system to generate loads for

``--input-only``
  generate input for module command (instead of a shell script)

``-p PREFIX, --prefix PREFIX``
  prepend to module names when issuing module load commands

``-x EXCLUDE, --exclude EXCLUDE``
  exclude package from output; may be specified multiple times

``-r, --dependencies``
  recursively traverse spec dependencies


----

.. _spack-env-view:

spack env view
^^^^^^^^^^^^^^

.. code-block:: console

    spack env view [-h] {regenerate,enable,disable} [view_path]


**Positional arguments**

{regenerate,enable,disable}
  action to take for the environment's view

view_path
  when enabling a view, optionally set the path manually


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-extensions:

spack extensions
----------------

list extensions for package

.. code-block:: console

    spack extensions [-h] [-l | -p | -d] [-s TYPE] [-v VIEW] ...


:ref:`More documentation <cmd-spack-extensions>`

**Positional arguments**

spec
  spec of package to list extensions for


**Optional arguments**

``-h, --help``
  show this help message and exit

``-l, --long``
  show dependency hashes as well as versions

``-p, --paths``
  show paths to extension install directories

``-d, --deps``
  show full dependency DAG of extensions

``-s TYPE, --show TYPE``
  one of packages, installed, activated, all

``-v VIEW, --view VIEW``
  the view to operate on


----

.. _spack-fetch:

spack fetch
-----------

fetch archives for packages

.. code-block:: console

    spack fetch [-hnmD] ...


:ref:`More documentation <cmd-spack-fetch>`

**Positional arguments**

packages
  specs of packages to fetch


**Optional arguments**

``-h, --help``
  show this help message and exit

``-n, --no-checksum``
  do not use checksums to verify downloaded files (unsafe)

``-m, --missing``
  fetch only missing (not yet installed) dependencies

``-D, --dependencies``
  also fetch all dependencies


----

.. _spack-find:

spack find
----------

list and search installed packages

.. code-block:: console

    spack find [-hlLcfumvMN] [-s | -p | -d] [-t TAGS] [--show-full-compiler] [-x | -X] [--start-date START_DATE]
           [--end-date END_DATE]
           ...


:ref:`More documentation <cmd-spack-find>`

**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``-s, --short``
  show only specs (default)

``-p, --paths``
  show paths to package install directories

``-d, --deps``
  show full dependency DAG of installed packages

``-l, --long``
  show dependency hashes as well as versions

``-L, --very-long``
  show full dependency hashes as well as versions

``-t TAGS, --tags TAGS``
  filter a package query by tags

``-c, --show-concretized``
  show concretized specs in an environment

``-f, --show-flags``
  show spec compiler flags

``--show-full-compiler``
  show full compiler specs

``-x, --explicit``
  show only specs that were installed explicitly

``-X, --implicit``
  show only specs that were installed as dependencies

``-u, --unknown``
  show only specs Spack does not have a package for

``-m, --missing``
  show missing dependencies as well as installed specs

``-v, --variants``
  show variants in output (can be long)

``-M, --only-missing``
  show only missing dependencies

``-N, --namespace``
  show fully qualified package names

``--start-date START_DATE``
  earliest date of installation [YYYY-MM-DD]

``--end-date END_DATE``
  latest date of installation [YYYY-MM-DD]


----

.. _spack-flake8:

spack flake8
------------

runs source code style checks on Spack. requires flake8

.. code-block:: console

    spack flake8 [-hkaorU] [-b BASE] ...


**Positional arguments**

files
  specific files to check


**Optional arguments**

``-h, --help``
  show this help message and exit

``-b BASE, --base BASE``
  select base branch for collecting list of modified files

``-k, --keep-temp``
  do not delete temporary directory where flake8 runs. use for debugging, to see filtered files

``-a, --all``
  check all files, not just changed files

``-o, --output``
  send filtered files to stdout as well as temp files

``-r, --root-relative``
  print root-relative paths (default: cwd-relative)

``-U, --no-untracked``
  exclude untracked files from checks


----

.. _spack-gpg:

spack gpg
---------

handle GPG actions for spack

.. code-block:: console

    spack gpg [-h] SUBCOMMAND ...


:ref:`More documentation <cmd-spack-gpg>`

**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`gpg verify <spack-gpg-verify>`
   * :ref:`gpg trust <spack-gpg-trust>`
   * :ref:`gpg untrust <spack-gpg-untrust>`
   * :ref:`gpg sign <spack-gpg-sign>`
   * :ref:`gpg create <spack-gpg-create>`
   * :ref:`gpg list <spack-gpg-list>`
   * :ref:`gpg init <spack-gpg-init>`
   * :ref:`gpg export <spack-gpg-export>`


----

.. _spack-gpg-verify:

spack gpg verify
^^^^^^^^^^^^^^^^

.. code-block:: console

    spack gpg verify [-h] package [signature]


**Positional arguments**

package
  the package to verify

signature
  the signature file


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-gpg-trust:

spack gpg trust
^^^^^^^^^^^^^^^

.. code-block:: console

    spack gpg trust [-h] keyfile


**Positional arguments**

keyfile
  add a key to the trust store


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-gpg-untrust:

spack gpg untrust
^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack gpg untrust [-h] [--signing] keys [keys ...]


**Positional arguments**

keys
  remove keys from the trust store


**Optional arguments**

``-h, --help``
  show this help message and exit

``--signing``
  allow untrusting signing keys


----

.. _spack-gpg-sign:

spack gpg sign
^^^^^^^^^^^^^^

.. code-block:: console

    spack gpg sign [-h] [--output DEST] [--key KEY] [--clearsign] package


**Positional arguments**

package
  the package to sign


**Optional arguments**

``-h, --help``
  show this help message and exit

``--output DEST``
  the directory to place signatures

``--key KEY``
  the key to use for signing

``--clearsign``
  if specified, create a clearsign signature


----

.. _spack-gpg-create:

spack gpg create
^^^^^^^^^^^^^^^^

.. code-block:: console

    spack gpg create [-h] [--comment COMMENT] [--expires EXPIRATION] [--export DEST] name email


**Positional arguments**

name
  the name to use for the new key

email
  the email address to use for the new key


**Optional arguments**

``-h, --help``
  show this help message and exit

``--comment COMMENT``
  a description for the intended use of the key

``--expires EXPIRATION``
  when the key should expire

``--export DEST``
  export the public key to a file


----

.. _spack-gpg-list:

spack gpg list
^^^^^^^^^^^^^^

.. code-block:: console

    spack gpg list [-h] [--trusted] [--signing]


**Optional arguments**

``-h, --help``
  show this help message and exit

``--trusted``
  list trusted keys

``--signing``
  list keys which may be used for signing


----

.. _spack-gpg-init:

spack gpg init
^^^^^^^^^^^^^^

.. code-block:: console

    spack gpg init [-h]


**Optional arguments**

``-h, --help``
  show this help message and exit

``--from DIR``
  ==SUPPRESS==


----

.. _spack-gpg-export:

spack gpg export
^^^^^^^^^^^^^^^^

.. code-block:: console

    spack gpg export [-h] location [keys [keys ...]]


**Positional arguments**

location
  where to export keys

keys
  the keys to export; all secret keys if unspecified


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-graph:

spack graph
-----------

generate graphs of package dependency relationships

.. code-block:: console

    spack graph [-hnsi] [-a | -d] [-t DEPTYPE] ...


:ref:`More documentation <cmd-spack-graph>`

**Positional arguments**

specs
  specs of packages to graph


**Optional arguments**

``-h, --help``
  show this help message and exit

``-a, --ascii``
  draw graph as ascii to stdout (default)

``-d, --dot``
  generate graph in dot format and print to stdout

``-n, --normalize``
  skip concretization; only print normalized spec

``-s, --static``
  use static information from packages, not dynamic spec info

``-i, --installed``
  graph all installed specs in dot format (implies --dot)

``-t DEPTYPE, --deptype DEPTYPE``
  comma-separated list of deptypes to traverse. default=build,link,run,test


----

.. _spack-help:

spack help
----------

get help on spack and its commands

.. code-block:: console

    spack help [-ha] [--spec] help_command]


:ref:`More documentation <cmd-spack-help>`

**Positional arguments**

help_command
  command to get help on


**Optional arguments**

``-h, --help``
  show this help message and exit

``-a, --all``
  print all available commands

``--spec``
  print all available commands


----

.. _spack-info:

spack info
----------

get detailed information on a particular package

.. code-block:: console

    spack info [-h] PACKAGE


:ref:`More documentation <cmd-spack-info>`

**Positional arguments**

PACKAGE
  name of package to get info for


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-install:

spack install
-------------

build and install packages

.. code-block:: console

    spack install [-hInvy] [--only {package,dependencies}] [-j JOBS] [--overwrite] [--keep-prefix] [--keep-stage]
              [--dont-restage] [--use-cache | --no-cache] [--show-log-on-error] [--source] [--fake] [--only-concrete]
              [-f SPEC_YAML_FILE] [--clean | --dirty] [--test {root,all} | --run-tests]
              [--log-format {None,junit,cdash}] [--log-file LOG_FILE] [--cdash-upload-url CDASH_UPLOAD_URL]
              [--cdash-build CDASH_BUILD] [--cdash-site CDASH_SITE]
              [--cdash-track CDASH_TRACK | --cdash-buildstamp CDASH_BUILDSTAMP]
              ...


:ref:`More documentation <cmd-spack-install>`

**Positional arguments**

package
  spec of the package to install


**Optional arguments**

``-h, --help``
  show this help message and exit

``--only {package,dependencies}``
  select the mode of installation. the default is to install the package along with all its dependencies. alternatively one can decide to install only the package or only the dependencies

``-j JOBS, --jobs JOBS``
  explicitly set number of parallel jobs

``-I, --install-status``
  show install status of packages. packages can be: installed [+], missing and needed by an installed package [-], or not installed (no annotation)

``--overwrite``
  reinstall an existing spec, even if it has dependents

``--keep-prefix``
  don't remove the install prefix if installation fails

``--keep-stage``
  don't remove the build stage if installation succeeds

``--dont-restage``
  if a partial install is detected, don't delete prior state

``--use-cache``
  check for pre-built Spack packages in mirrors (default)

``--no-cache``
  do not check for pre-built Spack packages in mirrors

``--show-log-on-error``
  print full build log to stderr if build fails

``--source``
  install source files in prefix

``-n, --no-checksum``
  do not use checksums to verify downloaded files (unsafe)

``-v, --verbose``
  display verbose build output while installing

``--fake``
  fake install for debug purposes.

``--only-concrete``
  (with environment) only install already concretized specs

``-f SPEC_YAML_FILE, --file SPEC_YAML_FILE``
  install from file. Read specs to install from .yaml files

``--clean``
  unset harmful variables in the build environment (default)

``--dirty``
  preserve user environment in the spack build environment (danger!)

``--test {root,all}``
  If 'root' is chosen, run package tests during installation for top-level packages (but skip tests for dependencies). if 'all' is chosen, run package tests during installation for all packages. If neither are chosen, don't run tests for any packages.

``--run-tests``
  run package tests during installation (same as --test=all)

``--log-format {None,junit,cdash}``
  format to be used for log files

``--log-file LOG_FILE``
  filename for the log file. if not passed a default will be used

``--cdash-upload-url CDASH_UPLOAD_URL``
  CDash URL where reports will be uploaded

``--cdash-build CDASH_BUILD``
  The name of the build that will be reported to CDash. Defaults to spec of the package to install.

``--cdash-site CDASH_SITE``
  The site name that will be reported to CDash. Defaults to current system hostname.

``--cdash-track CDASH_TRACK``
  Results will be reported to this group on CDash. Defaults to Experimental.

``--cdash-buildstamp CDASH_BUILDSTAMP``
  Instead of letting the CDash reporter prepare the buildstamp which, when combined with build name, site and project, uniquely identifies the build, provide this argument to identify the build yourself.  Format: %%Y%%m%%d-%%H%%M-[cdash-track]

``-y, --yes-to-all``
  assume "yes" is the answer to every confirmation request


----

.. _spack-license:

spack license
-------------

list and check license headers on files in spack

.. code-block:: console

    spack license [-h] SUBCOMMAND ...


**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`license list-files <spack-license-list-files>`
   * :ref:`license verify <spack-license-verify>`


----

.. _spack-license-list-files:

spack license list-files
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack license list-files [-h]


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-license-verify:

spack license verify
^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack license verify [-h] [--root ROOT]


**Optional arguments**

``-h, --help``
  show this help message and exit

``--root ROOT``
  scan a different prefix for license issues


----

.. _spack-list:

spack list
----------

list and search available packages

.. code-block:: console

    spack list [-hd] [--format {rst,name_only,html}] [--update FILE] [-t TAGS] ...


:ref:`More documentation <cmd-spack-list>`

**Positional arguments**

filter
  optional case-insensitive glob patterns to filter results


**Optional arguments**

``-h, --help``
  show this help message and exit

``-d, --search-description``
  filtering will also search the description for a match

``--format {rst,name_only,html}``
  format to be used to print the output [default: name_only]

``--update FILE``
  write output to the specified file, if any package is newer

``-t TAGS, --tags TAGS``
  filter a package query by tags


----

.. _spack-load:

spack load
----------

add package to environment using `module load`

.. code-block:: console

    spack load [-hr] ...


:ref:`More documentation <cmd-spack-load>`

**Positional arguments**

spec
  spec of package to load with modules 


**Optional arguments**

``-h, --help``
  show this help message and exit

``-r, --dependencies``
  recursively traverse spec dependencies


----

.. _spack-location:

spack location
--------------

print out locations of packages and spack directories

.. code-block:: console

    spack location [-h] [-m | -r | -i | -p | -P | -s | -S | -b | -e ENV] ...


:ref:`More documentation <cmd-spack-location>`

**Positional arguments**

spec
  spec of package to fetch directory for


**Optional arguments**

``-h, --help``
  show this help message and exit

``-m, --module-dir``
  spack python module directory

``-r, --spack-root``
  spack installation root

``-i, --install-dir``
  install prefix for spec (spec need not be installed)

``-p, --package-dir``
  directory enclosing a spec's package.py file

``-P, --packages``
  top-level packages directory for Spack

``-s, --stage-dir``
  stage directory for a spec

``-S, --stages``
  top level stage directory

``-b, --build-dir``
  checked out or expanded source directory for a spec (requires it to be staged first)

``-e ENV, --env ENV``
  location of an environment managed by spack


----

.. _spack-log-parse:

spack log-parse
---------------

filter errors and warnings from build logs

.. code-block:: console

    spack log-parse [-hp] [--show SHOW] [-c CONTEXT] [-w WIDTH] [-j JOBS] file


**Positional arguments**

file
  a log file containing build output, or - for stdin


**Optional arguments**

``-h, --help``
  show this help message and exit

``--show SHOW``
  comma-separated list of what to show; options: errors, warnings

``-c CONTEXT, --context CONTEXT``
  lines of context to show around lines of interest

``-p, --profile``
  print out a profile of time spent in regexes during parse

``-w WIDTH, --width WIDTH``
  wrap width: auto-size to terminal by default; 0 for no wrap

``-j JOBS, --jobs JOBS``
  number of jobs to parse log file (default: 1 for short logs, ncpus for long logs)


----

.. _spack-mirror:

spack mirror
------------

manage mirrors (source and binary)

.. code-block:: console

    spack mirror [-hn] SUBCOMMAND ...


:ref:`More documentation <cmd-spack-mirror>`

**Optional arguments**

``-h, --help``
  show this help message and exit

``-n, --no-checksum``
  do not use checksums to verify downloaded files (unsafe)


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`mirror create <spack-mirror-create>`
   * :ref:`mirror add <spack-mirror-add>`
   * :ref:`mirror remove <spack-mirror-remove>`
   * :ref:`mirror list <spack-mirror-list>`


----

.. _spack-mirror-create:

spack mirror create
^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack mirror create [-hD] [-d DIRECTORY] [-f FILE] [-n VERSIONS_PER_SPEC] ...


:ref:`More documentation <cmd-spack-mirror-create>`

**Positional arguments**

specs
  specs of packages to put in mirror


**Optional arguments**

``-h, --help``
  show this help message and exit

``-d DIRECTORY, --directory DIRECTORY``
  directory in which to create mirror

``-f FILE, --file FILE``
  file with specs of packages to put in mirror

``-D, --dependencies``
  also fetch all dependencies

``-n VERSIONS_PER_SPEC, --versions-per-spec VERSIONS_PER_SPEC``
  the number of versions to fetch for each spec


----

.. _spack-mirror-add:

spack mirror add
^^^^^^^^^^^^^^^^

.. code-block:: console

    spack mirror add [-h] [--scope {defaults,system,site,user}[/PLATFORM]] name url


:ref:`More documentation <cmd-spack-mirror-add>`

**Positional arguments**

name
  mnemonic name for mirror

url
  url of mirror directory from 'spack mirror create'


**Optional arguments**

``-h, --help``
  show this help message and exit

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope to modify


----

.. _spack-mirror-remove:

spack mirror remove
^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack mirror remove [-h] [--scope {defaults,system,site,user}[/PLATFORM]] name


:ref:`More documentation <cmd-spack-mirror-remove>`

**Positional arguments**

name
  


**Optional arguments**

``-h, --help``
  show this help message and exit

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope to modify


----

.. _spack-mirror-list:

spack mirror list
^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack mirror list [-h] [--scope {defaults,system,site,user}[/PLATFORM]]


:ref:`More documentation <cmd-spack-mirror-list>`

**Optional arguments**

``-h, --help``
  show this help message and exit

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope to read from


----

.. _spack-module:

spack module
------------

manipulate module files

.. code-block:: console

    spack module [-h] SUBCOMMAND ...


**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`module dotkit <spack-module-dotkit>`
   * :ref:`module lmod <spack-module-lmod>`
   * :ref:`module tcl <spack-module-tcl>`


----

.. _spack-module-dotkit:

spack module dotkit
^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack module dotkit [-h] SUBCOMMAND ...


**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`module dotkit refresh <spack-module-dotkit-refresh>`
   * :ref:`module dotkit find <spack-module-dotkit-find>`
   * :ref:`module dotkit rm <spack-module-dotkit-rm>`
   * :ref:`module dotkit loads <spack-module-dotkit-loads>`


----

.. _spack-module-dotkit-refresh:

spack module dotkit refresh
~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module dotkit refresh [-hy] [--delete-tree] [--upstream-modules] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``--delete-tree``
  delete the module file tree before refresh

``--upstream-modules``
  generate modules for packages installed upstream

``-y, --yes-to-all``
  assume "yes" is the answer to every confirmation request


----

.. _spack-module-dotkit-find:

spack module dotkit find
~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module dotkit find [-hr] [--full-path] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``--full-path``
  display full path to module file

``-r, --dependencies``
  recursively traverse spec dependencies


----

.. _spack-module-dotkit-rm:

spack module dotkit rm
~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module dotkit rm [-hy] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``-y, --yes-to-all``
  assume "yes" is the answer to every confirmation request


----

.. _spack-module-dotkit-loads:

spack module dotkit loads
~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module dotkit loads [-hr] [--input-only] [-p PREFIX] [-x EXCLUDE] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``--input-only``
  generate input for module command (instead of a shell script)

``-p PREFIX, --prefix PREFIX``
  prepend to module names when issuing module load commands

``-x EXCLUDE, --exclude EXCLUDE``
  exclude package from output; may be specified multiple times

``-r, --dependencies``
  recursively traverse spec dependencies


----

.. _spack-module-lmod:

spack module lmod
^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack module lmod [-h] SUBCOMMAND ...


**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`module lmod refresh <spack-module-lmod-refresh>`
   * :ref:`module lmod find <spack-module-lmod-find>`
   * :ref:`module lmod rm <spack-module-lmod-rm>`
   * :ref:`module lmod loads <spack-module-lmod-loads>`
   * :ref:`module lmod setdefault <spack-module-lmod-setdefault>`


----

.. _spack-module-lmod-refresh:

spack module lmod refresh
~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module lmod refresh [-hy] [--delete-tree] [--upstream-modules] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``--delete-tree``
  delete the module file tree before refresh

``--upstream-modules``
  generate modules for packages installed upstream

``-y, --yes-to-all``
  assume "yes" is the answer to every confirmation request


----

.. _spack-module-lmod-find:

spack module lmod find
~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module lmod find [-hr] [--full-path] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``--full-path``
  display full path to module file

``-r, --dependencies``
  recursively traverse spec dependencies


----

.. _spack-module-lmod-rm:

spack module lmod rm
~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module lmod rm [-hy] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``-y, --yes-to-all``
  assume "yes" is the answer to every confirmation request


----

.. _spack-module-lmod-loads:

spack module lmod loads
~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module lmod loads [-hr] [--input-only] [-p PREFIX] [-x EXCLUDE] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``--input-only``
  generate input for module command (instead of a shell script)

``-p PREFIX, --prefix PREFIX``
  prepend to module names when issuing module load commands

``-x EXCLUDE, --exclude EXCLUDE``
  exclude package from output; may be specified multiple times

``-r, --dependencies``
  recursively traverse spec dependencies


----

.. _spack-module-lmod-setdefault:

spack module lmod setdefault
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module lmod setdefault [-h] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-module-tcl:

spack module tcl
^^^^^^^^^^^^^^^^

.. code-block:: console

    spack module tcl [-h] SUBCOMMAND ...


**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`module tcl refresh <spack-module-tcl-refresh>`
   * :ref:`module tcl find <spack-module-tcl-find>`
   * :ref:`module tcl rm <spack-module-tcl-rm>`
   * :ref:`module tcl loads <spack-module-tcl-loads>`


----

.. _spack-module-tcl-refresh:

spack module tcl refresh
~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module tcl refresh [-hy] [--delete-tree] [--upstream-modules] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``--delete-tree``
  delete the module file tree before refresh

``--upstream-modules``
  generate modules for packages installed upstream

``-y, --yes-to-all``
  assume "yes" is the answer to every confirmation request


----

.. _spack-module-tcl-find:

spack module tcl find
~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module tcl find [-hr] [--full-path] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``--full-path``
  display full path to module file

``-r, --dependencies``
  recursively traverse spec dependencies


----

.. _spack-module-tcl-rm:

spack module tcl rm
~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module tcl rm [-hy] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``-y, --yes-to-all``
  assume "yes" is the answer to every confirmation request


----

.. _spack-module-tcl-loads:

spack module tcl loads
~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

    spack module tcl loads [-hr] [--input-only] [-p PREFIX] [-x EXCLUDE] ...


**Positional arguments**

constraint
  constraint to select a subset of installed packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``--input-only``
  generate input for module command (instead of a shell script)

``-p PREFIX, --prefix PREFIX``
  prepend to module names when issuing module load commands

``-x EXCLUDE, --exclude EXCLUDE``
  exclude package from output; may be specified multiple times

``-r, --dependencies``
  recursively traverse spec dependencies


----

.. _spack-patch:

spack patch
-----------

patch expanded archive sources in preparation for install

.. code-block:: console

    spack patch [-hn] ...


:ref:`More documentation <cmd-spack-patch>`

**Positional arguments**

packages
  specs of packages to stage


**Optional arguments**

``-h, --help``
  show this help message and exit

``-n, --no-checksum``
  do not use checksums to verify downloaded files (unsafe)


----

.. _spack-pkg:

spack pkg
---------

query packages associated with particular git revisions

.. code-block:: console

    spack pkg [-h] SUBCOMMAND ...


**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`pkg add <spack-pkg-add>`
   * :ref:`pkg list <spack-pkg-list>`
   * :ref:`pkg diff <spack-pkg-diff>`
   * :ref:`pkg added <spack-pkg-added>`
   * :ref:`pkg removed <spack-pkg-removed>`


----

.. _spack-pkg-add:

spack pkg add
^^^^^^^^^^^^^

.. code-block:: console

    spack pkg add [-h] ...


**Positional arguments**

packages
  names of packages to add to git repo


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-pkg-list:

spack pkg list
^^^^^^^^^^^^^^

.. code-block:: console

    spack pkg list [-h] [rev]


**Positional arguments**

rev
  revision to list packages for


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-pkg-diff:

spack pkg diff
^^^^^^^^^^^^^^

.. code-block:: console

    spack pkg diff [-h] [rev1] [rev2]


**Positional arguments**

rev1
  revision to compare against

rev2
  revision to compare to rev1 (default is HEAD)


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-pkg-added:

spack pkg added
^^^^^^^^^^^^^^^

.. code-block:: console

    spack pkg added [-h] [rev1] [rev2]


**Positional arguments**

rev1
  revision to compare against

rev2
  revision to compare to rev1 (default is HEAD)


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-pkg-removed:

spack pkg removed
^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack pkg removed [-h] [rev1] [rev2]


**Positional arguments**

rev1
  revision to compare against

rev2
  revision to compare to rev1 (default is HEAD)


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-providers:

spack providers
---------------

list packages that provide a particular virtual package

.. code-block:: console

    spack providers [-h] [virtual_package [virtual_package ...]]


:ref:`More documentation <cmd-spack-providers>`

**Positional arguments**

virtual_package
  find packages that provide this virtual package


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-pydoc:

spack pydoc
-----------

run pydoc from within spack

.. code-block:: console

    spack pydoc [-h] entity


**Positional arguments**

entity
  run pydoc help on entity


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-python:

spack python
------------

launch an interpreter as spack would launch a command

.. code-block:: console

    spack python [-h] [-c PYTHON_COMMAND] ...


:ref:`More documentation <cmd-spack-python>`

**Positional arguments**

python_args
  file to run plus arguments


**Optional arguments**

``-h, --help``
  show this help message and exit

``-c PYTHON_COMMAND``
  command to execute


----

.. _spack-reindex:

spack reindex
-------------

rebuild Spack's package database

.. code-block:: console

    spack reindex [-h]


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-release-jobs:

spack release-jobs
------------------

generate release build set as .gitlab-ci.yml

.. code-block:: console

    spack release-jobs [-hp] [-s SPEC_SET] [-m MIRROR_URL] [-o OUTPUT_FILE] [-t SHARED_RUNNER_TAG] [-k SIGNING_KEY]
                   [-c CDASH_URL] [--resolve-deps-locally] [--specs-deps-output SPECS_DEPS_OUTPUT]
                   ...


**Positional arguments**

specs
  These positional arguments are generally for internal use.  The --spec-set argument should be used to identify a yaml file describing the set of release specs to include in the .gitlab-ci.yml file.


**Optional arguments**

``-h, --help``
  show this help message and exit

``-s SPEC_SET, --spec-set SPEC_SET``
  path to release spec-set yaml file

``-m MIRROR_URL, --mirror-url MIRROR_URL``
  url of binary mirror where builds should be pushed

``-o OUTPUT_FILE, --output-file OUTPUT_FILE``
  path to output file to write

``-t SHARED_RUNNER_TAG, --shared-runner-tag SHARED_RUNNER_TAG``
  tag to add to jobs for shared runner selection

``-k SIGNING_KEY, --signing-key SIGNING_KEY``
  hash of gpg key to use for package signing

``-c CDASH_URL, --cdash-url CDASH_URL``
  Base url of CDash instance jobs should communicate with

``-p, --print-summary``
  Print summary of staged jobs to standard output

``--resolve-deps-locally``
  Use only the current machine to concretize specs, instead of iterating over items in os-container-mapping.yaml and using docker run.  Assumes the current machine architecure is listed in the os-container-mapping.yaml config file.

``--specs-deps-output SPECS_DEPS_OUTPUT``
  A file path to which spec deps should be written.  This argument is generally for internal use, and should not be provided by end-users under normal conditions.


----

.. _spack-remove:

spack remove
------------

remove specs from an environment

.. code-block:: console

    spack remove [-haf] ...


**Positional arguments**

specs
  specs to be removed


**Optional arguments**

``-h, --help``
  show this help message and exit

``-a, --all``
  remove all specs from (clear) the environment

``-f, --force``
  remove concretized spec (if any) immediately


----

.. _spack-repo:

spack repo
----------

manage package source repositories

.. code-block:: console

    spack repo [-h] SUBCOMMAND ...


:ref:`More documentation <cmd-spack-repo>`

**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`repo create <spack-repo-create>`
   * :ref:`repo list <spack-repo-list>`
   * :ref:`repo add <spack-repo-add>`
   * :ref:`repo remove <spack-repo-remove>`


----

.. _spack-repo-create:

spack repo create
^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack repo create [-h] directory [namespace]


**Positional arguments**

directory
  directory to create the repo in

namespace
  namespace to identify packages in the repository. defaults to the directory name


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-repo-list:

spack repo list
^^^^^^^^^^^^^^^

.. code-block:: console

    spack repo list [-h] [--scope {defaults,system,site,user}[/PLATFORM]]


**Optional arguments**

``-h, --help``
  show this help message and exit

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope to read from


----

.. _spack-repo-add:

spack repo add
^^^^^^^^^^^^^^

.. code-block:: console

    spack repo add [-h] [--scope {defaults,system,site,user}[/PLATFORM]] path


**Positional arguments**

path
  path to a Spack package repository directory


**Optional arguments**

``-h, --help``
  show this help message and exit

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope to modify


----

.. _spack-repo-remove:

spack repo remove
^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack repo remove [-h] [--scope {defaults,system,site,user}[/PLATFORM]] path_or_namespace


**Positional arguments**

path_or_namespace
  path or namespace of a Spack package repository


**Optional arguments**

``-h, --help``
  show this help message and exit

``--scope {defaults,system,site,user}[/PLATFORM]``
  configuration scope to modify


----

.. _spack-resource:

spack resource
--------------

list downloadable resources (tarballs, repos, patches, etc.)

.. code-block:: console

    spack resource [-h] SUBCOMMAND ...


:ref:`More documentation <cmd-spack-resource>`

**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`resource list <spack-resource-list>`
   * :ref:`resource show <spack-resource-show>`


----

.. _spack-resource-list:

spack resource list
^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack resource list [-h] [--only-hashes]


**Optional arguments**

``-h, --help``
  show this help message and exit

``--only-hashes``
  only print sha256 hashes of resources


----

.. _spack-resource-show:

spack resource show
^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack resource show [-h] hash


**Positional arguments**

hash
  


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-restage:

spack restage
-------------

revert checked out package source code

.. code-block:: console

    spack restage [-h] ...


:ref:`More documentation <cmd-spack-restage>`

**Positional arguments**

packages
  specs of packages to restage


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-setup:

spack setup
-----------

create a configuration script and module, but don't build

.. code-block:: console

    spack setup [-hinv] [--clean | --dirty] ...


**Positional arguments**

spec
  specs to use for install. must contain package AND version


**Optional arguments**

``-h, --help``
  show this help message and exit

``-i, --ignore-dependencies``
  do not try to install dependencies of requested packages

``-n, --no-checksum``
  do not use checksums to verify downloaded files (unsafe)

``-v, --verbose``
  display verbose build output while installing

``--clean``
  unset harmful variables in the build environment (default)

``--dirty``
  preserve user environment in the spack build environment (danger!)


----

.. _spack-spec:

spack spec
----------

show what would be installed, given a spec

.. code-block:: console

    spack spec [-hlLIyNt] [-c {nodes,edges,paths}] ...


:ref:`More documentation <cmd-spack-spec>`

**Positional arguments**

specs
  specs of packages


**Optional arguments**

``-h, --help``
  show this help message and exit

``-l, --long``
  show dependency hashes as well as versions

``-L, --very-long``
  show full dependency hashes as well as versions

``-I, --install-status``
  show install status of packages. packages can be: installed [+], missing and needed by an installed package [-], or not installed (no annotation)

``-y, --yaml``
  print concrete spec as YAML

``-c {nodes,edges,paths}, --cover {nodes,edges,paths}``
  how extensively to traverse the DAG (default: nodes)

``-N, --namespaces``
  show fully qualified package names

``-t, --types``
  show dependency types


----

.. _spack-stage:

spack stage
-----------

expand downloaded archive in preparation for install

.. code-block:: console

    spack stage [-hn] [-p PATH] ...


:ref:`More documentation <cmd-spack-stage>`

**Positional arguments**

specs
  specs of packages to stage


**Optional arguments**

``-h, --help``
  show this help message and exit

``-n, --no-checksum``
  do not use checksums to verify downloaded files (unsafe)

``-p PATH, --path PATH``
  path to stage package, does not add to spack tree


----

.. _spack-test:

spack test
----------

run spack's unit tests

.. code-block:: console

    spack test [-hH] [-l | -L] [--extension EXTENSION] ...


:ref:`More documentation <cmd-spack-test>`

**Positional arguments**

tests
  list of tests to run (will be passed to pytest -k)


**Optional arguments**

``-h, --help``
  show this help message and exit

``-H, --pytest-help``
  print full pytest help message, showing advanced options

``-l, --list``
  list basic test names

``-L, --long-list``
  list the entire hierarchy of tests

``--extension EXTENSION``
  run test for a given Spack extension


----

.. _spack-uninstall:

spack uninstall
---------------

remove installed packages

.. code-block:: console

    spack uninstall [-hfRya] ...


:ref:`More documentation <cmd-spack-uninstall>`

**Positional arguments**

packages
  specs of packages to uninstall


**Optional arguments**

``-h, --help``
  show this help message and exit

``-f, --force``
  remove regardless of whether other packages or environments depend on this one

``-R, --dependents``
  also uninstall any packages that depend on the ones given via command line

``-y, --yes-to-all``
  assume "yes" is the answer to every confirmation request

``-a, --all``
  USE CAREFULLY. Remove ALL installed packages that match each supplied spec. i.e., if you `uninstall --all libelf`, ALL versions of `libelf` are uninstalled. If no spec is supplied, all installed packages will be uninstalled. If used in an environment, all packages in the environment will be uninstalled.


----

.. _spack-unload:

spack unload
------------

remove package from environment using `module unload`

.. code-block:: console

    spack unload [-h] ...


**Positional arguments**

spec
  spec of package to unload with modules


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-unuse:

spack unuse
-----------

remove package from environment using dotkit

.. code-block:: console

    spack unuse [-h] ...


**Positional arguments**

spec
  spec of package to unuse with dotkit


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-upload-s3:

spack upload-s3
---------------

temporary command to upload buildcaches to 's3.spack.io'

.. code-block:: console

    spack upload-s3 [-h] SUBCOMMAND ...


**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`upload-s3 spec <spack-upload-s3-spec>`
   * :ref:`upload-s3 index <spack-upload-s3-index>`


----

.. _spack-upload-s3-spec:

spack upload-s3 spec
^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack upload-s3 spec [-h] [-s SPEC] [-y SPEC_YAML] [-b BASE_DIR] [-e ENDPOINT_URL]


**Optional arguments**

``-h, --help``
  show this help message and exit

``-s SPEC, --spec SPEC``
  Spec to upload

``-y SPEC_YAML, --spec-yaml SPEC_YAML``
  Path to spec yaml file containing spec to upload

``-b BASE_DIR, --base-dir BASE_DIR``
  Path to root of buildcaches

``-e ENDPOINT_URL, --endpoint-url ENDPOINT_URL``
  URL of mirror


----

.. _spack-upload-s3-index:

spack upload-s3 index
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack upload-s3 index [-h] [-e ENDPOINT_URL]


**Optional arguments**

``-h, --help``
  show this help message and exit

``-e ENDPOINT_URL, --endpoint-url ENDPOINT_URL``
  URL of mirror


----

.. _spack-url:

spack url
---------

debugging tool for url parsing

.. code-block:: console

    spack url [-h] SUBCOMMAND ...


:ref:`More documentation <cmd-spack-url>`

**Optional arguments**

``-h, --help``
  show this help message and exit


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`url parse <spack-url-parse>`
   * :ref:`url list <spack-url-list>`
   * :ref:`url summary <spack-url-summary>`
   * :ref:`url stats <spack-url-stats>`


----

.. _spack-url-parse:

spack url parse
^^^^^^^^^^^^^^^

.. code-block:: console

    spack url parse [-hs] url


**Positional arguments**

url
  url to parse


**Optional arguments**

``-h, --help``
  show this help message and exit

``-s, --spider``
  spider the source page for versions


----

.. _spack-url-list:

spack url list
^^^^^^^^^^^^^^

.. code-block:: console

    spack url list [-hce] [-n | -N | -v | -V]


**Optional arguments**

``-h, --help``
  show this help message and exit

``-c, --color``
  color the parsed version and name in the urls shown (versions will be cyan, name red)

``-e, --extrapolation``
  color the versions used for extrapolation as well (additional versions will be green, names magenta)

``-n, --incorrect-name``
  only list urls for which the name was incorrectly parsed

``-N, --correct-name``
  only list urls for which the name was correctly parsed

``-v, --incorrect-version``
  only list urls for which the version was incorrectly parsed

``-V, --correct-version``
  only list urls for which the version was correctly parsed


----

.. _spack-url-summary:

spack url summary
^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack url summary [-h]


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-url-stats:

spack url stats
^^^^^^^^^^^^^^^

.. code-block:: console

    spack url stats [-h]


**Optional arguments**

``-h, --help``
  show this help message and exit


----

.. _spack-use:

spack use
---------

add package to environment using dotkit

.. code-block:: console

    spack use [-hr] ...


**Positional arguments**

spec
  spec of package to use with dotkit


**Optional arguments**

``-h, --help``
  show this help message and exit

``-r, --dependencies``
  recursively traverse spec dependencies


----

.. _spack-versions:

spack versions
--------------

list available versions of a package

.. code-block:: console

    spack versions [-hs] PACKAGE


:ref:`More documentation <cmd-spack-versions>`

**Positional arguments**

PACKAGE
  package to list versions for


**Optional arguments**

``-h, --help``
  show this help message and exit

``-s, --safe-only``
  only list safe versions of the package


----

.. _spack-view:

spack view
----------

project packages to a compact naming scheme on the filesystem.

.. code-block:: console

    spack view [-hv] [-e EXCLUDE] [-d {true,false,yes,no}] ACTION ...


:ref:`More documentation <cmd-spack-view>`

**Optional arguments**

``-h, --help``
  show this help message and exit

``-v, --verbose``
  If not verbose only warnings/errors will be printed.

``-e EXCLUDE, --exclude EXCLUDE``
  exclude packages with names matching the given regex pattern

``-d {true,false,yes,no}, --dependencies {true,false,yes,no}``
  Link/remove/list dependencies.


**Subcommands**

.. hlist::
   :columns: 4

   * :ref:`view symlink <spack-view-symlink>`
   * :ref:`view hardlink <spack-view-hardlink>`
   * :ref:`view remove <spack-view-remove>`
   * :ref:`view statlink <spack-view-statlink>`


----

.. _spack-view-symlink:

spack view symlink
^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack view symlink [-hi] [--projection-file PROJECTION_FILE] path spec [spec ...]


**Positional arguments**

path
  path to file system view directory

spec
  seed specs of the packages to view


**Optional arguments**

``-h, --help``
  show this help message and exit

``--projection-file PROJECTION_FILE``
  Initialize view using projections from file.

``-i, --ignore-conflicts``
  


----

.. _spack-view-hardlink:

spack view hardlink
^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack view hardlink [-hi] [--projection-file PROJECTION_FILE] path spec [spec ...]


**Positional arguments**

path
  path to file system view directory

spec
  seed specs of the packages to view


**Optional arguments**

``-h, --help``
  show this help message and exit

``--projection-file PROJECTION_FILE``
  Initialize view using projections from file.

``-i, --ignore-conflicts``
  


----

.. _spack-view-remove:

spack view remove
^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack view remove [-ha] [--no-remove-dependents] path [spec [spec ...]]


**Positional arguments**

path
  path to file system view directory

spec
  seed specs of the packages to view


**Optional arguments**

``-h, --help``
  show this help message and exit

``--no-remove-dependents``
  Do not remove dependents of specified specs.

``-a, --all``
  act on all specs in view


----

.. _spack-view-statlink:

spack view statlink
^^^^^^^^^^^^^^^^^^^

.. code-block:: console

    spack view statlink [-h] path [spec [spec ...]]


**Positional arguments**

path
  path to file system view directory

spec
  seed specs of the packages to view


**Optional arguments**

``-h, --help``
  show this help message and exit

