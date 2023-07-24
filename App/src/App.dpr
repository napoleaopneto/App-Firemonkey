program App;

uses
  System.StartUpCopy,
  FMX.Forms,
  Skia.FMX,
  FMX.Types,
  View.Principal in 'View\View.Principal.pas' {FrmPrincipal},
  View.Menu.Frame in 'View\View.Menu.Frame.pas' {FrameMenu: TFrame},
  Frame.Base in 'Base\Frame.Base.pas' {FrameBase: TFrame},
  View.Menu in 'View\View.Menu.pas' {FrameMenuPrincipal: TFrame},
  View.Home.Frame in 'View\View.Home.Frame.pas' {FrameHome: TFrame},
  View.CartaoDigital in 'View\View.CartaoDigital.pas' {FrameCartaoDigital: TFrame},
  View.Planos in 'View\View.Planos.pas' {FramePlanos: TFrame};

{$R *.res}

begin
  GlobalUseMetal := True;
//  GlobalUseSkiaRasterWhenAvailable := False;
  GlobalUseSkia := True;
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
