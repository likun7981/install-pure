# Install-pure

This shell is used to quickly install [sindresorhus/pure](https://github.com/sindresorhus/pure)，This script is not generic, so far I have successfully installed it on `M1 MAC Mini`

## Usage

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/likun7981/install-pure/master/install.sh)"
```

## Some changes
feat: add `PURE_PROMPT_PATH_LAYERS` to configure the maximum display of path layers，It is set to `PURE_PROMPT_PATH_LAYERS=3` when use `install.sh` by default