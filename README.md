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

Add your own notebook by putting a new folder with your hostname (should be named analogously to jkoester-notebook for consistency) below `infrastructure/koesterlab_notebooks/hosts/`. Check out [infrastructure/koesterlab_notebooks/hosts/all/kisiac.yaml](infrastructure/koesterlab_notebooks/hosts/all/kisiac.yaml) (our general setup for all notebooks) and [infrastructure/koesterlab_notebooks/hosts/jkoester-notebook/kisiac.yaml](infrastructure/koesterlab_notebooks/hosts/jkoester-notebook/kisiac.yaml) for inspiration.