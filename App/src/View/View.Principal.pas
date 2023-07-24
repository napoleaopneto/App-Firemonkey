unit View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Effects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, View.Menu,
  Skia, Skia.FMX;

type
  TFrmPrincipal = class(TForm)
    vsbPrincipal: TVertScrollBox;
    recPrincipal: TRectangle;
    LyPrincipal: TLayout;
    LyPrincipalTop: TLayout;
    LyPrincipalCentro: TLayout;
    recTop: TRectangle;
    recTopTop: TRectangle;
    recBotton: TRectangle;
    recBottonBotton: TRectangle;
    LyPrincipalControlesControles: TLayout;
    LyControles: TLayout;
    recControles: TRectangle;
    Shadow: TShadowEffect;
    LyControlesPrincipal: TLayout;
    LyLogo: TLayout;
    LyCenterControles: TLayout;
    LyEdtBtnLogin: TLayout;
    LyEdtLogin: TLayout;
    LyBtnLogin: TLayout;
    LyRodapeLogin: TLayout;
    lbLogin: TLabel;
    edtLogin: TEdit;
    recBtnLogin: TRectangle;
    btnLogin: TSpeedButton;
    lbVersaoApp: TLabel;
    StyleBook1: TStyleBook;
    LogoImg: TSkAnimatedImage;
    recTampTop: TRectangle;
    recTampBotton: TRectangle;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
    FActiveFrame: TFrameMenuPrincipal;
    procedure ChangeFrame<T: TFrameMenuPrincipal>;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

procedure TFrmPrincipal.ChangeFrame<T>;
begin
  if (FActiveFrame <> nil) then
  begin
    vsbPrincipal.RemoveObject(FActiveFrame);
  end;
  FActiveFrame := T.Create(vsbPrincipal);
  FActiveFrame.Align := TAlignLayout.Contents;
  vsbPrincipal.AddObject(FActiveFrame);
end;

procedure TFrmPrincipal.btnLoginClick(Sender: TObject);
begin
  ChangeFrame<TFrameMenuPrincipal>;
end;

end.
