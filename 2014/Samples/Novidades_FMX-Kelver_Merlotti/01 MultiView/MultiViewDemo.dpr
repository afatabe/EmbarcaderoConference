program MultiViewDemo;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.MultiView.CustomPresentation in 'FMX.MultiView.CustomPresentation.pas',
  MainFrm in 'MainFrm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
