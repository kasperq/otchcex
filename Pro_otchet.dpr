program Pro_otchet;
uses
  ExceptionLog,
  Forms,
  winhelpViewer,
  glmenu in 'Source\glmenu.pas' {FGlMenu},
  prixcex in 'Source\prixcex.pas' {Fprixcex},
  dm in 'Source\dm.pas' {DM1: TDataModule},
  ViborPerioda in 'Source\ViborPerioda.pas' {FViborPerioda},
  Vibor_Spr_Tree in 'X:\PublicForms\Vibor_Spr_Tree.pas' {ViborSprTree},
  Find_BS in 'X:\PublicForms\Find_BS.pas' {FindBS},
  Find_LekGroup in 'X:\PublicForms\Find_LekGroup.pas' {FindLekGroup},
  Find_Spprod in 'X:\PublicForms\Find_Spprod.pas' {FindSpprod},
  Find_Sprorg in 'X:\PublicForms\Find_Sprorg.pas' {FindSprorg},
  Find_Struk in 'X:\PublicForms\Find_Struk.pas' {FindStruk},
  Update_Spprod in 'X:\PublicForms\Update_Spprod.pas' {UpdateSpprod},
  Vibor_Spr in 'X:\PublicForms\Vibor_Spr.pas' {ViborSpr},
  TipDoc in 'Source\TipDoc.pas' {FTipDoc},
  Update_Sprorg in 'X:\PublicForms\Update_Sprorg.pas' {UpdateSprorg},
  Decode_Spprod in 'X:\PublicForms\Decode_Spprod.pas' {DecodeSpprod},
  Ser in 'Source\Ser.pas' {FSer},
  Reg_F in 'X:\PublicForms\Reg_F.pas' {RegF},
  rascex in 'Source\rascex.pas' {FRascex},
  Find_seria in 'Source\Find_seria.pas' {FFind_Seria},
  F_Splash in 'Source\F_Splash.pas' {FSplash},
  f_options in 'Source\f_options.pas' {FOptions},
  NormCex in 'Source\NormCex.pas' {FNormCex},
  Ostatki in 'Source\Ostatki.pas' {FOstatki},
  PerNovMes in 'Source\PerNovMes.pas' {FPerNovMes},
  TexGur in 'Source\TexGur.pas' {FTexGur},
  SprSTAD in 'Source\SprSTAD.pas' {FSprStad},
  SprFormul in 'Source\SprFormul.pas' {FSprFormul},
  Decode_Matrop in 'X:\PublicForms\Decode_Matrop.pas' {DecodeMatrop},
  Razdel in 'Source\Razdel.pas' {frazdel},
  ViborPrep in 'Source\ViborPrep.pas' {FViborPrep},
  Raspred in 'Source\Raspred.pas' {FRaspred},
  Vipusk in 'Source\Vipusk.pas' {FVipusk},
  New_Prix in 'Source\New_Prix.pas' {FNew_Prix},
  VibPrep in 'Source\VibPrep.pas' {FVibPrep},
  Otchet in 'Source\Otchet.pas' {FOtchet},
  Dob_peredano in 'Source\Dob_peredano.pas' {FDob_Peredano},
  Start in 'Source\Start.pas' {FStarT},
  ediz in 'Source\ediz.pas' {FEdiz},
  F_nastr in 'Source\F_nastr.pas' {FNastr},
  Pech_vibor in 'Source\Pech_vibor.pas' {FPech_Vibor},
  Tipop in 'Source\Tipop.pas' {FTipOp},
  FSpFormv in 'Source\FSpFormv.pas' {FSPFormvip},
  otk_find in 'Source\otk_find.pas' {find_an},
  NastrPech in 'Source\NastrPech.pas' {FNastrPech},
  KorOtchet in 'Source\KorOtchet.pas' {FKorOtchet},
  PererasZag in 'Source\PererasZag.pas' {FPererasZag},
  KorOst in 'Source\KorOst.pas' {FKartOst},
  OstSyr in 'Source\OstSyr.pas' {FOstSyr},
  NesPrix in 'Source\NesPrix.pas' {FNesPrix},
  PererasPlenka in 'Source\PererasPlenka.pas' {FPererasPlenka},
  act_spirt in 'Source\act_spirt.pas' {Fact_spirt},
  PerOtchet in 'Source\PerOtchet.pas' {FPerOtchet},
  Poteri in 'Source\Poteri.pas' {FPoteri},
  Analit1 in 'Source\Analit1.pas' {FAnalit1},
  Analitlist_tg in 'Source\Analitlist_tg.pas' {FAnalitList_tg},
  Find_Matrop in 'X:\PublicForms\Find_Matrop.pas' {FindMatrop},
  Inf_Klient in 'X:\PublicForms\Inf_Klient.pas' {InfKlient},
  Komp_TM in 'Source\Komp_TM.pas' {FKompTM},
  Find_Ean in 'X:\PublicForms\Find_Ean.pas' {FindEan},
  Update_Matrop in 'X:\PublicForms\Update_Matrop.pas' {UpdateMatrop},
  Got_Prod in 'Source\Got_Prod.pas' {fGot_prod},
  VibSyr in 'Source\VibSyr.pas' {FVibSyr},
  vybprep in 'Source\vybprep.pas' {FVybPrep},
  Find_Bank in 'X:\PublicForms\Find_Bank.pas' {FindBank},
  Update_Bank in 'X:\PublicForms\Update_Bank.pas' {UpdateBank},
  Find_Account in 'X:\PublicForms\Find_Account.pas' {FindAccount},
  Otx_Spirt in 'Source\Otx_Spirt.pas' {FOtx_Spirt},
  VibEan in 'X:\PublicForms\VibEan.pas' {FVibEan},
  InvOp in 'Source\InvOp.pas' {FInvOp},
  AktRashoda in 'Source\AktRashoda.pas' {FAktRashoda},
  act_aceton in 'Source\act_aceton.pas' {FAct_Aceton},
  vibDocProd in 'Source\vibDocProd.pas' {FVibDocProd},
  f_lookupEis in 'Source\f_lookupEis.pas' {FLookupEis},
  Vipusk_Seria in 'Source\Vipusk_Seria.pas' {FVipusk_Seria},
  f_lookupRaz in 'Source\f_lookupRaz.pas' {FLookupRaz},
  CopyFiles in 'Source\CopyFiles.pas',
  DocP in 'Source\DocP.pas' {FdocP},
  Upak in 'Source\Upak.pas' {FUpak},
  Num2Text in 'Source\Num2Text.pas',
  Dm1Ost in 'Source\Dm1Ost.pas' {DmOst},
  GotProd in 'Source\GotProd.pas' {FGotProd},
  GotProdNaklTbl in 'Source\GotProdNaklTbl.pas' {FGotProdNaklTbl},
  GotProdNaklView in 'Source\GotProdNaklView.pas' {FGotProdNaklView},
  GotProdVipusk in 'Source\GotProdVipusk.pas' {FGotProdVipusk},
  PlanVipusk in 'Source\PlanVipusk.pas' {FPlanVipusk},
  UOstThread in 'Source\UOstThread.pas',
  Otpusk in 'Source\Otpusk.pas' {FOtpusk},
  Unit21 in 'Source\Unit21.pas' {F1},
  analit in 'Source\analit.pas' {FAnalit},
  Analit_aList in 'Source\Analit_aList.pas' {FAnalit_List},
  Unit3 in 'Source\Unit3.pas' {Form3},
  PererasFolga in 'Source\PererasFolga.pas' {FPererasFolga},
  LookupUnderSign in 'Source\LookupUnderSign.pas' {FLookupUnderSign};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'АРМ Технолога Цеха';
  Application.HelpFile := 'F:\OTCHCEX\help\Help_otchet.hlp';
  Application.CreateForm(TFGlMenu, FGlMenu);
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TFSplash, FSplash);
  Application.CreateForm(TFKompTM, FKompTM);
  Application.CreateForm(TFindEan, FindEan);
  Application.CreateForm(TUpdateMatrop, UpdateMatrop);
  Application.CreateForm(TfGot_prod, fGot_prod);
  Application.CreateForm(TFVibSyr, FVibSyr);
  Application.CreateForm(TFVybPrep, FVybPrep);
  Application.CreateForm(TFindBank, FindBank);
  Application.CreateForm(TUpdateBank, UpdateBank);
  Application.CreateForm(TFindAccount, FindAccount);
  Application.CreateForm(TFindAccount, FindAccount);
  Application.CreateForm(TFOtx_Spirt, FOtx_Spirt);
  Application.CreateForm(TFVibEan, FVibEan);
  Application.CreateForm(TFInvOp, FInvOp);
  Application.CreateForm(TFAktRashoda, FAktRashoda);
  Application.CreateForm(TFAct_Aceton, FAct_Aceton);
  Application.CreateForm(TFVibDocProd, FVibDocProd);
  Application.CreateForm(TFLookupEis, FLookupEis);
  Application.CreateForm(TFVipusk_Seria, FVipusk_Seria);
  Application.CreateForm(TFLookupRaz, FLookupRaz);
  Application.CreateForm(TFdocP, FdocP);
  Application.CreateForm(TFUpak, FUpak);
  Application.CreateForm(TDmOst, DmOst);
  Application.CreateForm(TFGotProd, FGotProd);
  Application.CreateForm(TFGotProdNaklTbl, FGotProdNaklTbl);
  Application.CreateForm(TFGotProdNaklView, FGotProdNaklView);
  Application.CreateForm(TFGotProdVipusk, FGotProdVipusk);
  Application.CreateForm(TFPlanVipusk, FPlanVipusk);
  Application.CreateForm(TFOtpusk, FOtpusk);
  Application.CreateForm(TFEdiz, FEdiz);
  Application.CreateForm(TFNastr, FNastr);
  Application.CreateForm(TFPech_Vibor, FPech_Vibor);
  Application.CreateForm(TFPererasZag, FPererasZag);
  Application.CreateForm(TFKartOst, FKartOst);
  Application.CreateForm(TFOstSyr, FOstSyr);
  Application.CreateForm(TFNesPrix, FNesPrix);
  Application.CreateForm(TFPererasPlenka, FPererasPlenka);
  Application.CreateForm(TFindEan, FindEan);
  Application.CreateForm(TFact_spirt, Fact_spirt);
  Application.CreateForm(TFPerOtchet, FPerOtchet);
  Application.CreateForm(TFPoteri, FPoteri);
  Application.CreateForm(TFAnalit1, FAnalit1);
  Application.CreateForm(TFAnalitList_tg, FAnalitList_tg);
  Application.CreateForm(TInfKlient, InfKlient);
  Application.CreateForm(TViborSprTree, ViborSprTree);
  Application.CreateForm(TFindBS, FindBS);
  Application.CreateForm(TFindLekGroup, FindLekGroup);
  Application.CreateForm(TFindMatrop, FindMatrop);
  Application.CreateForm(TFindSpprod, FindSpprod);
  Application.CreateForm(TFindSprorg, FindSprorg);
  Application.CreateForm(TFindStruk, FindStruk);
  Application.CreateForm(TInfKlient, InfKlient);
  Application.CreateForm(TUpdateMatrop, UpdateMatrop);
  Application.CreateForm(TUpdateSpprod, UpdateSpprod);
  Application.CreateForm(TViborSpr, ViborSpr);
  Application.CreateForm(TFindAccount, FindAccount);
  Application.CreateForm(TFTipDoc, FTipDoc);
  Application.CreateForm(TUpdateSprorg, UpdateSprorg);
  Application.CreateForm(TDecodeSpprod, DecodeSpprod);
  Application.CreateForm(TFSer, FSer);
  Application.CreateForm(TRegF, RegF);
  Application.CreateForm(TFFind_Seria, FFind_Seria);
  Application.CreateForm(TFOptions, FOptions);
  Application.CreateForm(TF1, F1);
  Application.CreateForm(TFAnalit, FAnalit);
  Application.CreateForm(TFAnalit_List, FAnalit_List);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TFPererasFolga, FPererasFolga);
  Application.Run;
end.
