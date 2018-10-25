unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ValEdit, StdCtrls, ExtCtrls, jpeg, ModuleStandardCalculator;

type
  TfrmCreationCenter = class(TForm)
    edtFunctionCreation: TEdit;
    btnAdd: TButton;
    vleFunctionList: TValueListEditor;
    btnHelp: TButton;
    btnTest: TButton;
    btnDelete: TButton;
    btnRename: TButton;
    pnlHeader: TPanel;
    imgTopBar: TImage;
    lblFunctionName: TLabel;
    lblFunctionFormula: TLabel;
    bvlHeading: TBevel;
    btnSequence: TButton;
    imgMain: TImage;
    imgBottomBar: TImage;
    btncode: TButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRenameClick(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSequenceClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btncodeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadFunctions;
  end;

var
  frmCreationCenter: TfrmCreationCenter;

implementation

uses Unit1, Unit2, Unit8;

{$R *.dfm}

function MakeFunction(setnum : string) : string;
var
 setArray    : Array of real;
 i, p  : integer;
 s            : string;
 a, r, b, c   : real;
 sa, sb, sc   : string;
 done : boolean;
 cal : TCalc;
begin
 result := '';
 cal := TCalc.Create;
 p := 1; done := false;
 SetLength(setArray, p+1);
 if setnum[length(setnum)] <> ';'
  then
   setnum := setnum + ';';
 for i := 1 to length(setnum) do
  if not((setnum[i] in [';']) or (i = length(setnum)))//setnum[i] in ['0'..'9', '-', '.']
   then
    s := s + setnum[i]
   else if (setnum[i] in [';']) or (i = length(setnum)) then
    begin
     s := cal.GetAnswer(s);
     setArray[p] := StrToFloat(S);
     S := '';
     inc(p);
     SetLength(setArray, p+1);
    end;


 if Length(setArray) > 3 then
  begin
   if setArray[2] - setArray[1] = setArray[3] - setArray[2] then  //linear
    begin
     b := (SetArray[2] - SetArray[1]);
     c := setArray[1] - b;

     if c <> 0
      then begin
       if c > 0
        then
         Result := FloatToStr(b)+'@+'+FloatToStr(c)
        else
         Result := FloatToStr(b)+'@'+FloatToStr(c)
      end else
       Result := FloatToStr(b)+'@';

      done := true;
    end else
    if FloatToStr(setArray[2] / setArray[1]) = FloatToStr(setArray[3] / setArray[2]) then    //geometric
     begin
      a := setArray[1];
      r := setArray[2] / setArray[1];
      Result := FloatToStr(a)+'*'+FloatToStr(r)+'^(@-1)';
      done := true;
     end;
  end;

 if not done then
 if length(setArray) > 4 then
  begin
    if ((setArray[2] - setArray[1]) - (setArray[3] - setArray[2])) = ((setArray[3] - setArray[2]) - (setArray[4] - setArray[3])) //quadratic
     then begin
       a := ((setArray[3] - setArray[2]) - (setArray[2] - setArray[1])) / 2;
       b := (setArray[2] - setArray[1]) - 3 * a;
       c := setArray[1] - a - b;

       if a > 0 then sa  := '+' + FloatToStr(a) + '@^2' else if a < 0 then sa  := FloatToStr(a) + '@^2' else sa := '';
       if b > 0 then sb  := '+' + FloatToStr(b) + '@' else if b < 0 then sb  := FloatToStr(b) + '@' else sb := '';
       if c > 0 then sc  := '+' + FloatToStr(c) else if c < 0 then sc  := FloatToStr(c) else sc := '';

       Result := sa+sb+sc ;
     end else
    if (setArray[1] + setArray[2] = setArray[3]) and (setArray[2] + setArray[3] =setArray[4]) then      //recursive
     begin
      Result := 'T(@-1) + t(@-2)';
     end else
    if (setArray[1] * setArray[2] = setArray[3]) and (setArray[2] * setArray[3] =setArray[4]) then      //recursive
     begin
      Result := 'T(@-1) * t(@-2)';
     end else
    if (setArray[1] - setArray[2] = setArray[3]) and (setArray[2] - setArray[3] =setArray[4]) then      //recursive
     begin
      Result := 'T(@-1) - t(@-2)';
     end else
    if (setArray[1] / setArray[2] = setArray[3]) and (setArray[2] / setArray[3] =setArray[4]) then      //recursive
     begin
      Result := 'T(@-1) / t(@-2)';
     end;
  end;

 cal.Free;
end;

procedure TfrmCreationCenter.LoadFunctions;
var
 lsb  : TListBox;
 name : boolean;
 i,w  : integer;
 nm, vl : string;
begin
 if FileExists('Functions.txt')
  then begin
   lsb := TListBox.Create(Self);
   lsb.Parent := self;
   lsb.Items.LoadFromFile('Functions.txt');
   vleFunctionList.Strings.Clear;
   vleFunctionList.Row := 0;
  end else
   exit;


 for i := lsb.Items.Count - 1 downto 0 do
  begin
   name := true;
   nm := '';
   vl := '';

   for w := 1 to length(lsb.Items[i]) do
    if name then
     begin
      if lsb.Items[i][w] <> '='
       then
        nm := nm + lsb.Items[i][w]
       else
        name := false;
     end else
      vl := vl + lsb.Items[i][w];

   if (nm <> '') and (vl <> '') then
    begin
     vleFunctionList.InsertRow(nm, vl, false);
     frmMatheMagixPAT.cmbCalculatorFunctions.Items.add(nm);
    end;
  end;
  
 lsb.Free;
end;


function isSequence(s : String) : boolean;
var
 i : integer;
 comma : integer;
begin
 if s[length(s)] <> ';'
  then
   s := s + ';';

 comma := 0;
 for i := 0 to length(s) do
  begin
   if s[i] in [';']
    then
     inc(comma);
  end;

 if (comma > 2)
  then
   Result := true
  else
   Result := false;

end;

procedure TfrmCreationCenter.btnAddClick(Sender: TObject);
var
 Formula, Name : string;
 i, r    : integer;
 replace, static : boolean;
begin
 Name := UpperCase(edtFunctionCreation.Text);

 replace := false;
 r := 0;

 for i := 0 to vleFunctionList.RowCount - 1 do
  if vleFunctionList.Cells[0, i] = name then
   begin
    r := i;
    replace := true;
   end;

 Static := false;
 {for i := 1 to length(frmMatheMagixPAT.funtions)-1 do
  if (Name = UpperCase(frmMatheMagixPAT.funtions[i])) then static := true;
 for i := 1 to frmVariables.vleVariables.RowCount - 1 do
  if (Name = UpperCase(frmVariables.vleVariables.Cells[0,i])) then static := true;
  }
 if static
 then
  MessageDlg('This Name is Taken by another Variable or Function', mtError, mbOKCancel, 1)
 else
 if not replace
  then begin
   Formula := UpperCase(InputBox('Formula', 'Please Type the Formula here, it can be changed later',''));
   if Formula <> '' then
    begin
     if isSequence(Formula) then
      if (MakeFunction(Formula) <> '') then
      if (MessageDlg('This has been detected as a sequence, do you want to convert it to a Function', mtConfirmation, mbOKCancel, 1) = mrOk)
       then
        Formula := MakeFunction(Formula);

     vleFunctionList.InsertRow(Name, formula, false);
     frmMatheMagixPAT.cmbCalculatorFunctions.Items.Add(Name);
    end;
  end else
  begin
   vleFunctionList.Row := r;
   vleFunctionList.SetFocus;
  end;

 edtFunctionCreation.Clear;
 frmMatheMagixPAT.AutoCompleteIni;
end;

procedure TfrmCreationCenter.btnDeleteClick(Sender: TObject);
var
 i : integer;
 s : string;
begin
 if vleFunctionList.RowCount > 0 then
  begin
   s := vleFunctionList.Cells[0, vleFunctionList.row];
   for i := 0 to frmMatheMagixPAT.cmbCalculatorFunctions.Items.Count do
    if s = frmMatheMagixPAT.cmbCalculatorFunctions.Items[i]
     then
      frmMatheMagixPAT.cmbCalculatorFunctions.Items.Delete(i);

   vleFunctionList.DeleteRow(vleFunctionList.Row);
   frmMatheMagixPAT.SetFocus;
   frmCreationCenter.SetFocus;
   frmMatheMagixPAT.AutoCompleteIni;
  end; 
end;

procedure TfrmCreationCenter.btnRenameClick(Sender: TObject);
var
 Name, s : string;
 i    : integer;
begin
 Name := UpperCase(InputBox('Name', 'Type the New Name for the function', ''));
 s := vleFunctionList.Cells[0, vleFunctionList.row];
 for i := 0 to frmMatheMagixPAT.cmbCalculatorFunctions.Items.Count do
  if s = frmMatheMagixPAT.cmbCalculatorFunctions.Items[i] then
   begin
    frmMatheMagixPAT.cmbCalculatorFunctions.Items.Delete(i);
    frmMatheMagixPAT.cmbCalculatorFunctions.Items.Insert(i, Name);
   end;
 vleFunctionList.Cells[0, vleFunctionList.Row] := Name;
 frmMatheMagixPAT.AutoCompleteIni;
end;

function OneVar(formula, x : string) : string;
var
 i : integer;
begin
 i:=1;
 Result := formula;
 if (x <> '') and (formula <> '') then
  Repeat
   if Result[i] = '@' then
    begin
     delete(Result, i, 1);
     Insert(x, Result, i);
     i := i + length(x);
    end else
     inc(i);
  Until (i > length(Result));
end;

procedure TfrmCreationCenter.btnTestClick(Sender: TObject);
var
 value : string;
 cal : TCalc;
begin
 value := InputBox('Test Value', 'Type the value you want to be tested', '');
 cal := TCalc.Create;
 Showmessage(OneVar(vleFunctionList.Cells[1, vleFunctionList.row], value)+' = '+ cal.GetAnswer(OneVar(vleFunctionList.Cells[1, vleFunctionList.row], value)));
 cal.Free;
end;

procedure TfrmCreationCenter.btnHelpClick(Sender: TObject);
begin
 MessageDlg('x is the value that gets accepted eg; SQRT(2x+6) so if you test it with the value of 5 then it will return 4', mtInformation, mbOKCancel, 0);
end;

procedure TfrmCreationCenter.FormCreate(Sender: TObject);
begin
 imgBottomBar.Picture.LoadFromFile('BTBar.bmp');
 imgTopBar.Picture.LoadFromFile('HelpBar.bmp');
end;

procedure TfrmCreationCenter.FormResize(Sender: TObject);
begin
 lblFunctionName.Width := imgTopBar.Width Div 2;
 lblFunctionFormula.Width := imgTopBar.Width Div 2;
 lblFunctionFormula.Left := lblFunctionName.Width;
 if 25 * vleFunctionList.RowCount < vleFunctionList.Height
  then
   bvlHeading.Left := imgTopBar.Width Div 2 - 2
  else
   bvlHeading.Left := imgTopBar.Width Div 2 - 11;
end;

procedure TfrmCreationCenter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 frmVariables.SaveVariables(vleFunctionList);
end;

procedure TfrmCreationCenter.btnSequenceClick(Sender: TObject);
begin
 vleFunctionList.Cells[1, vleFunctionList.Row] := MakeFunction(vleFunctionList.Cells[1, vleFunctionList.Row]);
end;

procedure TfrmCreationCenter.FormActivate(Sender: TObject);
begin
 edtFunctionCreation.SetFocus;
end;

procedure TfrmCreationCenter.btncodeClick(Sender: TObject);
begin
 frmcustomFunctionsCode.show;
 
end;

end.
