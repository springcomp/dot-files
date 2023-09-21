# Description

This repository contains my private *dotfile* configurations.

## Setup

Create and register a SSH public key on GitHub

```bash
ssh-keygen
```

Clone this repository into your HOME `~` directory:

```bash
git init
git remote add origin git@github.com:springcomp/dot-files.git
git pull origin master
```

Then bootstrap installation with the following command:

```bash
./bootstrap.sh
```


