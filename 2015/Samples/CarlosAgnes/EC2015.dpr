program EC2015;

uses
  System.StartUpCopy,
  FMX.Forms,
  fPrincipal in 'fPrincipal.pas' {Form1},
  uVariacoesMapeamentos in 'uVariacoesMapeamentos.pas',
  uMapeamentos in 'uMapeamentos.pas',
  AqDrop.Core.AnonymousMethods in 'Fontes Drop\Core\AqDrop.Core.AnonymousMethods.pas',
  AqDrop.Core.Attributes in 'Fontes Drop\Core\AqDrop.Core.Attributes.pas',
  AqDrop.Core.Automaton in 'Fontes Drop\Core\AqDrop.Core.Automaton.pas',
  AqDrop.Core.Automaton.Text in 'Fontes Drop\Core\AqDrop.Core.Automaton.Text.pas',
  AqDrop.Core.Bindings in 'Fontes Drop\Core\AqDrop.Core.Bindings.pas',
  AqDrop.Core.Calendar in 'Fontes Drop\Core\AqDrop.Core.Calendar.pas',
  AqDrop.Core.Collections.Intf in 'Fontes Drop\Core\AqDrop.Core.Collections.Intf.pas',
  AqDrop.Core.Collections in 'Fontes Drop\Core\AqDrop.Core.Collections.pas',
  AqDrop.Core.Exceptions in 'Fontes Drop\Core\AqDrop.Core.Exceptions.pas',
  AqDrop.Core.Helpers.Exception in 'Fontes Drop\Core\AqDrop.Core.Helpers.Exception.pas',
  AqDrop.Core.Helpers in 'Fontes Drop\Core\AqDrop.Core.Helpers.pas',
  AqDrop.Core.Helpers.TObject in 'Fontes Drop\Core\AqDrop.Core.Helpers.TObject.pas',
  AqDrop.Core.Helpers.TRttiObject in 'Fontes Drop\Core\AqDrop.Core.Helpers.TRttiObject.pas',
  AqDrop.Core.Helpers.TRttiType in 'Fontes Drop\Core\AqDrop.Core.Helpers.TRttiType.pas',
  AqDrop.Core.InterfacedObject in 'Fontes Drop\Core\AqDrop.Core.InterfacedObject.pas',
  AqDrop.Core.Manager.Intf in 'Fontes Drop\Core\AqDrop.Core.Manager.Intf.pas',
  AqDrop.Core.Manager in 'Fontes Drop\Core\AqDrop.Core.Manager.pas',
  AqDrop.Core.Observable in 'Fontes Drop\Core\AqDrop.Core.Observable.pas',
  AqDrop.Core.Observer.Intf in 'Fontes Drop\Core\AqDrop.Core.Observer.Intf.pas',
  AqDrop.Core.Observer in 'Fontes Drop\Core\AqDrop.Core.Observer.pas',
  AqDrop.Core.Tokenizer in 'Fontes Drop\Core\AqDrop.Core.Tokenizer.pas',
  AqDrop.Core.Types in 'Fontes Drop\Core\AqDrop.Core.Types.pas',
  AqDrop.DB.Adapter in 'Fontes Drop\DB\AqDrop.DB.Adapter.pas',
  AqDrop.DB.Base.Exceptions in 'Fontes Drop\DB\AqDrop.DB.Base.Exceptions.pas',
  AqDrop.DB.Base in 'Fontes Drop\DB\AqDrop.DB.Base.pas',
  AqDrop.DB.Connection in 'Fontes Drop\DB\AqDrop.DB.Connection.pas',
  AqDrop.DB.DBX.FB in 'Fontes Drop\DB\AqDrop.DB.DBX.FB.pas',
  AqDrop.DB.DBX.MSSQL in 'Fontes Drop\DB\AqDrop.DB.DBX.MSSQL.pas',
  AqDrop.DB.DBX.MySQL in 'Fontes Drop\DB\AqDrop.DB.DBX.MySQL.pas',
  AqDrop.DB.DBX.Ora in 'Fontes Drop\DB\AqDrop.DB.DBX.Ora.pas',
  AqDrop.DB.DBX in 'Fontes Drop\DB\AqDrop.DB.DBX.pas',
  AqDrop.DB.DBX.SQLite in 'Fontes Drop\DB\AqDrop.DB.DBX.SQLite.pas',
  AqDrop.DB.FB in 'Fontes Drop\DB\AqDrop.DB.FB.pas',
  AqDrop.DB.FD.FB in 'Fontes Drop\DB\AqDrop.DB.FD.FB.pas',
  AqDrop.DB.FD.MSSQL in 'Fontes Drop\DB\AqDrop.DB.FD.MSSQL.pas',
  AqDrop.DB.FD.MySQL in 'Fontes Drop\DB\AqDrop.DB.FD.MySQL.pas',
  AqDrop.DB.FD.Ora in 'Fontes Drop\DB\AqDrop.DB.FD.Ora.pas',
  AqDrop.DB.FD in 'Fontes Drop\DB\AqDrop.DB.FD.pas',
  AqDrop.DB.FD.PG in 'Fontes Drop\DB\AqDrop.DB.FD.PG.pas',
  AqDrop.DB.FD.SQLite in 'Fontes Drop\DB\AqDrop.DB.FD.SQLite.pas',
  AqDrop.DB.FD.TypeMapping in 'Fontes Drop\DB\AqDrop.DB.FD.TypeMapping.pas',
  AqDrop.DB.MSSQL in 'Fontes Drop\DB\AqDrop.DB.MSSQL.pas',
  AqDrop.DB.MySQL in 'Fontes Drop\DB\AqDrop.DB.MySQL.pas',
  AqDrop.DB.Ora in 'Fontes Drop\DB\AqDrop.DB.Ora.pas',
  AqDrop.DB.ORM.Attributes in 'Fontes Drop\DB\AqDrop.DB.ORM.Attributes.pas',
  AqDrop.DB.ORM.Manager in 'Fontes Drop\DB\AqDrop.DB.ORM.Manager.pas',
  AqDrop.DB.ORM.Reader in 'Fontes Drop\DB\AqDrop.DB.ORM.Reader.pas',
  AqDrop.DB.PG in 'Fontes Drop\DB\AqDrop.DB.PG.pas',
  AqDrop.DB.SQL.Intf in 'Fontes Drop\DB\AqDrop.DB.SQL.Intf.pas',
  AqDrop.DB.SQL in 'Fontes Drop\DB\AqDrop.DB.SQL.pas',
  AqDrop.DB.SQLite in 'Fontes Drop\DB\AqDrop.DB.SQLite.pas',
  AqDrop.DB.Tokenizer in 'Fontes Drop\DB\AqDrop.DB.Tokenizer.pas',
  AqDrop.DB.Types in 'Fontes Drop\DB\AqDrop.DB.Types.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
