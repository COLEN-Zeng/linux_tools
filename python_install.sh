# 安装

GPG_KEY="97FC712E4C024BBEA48A61ED3A5CA953F73C700D"
PYTHON_VERSION="3.9.7"
PYTHON_PIP_VERSION="21.2.4"
PYTHON_GATEWAY="https://npm.taobao.org/mirrors/python"
# $PYTHON_GATEWAY="https://www.python.org/ftp/python"
PYTHON_PIP_GATEWAY="https://pypi.tuna.tsinghua.edu.cn/simple"

set -ex &&
    # 备份旧版本python
    if [ -d /usr/bin/python ]; then
        mv /usr/bin/python /usr/bin/python27
    fi &&
    if [ -d /usr/bin/python3 ]; then
        mv /usr/bin/python3 /usr/bin/python3_bak
    fi &&
    # mv /usr/bin/pip /usr/bin/pip27 &&
    curl -fSL "${PYTHON_GATEWAY}/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz &&
    # curl -fSL "${PYTHON_GATEWAY}/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc &&
    export GNUPGHOME="$(mktemp -d)" &&
    # gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" &&
    # gpg --batch --verify python.tar.xz.asc python.tar.xz &&
    # rm -r "$GNUPGHOME" python.tar.xz.asc &&
    mkdir -p /usr/src/python3 &&
    tar -xJC /usr/src/python3 --strip-components=1 -f python.tar.xz &&
    rm python.tar.xz &&
    cd /usr/src/python3 &&
    ./configure --enable-shared --enable-unicode=ucs4 &&
    make -j$(nproc) &&
    make install &&
    ldconfig &&
    pip3 install --no-cache-dir --upgrade --ignore-installed pip==$PYTHON_PIP_VERSION -i $PYTHON_PIP_GATEWAY &&
    find /usr/local -depth \
        \( \
        \( -type d -a -name test -o -name tests \) \
        -o \
        \( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
        \) -exec rm -rf '{}' + &&
    rm -rf /usr/src/python3 ~/.cache

cd /usr/local/bin &&
    ln -s easy_install-3.5 easy_install &&
    ln -s idle3 idle &&
    ln -s pydoc3 pydoc &&
    ln -s python3 python &&
    ln -s python3-config python-config

for i in "$@"; do
    eval $i
done
