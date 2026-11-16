# Koesterlab kisiac deployments

## Notebooks

To initialize deployment, run

```bash
kisiac setup-config
```

and paste the following seed configuration after the prompt:

```yaml
repo: https://github.com/koesterlab/kisiac-deployments
infrastructure: koesterlab_notebooks
require_terminal_multiplexer: false
```

Then, run

```bash
kisiac update-hosts localhost
```

Add your own notebook by putting a new folder with your hostname (should be named analogously to jkoester-notebook for consistency) below `infrastructure/koesterlab_notebooks/hosts/`. Check out [infrastructure/koesterlab_notebooks/hosts/all/kisiac.yaml](infrastructure/koesterlab_notebooks/hosts/all/kisiac.yaml) (our general setup for all notebooks) and [infrastructure/koesterlab_notebooks/hosts/jkoester-notebook/kisiac.yaml](infrastructure/koesterlab_notebooks/hosts/jkoester-notebook/kisiac.yaml) for inspiration.