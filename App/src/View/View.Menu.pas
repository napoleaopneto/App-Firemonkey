unit View.Menu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Frame.Base, FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.Effects,
  View.Home.Frame, View.CartaoDigital,  View.Planos, Skia, Skia.FMX;

type
  TFrameMenuPrincipal = class(TFrameBase)
    FlowLayout: TFlowLayout;
    recHome: TRectangle;
    ShadowHome: TShadowEffect;
    LyrecHome: TLayout;
    LyHome: TLayout;
    recCartaoDigital: TRectangle;
    ShadowCartaoDgital: TShadowEffect;
    LyrecCartaoDigital: TLayout;
    lYLogoCartaoDigital: TLayout;
    recPlanos: TRectangle;
    ShadowPlanos: TShadowEffect;
    LyrecPlanos: TLayout;
    lyImgPlano: TLayout;
    recGuiaMedico: TRectangle;
    ShadowGuiaMedico: TShadowEffect;
    LyrecGuiaMedico: TLayout;
    lyGuiaMedico: TLayout;
    recCodBarras: TRectangle;
    ShadowCodBar: TShadowEffect;
    LyrecCodBarras: TLayout;
    imgCodBarras: TLayout;
    recHistoricoPagamento: TRectangle;
    ShadowHistorico: TShadowEffect;
    LyrecHistoricoPagamento: TLayout;
    LyImgHistoPagamento: TLayout;
    recAtendimentoWhats: TRectangle;
    ShadowEffect1: TShadowEffect;
    LyAtendimentoWhats: TLayout;
    lyImgWhats: TLayout;
    imgHome: TSkAnimatedImage;
    lbHome: TSkLabel;
    lbCartaoDigital: TSkLabel;
    lbPlanos: TSkLabel;
    lbGuiaMedico: TSkLabel;
    lbCodBarras: TSkLabel;
    lbHistoricoPagamento: TSkLabel;
    lbWhatsAtendimento: TSkLabel;
    imgCartaoDigital: TSkAnimatedImage;
    imgPlanos: TSkAnimatedImage;
    imgGuiaMedico: TSkAnimatedImage;
    imgCodBarrar: TSkAnimatedImage;
    imgHistoricoPagamento: TSkAnimatedImage;
    imgWhats: TSkAnimatedImage;
    procedure LyrecHomeClick(Sender: TObject);
    procedure LyrecCartaoDigitalClick(Sender: TObject);
    procedure LyrecPlanosClick(Sender: TObject);
  private
    { Private declarations }
    FActiveFrame: TFrameBase;
    FNomeMenu : string;
    procedure ChangeFrame<T: TFrameBase>;
  public
    { Public declarations }
    procedure DepoisDeAbrir; override;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.fmx}

{ TFrameMenuPrincipal }

procedure TFrameMenuPrincipal.ChangeFrame<T>;
begin
  if (FActiveFrame <> nil) then
  begin
    FActiveFrame := nil;
  end;
  FActiveFrame := T.Create(vsbPrincipal);
  TFrameBase(FActiveFrame).lbDescMenu.text := 'Menu  >  ' + FNomeMenu;
  if TFrameBase(FActiveFrame).name <> 'FrameMenuPrincipal' then
    TFrameBase(FActiveFrame).lbDescOutros.visible := false;
  FActiveFrame.Align := TAlignLayout.Contents;
  vsbPrincipal.AddObject(FActiveFrame);
end;

constructor TFrameMenuPrincipal.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FNomeMenu := '';
  lbDescMenu.text := 'Sistema Modelo';
  lbDescOutros.text := 'João da Silva';
end;

procedure TFrameMenuPrincipal.DepoisDeAbrir;
begin
  inherited;
end;

destructor TFrameMenuPrincipal.Destroy;
begin

  inherited;
end;

procedure TFrameMenuPrincipal.LyrecCartaoDigitalClick(Sender: TObject);
begin
  inherited;
  FNomeMenu := lbCartaoDigital.text;
  ChangeFrame<TFrameCartaoDigital>;
end;

procedure TFrameMenuPrincipal.LyrecHomeClick(Sender: TObject);
begin
  inherited;
  FNomeMenu := lbHome.text;
  ChangeFrame<TFrameHome>;
end;

procedure TFrameMenuPrincipal.LyrecPlanosClick(Sender: TObject);
begin
  inherited;
  FNomeMenu := lbPlanos.text;
  ChangeFrame<TFramePlanos>;
end;

end.
