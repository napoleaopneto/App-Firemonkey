unit View.Menu.Frame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.Effects, FMX.Controls.Presentation;

type
  TFrameMenu = class(TFrame)
    FlowLayout: TFlowLayout;
    recHome: TRectangle;
    ShadowHome: TShadowEffect;
    LyrecHome: TLayout;
    LyHome: TLayout;
    imgHome: TPath;
    lbHome: TLabel;
    recCartaoDigital: TRectangle;
    ShadowCartaoDgital: TShadowEffect;
    LyrecCartaoDigital: TLayout;
    lYLogoCartaoDigital: TLayout;
    imgCartaoDigital: TPath;
    lbCartaoDigital: TLabel;
    recPlanos: TRectangle;
    ShadowPlanos: TShadowEffect;
    LyrecPlanos: TLayout;
    lyImgPlano: TLayout;
    imgPlano: TPath;
    lbPlanos: TLabel;
    recGuiaMedico: TRectangle;
    ShadowGuiaMedico: TShadowEffect;
    LyrecGuiaMedico: TLayout;
    lyGuiaMedico: TLayout;
    imgGuiaMedico: TPath;
    lbGuiaMedico: TLabel;
    recCodBarras: TRectangle;
    ShadowCodBar: TShadowEffect;
    LyrecCodBarras: TLayout;
    imgCodBarras: TLayout;
    imgCodBar: TPath;
    lbCódBarras: TLabel;
    recHistoricoPagamento: TRectangle;
    ShadowHistorico: TShadowEffect;
    LyrecHistoricoPagamento: TLayout;
    LyImgHistoPagamento: TLayout;
    imgHistoPagamento: TPath;
    lbHistoricoPagamento: TLabel;
    recAtendimentoWhats: TRectangle;
    ShadowEffect1: TShadowEffect;
    LyAtendimentoWhats: TLayout;
    lyImgWhats: TLayout;
    imgWhats: TPath;
    lbAtendimentowhats: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
