�
`C:\Users\kavin.senthil\Desktop\Core Assess ment Files\ADO Dotnet Assessment\11992-ADO.net\Add.cs
	namespace 	
Output
 
{ 
partial 
class 

:  !
CRUD" &
{ 
public		 
override		 
void		 
AddData		 $
(		$ %
MySqlConnection		% 4
conn		5 9
)		9 :
{

 	
Console 
. 
	WriteLine 
( 
$str =
)= >
;> ?
int 
id 
= 
Convert 
. 
ToInt32 $
($ %
Console% ,
., -
ReadLine- 5
(5 6
)6 7
)7 8
;8 9
Console
.
	WriteLine
(
$str
)
;
string 
? 
name 
= 
Console "
." #
ReadLine# +
(+ ,
), -
;- .
Console 
. 
	WriteLine 
( 
$str C
)C D
;D E
int 
quantity 
= 
Convert "
." #
ToInt32# *
(* +
Console+ 2
.2 3
ReadLine3 ;
(; <
)< =
)= >
;> ?
Console 
. 
	WriteLine 
( 
$str @
)@ A
;A B
int 
price 
= 
Convert 
.  
ToInt32  '
(' (
Console( /
./ 0
ReadLine0 8
(8 9
)9 :
): ;
;; <
try 
{ 
conn 
. 
Open 
( 
) 
; 
string 
insertQuery "
=# $
$"% '
$str' F
{F G
idG I
}I J
$strJ X
{X Y
nameY ]
}] ^
$str^ p
{p q
quantityq y
}y z
$str	z �
{
� �
id
� �
}
� �
$str
� �
{
� �
name
� �
}
� �
$str
� �
{
� �
quantity
� �
}
� �
$str
� �
{
� �
price
� �
}
� �
$str
� �
"
� �
;
� �
MySqlCommand 
cmd  
=! "
new# &
MySqlCommand' 3
(3 4
insertQuery4 ?
,? @
connA E
)E F
;F G
cmd 
. 
ExecuteNonQuery #
(# $
)$ %
;% &
conn 
. 
Close 
( 
) 
; 
} 
catch 
( 
	Exception 
ex 
)  
{ 
Console 
. 
	WriteLine !
(! "
ex" $
.$ %
Message% ,
), -
;- .
}   
Console!! 
.!! 
	WriteLine!! 
(!! 
$str!! A
)!!A B
;!!B C
}"" 	
}## 
}%% �
aC:\Users\kavin.senthil\Desktop\Core Assess ment Files\ADO Dotnet Assessment\11992-ADO.net\CRUD.cs
	namespace 	

Management
 
{ 
abstract 
class
CRUD 
{ 
public 
abstract 
void 
AddData $
($ %
MySqlConnection% 4
conn5 9
)9 :
;: ;
public

 
abstract

 
void

 
ReadData

 %
(

% &
MySqlConnection

& 5
conn

6 :
)

: ;
;

; <
public 
abstract 
void 

UpdateData '
(' (
MySqlConnection( 7
conn8 <
)< =
;= >
public 
abstract 
void 

DeleteData '
(' (
MySqlConnection( 7
conn8 <
)< =
;= >
} 
} �
cC:\Users\kavin.senthil\Desktop\Core Assess ment Files\ADO Dotnet Assessment\11992-ADO.net\Delete.cs
	namespace 	
Output
 
{ 
partial 
class 

{		 
public

 

override

 
void

 

DeleteData

 #
(

# $
MySqlConnection

$ 3
conn

4 8
)

8 9
{ 
Console 
. 
Write 
( 
$str 1
)1 2
;2 3
int
id
=
Convert
.
ToInt32
(
Console
.
ReadLine
(
)
)
;
try 
{ 	
conn 
. 
Open 
( 
) 
; 
string 
insertQuery 
=  
$"! #
$str# I
{I J
idJ L
}L M
$strM N
"N O
;O P
MySqlCommand 
cmd 
= 
new "
MySqlCommand# /
(/ 0
insertQuery0 ;
,; <
conn= A
)A B
;B C
cmd 
. 
ExecuteNonQuery 
(  
)  !
;! "
conn 
. 
Close 
( 
) 
; 
} 	
catch 
( 
	Exception 
ex 
) 
{ 	
Console 
. 
	WriteLine 
( 
ex  
.  !
Message! (
)( )
;) *
} 	
Console 
. 
	WriteLine 
( 
$str 7
)7 8
;8 9
} 
} 
} �
dC:\Users\kavin.senthil\Desktop\Core Assess ment Files\ADO Dotnet Assessment\11992-ADO.net\Program.cs
	namespace 	
Output
 
{ 
class 	
Program
 
{ 
static		 
void		 
Main		 
(		 
string		 
[		  
]		  !
args		" &
)		& '
{

 	
string 
Str 
= 
$str ^
;^ _
MySqlConnection
conn
=
new
MySqlConnection
(
Str
)
;

productDatabase )
=* +
new, /

(= >
)> ?
;? @
bool 
exitLoop 
= 
false !
;! "
while 
( 
! 
exitLoop 
) 
{ 
Console 
. 
	WriteLine !
(! "
$str" =
)= >
;> ?
Console 
. 
	WriteLine !
(! "
$str" 5
)5 6
;6 7
Console 
. 
	WriteLine !
(! "
$str" 1
)1 2
;2 3
Console 
. 
	WriteLine !
(! "
$str" 2
)2 3
;3 4
Console 
. 
	WriteLine !
(! "
$str" 4
)4 5
;5 6
Console 
. 
	WriteLine !
(! "
$str" 4
)4 5
;5 6
Console 
. 
	WriteLine !
(! "
$str" *
)* +
;+ ,
Console 
. 
	WriteLine !
(! "
$str" 7
)7 8
;8 9
string 
? 
choice 
=  
Console! (
.( )
ReadLine) 1
(1 2
)2 3
;3 4
switch   
(   
choice   
)   
{!! 
case"" 
$str"" 
:"" 
productDatabase## '
.##' (
AddData##( /
(##/ 0
conn##0 4
)##4 5
;##5 6
break$$ 
;$$ 
case&& 
$str&& 
:&& 
productDatabase'' '
.''' (
ReadData''( 0
(''0 1
conn''1 5
)''5 6
;''6 7
break(( 
;(( 
case** 
$str** 
:** 
productDatabase++ '
.++' (

UpdateData++( 2
(++2 3
conn++3 7
)++7 8
;++8 9
break,, 
;,, 
case.. 
$str.. 
:.. 
productDatabase// '
.//' (

DeleteData//( 2
(//2 3
conn//3 7
)//7 8
;//8 9
break00 
;00 
case22 
$str22 
:22 
exitLoop33  
=33! "
true33# '
;33' (
break44 
;44 
default66 
:66 
Console77 
.77  
	WriteLine77  )
(77) *
$str77* O
)77O P
;77P Q
break88 
;88 
}99 
}:: 
};; 	
}<< 
}== �
aC:\Users\kavin.senthil\Desktop\Core Assess ment Files\ADO Dotnet Assessment\11992-ADO.net\Read.cs
	namespace 	
Output
 
{ 
partial 
class 

{ 
public		 

override		 
void		 
ReadData		 !
(		! "
MySqlConnection		" 1
conn		2 6
)		6 7
{

 
try 
{ 	
conn
.
Open
(
)
;
string 
sql 
= 
$str 0
;0 1
MySqlCommand 
cmd 
= 
new "
MySqlCommand# /
(/ 0
sql0 3
,3 4
conn5 9
)9 :
;: ;
MySqlDataReader 
rdr 
=  !
cmd" %
.% &

(3 4
)4 5
;5 6
while 
( 
rdr 
. 
Read 
( 
) 
) 
{ 
Console 
. 
	WriteLine !
(! "
rdr" %
[% &
$num& '
]' (
+) *
$str+ /
+0 1
rdr2 5
[5 6
$num6 7
]7 8
+9 :
$str; ?
+@ A
rdrB E
[E F
$numF G
]G H
+I J
$strK O
+P Q
rdrR U
[U V
$numV W
]W X
)X Y
;Y Z
} 
rdr 
. 
Close 
( 
) 
; 
conn 
. 
Close 
( 
) 
; 
} 	
catch 
( 
	Exception 
ex 
) 
{ 	
Console 
. 
	WriteLine 
( 
ex  
.  !
Message! (
)( )
;) *
} 	
Console!! 
.!! 
	WriteLine!! 
(!! 
$str!! 6
)!!6 7
;!!7 8
}"" 
}## 
}%% �+
cC:\Users\kavin.senthil\Desktop\Core Assess ment Files\ADO Dotnet Assessment\11992-ADO.net\Update.cs
	namespace 	
Output
 
{ 
partial 
class 

{ 
public 
override 
void 

UpdateData '
(' (
MySqlConnection( 7
conn8 <
)< =
{ 	
try		 
{

 
Console 
. 
	WriteLine !
(! "
$str" B
)B C
;C D
Console 
. 
	WriteLine !
(! "
$str" ?
)? @
;@ A
Console
.
	WriteLine
(
$str
)
;
Console 
. 
	WriteLine !
(! "
$str" 3
)3 4
;4 5
Console 
. 
	WriteLine !
(! "
$str" 7
)7 8
;8 9
Console 
. 
	WriteLine !
(! "
$str" 4
)4 5
;5 6
Console 
. 
Write 
( 
$str 3
)3 4
;4 5
string 
? 
updateChoice $
=% &
Console' .
.. /
ReadLine/ 7
(7 8
)8 9
;9 :
string 
? 

updateData "
=# $
null% )
;) *
switch 
( 
updateChoice $
)$ %
{ 
case 
$str 
: 

updateData "
=# $
$str% 1
;1 2
Console 
.  
Write  %
(% &
$str& F
)F G
;G H
break 
; 
case 
$str 
: 

updateData "
=# $
$str% 3
;3 4
Console 
.  
Write  %
(% &
$str& H
)H I
;I J
break   
;   
case"" 
$str"" 
:"" 

updateData## "
=### $
$str##% 7
;##7 8
Console$$ 
.$$  
Write$$  %
($$% &
$str$$& L
)$$L M
;$$M N
break%% 
;%% 
case'' 
$str'' 
:'' 

updateData(( "
=((# $
$str((% 4
;((4 5
Console)) 
.))  
Write))  %
())% &
$str))& I
)))I J
;))J K
break** 
;** 
default,, 
:,, 
Console-- 
.--  
	WriteLine--  )
(--) *
$str--* M
)--M N
;--N O
return.. 
;.. 
}// 
string11 
?11 
updateValue11 #
=11$ %
Console11& -
.11- .
ReadLine11. 6
(116 7
)117 8
;118 9
Console22 
.22 
Write22 
(22 
$str22 .
)22. /
;22/ 0
int33 
id33 
=33 
Convert33  
.33  !
ToInt3233! (
(33( )
Console33) 0
.330 1
ReadLine331 9
(339 :
)33: ;
)33; <
;33< =
conn55 
.55 
Open55 
(55 
)55 
;55 
string66 
updateQuery66 "
=66# $
$"66% '
$str66' :
{66: ;

updateData66; E
}66E F
$str66F h
"66h i
;66i j
using88 
(88 
MySqlCommand88 #
cmd88$ '
=88( )
new88* -
MySqlCommand88. :
(88: ;
updateQuery88; F
,88F G
conn88H L
)88L M
)88M N
{99 
cmd:: 
.:: 

Parameters:: "
.::" #
AddWithValue::# /
(::/ 0
$str::0 >
,::> ?
updateValue::@ K
)::K L
;::L M
cmd;; 
.;; 

Parameters;; "
.;;" #
AddWithValue;;# /
(;;/ 0
$str;;0 5
,;;5 6
id;;7 9
);;9 :
;;;: ;
int== 
rowsAffected== $
===% &
cmd==' *
.==* +
ExecuteNonQuery==+ :
(==: ;
)==; <
;==< =
if?? 
(?? 
rowsAffected?? $
>??% &
$num??' (
)??( )
{@@ 
ConsoleAA 
.AA  
	WriteLineAA  )
(AA) *
$strAA* G
)AAG H
;AAH I
}BB 
elseCC 
{DD 
ConsoleEE 
.EE  
	WriteLineEE  )
(EE) *
$strEE* L
)EEL M
;EEM N
}FF 
}GG 
}HH 
catchII 
(II 
	ExceptionII 
exII 
)II  
{JJ 
ConsoleKK 
.KK 
	WriteLineKK !
(KK! "
$"KK" $
$strKK$ +
{KK+ ,
exKK, .
.KK. /
MessageKK/ 6
}KK6 7
"KK7 8
)KK8 9
;KK9 :
}LL 
finallyMM 
{NN 
connOO 
.OO 
CloseOO 
(OO 
)OO 
;OO 
}PP 
}QQ 	
}RR 
}SS 