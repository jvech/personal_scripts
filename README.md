# Personal Scripts
This will be my personal day to day scripts made to improve my workflow

# Requirements
* curl
* sed
* dmenu

# Installation
First clone the repository and go to the folder:
```
git clone https://github.com/jvech/personal_scripts.git
cd personal_scripts
```
Then install the scripts:
```
make install
```
Be sure to have `$HOME/.local/bin` exported in your `$PATH` variable if not
put in your `.bashrc` the line `export PATH=\$PATH:\$HOME/.local/bin`

To Remove the scripts execute:
```
make uninstall
```

# Scripts
## arxiv\_dmenu
A little script to search for papers using dmenu and arxiv API. Run the script
in the terminal as follow:
```
./arxiv_dmenu
```

## pdf\_streamer
Watch online pdfs using its _url_, it's recommended to have zathura as your
default pdf viewer if you want to see it from your terminal.
```
./pdf_streamer https://url/file.pdf
```
