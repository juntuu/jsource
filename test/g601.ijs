1:@:(dbr bind Debug)@:(9!:19)2^_44[(echo^:ECHOFILENAME) './g601.ijs'
NB. ".y -----------------------------------------------------------------

p  -: (".'p=:20?20')
'' -: ".''
'' -: ".'        '

'' -: ".'+'
'' -: ".'/'
'' -: ".'&'

x -: ". ": x=:_5e5+?30$1e6

(>x) -: ". ":&>x=: ?&.>7 8 9$&.>1e6
(>x) -: ". ":&>x=: ?&.>8 8 8$&.>1e6
x    -: ". ":,.x=: ?8$1e6

x=:_5e7+?20$1e8
y=:_5e7+?20$1e8
(x+y) -: ".(":,.x),.'+',.":,.y
(x*y) -: ".(":,.x),.'*',.":,.y
(x-y) -: ".(":,.x),.'-',.":,.y
(x%y) -: ".(":,.x),.'%',.":,.y

x=:_5e7+?20$1e8
n=:?20$100
(x+&>i.&.>n) -: ".(":,.x),.'+i.',"1 ":,.n

x -: ". ":x=: j./_5e5+?2 5 9$1e6
x -: ". , (9{a.),.":,.x=: ?100$10000

a=: 123456
b=: 123456
4!:55 ;:'a b'
x=: 123456
y=: 123456

x=: 7!:0 ''
a=: |.i.1000
b=: <".'a'
b -: <|.i.1000
a=: 'kakistocracy'
b -: <|.i.1000
a -: 'kakistocracy'
4!:55 ;:'a b'
y=: 7!:0 ''
x -: y

a =. 5 6 7
a -: ".@'a' ''
aa =. ;:'the time is now'
aa -: ".@'aa' ''
f =. (".@'a'+".@'a'+".@'a'+".@'a'+".@'a'+".@'a'+".@'a'+".@'a'+".@'a'+".@'a'+".@'a'+".@'a')
p =. (".@']a'+".@']a'+".@']a'+".@']a'+".@']a'+".@']a'+".@']a'+".@']a'+".@']a'+".@']a'+".@']a'+".@']a')
(20 (6!:2) 'p"0 i. 10000') > 1.5 * 20 (6!:2) 'f"0 i. 10000'  NB. Verify special code for name

16 = (+: :: ($:@:".)) '8'  NB. Verify $: reset after ".
16 = (+: :: ($:@:".)) '4+4'

'domain error'      -: ". etx 0 1 0
'domain error'      -: ". etx 2 3 4
'domain error'      -: ". etx 2.3 4
'domain error'      -: ". etx 2 3j4 
'domain error'      -: ". etx 'abc';'3'
'domain error'      -: ". etx '3+<3'

'syntax error'      -: ". etx '=:'
'syntax error'      -: ". etx '3 (4)'
'syntax error'      -: ". etx ')'
'syntax error'      -: ". etx '('

'spelling error'    -: ". etx 128{a.
'spelling error'    -: ". etx 195{a.
'spelling error'    -: ". etx 255{a.
'spelling error'    -: ". etx '1 2 3',(  0{a.),'5 6 7'
'spelling error'    -: ". etx '1 2 3',( 10{a.),'5 6 7'
'spelling error'    -: ". etx '1 2 3',( 13{a.),'5 6 7'
'spelling error'    -: ". etx '1 2 3',( 27{a.),'5 6 7'
'spelling error'    -: ". etx '1 2 3',(127{a.),'5 6 7'
'spelling error'    -: ". etx '1 2 3',(130{a.),'5 6 7'
'spelling error'    -: ". etx '1 2 3',(255{a.),'5 6 7'

'ill-formed number' -: ". etx '3ee4'
'ill-formed number' -: ". etx '3jj4'


NB. "."0@": y -----------------------------------------------------------

f=. 3 : '"."0 ": y'
(f -: "."0@":) !30x
(f -: "."0@":) ?10^20x
(f -: "."0@":) 10 ?@$ 1000


NB. x".y ----------------------------------------------------------------

1234    -: _999 ". '1234'
1 _2 3  -: _999 ". '1 -2 3'
1 _2 3  -: _999 ". '1 _2 3'
1 2e_8 _3e_8 -: _999 ". '1 2e-8 -3e-8'

3j4               -: _999 ". '3j4'
1 _2 3j4          -: _999 ". '1 -2 3j4'
1 _2 3j4          -: _999 ". '1 _2 3j4'
1 _2 _999         -: _999 ". '1 _2 j43'
1 2e_8 _3e_8 3j4  -: _999 ". '1 2e-8 -3e-8 3j4'
1 2e_8 _3j_4      -: _999 ". '1 2e-8 -3j-4'

_999              -: _999 ". '+'
_999              -: _999 ". '++'
2                 -: _999 ". '+2'
2000 2000 0.002   -: _999 ". '2e+3 2e3 2e-3'
_999 2 2.3 3      -: _999 ". '+ 2 +2.3 3'

_ __              -: _999 ". '- --'
8 _999            -: _999 ". '8 1-4'
8 _999 9 _ 1 __ 2 -: _999 ". '8 __4 9 _ 1 __ 2'
8 _999 9 _ 1 __ 2 -: _999 ". '8 _4_     9 _ 1 __ 2'
8 _999 9 _ 1 __ 2 -: _999 ". '8 _47_    9 _ 1 __ 2'
8 _999 9 _ 1 __ 2 -: _999 ". '8 _478_   9 _ 1 __ 2'
8 _999 9 _ 1 __ 2 -: _999 ". '8 _4781_  9 _ 1 __ 2'
8 _999 9 _ 1 __ 2 -: _999 ". '8 _47812_ 9 _ 1 __ 2'
8 _999            -: _999 ". '8',TAB,'1-4'
8 _999 9 _ 1 __ 2 -: _999 ". '8 __4 9 _',TAB,'1 __ 2'
8 _999 9 _ 1 __ 2 -: _999 ". '8 _4_    ',TAB,'9 _ 1 __ 2'
8 _999 9 _ 1 __ 2 -: _999 ". '8 _47_    9',TAB,'_ 1 __ 2',TAB
8 _999 9 _ 1 __ 2 -: _999 ". '8 _478_   9',TAB,'_ 1 __ 2'
8 _999 9 _ 1 __ 2 -: _999 ". '',TAB,'8 _4781_  9 _ 1 __ 2',TAB
8 _999 9 _ 1 __ 2 -: _999 ". '8',TAB,'_47812_ 9 _ 1 __ 2'

0.34              -: _999 ". '0.34'
0.34              -: _999 ". '.34'
3j4 0.34          -: _999 ". '3j4 0.34'
3j4 0.34          -: _999 ". '3j4 .34'

_999 0 _999 3.4   -: _999 ". 'bad 0 huh? 3.4'

1234       8.9    -: _999 ". '1,234 8.9'
1234567    8.9    -: _999 ". '1,234,567 8.9'
1234567890 8.9    -: _999 ". '1,234,567,890 8.9'
_999 2            -: _999 ". ', 2'
2.4 _999          -: _999 ". '2.4 ,'
_999 0 _999 3.4   -: _999 ". ', 0 ,,,, 3.4'
_9j9 0 _9j9 3.4   -: _9j9 ". ', 0 ,,,, 3.4'
_999 _999 1234 123-: _999 ". ',123 123, 1,,,,234 123,.'
_9j9 _9j9 1234 123.4-: _9j9 ". ',123 123, 1,,,,234 1,23,.4'
12100 -: 0 ". '12,100x'
64 = 3!:0 ]  0 ". '12,100x'

x -: _999 ". ": x=:?3 4$10000
x -: _999 ". ": x=:_1e4+?3 4$2e4
x -: _999 ". ": x=:j./?2 3 4$10000
x -: _999 ". ": x=:j./_1e4+?2 3 4$2e4

(1   _999,:2 3) -: _999 ". '1  ',:'2 3'
(111 _999,:2 3) -: _999 ". '111',:'2 3'
(3 2$111 _999 _999 _999 2 3) -: _999 ". '111',' ',:'2 3'

x -: _999 ". ":     ,.x=:  _1e9+?20$2e9
x -: _999 ". ":!.16 ,.x=:o._1e9+?20$2e9
x -: _999 ". ":!.16 ,.x=:j./  _1e9+?2 20$2e9

(1   _999,:2 3) -: _999. ". '1  ',:'2 3'
(111 _999,:2 3) -: _999. ". '111',:'2 3'
(3 2$111 _999 _999 _999 2 3) -: _999. ". '111',' ',:'2 3'

x -: _999. ". ":     ,.x=:  _1e9+?20$2e9
x -: _999. ". ":!.16 ,.x=:o._1e9+?20$2e9
x -: _999. ". ":!.16 ,.x=:j./  _1e9+?2 20$2e9

eq=: -:&(3!:1)
1 2 _  3.4 eq _999 ". '1 2 _  3.4'
1 2 _  3j4 eq _999 ". '1 2 _  3j4'
1 2 __ 3.4 eq _999 ". '1 2 __ 3.4'
1 2 __ 3j4 eq _999 ". '1 2 __ 3j4'
1 2 _. 3.4 eq _999 ". '1 2 _. 3.4'
1 2 _. 3j4 eq _999 ". '1 2 _. 3j4'
1 2 _  3.4 eq _999. ". '1 2 _  3.4'
1 2 _  3j4 eq _999. ". '1 2 _  3j4'
1 2 __ 3.4 eq _999. ". '1 2 __ 3.4'
1 2 __ 3j4 eq _999. ". '1 2 __ 3j4'
1 2 _. 3.4 eq _999. ". '1 2 _. 3.4'
1 2 _. 3j4 eq _999. ". '1 2 _. 3j4'

(i.0)         -: _999 ". i.0
(i.0)         -: _9j9 ". i.0
(    2e9 0$0) -: _999 ".     2e9 0$''
(    2e9 0$0) -: _9j9 ".     2e9 0$''
(3   1e9 0$0) -: _999 ". 3   1e9 0$''
(3   1e9 0$0) -: _9j9 ". 3   1e9 0$''
(1e9 1e9 0$0) -: _999 ". 1e9 1e9 0$''
(1e9 1e9 0$0) -: _9j9 ". 1e9 1e9 0$''

(IF64 { 8 4) -: type _3.5 ". '1 0 1 0'  NB. on 32-bit, no demotion from FL
1 -: type 0 ". '1 0 1 0'
4 -: type 00 ". '1 0 1 0'
16 -: type _3j5 ". '1 0 1 0'
(IF64 { 8 4) -: type _3.5 ". '1 0 1 9' NB. on 32-bit, no demotion from FL
4 -: type 0 ". '1 0 1 9'
4 -: type 00 ". '1 0 1 9'
16 -: type _3j5 ". '1 0 1 9'
8 -: type _3.5 ". '1 0 1.9'
16 -: type _3j5 ". '1 0 1.9'

8 -: type _3.5 ". '1 0 1e4 9'  NB. does not demote
4 -: type 0 ". '1 0 1e4 9'
4 -: type 00 ". '1 0 1e4 9'
16 -: type _3j5 ". '1 0 1e4 9'



1 -: type 0 ". '1 0 1j0'
4 -: type 00 ". '1 0 1j0'
8 -: type 0. ". '1 0 1j0'
16 -: type _3j5 ". '1 0 1j0'
4 -: type 0 ". '1 0 4j0'
4 -: type 00 ". '1 0 4j0'
8 -: type 0. ". '1 0 4j0'
16 -: type _3j5 ". '1 0 4j0'
8 -: type _3.5 ". '1 0.1j0'
16 -: type _3j5 ". '1 0.1j0'

(imax - i. 4) -: 0 ". ": imax - i. 4
(imax - i. 4) -: 00 ". ": imax - i. 4
(imax - i. 4) -: 0. ". ": imax - i. 4
(imin + i. 4) -: 0 ". ": imin + i. 4
(imin + i. 4) -: 00 ". ": imin + i. 4
(imin + i. 4) -: 0. ". ": imin + i. 4


(    %3 _4)   -: _999 ". '    1r3 _1r4'
(3j4,%3 _4)   -: _999 ". '3j4 1r3 _1r4'

((^1 2),_999) -: _999 ". '1x1 1x2 abc'
((^1 2),_9j9) -: _9j9 ". '1x1 1x2 abc'

1p1 1p2 _999  -: _999 ". '1p1 1p2 abc'
1p1 1p2 _9j9  -: _9j9 ". '1p1 1p2 abc'

2b111 5b312 _999  -: _999 ". '2b111 5b312 abc'
2b111 5b312 _9j9  -: _9j9 ". '2b111 5b312 abc'

0j4 _5 0 -: 0 ". '4ad90 5ar3.14159265358979 abc'

(1 2 3   ,:   4  5 99) -: 99 ". '1 2 3',: '4 5'
(1 2 3   ,:~  4  5 99) -: 99 ". '1 2 3',:~'4 5'
(1 2 3   ,:  99 99 99) -: 99 ". '1 2 3',:  ' '
(1 2 3   ,:~ 99 99 99) -: 99 ". '1 2 3',:~ ' '

(1j2 3 4 ,:   4  5 99) -: 99 ". '1j2 3 4',:  '4 5'
(1j2 3 4 ,:~  4  5 99) -: 99 ". '1j2 3 4',:~ '4 5'
(1j2 3 4 ,:  99 99 99) -: 99 ". '1j2 3 4',:  ' '
(1j2 3 4 ,:~ 99 99 99) -: 99 ". '1j2 3 4',:~ ' '

0.75 -: 1j2 ". '3r4'
1j2  -: 1j2 ". '34x'
1j2  -: 1j2 ". 'steer'
1j2  -: 1j2 ". 'jinx'

3 : 0''
if. -.IF64 do. 1 return. end.

NB. possible duplicates from earlier in this script
'9223372036854775807' -: ": 0 ". '9223372036854775807'
'9223372036854775805' -: ": 1 ". '9223372036854775805'
'9223372036854775800' -: ": 4 ". '9223372036854775800'
'9223372036854775749' -: ": 1 ". '9223372036854775749'
'9223372036854775807' -: ": 9223372036854775807
'9223372036854775805' -: ": 9223372036854775805
'9223372036854775800' -: ": 9223372036854775800
'9223372036854775749' -: ": 9223372036854775749
'_9223372036854775808' -: ": _9223372036854775808
'_9223372036854775807' -: ": _9223372036854775807
'_9223372036854775805' -: ": _9223372036854775805
'_9223372036854775800' -: ": _9223372036854775800
'_9223372036854775749' -: ": _9223372036854775749
'_9223372036854775808' -: ": _09223372036854775808
'_9223372036854775807' -: ": _009223372036854775807
'_9223372036854775805' -: ": _0009223372036854775805
'_9223372036854775800' -: ": _00009223372036854775800
'_9223372036854775749' -: ": _000009223372036854775749
NB. end of dups

'9223372036854775807' -: ": 0 ". '9223372036854775807'
'9223372036854775805' -: ": 1 ". '9223372036854775805'
'9223372036854775800' -: ": 4 ". '9223372036854775800'
'0 9223372036854775807' -: ": 1 ". '0 9223372036854775807'
'_9223372036854775808' -: ": 0 ". '-9223372036854775808'
'_9223372036854775805' -: ": 0 ". '-9223372036854775805'
'_9223372036854775800' -: ": 0 ". '-9223372036854775800'
'_9223372036854775747' -: ": 0 ". '-9223372036854775747'
'0 _9223372036854775808' -: ": 0 ". '0 -9223372036854775808'
'0 9223372036854775807 0' -: ": 0 ". '0 9223372036854775807 aa'
'0 9223372036854775807 0 1234' -: ": 0 ". '0 9223372036854775807 aa 1234'
'0 9223372036854775807 0 1234' -: ": 0 ". '0 9223372036854775807 aa 1234.'
'0 9223372036854775807 0 1234' -: ": 0 ". '0 9223372036854775807 aa 1234.000'
'0 9223372036854775807 0 0' -: ": 0 ". '0 9223372036854775807 aa 1234.000D'
'0 9.22337e18 0 0 1234.1' -: ": 0 ". '0 9223372036854775807 aa 1234.000D 1234.1'
'0 9.22337e18 0 0 1234.1 9.22337e18' -: ": 0 ". '0 9223372036854775807 aa 1234.000D 1234.1 9223372036854775820'
'0 9223372036854775807 0 3456 1234 0 4321' -: ": 0 ". '0 922,337,203,685,477,580,7 aa 3456.0,00 1,,234 ,1234 4321'

4 -: type 0 ". '9223372036854775807'
4 -: type 0 ". '9223372036854775808'  NB. because the float is converted back to int
8 -: type 0 ". '9223372036854776900'  NB. finally gets past int range
4 -: type 0 ". '-9223372036854775807'
4 -: type 0 ". '-9223372036854775809'  NB. because the float is converted back to int
4 -: type 100 ". '9223372036854775807'
4 -: type 0.5 ". '9223372036854775807'  NB. because the float is converted back to int
4 -: type 0 ". '0 9223372036854775807 aa'
4 -: type 0 ". '0 9223372036854775807 aa 1234'
4 -: type 0 ". '0 9223372036854775807 aa 1234.'
4 -: type 0 ". '0 9223372036854775807 aa 1234.000'
4 -: type 0 ". '0 9223372036854775807 aa 1234.000D'
8 -: type 0 ". '0 9223372036854775807 aa 1234.000D 1234.1'
8 -: type 0 ". '0 9223372036854775807 aa 1234.000D 1234.1 9223372036854775807'
4 -: type 0 ". '0 922,337,203,685,477,580,7 aa 1234.0,00 1,,234 ,1234 4321'
)

((i. 0 0);,.3 4 0 5 6) -:  __&".@>&.> '';'34 56'

'domain error' -: '9'   ". etx '1 2 3 4'
'domain error' -: (<5)  ". etx '1 2 3 4'
'domain error' -: _5    ". etx 1 0 1 0
'domain error' -: _5    ". etx i.5
'domain error' -: _5    ". etx 3.4 5.6
'domain error' -: _5    ". etx 3j4 5.6
'domain error' -: _5    ". etx 'abc';'ef'

'rank error'   -: (,_5) ". etx '1 2 3'
'rank error'   -: 3 4   ". etx '1 2 3'


4!:55 ;:'a aa b eq f n p x y'
4!:55 ;: 'p'



