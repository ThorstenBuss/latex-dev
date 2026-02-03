# LaTeX Docker Environment

Docker image based on TeXLive with TeXLive, LaTeXML, Python scientific packages, and Oh-my-ZSH.

## Quick Start

You can pull the latest image from [Docker Hub](https://hub.docker.com/r/bussthor/latex-dev):
```bash
docker pull bussthor/latex-dev:latest
```

Or build locally:
```bash
docker build -t latex-dev .
```

Run interactively:
```bash
docker run -it --rm \
  -v "$PWD:/workspace" \
  -v "$HOME/.ssh:/home/texlive/.ssh:ro" \
  -v "$HOME/.zshrc:/home/texlive/.zshrc:ro" \
  latex-dev
```

## Included Packages

- **LaTeX**: Full TeXLive distribution
- **LaTeXML**: LaTeXML for converting LaTeX to HTML
- **Python**: With numpy, scipy, matplotlib, h5py, ipykernel, and ipywidgets
- **Tools**: git, vim, unzip, pandoc, imagemagick
- **Shell**: zsh with Oh-my-ZSH

## Platforms

Multi-architecture support: `linux/amd64`, `linux/arm64`
