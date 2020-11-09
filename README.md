# conda-recipes

# Preparing environment
1. Setup conda

# Build GrabLib with requirements
```
git clone https://github.com/ph20/conda-recipes.git
cd conda-recipes
conda-build python/user_agent-0.1.9 \
            python/pytils-0.3 \
            python/weblib-0.1.30 \
            python/selection-0.0.14 \
            python/grab-0.6.41 \
            --python=3.6
```

# Create GrabLib conda environment
```
conda create -n grab_env python=3.6 grab
conda activate grab_env

python                                                                                                                                                                                                       ─╯
Python 3.6.6 |Anaconda, Inc.| (default, Oct  9 2018, 12:34:16) 
[GCC 7.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> from grab import Grab
>>> g = Grab()
>>> g.go('https://github.com')
<grab.document.Document object at 0x7f7d68cfa268>
>>> quit()

conda deactivate
conda env remove -n grab_env
```