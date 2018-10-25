unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, ValEdit, jpeg;

type
  TfrmCustomFunctionsCode = class(TForm)
    vleVariables: TValueListEditor;
    memCode: TMemo;
    pnlNavigon: TPanel;
    imgNavigon: TImage;
    pnlResize: TPanel;
    lsbNavigon: TListBox;
    btnNew: TButton;
    btnDelete: TButton;
    btnRename: TButton;
    procedure lsbNavigonClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnRenameClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure memCodeChange(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure lsbNavigonEnter(Sender: TObject);
    procedure edtSearchEnter(Sender: TObject);
    procedure btnNewEnter(Sender: TObject);
    procedure memCodeEnter(Sender: TObject);
    procedure pnlResizeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlResizeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlResizeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lsbSearchedEnter(Sender: TObject);
    procedure cmbSearchEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Resizing : boolean;

    Code : array of String;
    FunctionAddress : integer;

    procedure BuildCode;
    procedure Enablizer(Enbl : Boolean);
    procedure LoadFunction;
    procedure SaveFunctions;
  end;

var
  frmCustomFunctionsCode: TfrmCustomFunctionsCode;

implementation

uses Unit7, Unit1, Unit2;

{$R *.dfm}

procedure TfrmCustomFunctionsCode.LoadFunction;
var
 isName : boolean;
 mem : TMemo;
 lsb : TListBox;
 i, pos : integer;
begin
 isName := true;
 lsb := TListBox.Create(self);
 mem := TMemo.Create(self);
 lsb.Parent := self;
 mem.Parent := self;
 pos :=0;

 if FileExists('functions.txt') then
  lsb.Items.LoadFromFile('functions.txt');

 for i := 0 to lsb.items.Count - 1 do
  begin
   if length(lsb.Items[i]) > 0 then
   if lsb.Items[i][1] = '['
    then begin
     isName := false;
     inc(pos);
     SetLength(Code, pos + 1);
    end else
   if lsb.items[i][1] = ']'
    then begin
     isName := true;
     code[pos-1] := mem.text;
     mem.Text := '';
    end else
   if isName
    then begin
     lsbNavigon.Items.Add(lsb.items[i]);
     frmMatheMagixPAT.cmbCalculatorFunctions.Items.add(lsb.Items[i])
    end else
     mem.Lines.Add(lsb.items[i]);

  end;

  lsb.Free;
  mem.Free;
end;

procedure TfrmCustomFunctionsCode.Enablizer(Enbl: Boolean);
begin
 btnDelete.Enabled := enbl;
 btnRename.Enabled := enbl;
end;

procedure TfrmCustomFunctionsCode.BuildCode;
begin
 if FunctionAddress in [0..length(code) - 1] then code[FunctionAddress] := memCode.Text;
end;

procedure TfrmCustomFunctionsCode.lsbNavigonClick(Sender: TObject);
begin
 BuildCode;
 FunctionAddress := lsbNavigon.ItemIndex;
 memCode.Text := Code[FunctionAddress];
end;

procedure TfrmCustomFunctionsCode.btnNewClick(Sender: TObject);
var
 fName : string;
 i, funcpos : integer;
 Static : boolean;
begin
 BuildCode;

 fName := UpperCase(InputBox('Function Name', 'Type the Name of the function', ''));
 funcpos := -1;

 static := false;
 for i := 1 to length(frmMatheMagixPAT.funtions)-1 do
  if (fName = UpperCase(frmMatheMagixPAT.funtions[i])) then static := true;
 for i := 0 to frmVariables.vleVariables.RowCount - 1 do
  if (fName = UpperCase(frmVariables.vleVariables.Cells[0,i])) then static := true;

 if Static then
  begin
   Showmessage('Name Taken');
   exit;
  end;

 for i := 0 to lsbNavigon.Items.Count - 1 do
  if lsbNavigon.Items[i] = fName
   then
    funcpos := i;

 if funcpos = -1
  then begin
   lsbNavigon.Items.Add(fName);
   lsbNavigon.ItemIndex := lsbNavigon.Items.count - 1;
   frmMatheMagixPAT.cmbCalculatorFunctions.Items.add(fName);
   frmMatheMagixPAT.AutoCompleteIni;
   memcode.Text := '';
  end else
   lsbNavigon.ItemIndex := funcpos;

 FunctionAddress := lsbNavigon.ItemIndex;
 SetLength(code, lsbNavigon.Items.Count);
 memCode.SetFocus;
end;

function RemoveSpace(s : string) : string;
var
 i : integer;
begin
 Result := s;
 i := 1;
 Repeat
  if Result[i] = ' ' then
   begin
    Delete(Result, i, 1);
    dec(i);
   end;
  inc(i);
 Until i > length(Result);

end;

procedure TfrmCustomFunctionsCode.btnRenameClick(Sender: TObject);
var
 nName, s : string;
 pos, i   : integer;
begin
 nName := UpperCase(InputBox('New Name', 'Type the New Name Here', ''));

 While RemoveSpace(nName) = '' do
  begin
   Showmessage('Must Have Name');
   nName := InputBox('New Name', 'Type the New Name Here', lsbNavigon.Items[lsbNavigon.itemindex]);
  end;

 pos := lsbNavigon.ItemIndex;

 s := lsbNavigon.items[pos];
 for i := 0 to frmMatheMagixPAT.cmbCalculatorFunctions.Items.Count do
  if s = frmMatheMagixPAT.cmbCalculatorFunctions.Items[i] then
   begin
    frmMatheMagixPAT.cmbCalculatorFunctions.Items.Delete(i);
    frmMatheMagixPAT.cmbCalculatorFunctions.Items.Insert(i, nName);
   end;


   lsbNavigon.Items.Delete(pos);
   lsbNavigon.Items.Insert(pos, nName);

 frmMatheMagixPAT.AutoCompleteIni;

end;

procedure TfrmCustomFunctionsCode.FormCreate(Sender: TObject);
begin
 FunctionAddress := -1;
end;

procedure TfrmCustomFunctionsCode.memCodeChange(Sender: TObject);
begin
 if memCode.Focused then BuildCode;
end;

procedure TfrmCustomFunctionsCode.btnDeleteClick(Sender: TObject);
var
 i, pos : integer;
 name : string;
begin
 memCode.Text := '';
 pos := lsbNavigon.ItemIndex;
 name := lsbNavigon.Items[pos];
 lsbNavigon.Items.Delete(pos);
 code[pos] := '';

 for i := pos to length(code) - 2 do
  code[i] := code[i+1];

 SetLength(Code, lsbNavigon.Items.Count);
 FunctionAddress := -1;

 for i := 0 to frmMatheMagixPAT.cmbCalculatorFunctions.Items.Count do
  if name = frmMatheMagixPAT.cmbCalculatorFunctions.Items[i]
   then
    frmMatheMagixPAT.cmbCalculatorFunctions.Items.Delete(i);

end;

procedure TfrmCustomFunctionsCode.lsbNavigonEnter(Sender: TObject);
begin
 Enablizer(true);
end;

procedure TfrmCustomFunctionsCode.edtSearchEnter(Sender: TObject);
begin
 Enablizer(false);
end;

procedure TfrmCustomFunctionsCode.btnNewEnter(Sender: TObject);
begin
 Enablizer(false);
end;

procedure TfrmCustomFunctionsCode.memCodeEnter(Sender: TObject);
begin
 Enablizer(false);
end;

procedure TfrmCustomFunctionsCode.pnlResizeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 Resizing := true;
 imgNavigon.Visible := false;
end;

procedure TfrmCustomFunctionsCode.pnlResizeMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 Resizing := false;
 imgNavigon.Visible := true;
end;

procedure TfrmCustomFunctionsCode.pnlResizeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if Resizing then
  if (mouse.CursorPos.X - frmCustomFunctionsCode.Left - 8 > 161) and (mouse.CursorPos.X - frmCustomFunctionsCode.Left - 8 < 500) then
   pnlNavigon.Width := mouse.CursorPos.X - frmCustomFunctionsCode.Left - 8;
end;

procedure TfrmCustomFunctionsCode.lsbSearchedEnter(Sender: TObject);
begin
 Enablizer(false);
end;

procedure TfrmCustomFunctionsCode.cmbSearchEnter(Sender: TObject);
begin
 Enablizer(false);
end;

procedure TfrmCustomFunctionsCode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 SaveFunctions;
end;

procedure TfrmCustomFunctionsCode.SaveFunctions;
var
 i : integer;
 mem : TMemo;
begin
 mem := TMemo.create(self);
 mem.Parent := self;
 mem.Text := '';
 FunctionAddress := -1;
 lsbNavigon.ItemIndex := -1;
 for i := 0 to lsbNavigon.Items.Count - 1 do
  begin
   mem.Lines.add(lsbNavigon.Items[i]);
   mem.Lines.Add('[');
   mem.lines.add(Code[i]);
   mem.Lines.Add(']');
  end;
 mem.Lines.SaveToFile('Functions.txt');
 mem.Free;
end;

end.
