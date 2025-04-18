
//---------------------------------------------------------------------------

// This software is Copyright (c) 2012 Embarcadero Technologies, Inc. 
// You may only use this software if you are an authorized licensee
// of Delphi, C++Builder or RAD Studio (Embarcadero Products).
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

//---------------------------------------------------------------------------
unit ctrlsdemofrm;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.UIConsts,
  FMX.Forms, FMX.Dialogs, FMX.Objects, FMX.Types, FMX.Layouts, FMX.Controls, FMX.Styles,
  FMX.Edit, FMX.ListBox, FMX.TabControl, FMX.ExtCtrls, FMX.TreeView, FMX.Effects,
  FMX.Memo, FMX.Colors, FMX.Menus, FMX.Layers3D, FMX.Types3D;

type

  { TfrmCtrlsDemo }

  TfrmCtrlsDemo = class(TForm)
    RotationTrack: TTrackBar;
    RotationText: TLabel;
    ControlRoot: TLayout;
    btn3DBack: TButton;
    Text2: TLabel;
    Text3: TLabel;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    ScrollBox1: TScrollBox;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    StringComboBox1: TComboBox;
    TabItem3: TTabItem;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    Image1: TImage;
    Path1: TPath;
    Rectangle1: TRectangle;
    Text6: TLabel;
    Ellipse1: TEllipse;
    TreeView1: TTreeView;
    TreeViewItem1: TTreeViewItem;
    TreeViewItem2: TTreeViewItem;
    TreeViewItem3: TTreeViewItem;
    TreeViewItem4: TTreeViewItem;
    TreeViewItem5: TTreeViewItem;
    TreeViewItem6: TTreeViewItem;
    TreeViewItem7: TTreeViewItem;
    TreeViewItem8: TTreeViewItem;
    TreeViewItem9: TTreeViewItem;
    TreeViewItem10: TTreeViewItem;
    TreeViewItem11: TTreeViewItem;
    TreeViewItem12: TTreeViewItem;
    TreeViewItem13: TTreeViewItem;
    TreeViewItem14: TTreeViewItem;
    TreeViewItem15: TTreeViewItem;
    TreeViewItem16: TTreeViewItem;
    TreeViewItem17: TTreeViewItem;
    TreeViewItem18: TTreeViewItem;
    TreeViewItem19: TTreeViewItem;
    TreeViewItem20: TTreeViewItem;
    TreeViewItem21: TTreeViewItem;
    TreeViewItem22: TTreeViewItem;
    TreeViewItem23: TTreeViewItem;
    TreeViewItem24: TTreeViewItem;
    TreeViewItem25: TTreeViewItem;
    TreeViewItem26: TTreeViewItem;
    TreeViewItem27: TTreeViewItem;
    TreeViewItem28: TTreeViewItem;
    TreeViewItem29: TTreeViewItem;
    TreeViewItem30: TTreeViewItem;
    TreeViewItem31: TTreeViewItem;
    TreeViewItem32: TTreeViewItem;
    TreeViewItem33: TTreeViewItem;
    TreeViewItem34: TTreeViewItem;
    TreeViewItem35: TTreeViewItem;
    TreeViewItem36: TTreeViewItem;
    TreeViewItem37: TTreeViewItem;
    TabItem4: TTabItem;
    Expander1: TExpander;
    Label8: TLabel;
    Button3: TButton;
    GroupBox1: TGroupBox;
    AniIndicator1: TAniIndicator;
    Button4: TButton;
    Button5: TButton;
    Label9: TLabel;
    Image3: TImage;
    Label10: TLabel;
    NumberBox1: TNumberBox;
    TrackBar1: TTrackBar;
    Label12: TLabel;
    Button6: TButton;
    ListBox1: TListBox;
    GlowEffect2: TGlowEffect;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    AngleButton1: TArcDial;
    Label16: TLabel;
    AngleButton2: TArcDial;
    AngleButton3: TArcDial;
    PopupBox1: TPopupBox;
    TextBox3: TEdit;
    Rectangle2: TPanel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Label19: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    StatusBar1: TStatusBar;
    Label20: TLabel;
    Panel2: TPanel;
    TabItem5: TTabItem;
    DropTarget1: TDropTarget;
    TabItem6: TTabItem;
    StringListBox1: TListBox;
    ListTransform: TListBox;
    TrackBar2: TTrackBar;
    Label21: TLabel;
    Label22: TLabel;
    TrackBar3: TTrackBar;
    Ellipse2: TEllipse;
    TextBox1: TEdit;
    TextBox4: TEdit;
    TabItem7: TTabItem;
    CornerButton1: TCornerButton;
    TrackBar4: TTrackBar;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CornerButton2: TCornerButton;
    CornerButton3: TCornerButton;
    CornerButton4: TCornerButton;
    CornerButton5: TCornerButton;
    CornerButton6: TCornerButton;
    Path2: TPath;
    Path3: TPath;
    Label23: TLabel;
    VertScrollBox1: TVertScrollBox;
    Button7: TButton;
    TrackBar5: TTrackBar;
    TextBox5: TEdit;
    Expander2: TExpander;
    Expander3: TExpander;
    Expander4: TExpander;
    TabItem8: TTabItem;
    Memo2: TMemo;
    SpinBox1: TSpinBox;
    Label26: TLabel;
    SmallScrollBar1: TSmallScrollBar;
    CheckBox7: TCheckBox;
    CheckBox2: TCheckBox;
    Label27: TLabel;
    ComboTrackBar1: TComboTrackBar;
    AlphaTrackBar1: TAlphaTrackBar;
    BWTrackBar1: TBWTrackBar;
    HueTrackBar1: THueTrackBar;
    Label28: TLabel;
    ComboColorBox1: TComboColorBox;
    TextBoxClearBtn1: TClearingEdit;
    CalloutPanel1: TCalloutPanel;
    Label29: TLabel;
    calloutTop: TRadioButton;
    calloutLeft: TRadioButton;
    calloutBottom: TRadioButton;
    calloutRight: TRadioButton;
    Calendar1: TCalendar;
    CalendarTextBox1: TCalendarEdit;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    OpenDialog1: TOpenDialog;
    MenuItem7: TMenuItem;
    ClearingEdit1: TClearingEdit;
    TrackBar6: TTrackBar;
    GlowEffect1: TGlowEffect;
    CheckBox8: TCheckBox;
    Timer1: TTimer;
    cb3DMode: TCheckBox;
    ALabel1: TLabel;
    ALabel2: TLabel;
    ALabel3: TLabel;
    sbLabel1: TLabel;
    procedure RotationTrackChange(Sender: TObject);
    procedure AngleButton1Change(Sender: TObject);
    procedure AngleButton2Change(Sender: TObject);
    procedure AngleButton3Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure CheckBox5Change(Sender: TObject);
    procedure CheckBox6Change(Sender: TObject);
    procedure cornerListChange(Sender: TObject);
    procedure CheckBox7Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure calloutBottomChange(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure btn3DBackClick(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DropTarget1DragOver(Sender: TObject; const Data: TDragObject;
      const Point: TPointF; var Accept: Boolean);
    procedure CheckBox8Change(Sender: TObject);
    procedure cb3DModeChange(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
  private
    { Private declarations }
    FViewport: TViewport3D;
    FContainer: TLayer3D;
    procedure SwitchTo3D;
    procedure SwitchTo2D;
  public
    { Public declarations }
  end;

var
  frmCtrlsDemo: TfrmCtrlsDemo;

implementation

uses System.Math, aboutboxfrm;

{$R *.fmx}

procedure TfrmCtrlsDemo.FormCreate(Sender: TObject);
var
  i: integer;
begin
  {$IFDEF MACOS}
  //MenuBar1.UseOSMenu := True;
  {$ENDIF}
  for i := 0 to 50 do
    with TRectangle.Create(Self) do
    begin
      parent := ScrollBox1;
      width := (30 + random(150));
      height := (30 + random(150));
      hittest := false;
      Position.x := random(1600);
      Position.y := random(1600);
      XRadius := random(20);
      YRadius := XRadius;
      {$R-}
      fill.Color := ((50 + random(205)) shl 24) or random($FFFFFF);
      {$R+}
    end;
  AngleButton2.Value := 3;
end;

procedure TfrmCtrlsDemo.MenuItem3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmCtrlsDemo.MenuItem6Click(Sender: TObject);
begin
  frmAbout := TfrmAbout.Create(Application);
  frmAbout.ShowModal;
  frmAbout.Free;
end;

procedure TfrmCtrlsDemo.MenuItem7Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    TStyleManager.SetStyle(TStyleManager.LoadFromFile(OpenDialog1.FileName));
end;

procedure TfrmCtrlsDemo.RotationTrackChange(Sender: TObject);
begin
  if Assigned(FContainer) then
  begin
    FContainer.RotationAngle.Y := RotationTrack.Value;
    FContainer.Position.Z := Abs(RotationTrack.Value) * 5;
  end;
end;

procedure TfrmCtrlsDemo.AngleButton1Change(Sender: TObject);
begin
  ALabel1.Text := FloatToStr(RoundTo(AngleButton1.Value, -2));
end;

procedure TfrmCtrlsDemo.AngleButton2Change(Sender: TObject);
begin
  ALabel2.Text := FloatToStr(RoundTo(AngleButton2.Value, -2));
end;

procedure TfrmCtrlsDemo.AngleButton3Change(Sender: TObject);
begin
  ALabel3.Text := FloatToStr(RoundTo(AngleButton3.Value, -2));
end;


procedure TfrmCtrlsDemo.SwitchTo3D;
begin
  { Create 3D viewport and layer }
  FViewport := TViewport3D.Create(Self);
  FViewport.Parent := Self;
  FViewport.Align := TAlignLayout.alClient;
  FViewport.Color := claNull;
  FContainer := TLayer3D.Create(Self);
  FContainer.Parent := FViewport;
  FContainer.Projection := TProjection.pjScreen;
  FContainer.Align := TAlignLayout.alClient;
  { Move object to 3D scene}
  ControlRoot.Parent := FContainer;
  { Enable objects }
  RotationText.Enabled := True;
  RotationTrack.Enabled := True;
end;

procedure TfrmCtrlsDemo.ScrollBar1Change(Sender: TObject);
begin
  sbLabel1.Text := FloatToStr(ScrollBar1.Value);
end;

procedure TfrmCtrlsDemo.SwitchTo2D;
begin
  { Back to 2D }
  ControlRoot.Parent := Self;
  { Free 3D }
  FreeAndNil(FViewport);
  { Disable objects }
  RotationText.Enabled := False;
  RotationTrack.Enabled := False;
end;

procedure TfrmCtrlsDemo.btn3DBackClick(Sender: TObject);
begin
  SwitchTo3D;
  if Assigned(FContainer) then
  begin
    FContainer.AnimateFloat('Position.Z', 500, 1);
    FContainer.AnimateFloatDelay('Position.Z', 0, 1, 1);
    FContainer.AnimateFloatWait('RotationAngle.X', 360, 2, TAnimationType.atInOut, TInterpolationType.itBack);
  end;
  SwitchTo2D;
end;

procedure TfrmCtrlsDemo.cb3DModeChange(Sender: TObject);
begin
  btn3DBack.Enabled := not cb3DMode.IsChecked;
  if cb3DMode.IsChecked then
  begin
    SwitchTo3D;
    RotationTrack.Value := 0;
  end
  else
    SwitchTo2D;
end;

procedure TfrmCtrlsDemo.Button4Click(Sender: TObject);
begin
  MenuItem6Click(self);
end;

procedure TfrmCtrlsDemo.TrackBar2Change(Sender: TObject);
begin
  ListTransform.RotationAngle := TrackBar2.Value;
  TextBox4.RotationAngle := TrackBar2.Value;
end;

procedure TfrmCtrlsDemo.TrackBar3Change(Sender: TObject);
begin
  ListTransform.Opacity := TrackBar3.Value;
  TextBox4.Opacity := TrackBar3.Value;
end;

procedure TfrmCtrlsDemo.TrackBar4Change(Sender: TObject);
begin
  CornerButton1.XRadius := TrackBar4.Value;
  CornerButton1.YRadius := TrackBar4.Value;

  CornerButton2.XRadius := TrackBar4.Value;;
  CornerButton2.YRadius := TrackBar4.Value;;
  CornerButton3.XRadius := TrackBar4.Value;;
  CornerButton3.YRadius := TrackBar4.Value;;
  CornerButton4.XRadius := TrackBar4.Value;;
  CornerButton4.YRadius := TrackBar4.Value;;

  CornerButton5.XRadius := TrackBar4.Value;;
  CornerButton5.YRadius := TrackBar4.Value;;
  CornerButton6.XRadius := TrackBar4.Value;;
  CornerButton6.YRadius := TrackBar4.Value;;
end;

procedure TfrmCtrlsDemo.CheckBox3Change(Sender: TObject);
begin
  if CheckBox3.IsChecked then
    CornerButton1.Corners := CornerButton1.Corners + [TCorner.crBottomRight]
  else
    CornerButton1.Corners := CornerButton1.Corners - [TCorner.crBottomRight]
end;

procedure TfrmCtrlsDemo.CheckBox4Change(Sender: TObject);
begin
  if CheckBox4.IsChecked then
    CornerButton1.Corners := CornerButton1.Corners + [TCorner.crTopRight]
  else
    CornerButton1.Corners := CornerButton1.Corners - [TCorner.crTopRight]
end;

procedure TfrmCtrlsDemo.CheckBox5Change(Sender: TObject);
begin
  if CheckBox5.IsChecked then
    CornerButton1.Corners := CornerButton1.Corners + [TCorner.crBottomLeft]
  else
    CornerButton1.Corners := CornerButton1.Corners - [TCorner.crBottomLeft]
end;

procedure TfrmCtrlsDemo.CheckBox6Change(Sender: TObject);
begin
  if CheckBox6.IsChecked then
    CornerButton1.Corners := CornerButton1.Corners + [TCorner.crTopLeft]
  else
    CornerButton1.Corners := CornerButton1.Corners - [TCorner.crTopLeft]
end;

procedure TfrmCtrlsDemo.cornerListChange(Sender: TObject);
begin
{  CornerButton1.CornerType := TCornerType(cornerList.ItemIndex);
  CornerButton2.CornerType := TCornerType(cornerList.ItemIndex);
  CornerButton3.CornerType := TCornerType(cornerList.ItemIndex);
  CornerButton4.CornerType := TCornerType(cornerList.ItemIndex);
  CornerButton5.CornerType := TCornerType(cornerList.ItemIndex);
  CornerButton6.CornerType := TCornerType(cornerList.ItemIndex);}
end;

procedure TfrmCtrlsDemo.DropTarget1DragOver(Sender: TObject;
  const Data: TDragObject; const Point: TPointF; var Accept: Boolean);
begin
  Accept := true;
end;

procedure TfrmCtrlsDemo.CheckBox7Change(Sender: TObject);
begin
  ListBox1.UseSmallScrollBars := CheckBox7.IsChecked;
  TreeView1.UseSmallScrollBars := CheckBox7.IsChecked;
end;

procedure TfrmCtrlsDemo.CheckBox8Change(Sender: TObject);
begin
  ListBox1.ShowCheckboxes := CheckBox8.IsChecked;
  TreeView1.ShowCheckboxes := CheckBox8.IsChecked;
end;

procedure TfrmCtrlsDemo.CheckBox2Change(Sender: TObject);
begin
  StringListBox1.MultiSelect := CheckBox2.IsChecked;
end;

procedure TfrmCtrlsDemo.calloutBottomChange(Sender: TObject);
begin
  if calloutLeft.IsChecked then
    CalloutPanel1.CalloutPosition := TCalloutPosition.cpLeft;
  if calloutRight.IsChecked then
    CalloutPanel1.CalloutPosition := TCalloutPosition.cpRight;
  if calloutTop.IsChecked then
    CalloutPanel1.CalloutPosition := TCalloutPosition.cpTop;
  if calloutBottom.IsChecked then
    CalloutPanel1.CalloutPosition := TCalloutPosition.cpBottom;
end;

end.
