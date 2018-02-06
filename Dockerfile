FROM debian:stretch

WORKDIR /root

RUN apt-get update && \
        apt-get install -y python \
        python3 \
        python-dev \
        python3-dev \
        python-pip \
        python3-pip \
        git \
        build-essential \
        gcc \
        ncurses-dev \
        zsh

RUN mkdir git && \
        cd git && \
        git clone https://github.com/vim/vim.git && \
        cd vim && \
        ./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local && \
            make && \                                                                                                                                                    
            make install

ADD oh-my-zsh /root/.oh-my-zsh
ADD zshrc /root/.zshrc
ADD vim /root/.vim
ADD vimrc /root/.vimrc

RUN chsh -s $(which zsh)

RUN mkdir /root/.vim/bundle && \
        git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim
RUN vim +PluginInstall +qall
RUN pip3 install jedi thefuck
RUN echo "export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.5/dist-packages" >> $HOME/.zshrc
