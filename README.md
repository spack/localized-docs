# Localized Documentation for Spack

This repository contains translations of [Spack](/spack/spack)'s
documentation.  It implements the workflow described in the
[Sphinx docs](https://www.sphinx-doc.org/en/master/usage/advanced/intl.html).

If you are reading this, you're likely interested in either:

1. Adding to an existing translation, or
2. Creating a translation of Spack in a new language.

See below for details on both of these.

Adding to an existing translation
-------------------------------------

Translations in this repository are stored in `.po` files in the
top-level `translations` directory.  There is one translation per
languages, and each file is named according to its
[ISO-639 language code](https://www.gnu.org/software/gettext/manual/html_node/Language-Codes.html#Language-Codes).
So, the Japanese translation data for Spack is stored in
`translations/ja.po`.

If you want to add to an existing translation, all you need to do is edit
the appropriate `.po` file and add translations for the strings in it.
`.po` files are comprised of `msgid`/`msgstr` pairs.  The `msgid`
corresponds to an English string in the original documentation, and the
`msgstr` is its translation.  For example, for Japanese, the translation
of "Basic Usage" is stored like this:

```
# fde44f45d9044cd2a55b1b0261785151
#: ../spack/lib/spack/docs/basic_usage.rst:10
msgid "Basic Usage"
msgstr "基本的な使い方"
```

All you need to do to add to a translation is:

1. Update `msgstr` elements in the appropriate `.po` file;
2. Run `make` at the top level of this repository;
3. Commit the results;
4. Submit a pull request so that we can merge your changes.

That's all!  Any new commits you add will automatically trigger a rebuild
of Spack's documentation, and you should see your changes show up at
[spack.readthedocs.io](https://spack.readthedocs.io/) soon after your
changes are committed to the `master` branch here.

If you want to look at the documentation while you're editing it, `make`
generates per-language builds of the docs in `html/<lang>`.  So, to see
the Japanese documentation, you can run `make` and open
`html/ja/index.html` in a local web browser.

Creating a new translation
------------------------------

All you need to do to create a new translation is to add it to the
`languages` variable in the `Makefile`.  For example, if the only
language is Japanese (`ja`) and you want to add German (`de`), make
`languages` look like this:

```make
# ----------------------------------------------------------------------
# List of translated languages
#
# Add a new language here and type "make" to generate new po files to
# translate.
# ----------------------------------------------------------------------
languages = ja de
```

Then run `make`, and some new files will be created in `docs`, `locale`,
and `translations`:

```
    translations/de.po          # German translation file
    translations/de.mo          # generated from de.po
    locale/de/LC_MESSAGES/*.mo  # symlinks to translations/de.mo
    docs/de/                    # a Sphinx build directory for German docs
    html/de/                    # HTML built by Sphinx from docs/de
```

Add all of these *except* `html`. Then commit:

```console
$ git add Makefile docs locale translations
$ git commit
```

Then submit a pull request for the new language.  To start your
translation, you will need to edit `translations/de.po`.  See above for
how to do that.

Workflow
----------------

This repository implements the
[workflow described here](https://www.sphinx-doc.org/en/master/usage/advanced/intl.html).
Most users will only need to concern themselves with `translations/*.po`
files, but we provide a short summary here so that you can understand how
these are used.

Translation is done as follows:

1. First, we use the `gettext` tool to extract strings to be translated
   from each `.rst` document in the Spack documentation. This results in
   a set of `.pot` files in `templates/*.pot`.  These contain keys
   (`msgid`s) for unique strings, as well as their location (file and
   line number) in the documentation.

2. We merge the `.pot` files into a single `merged.pot` file to eliminate
   duplicate strings across files.

3. `merged.pot` is used to create an initial `translations/<lang>.po`
   file.  Translations are added to the `msgstr` fields in the `.po`
   file.

4. A single `translations/<lang>.mo` file is generated from the `.po`
   file. The `.mo` file  is in a special binary format.

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
