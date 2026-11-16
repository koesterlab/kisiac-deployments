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
