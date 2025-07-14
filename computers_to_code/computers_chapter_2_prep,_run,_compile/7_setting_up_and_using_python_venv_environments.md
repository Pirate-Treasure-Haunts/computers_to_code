# installing a venv virtual environment to run python projects in:

## method one [don't understand, just parrot]:
`python -m venv myenv`
`myenv\Scripts\activate`
`pip install -r requirements.txt`
`pip install package_name`

## method two [Create a Virtual Environment, step by step, explained]:
(mine is called `myenv`)

`python -m venv myenv`
 to Activate the Virtual Environment:
`myenv\Scripts\activate`

[to Deactivate the Virtual Environment:
`deactivate`]


for pre-config env lib list, file must be named `requirements.txt`, one libname per line, no other txt. you may put comments in using `#_`, then either way, run:
This format is what pip expects when you run:
`pip install -r requirements.txt`

This command will install all the packages listed in the file with the specified versions.


Installing Packages:
`pip install package_name`

- Listing Installed Packages:
`pip list`

what format the contents of a venv 'requirements.txt' take?

The 'requirements.txt' file in a Python virtual environment (venv) is used to list all the dependencies that your project needs.
The format is quite simple: a single .txt file, each line in the file specifies a package that your project depends on, and optionally, the version of the package.

Basic Format
`plaintext`

package_name==version_number
`Example of a requirements.txt File`

[plaintext]
requests==2.25.1
aiohttp==3.7.4.post0
selenium==3.141.0
Flask==1.1.2
numpy==1.19.5
Format Variations

Specific Version: If you want to pin a package to a specific version:

requests==2.25.1

Version Range: If you want a range of versions:

plaintext
requests>=2.24.0,<3.0.0

Latest Version: If you want to install the latest version of a package, you can just list the package name:
requests

comments: You can add comments to your requirements.txt file by starting a line with a `#`:

# This is a comment
requests==2.25.1

Editable Install: If you’re working on a package locally and want to install it in an editable mode (useful for development), you can specify the local path:

-e .

Automatically Generating requirements.txt
If you want to generate a requirements.txt file from the current environment, you can use the following command:
`pip freeze > requirements.txt`

This will output the installed packages and their versions in the current virtual environment to requirements.txt.

Example Generated File
Here’s what a generated requirements.txt might look like:

aiohttp==3.7.4.post0
async-timeout==3.0.1
attrs==20.3.0
chardet==3.0.4
idna==2.10
multidict==5.1.0
requests==2.25.1
selenium==3.141.0
urllib3==1.26.4
yarl==1.6.3


This format is what pip expects when you run:
`pip install -r requirements.txt`

This command will install all the packages listed in the file with the specified versions.

also cn be run 'standalone' - e.g. at any time in from within the folder that contains the environ ment if you run this command then files for those packages will be installed and hence those packages made available to anything that  oin that environment or is setup to access that environment.

for example you cold simply type:
`pip install requests urllib tokio`

this would performa one time install of the packages requests, urllib and tokio in the current environment we are within and use the latest version accessi ble then od nothing else forevermore.


here's an example of a real venv requirementstxt I used in a past project:

```
aiohttp==3.9.5
beautifulsoup4==4.12.3
cryptography==42.0.8
markovify==0.9.4
requests==2.32.3
selenium==4.23.1
stem==1.8.2
websockets==12.0
argparse==1.4.0
async-timeout==4.0.3
certifi==2024.2.2
charset-normalizer==3.3.2
idna==3.6
multidict==6.0.5
pyOpenSSL==24.0.0
soupsieve==2.5
urllib3==2.2.0
yarl==1.9.4
webdriver-manager==4.0.1
discord.py
cryptography
```


