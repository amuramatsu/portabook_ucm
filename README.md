# ALSA UCM file for Portabook

KINGJIMのポータブック XMC10 で、linux 上で pulseaudio を使って音を
鳴らすための設定ファイルです。ポータブックで動かす Linux カーネル
は、音源 IC / codec IC を認識させるパッチを当てる必要があります。

ちなみに、私が作った Ubuntu 16.04 用のカーネルパッチは、

* https://github.com/amuramatsu/debian-kernel-mod/tree/portabook (kernel 4.4用）
* https://github.com/amuramatsu/debian-kernel-mod/tree/portabook-kernel-4.8 (kernel 4.8用）

にあります。

今のところ、

* スピーカ、ヘッドフォンから再生ができます。

* 内蔵マイク、ヘッドセットから録音できます 。（kernel 4.8用のみ動作確認済み、4.4用は未確認）

* ヘッドフォンジャックの状態は無視されます。

  - つまり、ヘッドフォンとスピーカは手動で変更する必要があります。
  
ディレクトリの内容は、以下の通りです。

* cherrytrailcraudio

  Kernel 4.8 用

* cherrytrailcraudio44

  Kernel 4.4 用（いくつかの mute / volume 設定が反転しています）
