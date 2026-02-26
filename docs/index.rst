.. image:: _static/img/logo.png
   :width: 55%
   :align: center
   :target: https://jlsteenwyk.com/ggpubfigs

^^^^^

ggpubfigs is a ggplot2 extension that provides publication-ready themes and colorblind-friendly
color palettes for the life sciences.

If you found ggpubfigs useful, please cite *ggpubfigs: Colorblind-Friendly Color Palettes and
ggplot2 Graphic System Extensions for Publication-Quality Scientific Figures*.
Steenwyk & Rokas. 2021, Microbiology Resource Announcements.
doi: |doiLink|_.

.. _doiLink: https://journals.asm.org/doi/10.1128/MRA.00871-21
.. |doiLink| replace:: 10.1128/MRA.00871-21

|

Quick Start
-----------

|

**Install**

.. code-block:: R

	# install
	devtools::install_github("JLSteenwyk/ggpubfigs")
	# load
	library(ggpubfigs)

|

**Example 1: ito_seven + theme_big_simple**

.. code-block:: R

	ggplot(mtcars, aes(factor(carb), fill=factor(cyl))) +
	  geom_bar() +
	  scale_fill_manual(values = friendly_pal("ito_seven")) +
	  theme_big_simple()

.. image:: _static/img/ito_big_simple.png
   :width: 55%
   :align: center

^^^^^

|

**Example 2: bright_seven + theme_big_grid**

.. code-block:: R

	ggplot(mtcars, aes(factor(carb), fill=factor(cyl))) +
	  geom_bar() +
	  scale_fill_manual(values = friendly_pal("bright_seven")) +
	  theme_big_grid()

.. image:: _static/img/bright_big_grid.png
   :width: 55%
   :align: center

^^^^^

|

.. toctree::
	:maxdepth: 4

	about/index
	usage/index
	change_log/index
	other_software/index
	frequently_asked_questions/index
