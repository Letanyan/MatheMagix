unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, ValEdit, jpeg;

type
  TfrmVariables = class(TForm)
    vleVariables: TValueListEditor;
    pnlControls: TPanel;
    imgBottomBar: TImage;
    btnAdd: TButton;
    btnDelete: TButton;
    pnlHeader: TPanel;
    imgHeader: TImage;
    lblVarName: TLabel;
    lblVarVal: TLabel;
    bvlHeaderSeperator: TBevel;
    edtVarName: TEdit;
    pnl: TPanel;
    imgSeperator: TImage;
    lblVarSumed: TLabel;
    btnHelp: TButton;
    memHelp: TMemo;
    btnRename: TButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtVarNameChange(Sender: TObject);
    procedure edtVarNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure vleVariablesStringsChange(Sender: TObject);
    procedure vleVariablesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure vleVariablesExit(Sender: TObject);
    procedure vleVariablesEnter(Sender: TObject);
    procedure edtVarNameExit(Sender: TObject);
    procedure edtVarNameEnter(Sender: TObject);
    procedure vleVariablesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure vleVariablesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure edtVarNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtVarNameMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnHelpClick(Sender: TObject);
    procedure vleVariablesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRenameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    spi : string;
    Vary : string;
    p, pos : integer;
    Auto, empty, deleting : boolean;

     procedure AutoCompleteVarName(edt : TEdit);
     procedure SaveVariables(vle : TValueListEditor);
     procedure LoadVariables;
     procedure AssignValues;
  end;

var
  frmVariables: TfrmVariables;

implementation

uses Unit1, Unit7;

{$R *.dfm}

procedure TfrmVariables.AssignValues;
var
 d, i, y, j : integer;
 s          : string;
begin
 SetLength(frmMatheMagixPAT.VarNme, vleVariables.RowCount);
 SetLength(frmMatheMagixPAT.VarVal, vleVariables.RowCount);

 d:=1;
 frmMatheMagixPAT.cmbVar.Items.Clear;
 frmMatheMagixPAT.cmbVar.Items.Add('Manage Variables');
 For i := 0 to length(frmMatheMagixPAT.VarNme)-1 do
  begin
   for y := 0 to length(vleVariables.Strings[i]) do
    if vleVariables.Strings[i][y] = '='
     then
      d := y;
   s := vleVariables.Strings[i];
   delete(s, d, length(s));
   frmMatheMagixPAT.VarNme[i] := s;
   vary := (vleVariables.Cells[1,i]);
   frmMatheMagixPAT.EQ2ANSVAR(vary);
   val(vary, frmMatheMagixPAT.VarVal[i], j);
   frmMatheMagixPAT.cmbVar.Items.Add(frmMatheMagixPAT.VarNme[i] + '= ' + FloatToStr(frmMatheMagixPAT.VarVal[i]))
  end;
end;

procedure TfrmVariables.SaveVariables(vle : TValueListEditor);
var
 r : integer;
 meme : TMEmo;
 nm, vl : string;
begin
 meme := TMEmo.Create(Self);
 meme.Parent := self;

 for r := 0 to vle.RowCount - 1 do
  begin
   nm := vle.Cells[0,r];
   vl := vle.Cells[1,r];
   meme.Lines.add(nm+'='+vl);
  end;

 if vle.Name = 'vleVariables'
  then
   meme.Lines.SaveToFile('Variables.txt')
  else
   meme.Lines.SaveToFile('Functions.txt');

 meme.Free;
end;

procedure TfrmVariables.LoadVariables;
var
 lsb  : TListBox;
 name : boolean;
 i,w  : integer;
 nm, vl : string;
begin
 if FileExists('Variables.txt')
  then begin
   lsb := TListBox.Create(Self);
   lsb.Parent := self;
   lsb.Items.LoadFromFile('Variables.txt');
   vleVariables.Strings.Clear;
   vleVariables.Row := 0;
   deleting := true;
  end else
  begin
   vleVariables.InsertRow('preans','0',false);
   vleVariables.InsertRow('ans','0',false);
   SaveVariables(vleVariables);
   exit;
  end;

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

   if (nm <> '') and (vl <> '')
    then
     vleVariables.InsertRow(nm, vl, false);
  end;

 vleVariables.Strings.Delete(vleVariables.RowCount - 1);
 lsb.Free;

 AssignValues;
end;

procedure TfrmVariables.btnAddClick(Sender: TObject);
var
 i    : integer;
 b, f : boolean;
 s    : string;
// y, d, j : integer;
begin
 empty := true;
 b := false;
 f := false;
 p := 0;
 s := lowerCase(edtVarName.Text);

 for i := 1 to length(frmMatheMagixPAT.funtions)-1 do
  if (s = LowerCase(frmMatheMagixPAT.funtions[i]))or(s = 'e')or(s = 'type variable name here') then f := true;

 for i := 0 to frmCreationCenter.vleFunctionList.RowCount - 1 do
  if  s = LowerCase(frmCreationCenter.vleFunctionList.Cells[0,i]) then f := true;

 if f then
  begin
     //MessageDlg('Unable to Name a Variable by This', mtWarning, mbOKCancel, 1);
     edtVarName.Clear;
     vleVariables.Row := vleVariables.RowCount-1;
     MessageDlg('This Name is Taken by another Variable or Function', mtError, mbOKCancel, 1)
  end else
   if edtVarName.Text <> '' then
    begin
     for i := 0 to vleVariables.RowCount-1 do
      if vleVariables.Cells[0, i] = edtVarName.Text then
       begin
        b := true;
        p := i;
       end;
      if not b then
       begin
        vleVariables.Row := vleVariables.RowCount-1;
        vleVariables.InsertRow(edtVarName.Text,'',false);
        edtVarName.Clear;
        SetLength(frmMatheMagixPAT.VarNme, vleVariables.RowCount);
        SetLength(frmMatheMagixPAT.VarVal, vleVariables.RowCount);
        if frmVariables.Showing then if edtVarName.Focused then vleVariables.SetFocus;
        vleVariables.Cells[1, vleVariables.Row] := '0';
       end else
       begin
         vleVariables.Row := p;
         if frmVariables.Showing then if edtVarName.Focused then vleVariables.SetFocus;
       end;
    end else
     MessageDlg('Variable Must Have A Name', mtError, mbOKCancel, 1);

  AssignValues;
 
if 25 * vleVariables.RowCount < vleVariables.Height
  then
   bvlHeaderSeperator.Left := pnlHeader.Width Div 2 - 2
  else
   bvlHeaderSeperator.Left := pnlHeader.Width Div 2 - 11;
vleVariables.SetFocus;
frmMatheMagixPAT.AutoCompleteIni;
end;

procedure TfrmVariables.btnDeleteClick(Sender: TObject);
begin
 if vleVariables.Row in [1..vleVariables.RowCount - 2] then
  begin
   deleting := true;
   vleVariables.DeleteRow(vleVariables.Row);
   SetLEngth(frmMatheMagixPAT.VarNme, length(frmMatheMagixPAT.VarNme)-1);
   SetLEngth(frmMatheMagixPAT.VarVal, length(frmMatheMagixPAT.VarVal)-1);
   frmMatheMagixPAT.AutoCompleteIni;
  end else
   MessageDlg('You Cannot Delete This as it is Permanent', mtInformation, mbOKCancel, 1);
end;

procedure TfrmVariables.FormResize(Sender: TObject);
begin
 lblVarName.Width := pnlHeader.Width Div 2;
 lblVarVal.Width := pnlHeader.Width Div 2;
 lblVarVal.Left := lblVarName.Width;
 if 25 * vleVariables.RowCount < vleVariables.Height
  then
   bvlHeaderSeperator.Left := pnlHeader.Width Div 2 - 2
  else
   bvlHeaderSeperator.Left := pnlHeader.Width Div 2 - 11;

end;

procedure TfrmVariables.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 AssignValues;
 SaveVariables(vleVariables);
end;

procedure TfrmVariables.AutoCompleteVarNAme(edt : TEdit);
var
 i, d, k  : integer;
 auto, ss : string;
 p        : TPoint;
 lsbAutoComplete : TListBox;
begin
 if (edt.Focused) and (edt.text <> '') then
  begin

   lsbAutoComplete := TListBox.Create(Self);
   lsbAutoComplete.Parent := self;

   i := edt.SelStart; ss := edt.Text;

    if not (ss[i] in ['a'..'z', 'A'..'Z', '0'..'9']) or (length(ss) < 1) then
     begin
      auto := '';
      lsbAutoComplete.Items.Clear;
      lsbAutoComplete.Visible := false;
      exit;
     end;

   Auto := ''; ss := edt.Text;

   if ss[i] in ['a'..'z', 'A'..'Z', '0'..'9'] then
   Repeat
    Auto := Auto + ss[i];
    dec(i);
   Until (ss[i] in ['+', '-', '/', '*', '^', '(', ')', ',', ' ']) or (i < 1);

   ss := '';

   for i := length(auto) downto 1 do
    ss := ss + auto[i];


    for d := 0 to frmVariables.vleVariables.RowCount - 1 do
    begin
     auto := '';

     for k := 1 to length(ss) do
      auto := auto + frmVariables.vleVariables.Cells[0, d][k];

     if ss = auto
      then
       lsbAutoComplete.Items.add(frmVariables.vleVariables.Cells[0, d]);
    end;
     k := length(ss);
     p := edt.ClientToScreen(Point(-self.Left + edt.SelStart * 9 + 8, -self.Top));


    if lsbAutoComplete.Items.Count > 0 then
     begin
      edt.Text := lsbAutoComplete.Items[0];
      edt.SelStart := k ;  // k -1
      edt.SelLength := Length(edt.Text) - edt.SelStart;
     end;



    lsbAutoComplete.Free;
  end;

end;


procedure TfrmVariables.edtVarNameChange(Sender: TObject);
var
 i : integer;
 s : string;
begin
 if empty then
  begin
   edtVarName.Font.Color := clBlack;
   s := edtVarName.text;
   delete(s, 2, length(s) - 1);
   edtVarName.Text := s;
   empty := false;
   edtVarName.SelStart := 1;
  end else
 if edtVarName.Text = '' then
  begin
   edtVarName.Text := 'Type Variable Name Here';
   edtVarName.Font.Color := clGray;
   edtVarName.SelStart := 0;
   empty := true;
   exit;
  end;

 s:=edtVarName.Text;
 if not empty then
 for i := 1 to length(s) do
  begin
   if i = 1 then if  not (s[1] in ['a'..'z','A'..'Z']) then
    begin
     delete(s, 1, 1);
    end;
   if i <> 1 then
    if not(s[i] in ['a'..'z','A'..'Z','0'..'9',':','=','_']) then
     Begin
      delete(s, i , 1);
     end;
  end;

 edtVarName.Text := s;
 if s <> '' then if s[length(s)] in [':','='] then
  begin
   delete(s,length(s), 1);
   edtVarName.Text := s;
   btnAdd.Click;
  end;

 if Auto then
  AutoCompleteVarName(Tedit(Sender));
end;

procedure TfrmVariables.edtVarNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if edtVarName.Focused then
 case key of
  VK_RETURN : if not empty then btnAddclick(Sender);
 end;
 if (Empty) and (edtVarName.Focused) then edtVarName.SelStart := 0;
end;

procedure TfrmVariables.vleVariablesStringsChange(Sender: TObject);
begin
 if not deleting then
 begin
 if vleVariables.Row > vleVariables.RowCount then
  begin
   if vleVariables.Cells[1, vleVariables.RowCount] <> FloatToStr(frmMatheMagixPAT.preans)
   then
    vleVariables.Cells[1, vleVariables.RowCount]:= FloatToStr(frmMatheMagixPAT.preans);
  end else
  if vleVariables.Cells[1, vleVariables.RowCount-1] <> FloatToStr(frmMatheMagixPAT.preans)
   then
    vleVariables.Cells[1, vleVariables.RowCount-1]:= FloatToStr(frmMatheMagixPAT.preans);

 if vleVariables.RowCount > 1 then
  if vleVariables.Cells[1, 0] <> FloatToStr(frmMatheMagixPAT.ans)
   then
    vleVariables.Cells[1, 0]:= FloatToStr(frmMatheMagixPAT.ans);


 frmMatheMagixPAT.EQ2ANSVARQ(vleVariables.Cells[1, vleVariables.Row]);

 AssignValues;                      
 frmMatheMagixPAT.EQ2ANSVARQ(vleVariables.Cells[1, vleVariables.Row]);

end;
end;

procedure TfrmVariables.vleVariablesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 case Key of
  VK_RETURN : begin
               empty := true;
               edtVarName.SetFocus;
              end;
 end;

end;

procedure TfrmVariables.FormCreate(Sender: TObject);
begin
 imgBottomBar.Picture.LoadFromFile('BTBar.bmp');
 imgHeader.Picture.LoadFromFile('HelpBar.bmp');
 pos:=0;
 Empty := true;
 deleting := false;
 lblVarSumed.Caption := '';
end;

procedure TfrmVariables.vleVariablesExit(Sender: TObject);
begin
 lblVarSumed.Caption := '';
 //if not empty then btnADD.Click;
end;

procedure TfrmVariables.vleVariablesEnter(Sender: TObject);
begin
 frmMatheMagixPAT.EQ2ANSVARQ(vleVariables.Cells[1, vleVariables.Row]);
 deleting := false;
end;

procedure TfrmVariables.edtVarNameExit(Sender: TObject);
begin
 edtVarName.Font.color := clGray;
end;

procedure TfrmVariables.edtVarNameEnter(Sender: TObject);
begin
// edtVarName.Clear;
// edtVarName.Font.color := clBlack;
if empty then
 edtVarName.SelStart := 0;
end;

procedure TfrmVariables.vleVariablesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
{var
 i, t, d, j : integer;
 s          : string;   }
begin
frmMatheMagixPAT.EQ2ANSVARQ(vleVariables.Cells[1, vleVariables.Row]);
{ d:=1;
 frmMatheMagixPAT.cmbVar.Items.Clear;
 frmMatheMagixPAT.cmbVar.Items.Add('Manage Variables');
 For i := 0 to length(frmMatheMagixPAT.VarNme)-1 do
  begin
   for t := 0 to length(vleVariables.Strings[i]) do
    if vleVariables.Strings[i][t] = '='
     then
      d := t;
   s := vleVariables.Strings[i];
   delete(s, d, length(s));
   frmMatheMagixPAT.VarNme[i] := s;
   vary := (vleVariables.Cells[1,i]);
   frmMatheMagixPAT.EQ2ANSVAR(vary);
   val(vary, frmMatheMagixPAT.VarVal[i], j);
   frmMatheMagixPAT.cmbVar.Items.Add(frmMatheMagixPAT.VarNme[i] + '= ' + FloatToStr(frmMatheMagixPAT.VarVal[i]))
  end;
 frmMatheMagixPAT.EQ2ANSVARQ(vleVariables.Cells[1, vleVariables.Row]);   }
end;

procedure TfrmVariables.vleVariablesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
{var
 i, t, d, j : integer;
 s          : string;             }
begin
 {d:=1;
 frmMatheMagixPAT.cmbVar.Items.Clear;
 frmMatheMagixPAT.cmbVar.Items.Add('Manage Variables');
 For i := 0 to length(frmMatheMagixPAT.VarNme)-1 do
  begin
   for t := 0 to length(vleVariables.Strings[i]) do
    if vleVariables.Strings[i][t] = '='
     then
      d := t;
   s := vleVariables.Strings[i];
   delete(s, d, length(s));
   frmMatheMagixPAT.VarNme[i] := s;
   vary := (vleVariables.Cells[1,i]);
   frmMatheMagixPAT.EQ2ANSVAR(vary);
   val(vary, frmMatheMagixPAT.VarVal[i], j);
   frmMatheMagixPAT.cmbVar.Items.Add(frmMatheMagixPAT.VarNme[i] + '= ' + FloatToStr(frmMatheMagixPAT.VarVal[i]))
  end;
 frmMatheMagixPAT.EQ2ANSVARQ(vleVariables.Cells[1, vleVariables.Row]);    }
end;

procedure TfrmVariables.FormActivate(Sender: TObject);
begin
edtVarName.SetFocus;
end;

procedure TfrmVariables.edtVarNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 s : string;
 i : integer;
begin
 if key <> VK_BAck
  then begin
   Auto := true;
   if not ( Key in [vk_Left, vk_Right, vk_Up, vk_Down]) then AutoCompleteVarName(Tedit(Sender));
  end else
  begin
   Auto := false;
   s := TEdit(Sender).Text;
   i := TEdit(Sender).SelStart + 1;
   Delete(s, edtVarName.SelStart + 1, edtVarName.SelLength);
   TEdit(Sender).Text := s;
   TEdit(Sender).SelStart := i;
  end;
  if Empty then edtVarName.SelStart := 0;
end;

procedure TfrmVariables.edtVarNameMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if edtVarName.Text = 'Type Variable Name Here' then
  begin
   empty := true;
   edtVarName.SelStart := 0;
  end;
end;

procedure TfrmVariables.btnHelpClick(Sender: TObject);
begin
 if btnHelp.Caption = '?' then
  begin
   memHelp.Show;
   btnHelp.Caption := 'X';
   edtVarName.Enabled := false;
   btnAdd.Enabled := false;
   btnDelete.Enabled := false;
  end else
  begin
   memHelp.Hide;
   btnHelp.Caption := '?';
   edtVarName.Enabled := true;
   btnAdd.Enabled := true;
   btnDelete.Enabled := true;
  end;
end;

procedure TfrmVariables.vleVariablesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 frmMatheMagixPAT.EQ2ANSVARQ(vleVariables.Cells[1, vleVariables.row]);
end;

procedure TfrmVariables.btnRenameClick(Sender: TObject);
var
 i : integer;
begin
 i := 0;
 if (edtVarName.Text <> '') and (not(vleVariables.FindRow(edtVarName.Text, i))) then
  begin
   vleVariables.Cells[0, vleVariables.Row] := edtVarName.Text;
   AssignValues;
   frmMatheMagixPAT.AutoCompleteIni;
  end else
 if edtVarName.Text = ''
  then
   Showmessage('Must have a name to replace a name')
  else
   Showmessage('Cant name two items with same name'); 
end;

end.
