# -*- coding: utf-8 -*-
#
# Full list of options at http://www.sphinx-doc.org/en/master/config

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
import os
import sys
import catkin_pkg.package

from exhale import utils

package_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
catkin_package = catkin_pkg.package.parse_package(
    os.path.join(package_dir, catkin_pkg.package.PACKAGE_MANIFEST_FILENAME))
sys.path.insert(0, os.path.abspath(os.path.join(package_dir, "src")))


# -- Helper functions --------------------------------------------------------

def count_files():
    """:returns tuple of (num_py, num_cpp)"""
    num_py = 0
    num_cpp = 0

    for root, dirs, files in os.walk(os.path.join(package_dir, "src")):
        for f in files:
            if f.endswith(".py"):
                num_py += 1
    for root, dirs, files in os.walk(os.path.join(package_dir, "include")):
        for f in files:
            if f.endswith(".h") or f.endswith(".hpp"):
                num_cpp += 1

    return num_py, num_cpp


# -- Project information -----------------------------------------------------

project = catkin_package.name
copyright = '2019, Bit-Bots'
author = ", ".join([a.name for a in catkin_package.authors])

# The short X.Y version
version = str(catkin_package.version)
# The full version, including alpha/beta/rc tags
release = str(catkin_package.version)

# -- General configuration ---------------------------------------------------

# If your documentation needs a minimal Sphinx version, state it here.
#
# needs_sphinx = '1.0'

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.doctest',
    'sphinx.ext.intersphinx',
    'sphinx.ext.todo',
    'sphinx.ext.coverage',
    'sphinx.ext.imgmath',
    'sphinx.ext.viewcode',
    'sphinx_rtd_theme',
]

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# The suffix(es) of source filenames.
# You can specify multiple suffix as a list of string:
#
# source_suffix = ['.rst', '.md']
source_suffix = '.rst'

# The master toctree document.
master_doc = 'index'

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
#
# This is also used if you do content translation via gettext catalogs.
# Usually you set "language" from the command line for these cases.
language = None

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = None

# -- Exhale and Breath setup -------------------------------------------------

# Tell sphinx what the primary language being documented is.
num_files_py, num_files_cpp = count_files()
primary_domain = "py" if num_files_py >= num_files_cpp else "cpp"

# Tell sphinx what the pygments highlight language should be.
highlight_language = primary_domain

if num_files_cpp > 0:
    extensions += [
        'breathe',
        'exhale',
    ]

    breathe_projects = {
        project: os.path.join("_build", "doxyoutput", "xml")
    }
    breathe_default_project = project

    def specifications_for_kind(kind):
        # Show all members for classes and structs
        if kind == "class" or kind == "struct":
            return [
              ":members:",
              ":protected-members:",
              ":private-members:",
              ":undoc-members:"
            ]
        # An empty list signals to Exhale to use the defaults
        else:
            return []

    exhale_args = {
        # These arguments are required
        "containmentFolder": "cppapi",
        "rootFileName": "library_root.rst",
        "rootFileTitle": "C++ Library API",
        "doxygenStripFromPath": "..",
        "customSpecificationsMapping": utils.makeCustomSpecificationsMapping(
            specifications_for_kind
        ),
        # Suggested optional arguments
        "createTreeView": True,
        "exhaleExecutesDoxygen": True,
        "exhaleDoxygenStdin": "INPUT = {}".format(os.path.join(package_dir, "include"))
    }

# -- Options for HTML output -------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#
html_theme = 'sphinx_rtd_theme'

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
#
# html_theme_options = {}

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']

# Custom sidebar templates, must be a dictionary that maps document names
# to template names.
#
# The default sidebars (for documents that don't match any pattern) are
# defined by theme itself.  Builtin themes are using these templates by
# default: ``['localtoc.html', 'relations.html', 'sourcelink.html',
# 'searchbox.html']``.
#
# html_sidebars = {}

html_logo = os.path.join('_static', 'logo.png')
html_favicon = os.path.join('_static', 'logo.png')


# -- Options for intersphinx extension ---------------------------------------

# Example configuration for intersphinx: refer to the Python standard library.
intersphinx_mapping = {'https://docs.python.org/': None}

# -- Options for todo extension ----------------------------------------------

# If true, `todo` and `todoList` produce output, else they produce nothing.
todo_include_todos = True

# -- RST Standard variables ---------------------------------------------------
rst_prolog = ".. |project| replace:: {}\n".format(project)
rst_prolog += ".. |description| replace:: {}\n".format(catkin_package.description.replace("\n\n", "\n"))
rst_prolog += ".. |modindex| replace:: {}\n".format(":ref:`modindex`" if num_files_py > 0 else "Python module index is not available")
