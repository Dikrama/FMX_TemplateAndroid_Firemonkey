program prjTemplateFMX;



{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  {$IF DEFINED (ANDROID)}
  FMX.FontGlyphs.Android in 'sources\FMX.FontGlyphs.Android.pas',
  {$ENDIF }
  uFontSetting in 'sources\uFontSetting.pas',
  uFunc in 'sources\uFunc.pas',
  uGoFrame in 'sources\uGoFrame.pas',
  uMain in 'sources\uMain.pas',
  uOpenUrl in 'sources\uOpenUrl.pas',
  uRest in 'sources\uRest.pas',
  frLoading in 'frames\frLoading.pas' {FLoading: TFrame},
  uDM in 'uDM.pas' {DM: TDataModule},
  frMain in 'frMain.pas' {FMain},
  uLogin in 'sources\uLogin.pas',
  frLogin in 'frames\frLogin.pas' {FLogin: TFrame},
  frTemp in 'frames\frTemp.pas' {FTemp: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.

