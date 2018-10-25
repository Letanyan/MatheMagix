unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Menus, ExtDlgs, jpeg, Spin;

type
  TfrmDrawer = class(TForm)
    pnlDrawerTools: TPanel;
    mnmDrawer: TMainMenu;
    File1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    N1: TMenuItem;
    Clear: TMenuItem;
    opnpicdlg: TOpenPictureDialog;
    svepicdlg: TSavePictureDialog;
    clrdlg: TColorDialog;
    imgTool: TImage;
    scbRed: TScrollBar;
    scbGreen: TScrollBar;
    scbBrushSize: TScrollBar;
    scbBlue: TScrollBar;
    pnlChoosenColor: TPanel;
    lblRed: TLabel;
    lblGreen: TLabel;
    lblBrushSize: TLabel;
    lblBlue: TLabel;
    bvlclrChoice: TBevel;
    bmbShape: TBitBtn;
    bmbPencil: TBitBtn;
    bmbEyeDrop: TBitBtn;
    bmbEraser: TBitBtn;
    bmbBucket: TBitBtn;
    bmbBrush: TBitBtn;
    imgColorChoose: TImage;
    tmrNewOpen: TTimer;
    tmrNewClose: TTimer;
    N2: TMenuItem;
    Close: TMenuItem;
    radToolChoice: TShape;
    tmrElect: TTimer;
    scxWorkSpace: TScrollBox;
    imgDrawerBack: TImage;
    imgCanvas: TImage;
    pnlNewPic: TPanel;
    imgNewPic: TImage;
    lblHeight: TLabel;
    lblWidth: TLabel;
    btnCancelNew: TButton;
    btnNew: TButton;
    sedWidth: TSpinEdit;
    sedHeight: TSpinEdit;
    procedure bmbPencilClick(Sender: TObject);
    procedure bmbBrushClick(Sender: TObject);
    procedure bmbEraserClick(Sender: TObject);
    procedure bmbBucketClick(Sender: TObject);
    procedure bmbEyeDropClick(Sender: TObject);
    procedure bmbShapeClick(Sender: TObject);
    procedure scbRedChange(Sender: TObject);
    procedure scbGreenChange(Sender: TObject);
    procedure scbBlueChange(Sender: TObject);
    procedure imgCanvasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgCanvasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure imgCanvasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ClearClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure scbBrushSizeChange(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure New1Click(Sender: TObject);
    procedure imgColorChooseMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure imgColorChooseMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure imgColorChooseMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnNewClick(Sender: TObject);
    procedure btnCancelNewClick(Sender: TObject);
    procedure tmrNewOpenTimer(Sender: TObject);
    procedure tmrNewCloseTimer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CloseClick(Sender: TObject);
    procedure pnlChoosenColorClick(Sender: TObject);
    procedure tmrElectTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Tool               : Char;
    FileName           : string;
    clrChoice, Drawing, ReSize : boolean;
    R, G, B            : byte;
    btbtn              : TBitBtn;
    left, up           : boolean;

    procedure MoveElect(btn : TBitBtn; left, up : boolean);
  end;

var
  frmDrawer: TfrmDrawer;

implementation

uses Unit1;

{$R *.dfm}

procedure TfrmDrawer.bmbPencilClick(Sender: TObject);
begin
 Tool := 'P';
 imgCanvas.Canvas.Pen.Width := 1;
 imgCanvas.Canvas.Pen.Color := pnlChoosenColor.Color;
 scbBrushSize.Enabled := false;
  tmrElect.Enabled := true;
  if btbtn.Left > TBitBtn(Sender).Left then left := true else left := false;
 if btbtn.Top  > TBitBtn(Sender).Top   then up   := true else up   := false;
 btbtn := TBitBtn(Sender); 
  
end;

procedure TfrmDrawer.bmbBrushClick(Sender: TObject);
begin
 Tool := 'B';
 imgCanvas.Canvas.Pen.Width := scbBrushSize.Position;
 imgCanvas.Canvas.Pen.Color := pnlChoosenColor.Color;
 scbBrushSize.Enabled := True;
 tmrElect.Enabled := true;
 if btbtn.Left > TBitBtn(Sender).Left then left := true else left := false;
 if btbtn.Top  > TBitBtn(Sender).Top   then up   := true else up   := false;
 btbtn := TBitBtn(Sender);

end;

procedure TfrmDrawer.bmbEraserClick(Sender: TObject);
begin
 Tool := 'E';
 imgCanvas.Canvas.Pen.Width := scbBrushSize.Position;
 imgCanvas.Canvas.Pen.Color := clWhite;
 scbBrushSize.Enabled := True;
  tmrElect.Enabled := true;
  if btbtn.Left > TBitBtn(Sender).Left then left := true else left := false;
 if btbtn.Top  > TBitBtn(Sender).Top   then up   := true else up   := false;
 btbtn := TBitBtn(Sender);  
end;

procedure TfrmDrawer.bmbBucketClick(Sender: TObject);
begin
 Tool := 'F';
 scbBrushSize.Enabled := True;
  tmrElect.Enabled := true;
  if btbtn.Left > TBitBtn(Sender).Left then left := true else left := false;
 if btbtn.Top  > TBitBtn(Sender).Top   then up   := true else up   := false;
 btbtn := TBitBtn(Sender);  
end;

procedure TfrmDrawer.bmbEyeDropClick(Sender: TObject);
begin
 Tool := 'V';
 scbBrushSize.Enabled := True;
  tmrElect.Enabled := true;
  if btbtn.Left > TBitBtn(Sender).Left then left := true else left := false;
 if btbtn.Top  > TBitBtn(Sender).Top   then up   := true else up   := false;
  btbtn := TBitBtn(Sender);
end;

procedure TfrmDrawer.bmbShapeClick(Sender: TObject);
begin
 Tool := 'S';
 scbBrushSize.Enabled := True;
  tmrElect.Enabled := true;
  if btbtn.Left > TBitBtn(Sender).Left then left := true else left := false;
 if btbtn.Top  > TBitBtn(Sender).Top   then up   := true else up   := false;
 btbtn := TBitBtn(Sender);  
end;

procedure TfrmDrawer.scbRedChange(Sender: TObject);
begin
 pnlChoosenColor.Color := RGB(scbRed.Position, scbGreen.Position, scbBlue.Position);
  imgCanvas.Canvas.Pen.Color := pnlChoosenColor.Color;
end;

procedure TfrmDrawer.scbGreenChange(Sender: TObject);
begin
 pnlChoosenColor.Color := RGB(scbRed.Position, scbGreen.Position, scbBlue.Position);
  imgCanvas.Canvas.Pen.Color := pnlChoosenColor.Color;
end;

procedure TfrmDrawer.scbBlueChange(Sender: TObject);
begin
 pnlChoosenColor.Color := RGB(scbRed.Position, scbGreen.Position, scbBlue.Position);
  imgCanvas.Canvas.Pen.Color := pnlChoosenColor.Color;
end;

procedure TfrmDrawer.imgCanvasMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 Drawing := True;
 imgCanvas.Canvas.MoveTo(X, Y);
 case Tool of
  'F' : begin
         imgCanvas.Canvas.Brush.color:= pnlChoosenColor.Color;
         imgCanvas.Canvas.FloodFill(x, y, imgCanvas.Canvas.Pixels[x,y], fsSurface);
        end;
  'V' : Begin
         pnlChoosenColor.Color := imgCanvas.Picture.Bitmap.Canvas.Pixels[x,y];
         imgCanvas.Canvas.Pen.Color :=imgCanvas.Picture.Bitmap.Canvas.Pixels[x,y];
         R := GetRvalue(pnlChoosenColor.Color);
         G := GetGvalue(pnlChoosenColor.Color);
         B := GetBvalue(pnlChoosenColor.Color);
         scbRed.Position := R;
         scbGreen.Position := G;
         scbBlue.Position := B;
        end;
 end;
end;

procedure TfrmDrawer.imgCanvasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 frmMatheMagixPAT.imgDrawerCanvas.Picture := imgCanvas.Picture;
 if Drawing then
  Case Tool of
   'B', 'E', 'P' : imgCanvas.Canvas.LineTo(X, Y);
  end else
  begin

  end;

end;

procedure TfrmDrawer.imgCanvasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 Drawing := false;
end;

procedure TfrmDrawer.ClearClick(Sender: TObject);
begin
 imgcanvas.Picture := nil;
 imgCanvas.Canvas.Refresh;
end;

procedure TfrmDrawer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 frmMatheMagixPAT.Show;
 frmMatheMagixPAT.imgDrawerCanvas.Picture := imgCanvas.Picture;
 frmMatheMagixPAT.flenme := fileName;
end;

procedure TfrmDrawer.scbBrushSizeChange(Sender: TObject);
begin
 imgCanvas.Canvas.Pen.Width := scbBrushSize.Position;
end;

procedure TfrmDrawer.Save1Click(Sender: TObject);
begin
 if FileName <> ''
  then
   imgCanvas.Picture.SaveToFile(FileName)
  else
   SaveAs1Click(sender);
end;

procedure TfrmDrawer.SaveAs1Click(Sender: TObject);
var
 s : string;
begin
 svepicdlg.Execute;
 if svepicdlg.FileName <> '' then
  begin
   s := svepicdlg.FileName;
   delete(s, 1, length(s)-3);
   s := UpperCase(s);
   if s <> 'BMP'
    then
     imgCanvas.Picture.SaveToFile(svepicdlg.FileName + '.bmp')
    else
    imgCanvas.Picture.SaveToFile(svepicdlg.FileName);
   FileName := svepicdlg.FileName;
  end;
end;

procedure TfrmDrawer.FormCreate(Sender: TObject);
begin
 //New1Click(Sender);
 Tool := 'B';
 Drawing := False;
 //lblBrushSize.Caption := 'B'+#10+'r'+#10+'u'+#10+'s'+#10+'h'+#10+' '+#10+'S'+#10+'i'+#10+'z'+#10+'e';
 lblBrushSize.Caption := 'B S'+#10+'r i'+#10+'u z'+#10+'s e'+#10+'h';
 imgTool.Picture.LoadFromFile('BTBar.bmp');
 btbtn := bmbBrush;
end;

procedure TfrmDrawer.Open1Click(Sender: TObject);
begin
 opnpicdlg.Execute;
 if opnpicdlg.FileName <> '' then
  begin
   imgCanvas.Picture.LoadFromFile(opnpicdlg.FileName);
   filename := opnpicdlg.FileName;
  end;
end;

procedure TfrmDrawer.New1Click(Sender: TObject);
begin
 tmrNewOpen.Enabled := true;
 sedWidth.Value := imgCanvas.Width;
 sedHeight.Value := imgCanvas.Height;
 imgCanvas.Enabled := false;
 pnlDrawerTools.Enabled := false;
end;

procedure TfrmDrawer.imgColorChooseMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 clrChoice := True;
end;

procedure TfrmDrawer.imgColorChooseMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
 clr : TColor;
begin
if Tool <> 'E' then
 if clrChoice then
  Begin
   clr := imgColorChoose.Canvas.Pixels[X, Y];
   pnlChoosenColor.Color := clr;
   scbRed.Position := GetRValue(clr);
   scbGreen.Position := GetGValue(clr);
   scbBlue.Position := GetBValue(clr);
  end;
end;

procedure TfrmDrawer.imgColorChooseMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 clrChoice := false;
end;

procedure TfrmDrawer.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 ReSize := true;
end;

procedure TfrmDrawer.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Resize := false;
end;

procedure TfrmDrawer.btnNewClick(Sender: TObject);
begin
  tmrNewClose.Enabled := true;
  filename := '';
  imgCanvas.Width := sedWidth.Value;
  imgCanvas.Height := sedHeight.Value;
  imgCanvas.Picture := nil;
  frmDrawer.ClientHeight := imgCanvas.Height + pnlDrawerTools.Height + 100;
  frmDrawer.ClientWidth :=  imgCanvas.Width + 100;
  imgCanvas.Enabled := true;
  pnlDrawerTools.Enabled := true;
  imgCanvas.Canvas.Refresh;
  if Tool <> 'P' then
   imgCanvas.Canvas.Pen.Width := scbBrushSize.Position;
end;

procedure TfrmDrawer.btnCancelNewClick(Sender: TObject);
begin
 tmrNewClose.Enabled := true;
 imgCanvas.Enabled := true;
 pnlDrawerTools.Enabled := true;
end;

procedure TfrmDrawer.tmrNewOpenTimer(Sender: TObject);
begin
 if pnlNewPic.Top < -2
  then
   pnlNewPic.Top := pnlNewPic.Top  + 2
  else
   tmrNewOpen.Enabled := false;
end;

procedure TfrmDrawer.tmrNewCloseTimer(Sender: TObject);
begin
if pnlNewPic.Top > -74
  then
   pnlNewPic.Top := pnlNewPic.Top - 2
  else
   tmrNewClose.Enabled := false;
end;

procedure TfrmDrawer.FormResize(Sender: TObject);
begin
 pnlNewPic.Left := frmDrawer.Width div 2 - pnlNewPic.Width Div 2;
 imgCanvas.Top := imgDrawerBack.Height div 2 - imgCanvas.Height Div 2;
 imgCanvas.left := imgDrawerBack.Width div 2 - imgCanvas.Width Div 2;
end;

procedure TfrmDrawer.CloseClick(Sender: TObject);
begin
 frmMatheMagixPAT.Show;
 frmMatheMagixPAT.imgDrawerCanvas.Picture := imgCanvas.Picture;
 frmMatheMagixPAT.flenme := fileName;
 frmDrawer.Hide;
end;

procedure TfrmDrawer.pnlChoosenColorClick(Sender: TObject);
begin
 clrdlg.Execute;
 imgCanvas.Canvas.Pen.Color := clrdlg.Color;
end;

procedure TfrmDrawer.MoveElect(btn : TBitBtn; left, up : boolean);
begin
 if radToolChoice.Left <> btn.Left - 8
  then
   if left
    then
     radToolChoice.Left := radToolChoice.Left - 1
    else
     radToolChoice.Left := radToolChoice.Left + 1;

 if radToolChoice.Top <> btn.Top - 8
  then
   if up
    then
     radToolChoice.Top := radToolChoice.Top - 1
    else
     radToolChoice.Top := radToolChoice.Top + 1;

 if (radToolChoice.Top = btn.Top - 8)  and (radToolChoice.Left = btn.Left - 8)
  then
   tmrElect.Enabled := false;
end;

procedure TfrmDrawer.tmrElectTimer(Sender: TObject);
begin
 MoveElect(btbtn, left, up);
end;

end.
