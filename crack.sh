#!/bin/sh
skip=44

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -dt`
else
  gztmpdir=/tmp/gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `echo X | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  echo >&2 "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
�`q�\crack.sh �U]O�P�^���Q�i�pW�Yƅ�r��r��Ӗ��!ɲ�����Ɉ��-~0e��ɜ_��c֖r�_�id���v��r������xN�]$��(�����;5g����Y>6��wY}�L/�^V̓-z�+����e%���ITV.+��I���L`t������W�|���2�a���~���e�rB�2>V�?JHL���	�h���p|R���a"��*R�!�8	a�ǈSF�Ge�F������E�_.��#�@;�Om���2/���E5W�K��͜v���JՍCsw���68��Y>�U�Y���g�P�Ծej��v���5��c=���ĤW �;��v���
�״��c��?�,o���}~��V��Ȧ������Y_>җ�zi�7�/��h��֞A�~d-�`��d�͝���kn.V����=y��j��qyG:�x��zi����؝w?�nmŮ�}��8�Њ:9����N��ě��虏�ʪ�|�2���0�0b���3������"��&� ����� 1����ݏ�X5
,ݡ���"6D���+��=8�z,c
aIh�?�p{,��X�_﵎��cK�`0(H	�X��JaӂW8��/v�10�ܹ��EN�P�#��Ro�n�8�$�0G�
�(��1��	�i6JD|+E���Yx̩*䦸i�l4l���"`�:A��:"�CX�A�V6^��+��L/-�+MI��T����
vh�x,Lk5D��}�#�����1����rٚ��%c����"��^&"0?���HD  