# Index Generator Readme
Two files are required indexraw.txt and index_generator.py which can both be found at the 
[server repo](https://github.com/pycav/server). **Do not edit indexraw.txt**.

Jupyter notebook files must be modified to contain the following lines somewhere inside them if you want them to be included in the index.

```python
#NAME: insert-title-here
#DESCRIPTION: insert-description-here
```

The generator can be passed a string as an argument that will be used to give the index a custom title. If an argument is 
not given you will be prompted for a title at runtime.

If a path argument is not supplied the current working directory will be used as the base directory the index is generated 
from.

The generator will generate an index of Jupyter Notebooks, sorted into subcategories according to the subdirectory
they reside in, notebooks not in a subdirectory will be added to the top of the index file outside of any 
subcategories. Folder names will be formatted such that a folder named WavesAndOscillations will appear
as Waves And Oscillations when it is used as a subcategory name (new words are determined using uppercase letters, for example Statisticalphysics would appear as Statisticalphysics, where as StatisticalPhysics would appear as Statistical Physics).

The generated index notebook will be named indexgen.ipynb.
To run the generator just type the following command.

```bash
python3 index_generator.py -t "title-here" -p /path/to/notebooks
```

Make sure .indexraw.txt is in the same directory as index_generator.py.
