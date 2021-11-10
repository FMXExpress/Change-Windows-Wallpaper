unit uMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, Windows, FMX.Objects, System.IOUtils,
  FMX.Layouts;

type
  TMainForm = class(TForm)
    MaterialOxfordBlueSB: TStyleBook;
    BackgroundImage: TImage;
    Button1: TButton;
    GridPanelLayout1: TGridPanelLayout;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetWallpaper(APath: String);
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

procedure TMainForm.Button2Click(Sender: TObject);
begin
  SetWallpaper(TPath.Combine(ExtractFilePath(ParamStr(0)),'delphinaut.jpg'));
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  SetWallpaper(TPath.Combine(ExtractFilePath(ParamStr(0)),'cppnaut.jpg'));
end;

procedure TMainForm.SetWallpaper(APath: String);
begin
  SystemParametersInfo(SPI_SETDESKWALLPAPER, 0, PChar(APath), SPIF_SENDCHANGE);
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  SetWallpaper(TPath.Combine(ExtractFilePath(ParamStr(0)),'radnaut.jpg'));
end;

end.
