unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, math, Gauges, jpeg;

type
  TfrmThemes = class(TForm)
    imgBackground: TImage;
    lblRed: TLabel;
    lblGreen: TLabel;
    lblBlue: TLabel;
    scbBlue: TScrollBar;
    scbGreen: TScrollBar;
    scbRed: TScrollBar;
    imgBar: TImage;
    lblHeading: TLabel;
    btnApply: TButton;
    ggeTheme: TGauge;
    imgColorRange: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnApplyClick(Sender: TObject);
    procedure scbBlueChange(Sender: TObject);
    procedure scbRedChange(Sender: TObject);
    procedure scbGreenChange(Sender: TObject);
    procedure lblHeadingClick(Sender: TObject);
    procedure imgColorRangeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgColorRangeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgColorRangeMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    ct     : integer;
    cb, c  : TColor;
    nochng : boolean;
    grey   : TColor;
    clrng  : boolean;


    procedure changin;
    procedure clrRange(x,y:integer);
  end;

var
  frmThemes: TfrmThemes;

implementation

uses Unit1, Unit2, Unit4, Unit6, Unit5, Unit8;

{$R *.dfm}

function ColorOverLay(bmp : TBitmap; ggeTheme : TGauge; R, G, B : byte; progress : boolean):TBitmap;
var
R2, G2, B2 : byte;
R3, G3, B3 : byte;
h, w       : integer;
color      : TColor;
Begin
 for h := 1 to bmp.height do
  begin
    if progress then ggeTheme.AddProgress(1);
    for w := 1 to bmp.width do
    begin
     color:=colortorgb(bmp.Canvas.pixels[w,h]);
     R2:=getrvalue(color);
     G2:=getgvalue(color);
     B2:=getbvalue(color);

     if R2 <> 0 then R3 := Trunc((R-1) / R2 * 25) else R3 := (R-1) * 25;
     if G2 <> 0 then G3 := Trunc((G-1) / G2 * 25) else G3 := (G-1) * 25;
     if B2 <> 0 then B3 := Trunc((B-1) / B2 * 25) else B3 := (B-1) * 25;

     R2 := Trunc(R2/255*220);
     G2 := Trunc(G2/255*220);
     B2 := Trunc(B2/255*220);

     bmp.canvas.Pixels[w,h]:=RGB(R2+R3, G2+G3, B2+B3);
     //frmMatheMagixPAT.imgCalculatorBackGround.Canvas.Pixels[w,h]:=RGB( R2+R3, G2+G3, B2+B3);
    end;
  end;
 Result := bmp;
end;

procedure TfrmThemes.changin;
var
 c : TColor;
 R, G, B : integer;
begin
 nochng := false;

 ggeTheme.ForeColor := RGB(scbRed.Position, scbGreen.Position, scbBlue.Position);

 R :=scbRed.Position;
 G :=scbGreen.Position;
 B :=scbBlue.Position;

 R := Trunc(R / 255 * 25);
 G := Trunc(G / 255 * 25);
 B := Trunc(B / 255 * 25);

 c  := RGB(230 + R, 230 + G, 230 + B);
 cb := RGB(95+R, 95+G, 95 + B);

 frmMatheMagixPAT.rgpCalculatorMode.Color := cb;

 frmMatheMagixPAT.Color := c;
 frmMatheMagixPAT.pnlFormulater.color := c;
 frmMatheMagixPAT.pnlBusiness.Color := c;

 frmMatheMagixPAT.pnlTimeLine.Color := c;
 frmMatheMagixPAT.pnlTimeLineControls.Color := c;
 frmMatheMagixPAT.pnlTimeLineEdit.Color := c;
 frmMatheMagixPAT.pnlRateChange.Color := c;
 frmMatheMagixPAT.pnlWithdraw.Color := c;
 frmMatheMagixPAT.pnlDeposit.Color := c;
 frmMatheMagixPAT.pnlNewTimeLine.Color := c;
 frmMatheMagixPAT.pnlSumSettings.Color := c;

 frmMatheMagixPAT.pnlGeoTab.Color := c;
 frmMatheMagixPAT.pnlMisTab.Color := c;
 frmMatheMagixPAT.pnlGameTab.color := c;

 frmMatheMagixPAT.lsbCalcHistory.Color := c;
 frmMatheMagixPAT.lsbAutoComplete.Color := c;

 frmMatheMagixPAT.rgpFactMult.Color := c;
 frmMatheMagixPAT.rgpInterestType.Color := c;
 frmMatheMagixPAT.rgpFormulater.Color := c;
 frmMatheMagixPAT.rgpBussiness.Color := c;

 frmMatheMagixPAT.gpbMean.Color := c;
 frmMatheMagixPAT.gpbMedian.Color := c;
 frmMatheMagixPAT.gpbMode.Color := c;
 frmMatheMagixPAT.gpbRange.Color := c;
 frmMatheMagixPAT.gpbLowerQ.Color := c;
 frmMatheMagixPAT.gpbUpperQ.Color := c;
 frmMatheMagixPAT.gpbInterQ.Color := c;
 frmMatheMagixPAT.gpbSemiInterQ.Color := c;

 frmMatheMagixPAT.srbStats.Color := c;

 frmVariables.vleVariables.Color := c;

 frmThemes.Color := clBlack;


end;

procedure TfrmThemes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not nochng then btnApplyClick(Sender);
 frmMatheMagixPAT.Enabled := true;
 frmWorksheet.Enabled := true;
 frmExplanation.Enabled := true;
 frmDrawer.Enabled := true;
 frmVariables.Enabled := true;
end;

procedure TfrmThemes.FormCreate(Sender: TObject);
begin
 ct   := 0;
 cb   := $00282828;
 c  := frmMatheMagixPAT.imgBar.Picture.Bitmap.Canvas.Pixels[305 ,180];
end;

procedure TfrmThemes.btnApplyClick(Sender: TObject);
var
 r, g, b : byte;
 bmp : TBitmap;
begin

 r := scbRed.Position;
 g := scbGreen.Position;
 b := scbBlue.Position;

 frmMatheMagixPAT.imgCalculatorBackGround.Picture.LoadFromFile('BackCalc.bmp');
 bmp := frmMatheMagixPAT.imgCalculatorBackGround.Picture.Bitmap;
 frmMatheMagixPAT.imgCalculatorBackGround.Picture.Bitmap := ColorOverLay(bmp, ggeTheme, r,g,b, True);

 frmMatheMagixPAT.imgTitle.Picture.LoadFromFile('HelpBar.bmp');
 bmp := frmMatheMagixPAT.imgTitle.Picture.Bitmap;
 frmMatheMagixPAT.imgTitle.Picture.Bitmap := ColorOverLay(bmp, ggeTheme, r,g,b, True);

 frmMatheMagixPAT.imgBar.Picture.LoadFromFile('TopBar.bmp');
 bmp := frmMatheMagixPAT.imgBar.Picture.Bitmap;
 frmMatheMagixPAT.imgBar.Picture.Bitmap := ColorOverLay(bmp, ggeTheme, r,g,b, True);

 frmMatheMagixPAT.imgBottomBar.Picture.LoadFromFile('BottomBar.bmp');
 bmp := frmMatheMagixPAT.imgBottomBar.Picture.Bitmap;
 frmMatheMagixPAT.imgBottomBar.Picture.Bitmap := ColorOverLay(bmp, ggeTheme, r,g,b, True);

 frmVariables.imgHeader.Picture.LoadFromFile('HelpBar.bmp');
 bmp := frmVariables.imgHeader.Picture.Bitmap;
 frmVariables.imgHeader.Picture.Bitmap := ColorOverLay(bmp, ggeTheme, r,g,b, True);

 frmVariables.imgBottomBar.Picture.LoadFromFile('BTBar.bmp');
 bmp := frmVariables.imgBottomBar.Picture.Bitmap;
 frmVariables.imgBottomBar.Picture.Bitmap := ColorOverLay(bmp, ggeTheme, r,g,b, True);

 frmThemes.imgBar.Picture.LoadFromFile('HelpBar.bmp');
 bmp := frmThemes.imgBar.Picture.Bitmap;
 frmThemes.imgBar.Picture.Bitmap := ColorOverLay(bmp, ggeTheme, r,g,b, True);

 frmDrawer.imgTool.Picture.LoadFromFile('BTBar.bmp');
 bmp := frmDrawer.imgTool.Picture.Bitmap;
 frmDrawer.imgTool.Picture.Bitmap := ColorOverLay(bmp, ggeTheme, r,g,b, True);

 frmWorksheet.imgFormula.Picture.LoadFromFile('HelpBar.bmp');
 bmp := frmWorksheet.imgFormula.Picture.Bitmap;
 frmWorksheet.imgFormula.Picture.Bitmap := ColorOverLay(bmp, ggeTheme, r,g,b, True);

 frmExplanation.imgBar.Picture.LoadFromFile('HelpBar.bmp');
 bmp := frmExplanation.imgBar.Picture.Bitmap;
 frmExplanation.imgBar.Picture.Bitmap := ColorOverLay(bmp, ggeTheme, r,g,b, True);

 c  := frmMatheMagixPAT.imgBar.Picture.Bitmap.Canvas.Pixels[305 ,185];

 frmMatheMagixPAT.Color := c;
 frmMatheMagixPAT.pnlFormulater.color := c;
 frmMatheMagixPAT.pnlBusiness.Color := c;

 frmMatheMagixPAT.pnlTimeLine.Color := c;
 frmMatheMagixPAT.pnlTimeLineControls.Color := c;
 frmMatheMagixPAT.pnlTimeLineEdit.Color := c;
 frmMatheMagixPAT.pnlRateChange.Color := c;
 frmMatheMagixPAT.pnlWithdraw.Color := c;
 frmMatheMagixPAT.pnlDeposit.Color := c;
 frmMatheMagixPAT.pnlNewTimeLine.Color := c;
 frmMatheMagixPAT.pnlSumSettings.Color := c;

 frmMatheMagixPAT.pnlGeoTab.Color := c;
 frmMatheMagixPAT.pnlMisTab.Color := c;
 frmMatheMagixPAT.pnlGameTab.color := c;

 frmMatheMagixPAT.rgpFactMult.Color := c;
 frmMatheMagixPAT.rgpInterestType.Color := c;
 frmMatheMagixPAT.rgpFormulater.Color := c;
 frmMatheMagixPAT.rgpBussiness.Color := c;

 frmMatheMagixPAT.lsbCalcHistory.Color := c;
 frmMatheMagixPAT.lsbAutoComplete.Color := c;

 frmMatheMagixPAT.gpbMean.Color := c;
 frmMatheMagixPAT.gpbMedian.Color := c;
 frmMatheMagixPAT.gpbMode.Color := c;
 frmMatheMagixPAT.gpbRange.Color := c;
 frmMatheMagixPAT.gpbLowerQ.Color := c;
 frmMatheMagixPAT.gpbUpperQ.Color := c;
 frmMatheMagixPAT.gpbInterQ.Color := c;
 frmMatheMagixPAT.gpbSemiInterQ.Color := c;

 frmMatheMagixPAT.srbStats.Color := c;

 frmVariables.vleVariables.Color := c;


 ggeTheme.BackColor := ggeTheme.ForeColor;
 //ggeTheme.ForeColor := c;

 frmThemes.Color := clBlack;
 ggeTheme.Progress := 2800;

  nochng := true;
end;

procedure TfrmThemes.scbBlueChange(Sender: TObject);
begin
 changin;
end;

procedure TfrmThemes.scbRedChange(Sender: TObject);
begin
 changin;
end;

procedure TfrmThemes.scbGreenChange(Sender: TObject);
begin
 changin;
end;

procedure TfrmThemes.lblHeadingClick(Sender: TObject);
begin
 imgBar.Picture.LoadFromFile('HelpBar.bmp');
 imgBar.Picture.Bitmap := ColorOverLay(imgBar.Picture.Bitmap, ggeTheme, scbRed.Position,scbGreen.Position,scbBlue.Position, False);
end;

procedure TfrmThemes.clrRange(x,y : integer);
var
 r,g,b : byte;
 clr   : TColor;
begin
 nochng := false;
 if clrng then
  Begin
   clr := imgColorRange.Picture.Bitmap.Canvas.Pixels[x,y];
   r := GetRValue(clr);
   g := GetGValue(clr);
   b := GetBValue(clr);
   scbRed.Position := r;
   scbGreen.Position := g;
   scbBlue.Position := b;
  end;
end;

procedure TfrmThemes.imgColorRangeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 clrng := true;
  clrRange(x,y);
end;

procedure TfrmThemes.imgColorRangeMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
clrng := false;
end;

procedure TfrmThemes.imgColorRangeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if clrng then
 clrRange(x,y);
end;

end.
