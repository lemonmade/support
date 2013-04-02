FasdUAS 1.101.10   ��   ��    k             l      ��  ��   0*
	SUPPORT.SCPT
	Developed by Chris Sauve of [pxldot](http://pxldot.com).

	# DESCRIPTION
	
	Quick access to a support folder for the project by putting your choice of "@support", "@folder" or "@reference" before the support
	folder path in the project note. The script will automatically detect this and open the support folder in Finder (or PathFinder, if
	installed). If no support folder exists, the script will ask you to select it and will remember your selection.
	
	
	# LICENSE
	
	Use it, change it, enjoy it. Please don't blatently pass off my work as your own. Be cool.
	
	
	# INSTALLATION
	
	-	Copy this script to ~/Library/Scripts/Applications/Omnifocus (you may have to use the
		Go > Go to Folder� menu in your file navigation application of choice as the user library
		folder is hidden on Mac OS X 10.7+. After you select this menu item, type the path above and
		hit enter).
	-	If you prefer, you can have this script be activated by a utility like Keyboard Maestro or FastScripts
	
	
	# VERSION INFORMATION
		
		0.1 (April 2, 2013): Initial release
     � 	 	T 
 	 S U P P O R T . S C P T 
 	 D e v e l o p e d   b y   C h r i s   S a u v e   o f   [ p x l d o t ] ( h t t p : / / p x l d o t . c o m ) . 
 
 	 #   D E S C R I P T I O N 
 	 
 	 Q u i c k   a c c e s s   t o   a   s u p p o r t   f o l d e r   f o r   t h e   p r o j e c t   b y   p u t t i n g   y o u r   c h o i c e   o f   " @ s u p p o r t " ,   " @ f o l d e r "   o r   " @ r e f e r e n c e "   b e f o r e   t h e   s u p p o r t 
 	 f o l d e r   p a t h   i n   t h e   p r o j e c t   n o t e .   T h e   s c r i p t   w i l l   a u t o m a t i c a l l y   d e t e c t   t h i s   a n d   o p e n   t h e   s u p p o r t   f o l d e r   i n   F i n d e r   ( o r   P a t h F i n d e r ,   i f 
 	 i n s t a l l e d ) .   I f   n o   s u p p o r t   f o l d e r   e x i s t s ,   t h e   s c r i p t   w i l l   a s k   y o u   t o   s e l e c t   i t   a n d   w i l l   r e m e m b e r   y o u r   s e l e c t i o n . 
 	 
 	 
 	 #   L I C E N S E 
 	 
 	 U s e   i t ,   c h a n g e   i t ,   e n j o y   i t .   P l e a s e   d o n ' t   b l a t e n t l y   p a s s   o f f   m y   w o r k   a s   y o u r   o w n .   B e   c o o l . 
 	 
 	 
 	 #   I N S T A L L A T I O N 
 	 
 	 - 	 C o p y   t h i s   s c r i p t   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / O m n i f o c u s   ( y o u   m a y   h a v e   t o   u s e   t h e 
 	 	 G o   >   G o   t o   F o l d e r &   m e n u   i n   y o u r   f i l e   n a v i g a t i o n   a p p l i c a t i o n   o f   c h o i c e   a s   t h e   u s e r   l i b r a r y 
 	 	 f o l d e r   i s   h i d d e n   o n   M a c   O S   X   1 0 . 7 + .   A f t e r   y o u   s e l e c t   t h i s   m e n u   i t e m ,   t y p e   t h e   p a t h   a b o v e   a n d 
 	 	 h i t   e n t e r ) . 
 	 - 	 I f   y o u   p r e f e r ,   y o u   c a n   h a v e   t h i s   s c r i p t   b e   a c t i v a t e d   b y   a   u t i l i t y   l i k e   K e y b o a r d   M a e s t r o   o r   F a s t S c r i p t s 
 	 
 	 
 	 #   V E R S I O N   I N F O R M A T I O N 
 	 	 
 	 	 0 . 1   ( A p r i l   2 ,   2 0 1 3 ) :   I n i t i a l   r e l e a s e 
   
  
 l     ��������  ��  ��        j     �� �� 0 folderdelim folderDelim  m        �    @ s u p p o r t      j    �� �� 0 firstrun firstRun  m    ��
�� boovtrue      j    �� �� .0 defaulttofirstproject defaultToFirstProject  m    ��
�� boovtrue      j   	 �� �� 	0 debug    m   	 
��
�� boovfals      l     ��������  ��  ��        l    @ ����  Z     @   ����  F      ! " ! o     ���� 0 firstrun firstRun " H     # # o    ���� 	0 debug     Q    < $ % & $ k    2 ' '  ( ) ( r    * * + * n    $ , - , 4   ! $�� .
�� 
cobj . m   " #����  - l   ! /���� / I   !�� 0 1
�� .gtqpchltns    @   @ ns   0 J     2 2  3 4 3 m     5 5 � 6 6  @ s u p p o r t 4  7 8 7 m     9 9 � : :  @ r e f e r e n c e 8  ;�� ; m     < < � = =  @ f o l d e r��   1 �� >��
�� 
prmp > m     ? ? � @ @ � W h i c h   s y n t a x   w o u l d   y o u   l i k e   t o   d e n o t e   r e f e r e n c e   f o l d e r s   i n   t h e   p r o j e c t   n o t e s ?��  ��  ��   + o      ���� 0 folderdelim folderDelim )  A�� A r   + 2 B C B m   + ,��
�� boovfals C o      ���� 0 firstrun firstRun��   % R      ������
�� .ascrerr ****      � ****��  ��   & L   : <����  ��  ��  ��  ��     D E D l     ��������  ��  ��   E  F G F l  A� H���� H O   A� I J I O   E� K L K k   N� M M  N O N Q   N P Q R P k   Q � S S  T U T r   Q \ V W V n   Q X X Y X 1   V X��
�� 
valL Y n   Q V Z [ Z 2  T V��
�� 
OTst [ 1   Q T��
�� 
FCcn W o      ���� 0 theselection theSelection U  \ ] \ Z  ] z ^ _���� ^ =  ] f ` a ` n   ] d b c b 1   ` d��
�� 
leng c o   ] `���� 0 theselection theSelection a m   d e����   _ r   i v d e d n   i r f g f 1   p r��
�� 
valL g n   i p h i h 2  n p��
�� 
OTst i 1   i n��
�� 
FCSt e o      ���� 0 theselection theSelection��  ��   ]  j k j Z   { � l m���� l l  { � n���� n =  { � o p o l  { � q���� q I  { ��� r��
�� .corecnte****       **** r o   { ~���� 0 theselection theSelection��  ��  ��   p m   � �����  ��  ��   m k   � � s s  t u t I  � ��� v��
�� .sysodisAaleR        TEXT v m   � � w w � x x V P l e a s e   s e l e c t   a t   l e a s t   o n e   p r o j e c t   o r   t a s k .��   u  y�� y L   � �����  ��  ��  ��   k  z { z r   � � | } | J   � �����   } o      ���� 0 theprojects theProjects {  ~�� ~ X   � � �� �  Z   � � � � ��� � F   � � � � � l  � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
pcls � o   � ����� 0 theselection theSelection � m   � ���
�� 
FCpr��  ��   � l  � � ����� � H   � � � � n  � � � � � I   � ��� ����� 0 inlist inList �  � � � o   � ����� 0 theitem theItem �  ��� � o   � ����� 0 theprojects theProjects��  ��   �  f   � ���  ��   � r   � � � � � o   � ����� 0 theitem theItem � l      ����� � n       � � �  ;   � � � o   � ����� 0 theprojects theProjects��  ��   �  � � � H   � � � � n  � � � � � I   � ��� ����� 0 inlist inList �  � � � n   � � � � � 1   � ���
�� 
FCPr � o   � ����� 0 theitem theItem �  ��� � o   � ����� 0 theprojects theProjects��  ��   �  f   � � �  ��� � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
FCPr � o   � ����� 0 theitem theItem��  ��   � l      ����� � n       � � �  ;   � � � o   � ����� 0 theprojects theProjects��  ��  ��  ��  �� 0 theitem theItem � o   � ����� 0 theselection theSelection��   Q R      ������
�� .ascrerr ****      � ****��  ��   R k   � �  � � � I 
�� ���
�� .sysodisAaleR        TEXT � m   � � � � � V P l e a s e   s e l e c t   a t   l e a s t   o n e   p r o j e c t   o r   t a s k .��   �  ��� � L  ����  ��   O  � � � l ��������  ��  ��   �  � � � Z  � � ��� � � F  " � � � l  ����� � ?   � � � n   � � � 1  ��
�� 
leng � o  ���� 0 theprojects theProjects � m  ���� ��  ��   � l   ����� � H    � � o  ���� .0 defaulttofirstproject defaultToFirstProject��  ��   � k  %� � �  � � � r  %1 � � � n %- � � � I  &-�� ����� 0 getnames getNames �  ��� � o  &)���� 0 theprojects theProjects��  ��   �  f  %& � o      �� 0 projectnames projectNames �  � � � r  2G � � � l 2C ��~�} � I 2C�| � �
�| .gtqpchltns    @   @ ns   � o  25�{�{ 0 projectnames projectNames � �z � �
�z 
prmp � m  69 � � � � � � W h i c h   p r o j e c t ( s )   w o u l d   y o u   l i k e   t o   o p e n /   c r e a t e   a   p r o j e c t   f o l d e r   f o r ? � �y ��x
�y 
mlsl � m  <=�w
�w boovtrue�x  �~  �}   � o      �v�v ,0 selectedprojectnames selectedProjectNames �  � � � Z HV � ��u�t � = HM � � � o  HK�s�s ,0 selectedprojectnames selectedProjectNames � m  KL�r
�r boovfals � L  PR�q�q  �u  �t   �  � � � Z  Wq � ��p�o � = W` � � � n  W^ � � � 1  Z^�n
�n 
leng � o  WZ�m�m ,0 selectedprojectnames selectedProjectNames � m  ^_�l�l   � k  cm � �  � � � I cj�k ��j
�k .sysodisAaleR        TEXT � m  cf � � � � � J Y o u   d i d n ' t   s e l e c t   a n y   o f   t h e   f o l d e r s .�j   �  ��i � L  km�h�h  �i  �p  �o   �  ��g � r  r� � � � n r� � � � I  s��f ��e�f 0 
assesslist 
assessList �  � � � o  sv�d�d ,0 selectedprojectnames selectedProjectNames �  � � � o  vy�c�c 0 projectnames projectNames �  ��b � o  y|�a�a 0 theprojects theProjects�b  �e   �  f  rs � o      �`�` $0 selectedprojects selectedProjects�g  ��   � r  �� � � � n  �� � � � 4  ���_ �
�_ 
cobj � m  ���^�^  � o  ���]�] 0 theprojects theProjects � o      �\�\ $0 selectedprojects selectedProjects �  � � � l ���[�Z�Y�[  �Z  �Y   �  �  � r  �� J  ���X�X   o      �W�W 0 thepaths thePaths   X  �K�V Z  �F�U	 l ��
�T�S
 E  �� n  �� 1  ���R
�R 
FCno o  ���Q�Q 0 
theproject 
theProject o  ���P�P 0 folderdelim folderDelim�T  �S   r  �� n �� I  ���O�N�O  0 identifyfolder identifyFolder �M n  �� 1  ���L
�L 
FCno o  ���K�K 0 
theproject 
theProject�M  �N    f  �� l     �J�I n        ;  �� o  ���H�H 0 thepaths thePaths�J  �I  �U  	 k  �F  Q  �� r  �� !  c  ��"#" l ��$�G�F$ I ���E�D%
�E .sysostflalis    ��� null�D  % �C&�B
�C 
prmp& b  ��'(' b  ��)*) b  ��+,+ b  ��-.- m  ��// �00 � S e l e c t   t h e   f o l d e r   t h a t   c o n t a i n s   t h e   r e f e r e n c e   m a t e r i a l   f o r   t h e   p r o j e c t  . 1  ���A
�A 
quot, l ��1�@�?1 n  ��232 1  ���>
�> 
pnam3 o  ���=�= 0 
theproject 
theProject�@  �?  * 1  ���<
�< 
quot( m  ��44 �55  .�B  �G  �F  # m  ���;
�; 
TEXT! o      �:�: 0 chosenfolder chosenFolder R      �9�8�7
�9 .ascrerr ****      � ****�8  �7   L  ���6�6   676 Z  �=89�5:8 = �;<; l �=�4�3= n  �>?> 1  ��2
�2 
FCno? o  ���1�1 0 
theproject 
theProject�4  �3  < m  @@ �AA  9 r  
BCB l 
D�0�/D b  
EFE b  
GHG o  
�.�. 0 folderdelim folderDelimH m  II �JJ   F o  �-�- 0 chosenfolder chosenFolder�0  �/  C l     K�,�+K n      LML 1  �*
�* 
FCnoM o  �)�) 0 
theproject 
theProject�,  �+  �5  : r   =NON l  7P�(�'P b   7QRQ b   3STS b   /UVU b   )WXW l  %Y�&�%Y n   %Z[Z 1  !%�$
�$ 
FCno[ o   !�#�# 0 
theproject 
theProject�&  �%  X o  %(�"
�" 
ret V o  ).�!�! 0 folderdelim folderDelimT m  /2\\ �]]   R o  36� �  0 chosenfolder chosenFolder�(  �'  O l     ^��^ n      _`_ 1  8<�
� 
FCno` o  78�� 0 
theproject 
theProject�  �  7 a�a r  >Fbcb o  >A�� 0 chosenfolder chosenFolderc l     d��d n      efe  ;  DEf o  AD�� 0 thepaths thePaths�  �  �  �V 0 
theproject 
theProject o  ���� $0 selectedprojects selectedProjects ghg l LL����  �  �  h iji Z  L�kl�mk = L]non n  L[pqp 1  W[�
� 
prunq 5  LW�r�
� 
cappr m  PSss �tt 0 c o m . c o c o a t e c h . P a t h F i n d e r
� kfrmID  o m  [\�
� boovtruel O  `|uvu k  n{ww xyx I ns���
� .miscactvnull��� ��� obj �  �  y z�
z I t{�	{�
�	 .aevtodocnull  �    alis{ o  tw�� 0 thepaths thePaths�  �
  v 5  `k�|�
� 
capp| m  dg}} �~~ 0 c o m . c o c o a t e c h . P a t h F i n d e r
� kfrmID  �  m O  �� k  ���� ��� X  ������ I �����
� .aevtodocnull  �    alis� 4  ����
� 
cfol� o  ��� �  0 afolder aFolder�  � 0 afolder aFolder� o  ������ 0 thepaths thePaths� ���� I ��������
�� .miscactvnull��� ��� obj ��  ��  ��  � 5  ������
�� 
capp� m  ���� ���   c o m . a p p l e . f i n d e r
�� kfrmID  j ���� l ����������  ��  ��  ��   L n   E K��� 4  H K���
�� 
FCdw� m   I J���� � 1   E H��
�� 
FCDo J m   A B���                                                                                  OFOC  alis    X  Macintosh HD               �0ڲH+     OOmniFocus.app                                                   ��>2        ����  	                Applications    �1�      �>Lr       O  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   G ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 inlist inList� ��� o      ���� 0 theitem theItem� ���� o      ���� 0 thelist theList��  ��  � k     7�� ��� Z    ������� =    ��� n     ��� 1    ��
�� 
leng� o     ���� 0 thelist theList� m    ����  � L    
�� m    	��
�� boovfals��  ��  � ��� X    4����� Z   /������� =   &��� n    "��� 1     "��
�� 
ID  � o     ���� 0 anitem anItem� n   " %��� 1   # %��
�� 
ID  � o   " #���� 0 theitem theItem� L   ) +�� m   ) *��
�� boovtrue��  ��  �� 0 anitem anItem� o    ���� 0 thelist theList� ���� L   5 7�� m   5 6��
�� boovfals��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 getnames getNames� ���� o      ���� 0 thelist theList��  ��  � O     /��� O    .��� k   
 -�� ��� r   
 ��� J   
 ����  � o      ���� 0 	thereturn 	theReturn� ��� X    *����� r    %��� n    "��� 1     "��
�� 
pnam� o     ���� 0 theitem theItem� l     ������ n      ���  ;   # $� o   " #���� 0 	thereturn 	theReturn��  ��  �� 0 theitem theItem� o    ���� 0 thelist theList� ���� L   + -�� o   + ,���� 0 	thereturn 	theReturn��  � 1    ��
�� 
FCDo� m     ���                                                                                  OFOC  alis    X  Macintosh HD               �0ڲH+     OOmniFocus.app                                                   ��>2        ����  	                Applications    �1�      �>Lr       O  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 
assesslist 
assessList� ��� o      ���� 0 theselection theSelection� ��� o      ���� 0 thelist theList� ���� o      ���� 0 theoriginals theOriginals��  ��  � k     E�� ��� r     ��� J     ����  � o      ���� 0 	thereturn 	theReturn� ��� Y    B�������� Y    =�������� Z    8������� =   (��� l   #������ n    #��� 4     #���
�� 
cobj� o   ! "���� 0 j  � o     ���� 0 theselection theSelection��  ��  � l  # '������ n   # '��� 4   $ '���
�� 
cobj� o   % &���� 0 i  � o   # $���� 0 thelist theList��  ��  � k   + 4�� ��� r   + 2��� n   + /��� 4   , /���
�� 
cobj� o   - .���� 0 i  � o   + ,���� 0 theoriginals theOriginals� l      ����  n        ;   0 1 o   / 0���� 0 	thereturn 	theReturn��  ��  � ��  S   3 4��  ��  ��  �� 0 i  � m    ���� � l   ���� n     1    ��
�� 
leng o    ���� 0 thelist theList��  ��  ��  �� 0 j  � m    	���� � l  	 ���� n   	 	 1   
 ��
�� 
leng	 o   	 
���� 0 theselection theSelection��  ��  ��  � 
��
 L   C E o   C D���� 0 	thereturn 	theReturn��  �  l     ��������  ��  ��    i     I      ������  0 identifyfolder identifyFolder �� o      ���� 0 thenote theNote��  ��   k     S  r      n      2    ��
�� 
cpar o     ���� 0 thenote theNote o      ���� 	0 paras    X    .�� Z    ) ���� C    !"! o    ���� 0 para  " o    ���� 0 folderdelim folderDelim  k     %## $%$ r     #&'& o     !���� 0 para  ' o      ���� 0 thetext theText% (��(  S   $ %��  ��  ��  �� 0 para   o   	 
���� 	0 paras   )*) r   / A+,+ J   / =-- ./. b   / 6010 o   / 4���� 0 folderdelim folderDelim1 m   4 522 �33   / 4��4 o   6 ;���� 0 folderdelim folderDelim��  , 1   = @��
�� 
txdl* 565 r   B G787 n   B E9:9 2   C E��
�� 
citm: o   B C�� 0 thetext theText8 o      �~�~ 0 thetext theText6 ;<; r   H M=>= m   H I?? �@@  > 1   I L�}
�} 
txdl< A�|A r   N SBCB c   N QDED o   N O�{�{ 0 thetext theTextE m   O P�z
�z 
ctxtC o      �y�y 0 thetext theText�|   FGF l     �x�w�v�x  �w  �v  G HIH i    JKJ I      �uL�t�u 0 
changepath 
changePathL M�sM o      �r�r 0 thepath thePath�s  �t  K k     NN OPO r     QRQ m     SS �TT  /R 1    �q
�q 
txdlP UVU r    WXW n    	YZY 2    	�p
�p 
citmZ o    �o�o 0 thepath thePathX o      �n�n 0 thepath thePathV [\[ r    ]^] m    __ �``  :^ 1    �m
�m 
txdl\ a�la L    bb l   c�k�jc c    ded o    �i�i 0 thepath thePathe m    �h
�h 
ctxt�k  �j  �l  I f�gf l     �f�e�d�f  �e  �d  �g       �cg �b�a�`hijklm�c  g 
�_�^�]�\�[�Z�Y�X�W�V�_ 0 folderdelim folderDelim�^ 0 firstrun firstRun�] .0 defaulttofirstproject defaultToFirstProject�\ 	0 debug  �[ 0 inlist inList�Z 0 getnames getNames�Y 0 
assesslist 
assessList�X  0 identifyfolder identifyFolder�W 0 
changepath 
changePath
�V .aevtoappnull  �   � ****
�b boovtrue
�a boovtrue
�` boovfalsh �U��T�Sno�R�U 0 inlist inList�T �Qp�Q p  �P�O�P 0 theitem theItem�O 0 thelist theList�S  n �N�M�L�N 0 theitem theItem�M 0 thelist theList�L 0 anitem anItemo �K�J�I�H�G
�K 
leng
�J 
kocl
�I 
cobj
�H .corecnte****       ****
�G 
ID  �R 8��,j  fY hO $�[��l kh ��,��,  eY h[OY��Ofi �F��E�Dqr�C�F 0 getnames getNames�E �Bs�B s  �A�A 0 thelist theList�D  q �@�?�>�@ 0 thelist theList�? 0 	thereturn 	theReturn�> 0 theitem theItemr ��=�<�;�:�9
�= 
FCDo
�< 
kocl
�; 
cobj
�: .corecnte****       ****
�9 
pnam�C 0� ,*�, %jvE�O �[��l kh ��,�6F[OY��O�UUj �8��7�6tu�5�8 0 
assesslist 
assessList�7 �4v�4 v  �3�2�1�3 0 theselection theSelection�2 0 thelist theList�1 0 theoriginals theOriginals�6  t �0�/�.�-�,�+�0 0 theselection theSelection�/ 0 thelist theList�. 0 theoriginals theOriginals�- 0 	thereturn 	theReturn�, 0 j  �+ 0 i  u �*�)
�* 
leng
�) 
cobj�5 FjvE�O <k��,Ekh  *k��,Ekh ��/��/  ��/�6FOY h[OY��[OY��O�k �(�'�&wx�%�(  0 identifyfolder identifyFolder�' �$y�$ y  �#�# 0 thenote theNote�&  w �"�!� ��" 0 thenote theNote�! 	0 paras  �  0 para  � 0 thetext theTextx 	����2��?�
� 
cpar
� 
kocl
� 
cobj
� .corecnte****       ****
� 
txdl
� 
citm
� 
ctxt�% T��-E�O '�[��l kh �b    
�E�OY h[OY��Ob   �%b   lv*�,FO��-E�O�*�,FO��&E�l �K��z{�� 0 
changepath 
changePath� �|� |  �� 0 thepath thePath�  z �� 0 thepath thePath{ S��_�
� 
txdl
� 
citm
� 
ctxt� �*�,FO��-E�O�*�,FO��&m �}��~�

� .aevtoappnull  �   � ****} k    ���  ��  F�	�	  �  �  ~ ���� 0 theitem theItem� 0 
theproject 
theProject� 0 afolder aFolder =� 5 9 <� ?���� ������������������� w�������������� ����� ������� �����������/����4������@I��\��s����}�������
� 
bool
� 
prmp
� .gtqpchltns    @   @ ns  
� 
cobj�  �   
�� 
FCDo
�� 
FCdw
�� 
FCcn
�� 
OTst
�� 
valL�� 0 theselection theSelection
�� 
leng
�� 
FCSt
�� .corecnte****       ****
�� .sysodisAaleR        TEXT�� 0 theprojects theProjects
�� 
kocl
�� 
pcls
�� 
FCpr�� 0 inlist inList
�� 
FCPr�� 0 getnames getNames�� 0 projectnames projectNames
�� 
mlsl�� �� ,0 selectedprojectnames selectedProjectNames�� 0 
assesslist 
assessList�� $0 selectedprojects selectedProjects�� 0 thepaths thePaths
�� 
FCno��  0 identifyfolder identifyFolder
�� 
quot
�� 
pnam
�� .sysostflalis    ��� null
�� 
TEXT�� 0 chosenfolder chosenFolder
�� 
ret 
�� 
capp
�� kfrmID  
�� 
prun
�� .miscactvnull��� ��� obj 
�� .aevtodocnull  �    alis
�� 
cfol�
�b  	 
b  �& . !���mv��l �k/Ec   OfEc  W 	X  	hY hO�w*�,�k/m �*�,�-�,E` O_ a ,j  *a ,�-�,E` Y hO_ j j  a j OhY hOjvE` O ]_ [a �l kh  _ a ,a  	 )�_ l+ �& �_ 6FY !)�a ,_ l+  �a ,_ 6FY h[OY��W X  	a j OhO_ a ,k	 
b  �& d)_ k+ E` O_ �a a  ea ! E` "O_ "f  hY hO_ "a ,j  a #j OhY hO)_ "_ _ m+ $E` %Y _ �k/E` %OjvE` &O �_ %[a �l kh �a ',b    )�a ',k+ (_ &6FY { (*�a )_ *%�a +,%_ *%a ,%l -a .&E` /W 	X  	hO�a ',a 0  b   a 1%_ /%�a ',FY �a ',_ 2%b   %a 3%_ /%�a ',FO_ /_ &6F[OY�aO)a 4a 5a 60a 7,e  !)a 4a 8a 60 *j 9O_ &j :UY :)a 4a ;a 60 + "_ &[a �l kh *a <�/j :[OY��O*j 9UOPUU ascr  ��ޭ