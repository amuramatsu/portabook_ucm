# ALSA UCM file for Portabook

KINGJIMのポータブック XMC10 で、linux 上で pulseaudio を使って音を
鳴らすための設定ファイルです。ポータブックで動かす Linux カーネル
は、音源 IC / codec IC を認識させるパッチを当てる必要があります。

ちなみに、私が作った Ubuntu 16.04 用のカーネルパッチは、

* https://github.com/amuramatsu/debian-kernel-mod/tree/portabook (kernel 4.4用）
* https://github.com/amuramatsu/debian-kernel-mod/tree/portabook-kernel-4.8 (kernel 4.8用）

に、Ubuntu 18.04 用は

* https://github.com/amuramatsu/debian-kernel-mod/tree/portabook-ubuntu-kernel-4.15

に、あります。

今のところ、

* スピーカ、ヘッドフォンから再生ができます。

* 内蔵マイク、ヘッドセットから録音できます 。（kernel 4.8用以降で動作確認済み、4.4用は未確認）

* カーネルによっては、ヘッドフォンジャックの状態は無視されます。

  - Ubuntu 18.04 のカーネルではヘッドフォン切り替えがうまく行きます。
  
  - ヘッドフォンを刺しても切り替わらない場合は、ヘッドフォンとスピーカは手動で変更する必要があります。

pulseaudio のバージョンによっては、 `/etc/pulse/default.pa` に
```
# kernel 4.15 or later
load-module module-alsa-card device_id=chtbswrt5672 use_ucm=true

```
もしくは、
```
# kernel 4.14 or earler
load-module module-alsa-card device_id=cherrytrailcrau use_ucm=true
```
と書くと、 pavucontrol などで入出力先の選択ができるようになります。


ディレクトリの内容は、以下の通りです。

* cht-bsw-rt5672

  Kernel 4.15 用（デバイス名が変更されています）

* cherrytrailcraudio

  Kernel 4.8 用

* cherrytrailcraudio44

  Kernel 4.4 用（いくつかの mute / volume 設定が反転しています）
