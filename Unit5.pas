unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TfrmExplanation = class(TForm)
    lsbList: TListBox;
    memExplaination: TMemo;
    pnlToolBar: TPanel;
    edtSearch: TEdit;
    cmbCategory: TComboBox;
    cmbVolume: TComboBox;
    cmbTempreture: TComboBox;
    cmbMass: TComboBox;
    cmbArea: TComboBox;
    cmbDistance: TComboBox;
    cmbTime: TComboBox;
    cmbAllConvert: TComboBox;
    pnlSeperator: TPanel;
    imgBar: TImage;
    procedure lsbListClick(Sender: TObject);
    procedure edtSearchMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cmbCategoryChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlToolBarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlSeperatorMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlSeperatorMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlSeperatorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    Empty, Resizing : boolean;
    Func : array of String;
    
    procedure WriteConvTypes(s : string; cmb : TComboBox);
    procedure writeToAllCon;
  end;

var
  frmExplanation: TfrmExplanation;

implementation

Uses Unit1, ConvUtils;

{$R *.dfm}

procedure TfrmExplanation.lsbListClick(Sender: TObject);
var
 s   : string;
begin

 s := lsbList.Items[lsbList.itemIndex];
 memExplaination.Clear;

 memExplaination.Lines.add(s);
 memExplaination.Lines.add(' ');


 if s = 'ABS' then
  begin
   memExplaination.Lines.Add('Description-');
   memExplaination.Lines.Add('The ABS function returns the absolute value of a number');
   memExplaination.Lines.Add(' ');


   memExplaination.Lines.Add('Syntax-');
   memExplaination.Lines.Add('ABS(x)');
   memExplaination.Lines.Add('x is a numerical value');
   memExplaination.Lines.Add('-inf > x < inf');
   memExplaination.Lines.Add(' ');

   memExplaination.Lines.Add('Usage-');
   memExplaination.Lines.Add('The returned value is always a number larger than 0, as the function removes any negative operator');
   memExplaination.Lines.Add(' ');

   memExplaination.Lines.Add('Examples-');
   memExplaination.Lines.Add('ABS(5) = 5');
   memExplaination.Lines.Add('ABS(-5) = 5');
   memExplaination.Lines.Add('ABS(15-5) = 10');
   memExplaination.Lines.Add('ABS(5-15) = 10');
   memExplaination.Lines.Add(' ');

  end else
 if s = 'ACOS' then
  begin
   memExplaination.Lines.Add('Description-');
   memExplaination.Lines.Add('The ACOS function returns the inverse cosine of a number');
   memExplaination.Lines.Add(' ');


   memExplaination.Lines.Add('Syntax-');
   memExplaination.Lines.Add('ABS(x)');
   memExplaination.Lines.Add('x is a numerical between the range of -1 and 1');
   memExplaination.Lines.Add('-1 >= x <= 1');
   memExplaination.Lines.Add(' ');

   memExplaination.Lines.Add('Usage-');
   memExplaination.Lines.Add('The ACOS function takes the corresponding angle of the cosine function');
   memExplaination.Lines.Add(' ');

   memExplaination.Lines.Add('Examples-(Approx.)');
   memExplaination.Lines.Add('ACOS(-1) = pi');
   memExplaination.Lines.Add('ACOS(1) = 0');
   memExplaination.Lines.Add('ACOS(.6) = 0.9272952180016');
   memExplaination.Lines.Add('ACOS(0.54030230586814) = 1');
   memExplaination.Lines.Add(' ');
  end else
 if s = 'ACOSH' then
  begin
   memExplaination.Lines.Add('Description-');
   memExplaination.Lines.Add('The ACOSH function returns the inverse hyperbolic cosine of a number');
   memExplaination.Lines.Add(' ');


   memExplaination.Lines.Add('Syntax-');
   memExplaination.Lines.Add('ABS(x)');
   memExplaination.Lines.Add('x is greater than or equal to 1');
   memExplaination.Lines.Add('x >= 1');
   memExplaination.Lines.Add(' ');
  {to do |V|}
   memExplaination.Lines.Add('Examples-(Approx.)');
   memExplaination.Lines.Add('ACOS(-1) = pi');
   memExplaination.Lines.Add('ACOS(1) = 0');
   memExplaination.Lines.Add('ACOS(.6) = 0.9272952180016');
   memExplaination.Lines.Add('ACOS(0.54030230586814) = 1');
   memExplaination.Lines.Add(' ');
  end else
 if s = 'ACOT' then
  begin
   memExplaination.Lines.Add('Description-');
   memExplaination.Lines.Add('The ACOT function returns thecotangent of a number');
   memExplaination.Lines.Add(' ');


   memExplaination.Lines.Add('Syntax-');
   memExplaination.Lines.Add('ACOT(x)');
   memExplaination.Lines.Add('x is greater than or equal to 1');
   memExplaination.Lines.Add('x >= 1');
   memExplaination.Lines.Add(' ');

   memExplaination.Lines.Add('Examples-(Approx.)');
   memExplaination.Lines.Add('ACOS(-1) = pi');
   memExplaination.Lines.Add('ACOS(1) = 0');
   memExplaination.Lines.Add('ACOS(.6) = 0.9272952180016');
   memExplaination.Lines.Add('ACOS(0.54030230586814) = 1');
   memExplaination.Lines.Add(' ');
  end;
end;

procedure TfrmExplanation.edtSearchMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if edtSearch.Text = 'Search' then
  begin
   empty := true;
   edtSearch.SelStart := 0;
  end;
end;

procedure TfrmExplanation.cmbCategoryChange(Sender: TObject);
var
 i, k : integer;
 s : string;
 cmb : TCOmboBox;
begin
 s := cmbCategory.Items[cmbCategory.ItemIndex] ;
 cmb := TComboBox.Create(frmMatheMagixPAT.cmbCalculatorFunctions);
 cmb.Parent := Self;
 cmb.Items := frmMatheMagixPAT.cmbCalculatorFunctions.Items;
 SetLength(func, cmb.Items.Count);
 for i := 1 to length(func) - 1 do
  func[i] := '';

 if s = 'All' then
  begin
   for i := 1 to cmb.Items.Count - 1 do
    func[i] := cmb.Items[i];
  end else
 if s = 'Trigonometric' then
  begin
   k := 1;
   for i := 1 to cmb.Items.Count - 1 do
    if (cmb.Items[i] = 'ACOS') OR (cmb.Items[i] = 'ACOSH')
    OR (cmb.Items[i] = 'ACOT') OR (cmb.Items[i] = 'ACOTH')
    OR (cmb.Items[i] = 'ACSC') OR (cmb.Items[i] = 'ACSCH')
    OR (cmb.Items[i] = 'ASEC') OR (cmb.Items[i] = 'ASECH')
    OR (cmb.Items[i] = 'ASIN') OR (cmb.Items[i] = 'ASINH')
    OR (cmb.Items[i] = 'ATAN') OR (cmb.Items[i] = 'ATAN2')
    OR (cmb.Items[i] = 'ATANH') OR (cmb.Items[i] = 'COS')
    OR (cmb.Items[i] = 'COSH') OR (cmb.Items[i] = 'COT')
    OR (cmb.Items[i] = 'COTH') OR (cmb.Items[i] = 'CSC')
    OR (cmb.Items[i] = 'CSCH') OR (cmb.Items[i] = 'DEGREE')
    OR (cmb.Items[i] = 'RADIANS') OR (cmb.Items[i] = 'SEC')
    OR (cmb.Items[i] = 'SECH') OR (cmb.Items[i] = 'SIN')
    OR (cmb.Items[i] = 'SINH') OR (cmb.Items[i] = 'TAN')
    OR (cmb.Items[i] = 'TANH') then
    begin
     SetLength(func, k+1);
     func[k] := frmMatheMagixPAT.cmbCalculatorFunctions.Items[i];
     inc(k);
    end;

  end else
 if s = 'Date and Time' then
  begin
   k := 1;
   for i := 1 to cmb.Items.Count - 1 do
    if (cmb.Items[i] = 'DATEDIF')
    then begin
     SetLength(func, k+1);
     func[k] := frmMatheMagixPAT.cmbCalculatorFunctions.Items[i];
     inc(k);
    end;
  end else
 if s = 'Duration' then
  begin
    k := 1;
   for i := 1 to cmb.Items.Count - 1 do
    if (cmb.Items[i] = 'DUR2D') OR (cmb.Items[i] = 'DUR2H')
    OR (cmb.Items[i] = 'DUR2MILLI') OR (cmb.Items[i] = 'DUR2MIN')
    OR (cmb.Items[i] = 'DUR2S') OR (cmb.Items[i] = 'DUR2W')then
    begin
     SetLength(func, k+1);
     func[k] := frmMatheMagixPAT.cmbCalculatorFunctions.Items[i];
     inc(k);
    end;

  end else
 if s = 'Engineering' then
  begin
   k := 1;
   for i := 1 to cmb.Items.Count - 1 do
    if (cmb.Items[i] = 'BASE2NUM') OR (cmb.Items[i] = 'CONVERT')
    OR (cmb.Items[i] = 'NUM2BASE') OR (cmb.Items[i] = 'BIN2DEC')then
    begin
     SetLength(func, k+1);
     func[k] := frmMatheMagixPAT.cmbCalculatorFunctions.Items[i];
     inc(k);
    end;

  end else
 if s  = 'Numeric' then
  begin
    k := 1;
   for i := 1 to cmb.Items.Count - 1 do
    if (cmb.Items[i] = 'ABS') OR (cmb.Items[i] = 'CEIL')
    OR (cmb.Items[i] = 'CBRT') OR (cmb.Items[i] = 'COMBIN')
    OR (cmb.Items[i] = 'DIV') OR (cmb.Items[i] = 'EVEM')
    OR (cmb.Items[i] = 'EXP') OR (cmb.Items[i] = 'FACT')
    OR (cmb.Items[i] = 'FACTDOUBLE') OR (cmb.Items[i] = 'FLOOR')
    OR (cmb.Items[i] = 'FRAC') OR (cmb.Items[i] = 'GCD')
    OR (cmb.Items[i] = 'INT') OR (cmb.Items[i] = 'INV')
    OR (cmb.Items[i] = 'LCM') OR (cmb.Items[i] = 'LN')
    OR (cmb.Items[i] = 'LOG') OR (cmb.Items[i] = 'LOG10')
    OR (cmb.Items[i] = 'LOG2') OR (cmb.Items[i] = 'MOD')
    OR (cmb.Items[i] = 'MULTINOMIAL') OR (cmb.Items[i] = 'ODD')
    OR (cmb.Items[i] = 'PI') OR (cmb.Items[i] = 'PERMUT')
    OR (cmb.Items[i] = 'POWER') OR (cmb.Items[i] = 'PRODUCT')
    OR (cmb.Items[i] = 'RAND') OR (cmb.Items[i] = 'RANDBETWEEN')
    OR (cmb.Items[i] = 'RANDOM') OR (cmb.Items[i] = 'ROOT')
    OR (cmb.Items[i] = 'ROUNDTO') OR (cmb.Items[i] = 'SQR')
    OR (cmb.Items[i] = 'SQRT') OR (cmb.Items[i] = 'SQRTPI')
    OR (cmb.Items[i] = 'SUM') OR (cmb.Items[i] = 'SUMIF')
    OR (cmb.Items[i] = 'SUMIFS') OR (cmb.Items[i] = 'SUMSQR')
    OR (cmb.Items[i] = 'TRUNC') then
    begin
     SetLength(func, k+1);
     func[k] := frmMatheMagixPAT.cmbCalculatorFunctions.Items[i];
     inc(k);
    end;
  end else
 if s = 'Statistical' then
  begin
   k := 1;
   for i := 1 to cmb.Items.Count - 1 do
    if (cmb.Items[i] = 'AVEDEV') OR (cmb.Items[i] = 'AVERAGE')
    OR (cmb.Items[i] = 'AVERAGEIF') OR (cmb.Items[i] = 'AVERAGEIFS')
    OR (cmb.Items[i] = 'DEVSQR') OR (cmb.Items[i] = 'GEOMEAN')
    OR (cmb.Items[i] = 'HARMEAN') OR (cmb.Items[i] = 'LARGEST')
    OR (cmb.Items[i] = 'MAX') OR (cmb.Items[i] = 'MEDIAN')
    OR (cmb.Items[i] = 'MIN') OR (cmb.Items[i] = 'SMALL') then
    begin
     SetLength(func, k+1);
     func[k] := frmMatheMagixPAT.cmbCalculatorFunctions.Items[i];
     inc(k);
    end;
  end else
 if s = 'Logical'  then
  begin
   k := 1;
   for i := 1 to cmb.Items.Count - 1 do
    if (cmb.Items[i] = 'AND') OR (cmb.Items[i] = 'IF')
    OR (cmb.Items[i] = 'NOT') OR (cmb.Items[i] = 'OR')
    OR (cmb.Items[i] = 'GREATER') OR (cmb.Items[i] = 'SMALLER')
    OR (cmb.Items[i] = 'GREATEROREQUAL') OR (cmb.Items[i] = 'SMALLEROREQUAL')
    OR (cmb.Items[i] = 'EQUAL') OR (cmb.Items[i] = 'ISEVEN')
    OR (cmb.Items[i] = 'ISODD') OR (cmb.Items[i] = 'XOR')
    OR (cmb.Items[i] = 'SHR') OR (cmb.Items[i] = 'SHL')
    then
    begin
     SetLength(func, k+1);
     func[k] := frmMatheMagixPAT.cmbCalculatorFunctions.Items[i];
     inc(k);
    end;
  end else
 if s  = 'Text' then
  begin
   k := 1;
   for i := 1 to cmb.Items.Count - 1 do
    if (cmb.Items[i] = 'CODE') OR (cmb.Items[i] = 'FIND')
    OR (cmb.Items[i] = 'FIXED') then
    begin
     SetLength(func, k+1);
     func[k] := frmMatheMagixPAT.cmbCalculatorFunctions.Items[i];
     inc(k);
    end;

  end;

  lsbList.Items.Clear;
  for i := 1 to length(func) - 1 do
   lsbList.Items.Add(func[i]);

  if not empty then 
   edtSearch.Text := '';

  cmb.Free;
end;

procedure TfrmExplanation.WriteConvTypes(s : string; cmb : TComboBox);
var
 i : integer;
 TypeList: TConvTypeArray;
 CurFamily:TConvFamily;
begin
 if DescriptionToConvFamily(s, CurFamily) then
  begin
   GetConvTypes(CurFamily, TypeList);
   for i := 0 to Length(TypeList) -1 do
    cmb.Items.Add(ConvTypeToDescription(TypeList[i]));
  end;
end;

procedure TfrmExplanation.FormCreate(Sender: TObject);
var
 i : integer;
begin
 Empty := true;
 SetLength(Func, frmMatheMagixPAT.cmbCalculatorFunctions.Items.Count);
 for i := 2  to length(Func) - 1 do
  begin
   Func[i-1] := frmMatheMagixPAT.cmbCalculatorFunctions.Items[i];
   lsbList.Items.Add(frmMatheMagixPAT.cmbCalculatorFunctions.Items[i]);
  end;
 WriteConvTypes('Distance', cmbDistance);
 WriteConvTypes('Area', cmbArea);
 WriteConvTypes('Volume', cmbVolume);
 WriteConvTypes('Mass', cmbMass);
 WriteConvTypes('Temperature', cmbTempreture);
 WriteConvTypes('Time', cmbTime);
 writeToAllCon;
 Resizing := false;
 imgBar.Picture.LoadFromFile('HelpBar.bmp');
end;

procedure TfrmExplanation.writeToAllCon;
var
 i : integer;
begin
 for i := 0 to cmbVolume.Items.Count - 1 do
  cmbAllConvert.Items.Add(cmbVolume.Items[i]);

 for i := 0 to cmbTempreture.Items.Count - 1 do
  cmbAllConvert.Items.Add(cmbTempreture.Items[i]);

 for i := 0 to cmbMass.Items.Count - 1 do
  cmbAllConvert.Items.Add(cmbMass.Items[i]);

 for i := 0 to cmbArea.Items.Count - 1 do
  cmbAllConvert.Items.Add(cmbArea.Items[i]);

 for i := 0 to cmbDistance.Items.Count - 1 do
  cmbAllConvert.Items.Add(cmbDistance.Items[i]);

 for i := 0 to cmbTime.Items.Count - 1 do
  cmbAllConvert.Items.Add(cmbTime.Items[i]);
end;

procedure TfrmExplanation.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Empty then edtSearch.SelStart := 0;
end;

procedure TfrmExplanation.edtSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Empty then edtSearch.SelStart := 0;
end;

procedure TfrmExplanation.pnlToolBarClick(Sender: TObject);
var
  FamilyList: TConvFamilyArray;
  i: Integer;
begin
GetConvFamilies(FamilyList); 
  for i := 0 to Length(FamilyList) - 1 do
    cmbAllConvert.Items.Add(ConvFamilyToDescription(FamilyList[i]));

end;

procedure TfrmExplanation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 cmbAllConvert.Items.SaveToFile('Convs.txt');
end;

procedure TfrmExplanation.pnlSeperatorMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 Resizing := false;
end;

procedure TfrmExplanation.pnlSeperatorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 Resizing := true;
end;

procedure TfrmExplanation.pnlSeperatorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if Resizing then
  if (mouse.CursorPos.X - frmExplanation.Left < 300) and (mouse.CursorPos.X - frmExplanation.Left > 140) then
   begin
    lsbList.Width := mouse.CursorPos.X - frmExplanation.Left;
    cmbCategory.Width := lsbList.Width + 5;
   end;
end;

end.
