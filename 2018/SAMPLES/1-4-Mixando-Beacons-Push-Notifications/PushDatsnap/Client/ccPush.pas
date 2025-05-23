//
// Created by the DataSnap proxy generator.
// 23/10/2018 05:47:21
//

unit ccPush;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon,
  Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy,
  System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders,
  Data.DBXCDSReaders, Data.DBXJSONReflect,
  lPushData;

type
  TPushMethodsClient = class(TDSAdminRestClient)
  private
    FDataModuleCreateCommand: TDSRestCommand;
    FDeviceCommand: TDSRestCommand;
    FDeviceCommand_Cache: TDSRestCommand;
    FDevicesCommand: TDSRestCommand;
    FDevicesCommand_Cache: TDSRestCommand;
    FUserDevicesCommand: TDSRestCommand;
    FUserDevicesCommand_Cache: TDSRestCommand;
    FUpdateDeviceCommand: TDSRestCommand;
    FUpdateDeviceCommand_Cache: TDSRestCommand;
    FUpdatePushOptionCommand: TDSRestCommand;
    FUpdatePushOptionCommand_Cache: TDSRestCommand;
    FSendMessageToUserCommand: TDSRestCommand;
    FSendMessageToUserCommand_Cache: TDSRestCommand;
    FSendMessageToAllCommand: TDSRestCommand;
    FSendMessageToAllCommand_Cache: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DataModuleCreate(Sender: TObject);
    function Device(DeviceId: string; const ARequestFilter: string = ''): TJSONObject;
    function Device_Cache(DeviceId: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function Devices(PageNumber: Integer; ItemsPerPage: Integer; const ARequestFilter: string = ''): TJSONObject;
    function Devices_Cache(PageNumber: Integer; ItemsPerPage: Integer; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function UserDevices(UserId: string; const ARequestFilter: string = ''): TJSONObject;
    function UserDevices_Cache(UserId: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function UpdateDevice(DeviceInfo: TPushDevice; const ARequestFilter: string = ''): TJSONObject;
    function UpdateDevice_Cache(DeviceInfo: TPushDevice; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function UpdatePushOption(DeviceId: string; PushOption: Boolean; const ARequestFilter: string = ''): TJSONObject;
    function UpdatePushOption_Cache(DeviceId: string; PushOption: Boolean; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function SendMessageToUser(UserId: string; Title: string; Msg: string; const ARequestFilter: string = ''): TJSONObject;
    function SendMessageToUser_Cache(UserId: string; Title: string; Msg: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
    function SendMessageToAll(Title: string; Msg: string; const ARequestFilter: string = ''): TJSONObject;
    function SendMessageToAll_Cache(Title: string; Msg: string; const ARequestFilter: string = ''): IDSRestCachedJSONObject;
  end;

const
  TPushMethods_DataModuleCreate: array [0..0] of TDSRestParameterMetaData =
  (
    (Name: 'Sender'; Direction: 1; DBXType: 37; TypeName: 'TObject')
  );

  TPushMethods_Device: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'DeviceId'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  TPushMethods_Device_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'DeviceId'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TPushMethods_Devices: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'PageNumber'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'ItemsPerPage'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  TPushMethods_Devices_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'PageNumber'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'ItemsPerPage'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TPushMethods_UserDevices: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'UserId'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  TPushMethods_UserDevices_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'UserId'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TPushMethods_UpdateDevice: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'DeviceInfo'; Direction: 1; DBXType: 37; TypeName: 'TPushDevice'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  TPushMethods_UpdateDevice_Cache: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'DeviceInfo'; Direction: 1; DBXType: 37; TypeName: 'TPushDevice'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TPushMethods_UpdatePushOption: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'DeviceId'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'PushOption'; Direction: 1; DBXType: 4; TypeName: 'Boolean'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  TPushMethods_UpdatePushOption_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'DeviceId'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'PushOption'; Direction: 1; DBXType: 4; TypeName: 'Boolean'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TPushMethods_SendMessageToUser: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'UserId'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Title'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Msg'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  TPushMethods_SendMessageToUser_Cache: array [0..3] of TDSRestParameterMetaData =
  (
    (Name: 'UserId'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Title'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Msg'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

  TPushMethods_SendMessageToAll: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'Title'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Msg'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 37; TypeName: 'TJSONObject')
  );

  TPushMethods_SendMessageToAll_Cache: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'Title'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: 'Msg'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'String')
  );

implementation

procedure TPushMethodsClient.DataModuleCreate(Sender: TObject);
begin
  if FDataModuleCreateCommand = nil then
  begin
    FDataModuleCreateCommand := FConnection.CreateCommand;
    FDataModuleCreateCommand.RequestType := 'POST';
    FDataModuleCreateCommand.Text := 'TPushMethods."DataModuleCreate"';
    FDataModuleCreateCommand.Prepare(TPushMethods_DataModuleCreate);
  end;
  if not Assigned(Sender) then
    FDataModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FDataModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDataModuleCreateCommand.Execute;
end;

function TPushMethodsClient.Device(DeviceId: string; const ARequestFilter: string): TJSONObject;
begin
  if FDeviceCommand = nil then
  begin
    FDeviceCommand := FConnection.CreateCommand;
    FDeviceCommand.RequestType := 'GET';
    FDeviceCommand.Text := 'TPushMethods.Device';
    FDeviceCommand.Prepare(TPushMethods_Device);
  end;
  FDeviceCommand.Parameters[0].Value.SetWideString(DeviceId);
  FDeviceCommand.Execute(ARequestFilter);
  Result := TJSONObject(FDeviceCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function TPushMethodsClient.Device_Cache(DeviceId: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FDeviceCommand_Cache = nil then
  begin
    FDeviceCommand_Cache := FConnection.CreateCommand;
    FDeviceCommand_Cache.RequestType := 'GET';
    FDeviceCommand_Cache.Text := 'TPushMethods.Device';
    FDeviceCommand_Cache.Prepare(TPushMethods_Device_Cache);
  end;
  FDeviceCommand_Cache.Parameters[0].Value.SetWideString(DeviceId);
  FDeviceCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FDeviceCommand_Cache.Parameters[1].Value.GetString);
end;

function TPushMethodsClient.Devices(PageNumber: Integer; ItemsPerPage: Integer; const ARequestFilter: string): TJSONObject;
begin
  if FDevicesCommand = nil then
  begin
    FDevicesCommand := FConnection.CreateCommand;
    FDevicesCommand.RequestType := 'GET';
    FDevicesCommand.Text := 'TPushMethods.Devices';
    FDevicesCommand.Prepare(TPushMethods_Devices);
  end;
  FDevicesCommand.Parameters[0].Value.SetInt32(PageNumber);
  FDevicesCommand.Parameters[1].Value.SetInt32(ItemsPerPage);
  FDevicesCommand.Execute(ARequestFilter);
  Result := TJSONObject(FDevicesCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function TPushMethodsClient.Devices_Cache(PageNumber: Integer; ItemsPerPage: Integer; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FDevicesCommand_Cache = nil then
  begin
    FDevicesCommand_Cache := FConnection.CreateCommand;
    FDevicesCommand_Cache.RequestType := 'GET';
    FDevicesCommand_Cache.Text := 'TPushMethods.Devices';
    FDevicesCommand_Cache.Prepare(TPushMethods_Devices_Cache);
  end;
  FDevicesCommand_Cache.Parameters[0].Value.SetInt32(PageNumber);
  FDevicesCommand_Cache.Parameters[1].Value.SetInt32(ItemsPerPage);
  FDevicesCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FDevicesCommand_Cache.Parameters[2].Value.GetString);
end;

function TPushMethodsClient.UserDevices(UserId: string; const ARequestFilter: string): TJSONObject;
begin
  if FUserDevicesCommand = nil then
  begin
    FUserDevicesCommand := FConnection.CreateCommand;
    FUserDevicesCommand.RequestType := 'GET';
    FUserDevicesCommand.Text := 'TPushMethods.UserDevices';
    FUserDevicesCommand.Prepare(TPushMethods_UserDevices);
  end;
  FUserDevicesCommand.Parameters[0].Value.SetWideString(UserId);
  FUserDevicesCommand.Execute(ARequestFilter);
  Result := TJSONObject(FUserDevicesCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function TPushMethodsClient.UserDevices_Cache(UserId: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FUserDevicesCommand_Cache = nil then
  begin
    FUserDevicesCommand_Cache := FConnection.CreateCommand;
    FUserDevicesCommand_Cache.RequestType := 'GET';
    FUserDevicesCommand_Cache.Text := 'TPushMethods.UserDevices';
    FUserDevicesCommand_Cache.Prepare(TPushMethods_UserDevices_Cache);
  end;
  FUserDevicesCommand_Cache.Parameters[0].Value.SetWideString(UserId);
  FUserDevicesCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FUserDevicesCommand_Cache.Parameters[1].Value.GetString);
end;

function TPushMethodsClient.UpdateDevice(DeviceInfo: TPushDevice; const ARequestFilter: string): TJSONObject;
begin
  if FUpdateDeviceCommand = nil then
  begin
    FUpdateDeviceCommand := FConnection.CreateCommand;
    FUpdateDeviceCommand.RequestType := 'POST';
    FUpdateDeviceCommand.Text := 'TPushMethods."UpdateDevice"';
    FUpdateDeviceCommand.Prepare(TPushMethods_UpdateDevice);
  end;
  if not Assigned(DeviceInfo) then
    FUpdateDeviceCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FUpdateDeviceCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FUpdateDeviceCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(DeviceInfo), True);
      if FInstanceOwner then
        DeviceInfo.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FUpdateDeviceCommand.Execute(ARequestFilter);
  Result := TJSONObject(FUpdateDeviceCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function TPushMethodsClient.UpdateDevice_Cache(DeviceInfo: TPushDevice; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FUpdateDeviceCommand_Cache = nil then
  begin
    FUpdateDeviceCommand_Cache := FConnection.CreateCommand;
    FUpdateDeviceCommand_Cache.RequestType := 'POST';
    FUpdateDeviceCommand_Cache.Text := 'TPushMethods."UpdateDevice"';
    FUpdateDeviceCommand_Cache.Prepare(TPushMethods_UpdateDevice_Cache);
  end;
  if not Assigned(DeviceInfo) then
    FUpdateDeviceCommand_Cache.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDSRestCommand(FUpdateDeviceCommand_Cache.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FUpdateDeviceCommand_Cache.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(DeviceInfo), True);
      if FInstanceOwner then
        DeviceInfo.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FUpdateDeviceCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FUpdateDeviceCommand_Cache.Parameters[1].Value.GetString);
end;

function TPushMethodsClient.UpdatePushOption(DeviceId: string; PushOption: Boolean; const ARequestFilter: string): TJSONObject;
begin
  if FUpdatePushOptionCommand = nil then
  begin
    FUpdatePushOptionCommand := FConnection.CreateCommand;
    FUpdatePushOptionCommand.RequestType := 'GET';
    FUpdatePushOptionCommand.Text := 'TPushMethods.UpdatePushOption';
    FUpdatePushOptionCommand.Prepare(TPushMethods_UpdatePushOption);
  end;
  FUpdatePushOptionCommand.Parameters[0].Value.SetWideString(DeviceId);
  FUpdatePushOptionCommand.Parameters[1].Value.SetBoolean(PushOption);
  FUpdatePushOptionCommand.Execute(ARequestFilter);
  Result := TJSONObject(FUpdatePushOptionCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function TPushMethodsClient.UpdatePushOption_Cache(DeviceId: string; PushOption: Boolean; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FUpdatePushOptionCommand_Cache = nil then
  begin
    FUpdatePushOptionCommand_Cache := FConnection.CreateCommand;
    FUpdatePushOptionCommand_Cache.RequestType := 'GET';
    FUpdatePushOptionCommand_Cache.Text := 'TPushMethods.UpdatePushOption';
    FUpdatePushOptionCommand_Cache.Prepare(TPushMethods_UpdatePushOption_Cache);
  end;
  FUpdatePushOptionCommand_Cache.Parameters[0].Value.SetWideString(DeviceId);
  FUpdatePushOptionCommand_Cache.Parameters[1].Value.SetBoolean(PushOption);
  FUpdatePushOptionCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FUpdatePushOptionCommand_Cache.Parameters[2].Value.GetString);
end;

function TPushMethodsClient.SendMessageToUser(UserId: string; Title: string; Msg: string; const ARequestFilter: string): TJSONObject;
begin
  if FSendMessageToUserCommand = nil then
  begin
    FSendMessageToUserCommand := FConnection.CreateCommand;
    FSendMessageToUserCommand.RequestType := 'GET';
    FSendMessageToUserCommand.Text := 'TPushMethods.SendMessageToUser';
    FSendMessageToUserCommand.Prepare(TPushMethods_SendMessageToUser);
  end;
  FSendMessageToUserCommand.Parameters[0].Value.SetWideString(UserId);
  FSendMessageToUserCommand.Parameters[1].Value.SetWideString(Title);
  FSendMessageToUserCommand.Parameters[2].Value.SetWideString(Msg);
  FSendMessageToUserCommand.Execute(ARequestFilter);
  Result := TJSONObject(FSendMessageToUserCommand.Parameters[3].Value.GetJSONValue(FInstanceOwner));
end;

function TPushMethodsClient.SendMessageToUser_Cache(UserId: string; Title: string; Msg: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FSendMessageToUserCommand_Cache = nil then
  begin
    FSendMessageToUserCommand_Cache := FConnection.CreateCommand;
    FSendMessageToUserCommand_Cache.RequestType := 'GET';
    FSendMessageToUserCommand_Cache.Text := 'TPushMethods.SendMessageToUser';
    FSendMessageToUserCommand_Cache.Prepare(TPushMethods_SendMessageToUser_Cache);
  end;
  FSendMessageToUserCommand_Cache.Parameters[0].Value.SetWideString(UserId);
  FSendMessageToUserCommand_Cache.Parameters[1].Value.SetWideString(Title);
  FSendMessageToUserCommand_Cache.Parameters[2].Value.SetWideString(Msg);
  FSendMessageToUserCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FSendMessageToUserCommand_Cache.Parameters[3].Value.GetString);
end;

function TPushMethodsClient.SendMessageToAll(Title: string; Msg: string; const ARequestFilter: string): TJSONObject;
begin
  if FSendMessageToAllCommand = nil then
  begin
    FSendMessageToAllCommand := FConnection.CreateCommand;
    FSendMessageToAllCommand.RequestType := 'GET';
    FSendMessageToAllCommand.Text := 'TPushMethods.SendMessageToAll';
    FSendMessageToAllCommand.Prepare(TPushMethods_SendMessageToAll);
  end;
  FSendMessageToAllCommand.Parameters[0].Value.SetWideString(Title);
  FSendMessageToAllCommand.Parameters[1].Value.SetWideString(Msg);
  FSendMessageToAllCommand.Execute(ARequestFilter);
  Result := TJSONObject(FSendMessageToAllCommand.Parameters[2].Value.GetJSONValue(FInstanceOwner));
end;

function TPushMethodsClient.SendMessageToAll_Cache(Title: string; Msg: string; const ARequestFilter: string): IDSRestCachedJSONObject;
begin
  if FSendMessageToAllCommand_Cache = nil then
  begin
    FSendMessageToAllCommand_Cache := FConnection.CreateCommand;
    FSendMessageToAllCommand_Cache.RequestType := 'GET';
    FSendMessageToAllCommand_Cache.Text := 'TPushMethods.SendMessageToAll';
    FSendMessageToAllCommand_Cache.Prepare(TPushMethods_SendMessageToAll_Cache);
  end;
  FSendMessageToAllCommand_Cache.Parameters[0].Value.SetWideString(Title);
  FSendMessageToAllCommand_Cache.Parameters[1].Value.SetWideString(Msg);
  FSendMessageToAllCommand_Cache.ExecuteCache(ARequestFilter);
  Result := TDSRestCachedJSONObject.Create(FSendMessageToAllCommand_Cache.Parameters[2].Value.GetString);
end;

constructor TPushMethodsClient.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TPushMethodsClient.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TPushMethodsClient.Destroy;
begin
  FDataModuleCreateCommand.DisposeOf;
  FDeviceCommand.DisposeOf;
  FDeviceCommand_Cache.DisposeOf;
  FDevicesCommand.DisposeOf;
  FDevicesCommand_Cache.DisposeOf;
  FUserDevicesCommand.DisposeOf;
  FUserDevicesCommand_Cache.DisposeOf;
  FUpdateDeviceCommand.DisposeOf;
  FUpdateDeviceCommand_Cache.DisposeOf;
  FUpdatePushOptionCommand.DisposeOf;
  FUpdatePushOptionCommand_Cache.DisposeOf;
  FSendMessageToUserCommand.DisposeOf;
  FSendMessageToUserCommand_Cache.DisposeOf;
  FSendMessageToAllCommand.DisposeOf;
  FSendMessageToAllCommand_Cache.DisposeOf;
  inherited;
end;

end.

