rime_path=~/.config/fcitx/rime
mkdir -p $rime_path
rm -r $rime_path/*
cp -r /usr/share/rime-data/* $rime_path
cp ./*.yaml $rime_path
# rime 重新部署
