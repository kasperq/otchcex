�
 TFIND_AN 0S  TPF0Tfind_anfind_anLeft� Top� BorderStylebsDialogCaption0   Поиск аналтического листаClientHeightBClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderPositionpoScreenCenterOnShowFormShowPixelsPerInch`
TextHeight TPanelPanel2Left Top#Width�HeightAlignalBottomCtl3DParentCtl3DTabOrder 
DesignSize�  TSpeedButtonSpeedButton1Left
Top WidthOHeightHintB   Подтвердить выбор продукции и выйтиAnchorsakRightakBottom Caption   K1@0BLFlat	
Glyph.Data
:  6  BM6      6   (                              � �� �� �� �� �HLN LHH� �� �� �� �� �� �� �� �&o^ $n (v*x(v%p  a KK� �� �� �� �� �#b&o4�D�
T�W�S� K�
9�
't V B� �� �� �(q*w=�a����`� U�Y�������K�*zV I� �� �(q<�^�^�?�2�M�,x5�S����L�(uI� �$j3�	W����7�/}U����6�'u )wS����9�
 a O)s=����K�5�W�r�IX�H�'x 'w 5����K�
%p O.yF����<�I�\�;�4�Y�1~(y (w Z�T� )wR2�
L����;� 3� 6�/�-G�A�
*{(y V�X�,zU 3�K����A� 0� 1� 1�0�1�E�.~.|^�R�*wS/z
I����S� 2� 1� 2� 1�0�7�4�@�
���F�
&rO� �3�X����G� 2� 0� 0� 0�.�=�Z�`�6�"e� �� �3�N� [�	���S� A� ;�=� J�������>�*u"e� �� �� �;�
P� \����������������W�>�-z$f� �� �� �� �� �5�H�Q� S� V�Q�F�7�+w+w� �� �� �� �� �� �� �� �4�:�
;�	6�
.y	)t� �� �� �� �� �OnClickSpeedButton1Click  TSpeedButtonSpeedButton2Left^Top WidthNHeightHint4   Отказаться от выбора и выйтиAnchorsakRightakBottom Caption   B<5=8BLFlat	
Glyph.Data
:  6  BM6      6   (                              � �� �� �� �� �;�=�=�;�:�:�� �� �� �� �� �� �� �� �W�G� Q�\�c�\� N� B�:�:�� �� �� �� �� �P�W�'��x��������������?��U�@�6}� �� �� �]�b�U��������������������������]� @�9�� �� �]�R��������e�X�	Y�P�T�o��������U�9�� �U� }�������o��v��l�Z�Z�^�j��o�����>�� C�>�_�V��������s�y�����r�"t����m��V������� P�>�k������)��}�t�y��������n��Z�U������`�@�v�������)��~�{�-��������"y�c�]ꈺ����h�A� z������?����;�����k��i�����,��e�������c�A�o���������1�����g��~�z�`�����?��������X�>�� �#{�������]��F��������}�M��������0��O�� �� �#{������������>��+��0��j��������]��`�O�� �� �� �I��������������������������\��k�R�� �� �� �� �� �-�������������������4��
e�
e�� �� �� �� �� �� �� �� �${�F��J��/��l�_�� �� �� �� �� �OnClickSpeedButton2Click   	TDBGridEh	DBGridEh1Left Top Width�Height#AlignalClient
DataSourceDSFindFlat	FooterColorclWindowFooterFont.CharsetDEFAULT_CHARSETFooterFont.ColorclWindowTextFooterFont.Height�FooterFont.NameMS Sans SerifFooterFont.Style 	OptionsEh
dghFixed3DdghHighlightFocusdghClearSelectiondghAutoSortMarkingdghMultiSortMarkingdghIncSearchdghDialogFind STFilter.Visible	TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style UseMultiTitle	OnSortMarkingChangedDBGridEh1SortMarkingChangedColumnsEditButtons 	FieldName	DATEGETPRFooters Title.Caption   0B0Title.SortIndexTitle.SortMarkersmDownEhTitle.TitleButton	 EditButtons 	FieldNameAN_NUMFooters Title.Caption2   Номер аналитического листаTitle.TitleButton	Widthb EditButtons 	FieldNameKSM_IDFooters Title.Caption   >4Title.TitleButton	 EditButtons 	FieldNameNMATFooters Title.Caption#   Наименование сырьяTitle.TitleButton	Width�  EditButtons 	FieldNameGOSTFooters Title.Caption   !"Title.TitleButton	Widthb EditButtons 	FieldNameXARKTFooters Title.Caption   %0@0:B5@8AB8:0Title.TitleButton	Widthf    
TRxIBQueryFindDatabase
DM1.BELMEDTransactionDM1.IBT_ReadSQL.StringshSELECT Analit.Ksm_id, Analit.DATEGETPR, Analit.AN_NUM, Matrop.NMAT, Analit.GOST, Analit.XARKT, Analit.IDFROM Analit5 INNER JOIN matrop ON (Analit.KSM_ID = Matrop.KSM_ID) %Uslorder by %sort MacrosDataTypeftStringNameUsl	ParamTypeptInput DataTypeftStringNamesort	ParamTypeptInputValueAnalit.an_num  Left� Top` 
TDateFieldFindDATEGETPR	FieldName	DATEGETPROrigin"ANALIT"."DATEGETPR"  TIntegerField
FindAN_NUM	FieldNameAN_NUMOrigin"ANALIT"."AN_NUM"  TIBStringFieldFindNMAT	FieldNameNMATOrigin"MATROP"."NMAT"Size<  TIBStringFieldFindGOST	FieldNameGOSTOrigin"ANALIT"."GOST"Size  TIBStringField	FindXARKT	FieldNameXARKTOrigin"ANALIT"."XARKT"Size  TIntegerFieldFindID	FieldNameIDOrigin"ANALIT"."ID"ProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TIntegerField
FindKSM_ID	FieldNameKSM_IDOrigin"ANALIT"."KSM_ID"ProviderFlags
pfInUpdate	pfInWherepfInKey Required	   TDataSourceDSFindDataSetFindLeft� Top`  
TFindDlgEh
FindDlgEh1DBGrid	DBGridEh1FindFont.CharsetDEFAULT_CHARSETFindFont.ColorclRedFindFont.Height�FindFont.NameMS Sans SerifFindFont.StylefsBold ShowFilterPanel	
SimpleSeek	LeftXTop�    