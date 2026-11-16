# Koesterlab kisiac deployments

First, install [pixi](https://pixi.sh). Second, install `kisiac` via

```bash
pixi global install kisiac
```


## Notebooks

To initialize deployment, run

```bash
kisiac --non-interactive setup-config << EOF
repo: https://github.com/koesterlab/kisiac-deployments
infrastructure: koesterlab_notebooks
require_terminal_multiplexer: false
EOF
```

Then, run

```bash
kisiac update-hosts localhost
```

Add your own notebook by putting a new folder with your hostname (should be named analogously to jkoester-notebook for consistency) below `infrastructure/koesterlab_notebooks/hosts/`. Check out [infrastructure/koesterlab_notebooks/hosts/all/kisiac.yaml](infrastructure/koesterlab_notebooks/hosts/all/kisiac.yaml) (our general setup for all notebooks).
Here is [Johannes' kisiac.yaml](infrastructure/koesterlab_notebooks/hosts/jkoester-notebook/kisiac.yaml):

```bash
users:
  # Put your desktop username as chosen during linux installation here, replacing "johannes".
  # This is important for kisiac to know which user to setup with our default
  # userspace tools (starship, exa, etc.).
  johannes:
    managed: false # let the user be managed via the DE

software:
  - flatpak:zotero
  - flatpak:obsidian
  - remove:evolution
  - flatpak:thunderbird

user_update_hooks:
  - gnome-extensions disable zorin-printers@zorinos.com # the printer extension is buggy
```
