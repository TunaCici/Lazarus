# Basic Python Structure /w Virtual Environment

## Installation (venv)
This Python project uses the python3-venv package for it's virtual environment. You need to setup venv in order to work with this project.

Here's how you can setup:
```bash
# 1. Open up a terminal in this directory
# 2. Create a virtual environment
$ python3 -m venv .

# 3. Activate the virtual environment
$ source bin/activate

# 4. Install the required Python packages
$ pip install -r requirements.txt

# 5. Now you can run the application!
```

## Usage
Before you can use this project you need to activate the virtual environment. VSCode automatically detects it but if you are using a terminal you need to activate it first. You can do so from the terminal with the following command:
```bash
# Activate the virtual environment
$ source bin/activate

# You can see the 'Lazarus' tag on your prompt when you done activating
> (Lazarus) $ _
```

Now you can run the applicaton by running the command:
```bash
# Run the Python code
$ python src/main.py
```


## Directory structure
```
|-- requirements.txt   <- Required Python packages
|-- README             <- Project README
|-- docs               <- Documentation
|-- src                <- Source files
`-- tests              <- Unit tests
```
