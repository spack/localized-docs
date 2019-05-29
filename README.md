# Localized Documentation for Spack

This repository contains translations of [Spack](/spack/spack)'s
documentation.  It implements the workflow described in the
[Sphinx docs](https://www.sphinx-doc.org/en/master/usage/advanced/intl.html).

The instructions here describe how you can contribute by:

1. Adding to an existing translation, and
2. Creating a translation in a new language.

Prerequisites
-------------------------------------

1. First, init the `spack` submodule:

   ```console
   $ git clone https://github.com/spack/localized-docs
   $ cd localized-docs
   $ git submodule init
   $ git submodule update
   ```

2. To use this repository you'll need Sphinx, some plugins for it, and
   `gettext`.  To install these dependencies, using `pip` and `brew`, you
   can run:

    ```console
    $ pip3 install -r requirements.txt
    $ brew install gettext
    ```

    Using Spack, you can just take advantage of the `spack.yaml` file at
    the root of this repo:

    ```console
    spack install
    spack env activate .
    ```

    This will install the tools you need and put them in your `PATH`.

Adding to an existing translation
-------------------------------------

Translations in this repository are stored in `.po` files under
`translations`.  There is one translation per languages, and each file is
named according to its
[ISO-639 language code](https://www.gnu.org/software/gettext/manual/html_node/Language-Codes.html#Language-Codes).
So, the Japanese translation data for Spack is stored in
`translations/ja.po`.

If you want to add to an existing translation, all you need to do is edit
the appropriate `.po` file and add translated strings to it.  `.po` files
are comprised of `msgid`/`msgstr` pairs.  The `msgid` corresponds to an
English string in the original documentation, and the `msgstr` is its
translation in the target language.  For example, for Japanese, the
translation of "Basic Usage" is stored like this:

```
#: ../spack/lib/spack/docs/basic_usage.rst:10
msgid "Basic Usage"
msgstr "基本的な使い方"
```

To add a translation:

1. Update `msgstr` elements in the appropriate `.po` files;
2. Run `make`;
3. Commit the results;
4. Submit a pull request so that we can merge your changes.

That's all!  Merged pull requests will automatically trigger a rebuild of
the translated docs, and you should see your changes at
[spack.readthedocs.io](https://spack.readthedocs.io/).

If you want to look at the documentation while you're editing it, running
`make` also generates per-language builds of the docs in `html/<lang>`.
So, to see the Japanese documentation, you can run `make` and open
`html/ja/index.html` in a local web browser.

Creating a new translation
------------------------------

To create a new translation, add the language to the `languages` list in
the `Makefile`.  For example, if the only language is Japanese (`ja`) and
you want to add German (`de`), just add `de`:

```make
languages = ja de
```

Running `make`, will create files in `docs`, `locale`, and
`translations`, and `html`:

```
    translations/de.po          # German translation file
    translations/de.mo          # generated from de.po
    locale/de/LC_MESSAGES/*.mo  # symlinks to translations/de.mo
    docs/de/                    # a Sphinx build directory for German docs
    html/de/                    # HTML built by Sphinx from docs/de
```

Add everything *except* `html`, then commit. `html` is ignored by default
(see `.gitignore`), so you can just run this:

```console
$ git add .
$ git commit
```

See instructions above for how to start translating.

Workflow
----------------

This repository implements the
[workflow described here](https://www.sphinx-doc.org/en/master/usage/advanced/intl.html).
Most users will only need to concern themselves with `translations/*.po`
files, but we provide a short summary here so that you can understand how
everything works.

Translation is done as follows:

1. First, we use (or rather Sphinx uses) the `gettext` tool to extract
   strings to be translated from each `.rst` document in the Spack
   documentation. This results in a set of `.pot` files in
   `templates/*.pot`.  These contain keys (`msgid`s) for unique strings,
   as well as their location (file and line number) in the documentation.

2. We merge the `.pot` files into a single `merged.pot` file to eliminate
   duplicate strings in multiple files.

3. `merged.pot` is used to create an initial `translations/<lang>.po`
   file.  Translations are added to `msgstr` fields in the `.po` file.

4. A single `translations/<lang>.mo` file is generated from the `.po`
   file. The `.mo` file is in a special binary format.

5. We generate symlinks in `locale/<lang>/LC_MESSAGES/*.mo` that all
   point back to the single, unified `translations/<lang>.mo` file.  The
   `locale` directory can then be used with Sphinx to build translated
   documentation.

The top-level `Makefile` implements this workflow, so you don't have to
think too much about it.


License
----------------

This repository is part of Spack, which distributed under the terms of
both the MIT license and the Apache License (Version 2.0). Users may
choose either license, at their option.

All new contributions must be made under both the MIT and Apache-2.0
licenses.

See [LICENSE-MIT](https://github.com/spack/localized-docs/blob/master/LICENSE-MIT),
[LICENSE-APACHE](https://github.com/spack/localized-docs//blob/master/LICENSE-APACHE),
[COPYRIGHT](https://github.com/spack/localized-docs/blob/master/COPYRIGHT),
and [NOTICE](https://github.com/spack/localized-docs/blob/master/NOTICE)
for details.

SPDX-License-Identifier: (Apache-2.0 OR MIT)

LLNL-CODE-647188
