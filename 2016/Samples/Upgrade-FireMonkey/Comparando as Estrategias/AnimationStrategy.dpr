program AnimationStrategy;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
