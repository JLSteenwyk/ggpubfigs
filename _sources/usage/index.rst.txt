Usage
=====

^^^^^

Themes
------

^^^^^

Publication-ready themes
~~~~~~~~~~~~~~~~~~~~~~~~

|

**theme_grid()**

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_grid()

.. image:: ../_static/img/grid.png
   :width: 55%
   :align: center

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_grid()

.. image:: ../_static/img/grid_histo.png
   :width: 55%
   :align: center

|

**theme_big_grid()**

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_big_grid()

.. image:: ../_static/img/big_grid.png
   :width: 55%
   :align: center

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_big_grid()

.. image:: ../_static/img/big_grid_histo.png
   :width: 55%
   :align: center

|

**theme_simple()**

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_simple()

.. image:: ../_static/img/simple.png
   :width: 55%
   :align: center

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_simple()

.. image:: ../_static/img/simple_histo.png
   :width: 55%
   :align: center

|

**theme_big_simple()**

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_big_simple()

.. image:: ../_static/img/big_simple.png
   :width: 55%
   :align: center

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_big_simple()

.. image:: ../_static/img/big_simple_histo.png
   :width: 55%
   :align: center

|

**theme_grey()**

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_grey()

.. image:: ../_static/img/grey.png
   :width: 55%
   :align: center

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_grey()

.. image:: ../_static/img/grey_histo.png
   :width: 55%
   :align: center

|

Presentation-ready themes
~~~~~~~~~~~~~~~~~~~~~~~~~

|

**theme_black()**

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_black()

.. image:: ../_static/img/black.png
   :width: 55%
   :align: center

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_black()

.. image:: ../_static/img/black_histo.png
   :width: 55%
   :align: center

|

**theme_blue()**

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_blue()

.. image:: ../_static/img/blue.png
   :width: 55%
   :align: center

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_blue()

.. image:: ../_static/img/blue_histo.png
   :width: 55%
   :align: center

|

**theme_red()**

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) + geom_point() + theme_red()

.. image:: ../_static/img/red.png
   :width: 55%
   :align: center

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, fill = Species)) + geom_histogram() + theme_red()

.. image:: ../_static/img/red_histo.png
   :width: 55%
   :align: center

|

Color Palettes
--------------

^^^^^

Color palettes are all colorblind friendly. Thus, your figures will be accessible to more
people. Color palettes are named using the following scheme: *identifier* (underscore)
*number of colors in color palette*.

|

**Discrete usage example**

.. code-block:: R

	ggplot(mtcars, aes(factor(carb), fill=factor(cyl))) +
	  geom_bar() +
	  scale_fill_manual(values = friendly_pal("contrast_three"))

.. image:: ../_static/img/contrast_three.png
   :width: 55%
   :align: center

|

**Continuous usage example**

.. code-block:: R

	pal <- friendly_pal("contrast_three", 50, type = "continuous")
	image(volcano, col = pal)

.. image:: ../_static/img/contrast_three_volcano.png
   :width: 55%
   :align: center

|

Available Palettes
~~~~~~~~~~~~~~~~~~

.. list-table::
   :header-rows: 1
   :widths: 50 50

   * - Palette Name
     - Number of Colors
   * - bright_seven
     - 7
   * - contrast_three
     - 3
   * - vibrant_seven
     - 7
   * - muted_nine
     - 9
   * - nickel_five
     - 5
   * - ito_seven
     - 7
   * - ibm_five
     - 5
   * - wong_eight
     - 8
   * - tol_eight
     - 8
   * - zesty_four
     - 4
   * - retro_four
     - 4
   * - tableau_ten
     - 10
   * - glasbey_twelve
     - 12
   * - viridis_eight
     - 8
   * - cividis_eight
     - 8
