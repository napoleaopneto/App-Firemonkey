unit Frame.Base;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, Skia, Skia.FMX;

type
  TFrameBase = class(TFrame)
    vsbPrincipal: TVertScrollBox;
    recPrincipal: TRectangle;
    LyPrincipal: TLayout;
    LyPrincipalTop: TLayout;
    recTop: TRectangle;
    recTopTop: TRectangle;
    LyPrincipalCentro: TLayout;
    recBotton: TRectangle;
    recBottonBotton: TRectangle;
    LyPrincipalControlesControles: TLayout;
    LyControles: TLayout;
    LyMenuSair: TLayout;
    LyBtnSair: TLayout;
    LyDescricaoTop: TLayout;
    LyDescTop: TLayout;
    LyDescBoton: TLayout;
    btnVoltar: TPath;
    lbDescMenu: TSkLabel;
    lbDescOutros: TSkLabel;
    Line1: TLine;
    procedure LyBtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DepoisDeAbrir; virtual;
  end;

implementation

{$R *.fmx}

procedure TFrameBase.DepoisDeAbrir;
begin

end;

procedure TFrameBase.LyBtnSairClick(Sender: TObject);
begin
  Self.DisposeOf;
end;

end.
