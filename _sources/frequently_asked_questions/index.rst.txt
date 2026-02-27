.. _faq:


FAQ
===

**Are ggpubfigs color palettes colorblind friendly?**

Yes! All color palettes in ggpubfigs are designed to be colorblind friendly. This means
your figures will be accessible to a wider audience, which is better for your readers
and for you.

|

**How do I use a continuous color palette?**

Use the ``friendly_pal()`` function with ``type = "continuous"`` and specify the number
of colors you need:

.. code-block:: R

	pal <- friendly_pal("contrast_three", 50, type = "continuous")
	image(volcano, col = pal)

|

**Can I submit color palettes or themes to be incorporated into ggpubfigs?**

Yes! Submissions are encouraged. Please feel free to contact the developer via
`Twitter <https://twitter.com/jlsteenwyk>`_ or from the
`contact page <https://jlsteenwyk.com/contact.html>`_.

|

**How do I customize a ggpubfigs theme further?**

ggpubfigs themes are standard ggplot2 themes. You can add additional ``theme()`` calls
after applying a ggpubfigs theme to override specific elements:

.. code-block:: R

	ggplot(iris, aes(Sepal.Length, Petal.Width, color = Species)) +
	  geom_point() +
	  theme_simple() +
	  theme(axis.title = element_text(size = 16))

|

**I am having trouble installing ggpubfigs, what should I do?**

Make sure you have the ``devtools`` package installed, then run:

.. code-block:: R

	devtools::install_github("JLSteenwyk/ggpubfigs")

If you continue to experience issues, please contact the developer via
email_ or twitter_.

.. _email: https://jlsteenwyk.com/contact.html
.. _twitter: https://twitter.com/jlsteenwyk

^^^^^
