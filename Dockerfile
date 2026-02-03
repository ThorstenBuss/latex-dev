FROM texlive/texlive:latest

RUN apt-get update && apt-get install -y \
    git \
    openssh-client \
    zsh \
    vim \
    curl \
    wget \
    unzip \
    tex-fmt \
    python3 \
    python3-numpy \
    python3-scipy \
    python3-matplotlib \
    python3-ipykernel \
    python3-h5py \
    perl \
    latexml \
    imagemagick \
    libimage-magick-perl \
    pandoc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

RUN chown -R texlive:texlive /workspace
USER texlive

# Install Oh-my-ZSH
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

CMD ["/bin/zsh"]
