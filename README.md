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
# Build nubia with requirements
```
git clone https://github.com/ph20/conda-recipes.git
cd conda-recipes
conda-build python/jellyfish-0.7.2  \
            python/prettytable-1.0.1 \
            python/python-nubia-0.2b5 
            --python=3.6
```

# Create GrabLib conda environment
```
conda create -n grab_env python=3.6 grab --channel=ph20
conda activate grab_env

conda deactivate
conda env remove -n grab_env
```

# Create nubia conda environment
```
conda create -n nubia_env python=3.6 python-nubia --channel=ph20
conda activate nubia_env

conda deactivate
conda env remove -n nubia_env
```