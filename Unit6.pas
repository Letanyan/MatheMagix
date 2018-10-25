unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids;

type
  TfrmWorksheet = class(TForm)
    stgWorksheet: TStringGrid;
    pnlFormula: TPanel;
    edtFormula: TEdit;
    cmbCalculatorFunctions: TComboBox;
    imgFormula: TImage;
    lsbAutoComp: TListBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbCalculatorFunctionsChange(Sender: TObject);
    procedure edtFormulaChange(Sender: TObject);
    procedure stgWorksheetMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtFormulaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure scifunc(Func : string);
    procedure CellRef(stg : TStringGrid);
  end;

var
  frmWorksheet: TfrmWorksheet;

implementation

uses Unit1, Unit5;

{$R *.dfm}

procedure TfrmWorksheet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 frmMatheMagixPAT.Show;
end;

procedure TfrmWorksheet.scifunc(Func : string);
 var
  i, p, b, l, st : integer;
  delleat        : boolean;
  sFormula, s    : string;
 begin
  sFormula := edtFormula.text;
  delleat := true;
  if edtFormula.SelLength = 0 then
    begin
      s:=edtFormula.Text;
      b:=0;
      p:=0;
      if s[length(s)] = ')' then
       begin
        for i := length(s) downto 1 do
         if s[i] = ')'
          then
           inc(b)
          else if s[i] = '(' then
          begin
           dec(b);
           if b = 0 then p := i;
          end;
        if not(s[p-1] in ['+','/','-','+','^']) then
         for i := p downto 1 do
         if delleat then
          if not (s[p] in ['+','-','/','*','^'])
            then
             dec(p)
            else
             delleat:=false;
        insert(Func+'(', sFormula, p+1);
        edtFormula.text := sFormula+')';
       end else
       begin
        delleat := true;
        s:=edtFormula.text;
        p:=length(s);
        for i := length(s) downto 1 do
         if delleat then
         if not (s[i] in ['+','-','/','*','^'])
          then
           dec(p)
          else
           delleat:=false;
         insert(Func+'(', sFormula, p+1);
         edtFormula.Text := sFormula + ')';
       end;
    end
    else begin
     insert(Func+'(',sformula,edtFormula.SelStart+1);
     st:=edtFormula.SelStart;
     l := edtFormula.SelLength;
     edtFormula.Text:=sFormula;
     insert(')',sformula,l+st+length(func)+2);
     edtFormula.Text := sFormula;
    end;

    if length(edtFormula.Text) > 44 then edtFormula.SelStart := length(edtFormula.Text);

end;

procedure TfrmWorksheet.cmbCalculatorFunctionsChange(Sender: TObject);
begin
 if TComboBox(Sender).ItemIndex <> 0 then
  begin
   scifunc(cmbCalculatorFunctions.Items[cmbCalculatorFunctions.itemindex]);
   cmbCalculatorFunctions.Text := 'Apply A Function';
  end else
   frmExplanation.Show;
end;

procedure TfrmWorksheet.edtFormulaChange(Sender: TObject);
var
 c, r : integer;
begin
 r := stgWorksheet.Row;
 c := stgWorksheet.Col;
 frmMatheMagixPAT.stgWorksheet.Row := r;
 frmMatheMagixPAT.stgWorksheet.Col := c;
 frmMatheMagixPAT.edtWorkSheetFormat1.Text := edtFormula.Text;
 stgWorksheet.cells[c, r] := frmMatheMagixPAT.stgWorksheet.cells[c,r];
 frmMatheMagixPAT.AutoComplete(edtFormula, edtFormula.SelStart, lsbAutoComp, frmMatheMagixPAT.NormalAuto.Items, clSilver);
end;

procedure TfrmWorksheet.stgWorksheetMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 edtFormula.Text := frmMatheMagixPAT.WorkSheetSums.Cells[stgWorksheet.Col, stgWorksheet.row];
 edtFormula.SetFocus;
end;

procedure TfrmWorksheet.edtFormulaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 frmMatheMagixPAT.AutoCompKeyD(edtFormula, key, lsbAutoComp);
end;

function NextChar(c : char) : char;
begin
 Result := ' ';
 case c of
  'A' : Result := 'B';
  'B' : Result := 'C';
  'C' : Result := 'D';
  'D' : Result := 'E';
  'E' : Result := 'F';
  'F' : Result := 'G';
  'G' : Result := 'H';
  'H' : Result := 'I';
  'I' : Result := 'J';
  'J' : Result := 'K';
  'K' : Result := 'L';
  'L' : Result := 'M';
  'M' : Result := 'N';
  'N' : Result := 'O';
  'O' : Result := 'P';
  'P' : Result := 'Q';
  'Q' : Result := 'R';
  'R' : Result := 'S';
  'S' : Result := 'T';
  'T' : Result := 'U';
  'U' : Result := 'V';
  'V' : Result := 'W';
  'W' : Result := 'X';
  'X' : Result := 'Y';
  'Y' : Result := 'Z';
  'Z' : Result := 'A';
 end;
end;

procedure TfrmWorksheet.CellRef(stg : TStringGrid);
var
 i : integer;
 s : string;
 c : char;
begin
  for i := 1 to stg.RowCount + 1 do stg.Cells[0, i] := IntToStr(i);

 s := 'A';
 for i := 1 to stg.RowCount do
  begin

   stg.Cells[i, 0] := s;

   if s = 'ZZ' then
    begin
     stg.Cells[i + 1, 0] := 'AAA';
     s := 'AAA';
    end;


   if length(s) = 1 then
    if s <> 'Z'
     then
      s := NextChar(s[length(s)])
     else
      s := 'AZ';

   if length(s) = 2 then
    if s[length(s)] <> 'Z' then
    begin
     c := s[length(s)];
     delete(s, length(s), 1);
     s := s + NextChar(c);
    end else
    begin
     c := s[1];
     delete(s, 1, 1);
     s := NextChar(c) + 'A';
    end;

   if length(s) = 3 then
    if (s[length(s)] <> 'Z') and (s[length(s) - 1] <> 'Z') then
     begin
      c := s[length(s)];
      delete(s, length(s), 1);
      s := s + NextChar(c);
     end else
    if (s[length(s)] = 'Z') and (s[length(s) - 1] <> 'Z') then
     begin
      c := s[length(s)-1];
      delete(s, length(s)-1, 2);
      s := s + NextChar(c) + 'A';
     end else
    if (s[length(s)] = 'Z') and (s[length(s) - 1] = 'Z') then
     begin
      c := s[1];
      //c2 := s[2];
      delete(s, 1, 2);
      s := NextChar(c) + 'AA';
     end else
    if (s[length(s)] <> 'Z') and (s[length(s) - 1] = 'Z') then
     begin
      c := s[length(s)];
      delete(s, length(s), 1);
      s := s + NextChar(c);
     end;

  end;


end;

procedure TfrmWorksheet.FormCreate(Sender: TObject);
begin
 CellRef(stgWorksheet);
end;

end.
