# How to Make Modular Code in Python (Succinct Guide)
Modular Python code means splitting your logic across multiple .py files (called modules) and organizing them into packages (folders with __init__.py).

## 1. Project Structure Example

myproject/
├── main.py               ← entry point
├── utils/
│     ├── __init__.py     ← makes `utils` a package
│     └── math.py         ← a module (contains functions)
└── models.py             ← flat module


## 2. Defining Modules
Each .py file is a module.

# utils/math.py
def add(a, b):
    return a + b

A folder with __init__.py becomes a package.

# utils/__init__.py
from .math import add
Now you can use utils.add() anywhere.


## 3. Importing Modules
From the same directory:

# main.py
import utils.math

print(utils.math.add(2, 3))

Or import directly if re-exported:

# main.py
from utils import add

print(add(5, 10))


## 4. Cross-File Imports
Python follows relative and absolute import rules:

From same-level files:

from models import User
From subfolders:

from utils.math import add
From sibling folders (with packages):

from ..other_package import some_function  # (in a package file)


## 5. Reusability Tip: init.py
Your __init__.py can re-export submodules:

# utils/__init__.py
from .math import add, subtract

So you can just:

from utils import add
Instead of:

from utils.math import add


## 6. Bonus: Modular Testing
Keep test files like:

tests/
├── test_math.py
Use:

from utils.math import add
Run with pytest or unittest.


## 7. Installing as a Package (Optional)
Add a setup.py and install with:

pip install -e .
Then you can import your modules like any installed library!


### If you remember one thing:
Each .py file is a module, and folders with __init__.py are packages. Use import or from ... import ... to connect them!