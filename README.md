# ALSA UCM file for Portabook

KINGJIMのポータブック XMC10 で、linux 上で pulseaudio を使って音を
鳴らすための設定ファイルです。ポータブックで動かす Linux カーネル
は、音源 IC / codec IC を認識させるパッチを当てる必要があります。

ちなみに、私が作った Ubuntu 16.04 用のカーネルパッチは、
https://github.com/amuramatsu/debian-kernel-mod/tree/portabook
にあります。

今のところ、
  * スピーカ、ヘッドフォンから再生ができます。
  * 内蔵マイク、ヘッドセットからの録音は *できません* 。
  * ヘッドフォンジャックの状態は無視されます。
    - つまり、ヘッドフォンとスピーカは手動で変更する必要があります。

録音ができないのは、単に mixer 設定がわからないためです。
