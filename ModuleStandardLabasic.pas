unit ModuleStandardLabasic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, jpeg, Spin, Gauges,
  ActnMan, ActnColorMaps, Menus, Mask, DBCtrls, comobj, CheckLst, Grids,
  ExtDlgs, ModuleFunctionsLabasic, ValEdit;

type
  TCalcLabasic = Class
   Answer : string;
   Returning : Extended;
   //vllist : TValueListEditor;

   function Funtionize(s : string; Display : extended; cmpndFunktion : array of extended; funks : string; vle : TValueListEditor) : String;
   function GetAnswer(EQ : string; vle : TValueListEditor) : string; 
   function EQ2ANSANALYZE(EQ : string) : string;

   constructor Create;
  end;

  TOrder = Class(TListBox)
  end;


implementation

uses Math, StrUtils, ConvUtils, StdConvs;

constructor TCalcLabasic.Create;
begin
 Answer := '0';
 Returning := 0;
end;

function TCalcLabasic.Funtionize(s : string; Display : extended; cmpndFunktion : array of extended; funks : string; vle : TValueListEditor) : String;
var
 Func : TFunc;
 sReturn : boolean;
begin
 Func := TFunc.create;
 sReturn := false;

 if s = 'abs'
  then
   Display := Abs(Display)
  else
 if s = 'acos'
  then
   Display := ArcCos(Display)
  else
 if s = 'acosh'
  then
   Display := ArcCosh(Display)
  else
 if s = 'acot'
  then
   Display := ArcCot(Display)
  else
 if s = 'acoth'
  then
   Display := ArcCotH(Display)
  else
 if s = 'acsc'
  then
   Display := ArcCsc(Display)
  else
 if s = 'acsch'
  then
   Display := ArcCscH(Display)
  else
 if s = 'and'
  then
   Display := func.AndLogic(cmpndFunktion)
  else
 if s = 'asec'
  then
   Display := ArcSec(Display)
  else
 if s = 'asech'
  then
   Display := ArcSecH(Display)
  else
 if s = 'asin'
  then
   Display := ArcSin(Display)
  else
 if s = 'asinh'
  then
   Display := ArcSinh(Display)
  else
 if s = 'atan'
  then
   Display := ArcTan(Display)
  else
 if s = 'atan2'
  then
   display := func.ATAN2(cmpndFunktion)
  else
 if s = 'atanh'
  then
   Display := ArcTanh(Display)
  else
 if s = 'avedev'
  then
   Display := Func.AverageDeviantion(cmpndFunktion)
  else
 if s = 'average'
  then
   Display := Func.Average(cmpndFunktion)
  else
 if s = 'averageif'
  then
   Display := func.AverageIf(cmpndFunktion, Funks)
  else
 if s = 'base2num'
  then
   Display := func.Base2Num(cmpndFunktion)
  else
 if s = 'bin2dec'
  then
   Display := func.BinToDec(FloatToStr(Display))
  else
 if s = 'cbrt'
  then
   Display := power(Display, 1/3)
  else
 if s = 'ceil'
  then
   Display := ceil(Display)
  else
 if s = 'code'
  then
   Display := func.code(Funks)
  else
 if s = 'combin'
  then
   Display := func.Combin(cmpndFunktion)
  else
 if s = 'convert'
  then
   Display := func.Convert(cmpndFunktion, funks)
  else
 if s = 'cos'
  then
   Display := Cos(Display)
  else
 if s = 'cosh'
  then
   Display := Cosh(Display)
  else
 if s = 'cot'
  then
   Display := Cot(Display)
  else
 if s = 'coth'
  then
   Display := CotH(Display)
  else
 if s = 'csc'
  then
   Display := Csc(Display)
  else
 if s = 'csch'
  then
   Display := CscH(Display)
  else
 if s = 'datedif'
  then
   Display := func.DateDifference(Funks)
  else
 if s = 'degrees'
  then
   Display := RadToDeg(Display)
  else
 if s = 'devsqr'
  then
   Display := func.DevSqr(cmpndFunktion)
  else
 if s = 'div'
  then
   Display := func.DivInt(cmpndFunktion)
  else
 if s = 'dur2d'
  then
   Display := func.DURATION(funks)
  else
 if s = 'dur2h'
  then
   Display := Convert(func.DURATION(funks),tuDays, tuHours)
  else
 if s = 'dur2milli'
  then
   Display := Convert(Func.DURATION(funks),tuDays, tuMilliSeconds)
  else
 if s = 'dur2min'
  then
   Display := Convert(Func.DURATION(funks),tuDays, tuMinutes)
  else
 if s = 'dur2s'
  then
   Display := Convert(Func.DURATION(funks),tuDays, tuSeconds)
  else
 if s = 'dur2w'
  then
   Display := Convert(Func.DURATION(funks),tuDays, tuWeeks)
  else
 if s = 'even'
  then
   Display := func.even(Display)
  else
 if s = 'exp'
  then
   Display := power(2.71828182845905, Display)
  else
 if s = 'fact'
  then
   Display := func.factorial(Display)
  else
 if s = 'factdouble'
  then
   Display := func.factDoub(Display)
  else
 if s = 'find'
  then
   Display := func.Find(Funks, cmpndFunktion)
  else
 if s = 'fixed'
  then
   Display := func.Fixed(cmpndFunktion)
  else
 if s = 'floor'
  then
   Display := floor(Display)
  else
 if s = 'frac'
  then
   Display := frac(Display)
  else
 if s = 'gcd'
  then
   Display := func.gcd(cmpndFunktion)
  else
 if s = 'geomean'
  then
   Display := func.GeoMean(cmpndFunktion)
  else
 if s = 'harmean'
  then
   Display := func.HarMean(cmpndFunktion)
  else
 if s = 'if'
  then
   Display := func.IFState(funks)
  else
 if s = 'int'
  then
   Display := int(Display)
  else
 if s = 'inv'
  then
   Display := 1/Display
  else
 if s = 'large'
  then
   Display := func.Large(cmpndFunktion, funks)
  else
 if s = 'lcm'
  then
   Display := func.LCM(cmpndFunktion)
  else
 if s = 'ln'
  then
   Display := LogN(2.71828182845905, Display)
  else
 if s = 'log'
  then
   Display := func.logarithim(cmpndFunktion)
  else
 if s = 'log2base' then
 begin
  if Display <> 0 then Display := Log2(Display)
 end else
 if s = 'log10base'
  then
   Display := Log10(Display)
  else
 if s = 'max'
  then
   Display := func.Maximum(cmpndFunktion)
  else
 if s = 'median'
  then
   Display := func.Median(cmpndFunktion)
  else
 if s = 'min'
  then
   Display := func.Minimum(cmpndFunktion)
  else
 if s = 'mod'
  then
   Display := func.Modular(cmpndFunktion)
  else
 if s = 'multinomial'
  then
   Display := func.Multinomial(cmpndFunktion)
  else
 if s = 'not'
  then
   Display := func.NotLogic(Display)
  else
 if s = 'num2base'
  then
   Display := func.Num2Base(cmpndFunktion)
  else
 if s = 'odd'
  then
   Display := func.ODDRound(Display)
  else
 if s = 'or'
  then
   Display := func.OrLogic(cmpndFunktion)
  else
 if s = 'permut'
  then
   Display := func.Permut(cmpndFunktion)
  else
 if s = 'power'
  then
   Display := func.Pwr(cmpndFunktion)
  else
 if s = 'product'
  then
   Display := func.product(cmpndFunktion)
  else
 if s = 'radians'
  then
   Display := DegToRad(Display)
  else
 if s = 'rand'
  then
   Display := RandG(1, -1)
  else
 if s = 'randbetween'
  then
   Display := func.RandBetween(cmpndFunktion)
  else
 if s = 'random'
  then
   Display := Random(Trunc(Display))
  else
 if s = 'root'
  then
   Display := func.Root(cmpndFunktion)
  else
 if s = 'roundto'
  then
   Display := func.RoundToo(cmpndFunktion)
  else
 if s = 'sec'
  then
   Display := Sec(Display)
  else
 if s = 'sech'
  then
   Display := SecH(Display)
  else
 if s = 'shl'
  then
   Display := func.SHLLogic(cmpndFunktion)
  else
 if s = 'shr'
  then
   Display := func.SHLLogic(cmpndFunktion)
  else
 if s = 'sin'
  then
   Display := Sin(Display)
  else
 if s = 'sinh'
  then
   Display := Sinh(Display)
  else
 if s = 'small'
  then
   Display := func.Small(cmpndFunktion, funks)
  else
 if s = 'sqr'
  then
   Display := Sqr(Display)
  else
 if s = 'sqrt'
  then
   Display := Sqrt(Display)
  else
 if s = 'sqrtpi'
  then
   Display := Sqrt(Display * pi)
  else
 if s = 'sum'
  then
   Display := func.SumFunk(cmpndfunktion)
  else
 if s = 'sumif'
  then
   Display := func.Sumif(cmpndFunktion, Funks)
  else
 if s = 'pi'
  then
   Display := func.pii(Display)
  else
 if s = 'sumsqr'
  then
   Display := func.SumSqr(cmpndFunktion)
  else
 if s = 'tan'
  then
   Display := Tan(Display)
  else
 if s = 'tanh'
  then
   Display := tanh(Display)
  else
 if s = 'trunc'
  then
   Display := trunc(Display)
  else
 if s = 'xor'
  then
   Display := func.XORLOgic(cmpndFunktion)
  else
 if s = 'number'
  then
   Display := Func.VarAssign(cmpndFunktion, funks, vle)
  else
 if s = 'greater'
  then
   display := func.GreaterLogic(cmpndFunktion)
  else
 if s = 'smaller'
  then
   display := func.SmallerLogic(cmpndFunktion)
  else
 if s = 'greaterorequal'
  then
   display := func.GreaterEQLogic(cmpndFunktion)
  else
 if s = 'smallerorequal'
  then
   display := func.SmallerEQLogic(cmpndFunktion)
  else
 if s = 'equal'
  then
   display := func.EqualLogic(cmpndFunktion)
  else
 if s = 'isodd'
  then
   Display := func.IsOddLogic(Display)
  else
 if s = 'iseven'
  then
   Display := Func.IsEvenLogic(Display)
  else
 if s = 'bool'
  then
   display := func.TrueFalse(funks)
  else
 if s = 'notequal'
  then
   Display := func.NotEqualLogic(cmpndFunktion)
  else
 if s = 'return'
  then
   Returning := Display
  else
 if s = 'text'
  then begin
   Result := func.VarAssignString(funks, vle);
   sReturn := true;
  end;


  if not sReturn then Result := FloatToStr(Display);

  Func.free;

end;

function EQ2ANSPUTE(EQ : String) : string;
var
 y, z : integer;
Begin
 if EQ <> '' then
  begin
   y:=0;
   Repeat
    inc(y);
    if (EQ[y] in  ['e','E']) then
     if (EQ[y-1] in ['0'..'9','.']) then
      begin
       delete(EQ,y,1);
       if (y <> length(EQ)+1)
        then
         insert('*10^',EQ,y)
        else
         insert('*10^0',EQ,y);
      end else
      begin
       z:=y;
       Repeat
         dec(z);
         if (EQ[z] in ['#','%']) then
          begin
           delete(EQ,y,1);
           if (y <> length(EQ)+1)
            then
             insert('*10^',EQ,y)
            else
             insert('*10^0',EQ,y);
          end;
        Until (EQ[z-1] in ['+','-','/','*','^']) or (z = 1);
      end;
   Until y = length(EQ)+1;
    Result := EQ;
  end else
   Result := '0';
end;


function TCalcLabasic.EQ2ANSANALYZE(EQ : string) : string;
var
 y, ob, cb, z : integer;
 sPara        : boolean;
 assign          : integer;
 func, funk      : string;
Begin

 if EQ <> '' then
  begin
     assign := -1;
     for y := 1 to length(EQ) do
      if EQ[y] = ':' then assign := y;

     if assign > -1 then
      Delete(EQ, 1, assign+1);

     EQ :='('+EQ;
     ob := 0; cb := 0;

  (*   y := 0;s := 0; l := 0;
     Repeat
      inc(y);
      if EQ[y] = '{' then
       begin
        z := y; b := true;

        Repeat
          inc(z);
          if b then if EQ[z] in ['0'..'9'] then s := s*10 + StrToInt(EQ[z]) else if EQ[z] in [','] then b := false;
          if not b then if EQ[z] in ['0'..'9'] then l := l*10 + StrToInt(EQ[z]);
        Until (EQ[z] in ['}']) or (z > length(EQ));

        z := y;
        Repeat
         delete(EQ, y, 1);
         inc(z);
        Until (EQ[z] in ['}']) or (z > length(EQ));
        delete(EQ, y, 2);

        if s > l then
         begin
          r := s;
          s := l;
          l := r;
         end;

        if s <> 0 then
        for v := l downto s do
         if v <> l
          then
           insert(IntToStr(v) + ', ',EQ, y)
          else
           insert(IntToStr(v), EQ, y);
       end;

     Until y >= length(EQ);    *)

    // Showmessage(EQ);

     sPara := False;
     for y := 1 to length(EQ) do
      if EQ[y] = '"' then sPara := not sPara else
      if not sPara then if EQ[y] = ' ' then delete(EQ,y,1);

     y := 0; sPara := false;
     if EQ <> '' then
     Repeat
      inc(y);
      if EQ[y] = '"' then sPara := not sPara;
      if not sPara then
      if (EQ[y] in ['0'..'9','.'])and(EQ[y+1] in ['a'..'z','A'..'Z','(','#','$','%','@'])and(not(EQ[y-1] in ['a'..'z','A'..'Z'{'0'..'9','.','+','-','/','*','^'}])or(y-1 = 0))
       then  if not (EQ[y+1] in ['e','E']) then
       begin
        insert('*',EQ,y+1);
        z:=y;
        Repeat
         dec(z);
        Until (EQ[z] in ['+','/','-','*','^',')']) or (z > length(EQ));
        insert('(',EQ,z+1);
       end;
     Until y = length(EQ)+1;

     y := 0;  sPara := false;
     Repeat
      inc(y);
      if EQ[y] = '"' then sPara := not sPara;
      if not sPara then
      if (EQ[y] in [')'])and(EQ[y+1] in ['0'..'9','a'..'z','A'..'Z','(','@'])
       then  if not (EQ[y+1] in ['e','E']) then
        begin
        insert('*',EQ,y+1);
        z:=y;
        Repeat
         dec(z);
        Until (EQ[z] in ['+','/','-','*','^',')']) or (z < 1);
        insert('(',EQ,z+1);
       end;
     Until y = length(EQ)+1;


    EQ := EQ2ANSPUTE(EQ);

    sPara := false;
    y:=length(EQ);
     While y > 1 do
      begin
         if EQ[y+1] = '"' then sPara := not sPara;
         if not sPara then
         Begin
          if EQ[y] = '"' then if EQ[y+1] =  ';' then insert('[',EQ,y+2);
          if EQ[y] = '(' then if EQ[y+1] <> '"' then insert('[',EQ,y+1);
          if EQ[y] = ')' then if EQ[y-1] <> '"' then
           begin
            insert(']',EQ,y);
           end;
          if EQ[y] = ',' then
            begin
             delete(EQ,y,1);
             if EQ[y-1] <> '"' then insert('+]',EQ,y);
             if EQ[y-1] <> '"' then insert(';',EQ,y+2) else insert(';', EQ, y);
             if EQ[y-1] <> '"' then insert('[',EQ,y+3);
            end;
        end;
       dec(y);
     end;

   y:=length(EQ); func := '';
   While y > 1 do
    begin
     if EQ[y] in ['('] then
      begin
       z:=y;
       func:='';
       Repeat
        dec(z);
        if not (EQ[z] in ['[','(',')',']']) then func := func + EQ[z];
       Until (EQ[z] in ['+','/','-','*','^','(']) or (z < 1);


       func := LowerCase(Func);
       funk := '';
       for z := length(func) downto 1 do
        funk := funk + func[z];

       if length(funk) > 1 then
        if funk[1] in ['+','/','-','*','^'] then
         delete(funk,1,1);

       z:=y;
       Repeat
        if (funk = 'averageif') or (funk = 'sumif') then
         begin
        {   if EQ[z] in ['<','>','='] then
            if EQ[z+1] in ['0'..'9','a'..'z','A'..'Z','('] then
            insert('[', EQ, z+1);

                   }
         {  if EQ[z] in ['0'..'9','a'..'z','A'..'Z',')'] then
            if EQ[z+1] in [')',']','"'] then
           insert(']', EQ, z+1);    }

         end else
        if (funk = 'averageifs') or (funk = 'sumifs') then
         begin
         { if EQ[z] in ['<','>','='] then
            if EQ[z+1] in ['0'..'9','a'..'z','A'..'Z','('] then
            insert('[', EQ, z+1);


           if EQ[z] in ['0'..'9','a'..'z','A'..'Z',')'] then
            if EQ[z+1] in [')',']','"',','] then
           insert(']', EQ, z+1);          }
         end else
        if funk = 'vir' then
         begin

         end;


        inc(z);
       Until (EQ[z] in [']',')']) or (z > length(EQ));

      end;

     dec(y);
    end;

   y := 0;
   Repeat
    inc(y);
    if (y > 1)and(y < length(EQ)) then
     begin
      if EQ[y] = '[' then
       begin
        delete(EQ,y,1);
        insert('(',EQ,y);
       end else if EQ[y] = ']' then
        begin
         delete(EQ,y,1);
         insert(')',EQ,y);
        end else if EQ[y] = ';' then
         begin
          delete(EQ,y,1);
          insert(',',EQ,y);
         end;
       end;
     Until y = length(EQ);

    //Showmessage(EQ)  ;

     y := 0;
     Repeat
      inc(y);
      if EQ[y] = '('
       then
        inc(ob)
       else
        if EQ[y] = ')'
         then
          inc(cb);
      Until y = length(EQ);

      if ob > cb then
      Repeat
       EQ := EQ + ')';
       inc(cb);
      Until
       cb = ob;

      if ob < cb then
      Repeat
       EQ := '(' + EQ;
       inc(ob);
      Until
       cb = ob;

    Result := EQ;
  end else
   Result := '0';
end;

function PlantVariables(txt : string; vle : TValueListEditor) : string;
var
 i, y, k, z : integer;
 v       : string;
 sPara, isvar   : BOOLEAN;
begin
 i:=1;
 sPara := false;

 if txt <> '' then
  Repeat

  if txt[i] = '"' then sPara := not sPara;

  if not sPara then
  if txt[i] in ['0'..'9'] then
   if txt[i+1] in ['a'..'z','A'..'Z'] then
    if (txt[i-1] in ['0'..'9','+','/','-','*','^',')','=',','])or(i-1 = 0) then
     if (not (txt[i+1] in ['e','E']))and(not (txt[i+2] in ['0'..'9','-'])) then
       begin
        insert('*',txt,i+1);
        z:=i;
        Repeat
         dec(z);
        Until (txt[z] in ['+','/','-','*','^',')']) or (z > length(txt));
        insert('(',txt,z+1);
       end;
     // insert('*', txt, i+1);


  if (txt[i] in ['a'..'z','A'..'Z','@','$','#']) and ((txt[i-1] in ['+','/','-','*','^','(',')','=',' ',','])or(i=1)) and (txt[i+1] <> ':')  then
   begin
    y:=i;
    v:='';
    Repeat
     if txt[y] in ['a'..'z','A'..'Z','0'..'9','#','$','_','@'] then v := v + txt[y];
     inc(y);
    Until (txt[y] in ['+','/','-','*','(','^',')',',']) or ( y > length(txt) );
   end;

   isvar := false;
   for  k := 0 to vle.RowCount - 1 do
    if v = vle.Cells[0, k] then
     begin
      delete(txt, i, length(v));
      insert(vle.Cells[1, k], txt, i);
      isvar := true;
     end;

   if (length(v) > 1) and (not isvar) and (v[1] = '@') then
    begin
     delete(txt, i, length(v));
     insert('0', txt, i);
    end;


   v :='([{!@#$%^&*}])';
   inc(i);

 Until (i > length(txt));

 Result := txt;
end;

Function TCalcLabasic.GetAnswer(EQ : String; vle : TValueListEditor) : string;
var
 NewVal, PrevVal, Display    : Extended;
 X, pX, fX, eX               : Extended;
 sX, sEQ                     : String;
 Op, sOP, c, cFx             : Char;
 leny, lenb, pwr, pwrb       : boolean;
 k, w, z, y, ob, cb, j, a, i : integer;
 Functions, Funktion         : string;
 cmpndFunction               : String;
 cmpndFunks                  : string;
 cmpndFunktion               : array of extended;
 ZeroDelete, f, sfunk, sPara : boolean;
begin
 if (EQ <> '') then
 begin

 EQ :='('+EQ;
 Display := 0; Funktion := '' ; cFx := ' ';
 pX      := 0;   fX      := 0; eX := 0;  a := 1;
 Op      := ' '; sOp     := ' '; sX      := ''; y:=1;
 pwr := false; X := 0; cmpndFunction:=''; Result := '0'; Result := '0';
 leny:=true; Functions := ''; SetLength(cmpndFunktion, 10);
 ZeroDelete := false; Funktion := ''; sfunk:=false; cmpndFunks := '';

 EQ := EQ2ANSANALYZE(EQ);
 EQ := PlantVariables(EQ, vle);
 sEQ:=EQ;

 for k := length(EQ) downto 0 do
  if (EQ[k] = '(') then
   begin
   lenb:=true;
   for w := k to length(EQ) do
    if lenb then
    if (EQ[w] <> ')') then
     begin
      c:=sEQ[w];
      if c in ['$','%','#'] then cFx := c ;

      if (c in ['0'..'9', '.'])or((c in ['-'])and(EQ[w-1] in ['*','/','-','+','(','^',',','a'..'z','A'..'Z']))//handle numbers and negative
      or ((c in ['a'..'z','A'..'Z']) and (cFx in ['$','%','#']))   //handle Q conversion
      or ((c in ['e','E'])and(sEq[w+1] in ['0'..'9','-']) and(sEQ[w-1] in ['0'..'9','.'])) //handle e purpose
      then
       begin

         if pwr then if sX <> '' then val(sX,X,z) else X := 1;
         if not pwr then val(sX, PrevVal, z) else if x <> 0 then PrevVal := power(eX,X) else PrevVal := eX;
        {  case cFx of
           '$' : if not pwr then PrevVal := func.HexToDecimal(sX) else if HexTODecimal(sX) <> 0 then PrevVal := power(eX,1/HexTODecimal(sX)) else PrevVal := ex;
           '%' : if not pwr then PrevVal := PrevVal /100     else if PrevVal/100      <> 0 then PrevVal := power(eX,1/(PrevVal/100));
           '#' : if not pwr then PrevVal := RomToDec(sX)     else if RomToDec(sX)     <> 0 then PrevVal := power(eX,1/RomToDec(sX)) else PrevVAl := ex;
          end;
         }
          sX := sX + c;

          if pwr then val(sX,X,z);
          if not pwr then val(sX, NewVal, z) else NewVal := power(eX,X);
          //if pwr then x := NewVal;
       {   case cFx of
           '$' : if not pwr then NewVal := HexTODecimal(sX) else NewVal := power(eX,HexTODecimal(sX));
           '%' : if not pwr then NewVal := NewVal /100      else NewVal := power(eX,1/(NewVal/100));
           '#' : if not pwr then NewVal := RomToDec(sX)     else NewVal := power(eX,RomToDec(sX));
          end;
        }

        if not (c in ['-']) then
         if Op <> ' ' then
          case Op of
           '+' : Display := Display + NewVal  - PrevVAl;
           '-' : Display := Display - NewVal  + PrevVal;
           '*' : if NewVal <> 0 then
                  begin
                   if PrevVal <> 0
                    then
                     Display := Display / PrevVal * NewVal
                    else
                     Display := Display * NewVal;
                  end else
                  if not(sEQ[w+1] in ['0'..'9','.'])  then
                   Display := Display * NewVal;
           '/' : if NewVal <> 0 then
                  begin
                   if PrevVal <> 0
                    then
                     Display := Display * PrevVal / NewVal
                    else
                     Display := Display / NewVal;
                  end;

          end else
           Display := NewVal;

          if not(c in ['-']) then
           if (Op in ['/','*'])and(sOp in ['+','-']) then
             case sOp of
              '+' : case Op of
                     '*' : Display := fX+pX*NewVAl;
                     '/' : if NewVal <> 0
                            then
                             Display := fX+pX/NewVal
                            else;
                    end;
              '-' : case Op of
                     '*' : Display := fX-pX*NewVAl;
                     '/' : if NewVal <> 0
                            then
                             Display := fX-pX/NewVal
                            else;
                    end;
             end;

       end else //if (c in ['0'..'9', '.', 'e', 'E'])or((c = '-')and(EQ[w-1] in ['*','/','-','+','x','e','E']))then
       if (c in ['*','/','+','-']) then
       begin
        val(sX, X, z);
        if pwr then
         begin
          X   := power(eX,X);
          pwr := false;
          eX  := 0;
         end;
      {  case cFx of
         '$': if not pwr then X := HexTODecimal(sX) else X := power(eX, HexTODecimal(sX));
         '%': X := X/100;
         '#': if not pwr then X := RomToDec(sX) else X := power(eX, RomToDec(sX));
        end;
       } cFx := ' ';
        sX := '';
        if Op <> ' ' then
           case Op of
            '+' : if c in ['*','/'] then
                   begin
                    pX := X;
                    sOp := '+';
                   end else
                    fX := fX + X;

            '-' : if c in ['*','/'] then
                   begin
                    pX := X;
                    sOp := '-';
                   end else
                    fX := fX - X;

            '/' : if sOp in ['+','-'] then
                   begin
                    if X <> 0 then pX := pX / X;
                    if (c in ['+','-',','])or(EQ[w+1] in [')','(']) then
                     begin
                      if sOp = '+' then fX := fX + pX;
                      if sOp = '-' then fX := fX - pX;
                      sOp := ' ';
                     end;
                    end else
                     if X <> 0 then fX := fX / X;

            '*' : if sOp in ['+','-'] then
                   begin
                    pX := pX * X;
                    if (c in ['+','-',','])or(EQ[w+1] in [')','(']) then
                     begin
                      if sOp = '+' then fX := fX + pX;
                      if sOp = '-' then fX := fX - pX;
                      sOp := ' ';
                     end;
                    end else
                     fX := fX * X;
           end else
            fX := X;
            Op := c;

       end else   //if c in ['*','/','-','+','=','x'] then
       if c = '^' then
        begin
         if pwr
          then
           eX := power(eX,x)
          else
           val(sX, ex, z);
    {     case cFx of
           '$': if not pwr then eX := HexTODecimal(sX) else eX := power(eX, HexTODecimal(sX));
           '%': X := X/100;
           '#': if not pwr then eX := RomToDec(sX) else eX := power(eX, RomToDec(sX));
         end;
         cFx := ' ';
     }    pwr := true;
         sX :='';
      end;
     end else //if EQ[w] <> ')' then
     begin
       {delete the brack  put ans}

      cFx:=' ';
      cmpndFunks := '';
      sPara := false;

      for z := k-1 to length(EQ) do
       begin
        if leny then if EQ[z] <> ')' then
         begin
           if ((not(EQ[z-1] in ['a'..'z','A'..'Z']))and(EQ[z] in ['0'..'9','.']))
           or((EQ[z] in ['-'])and(EQ[z-1] in ['*','/','-','+','(',')','^',',',' ','<','>','=','"']))
           or((EQ[z] in ['e','E'])and(EQ[z+1] in ['0'..'9','-']))or((EQ[z] in ['0'..'9','.'])and(EQ[z-1] in ['e','E']))
            then
             cmpndFunction := cmpndFunction + EQ[z]
            else if EQ[z] in [','] then
            begin
             SetLength(cmpndFunktion,a+1);
             val(cmpndFunction,cmpndFunktion[a],y);
             inc(a);
             cmpndFunction:='';
            end;
           delete(sEQ, k, 1);
         end else
         begin
           SetLength(cmpndFunktion,a+1);
           val(cmpndFunction,cmpndFunktion[a],y);
           inc(a);
           cmpndFunction:='';
           leny := false;
         end;
       end;

      for z := k-1 to length(EQ) do
       if sPara then
        begin
         if EQ[z] <> '"'
          then
           cmpndFunks := cmpndFunks + EQ[z]
          else
           sPara := false;
        end else
        if EQ[z] = '"'
         then
          sPara := true;

      leny:=true;
      lenb:=false;

      j:=k;
      functions := '' ;

      if  EQ[k-1] in ['('{,'*','/','+','-','0'..'9','.'}]
       then
        Functions := ''
       else Repeat
        if (EQ[j] in ['a'..'z','A'..'Z','0'..'9']) then
         begin
          Functions := Functions + EQ[j];
         end else
          if EQ[j] in ['(',')','"'] then Functions := '';
        dec(j);
       until
        (EQ[j] in ['*','+','/','-','(','^'])or(j=0);

      Functions := LowerCase(Functions);
      Funktion := '';
      for z := length(Functions) downto 1 do
       begin
        Funktion := Funktion + Functions[z];
       end;

       f:=false;

       for z := 1 to length(Funktion) do
        if Funktion[z] in ['0'..'9'] then
         f := true;


      insert(Funtionize(Funktion, Display, cmpndFunktion, cmpndFunks, vle), sEQ, k);
     // Showmessage(sEQ);
  //    Val(Funtionize(Funktion, Display, cmpndFunktion, cmpndFunks, vle), Display, z);

      Functions := '';

     // Showmessage(sEQ);
     // Showmessage(FloatToStr(Display));


       if f then
        for z := k-1 downto k-length(Funktion)+1 do
         if sEQ[z] in ['a'..'z']
          then
           delete(sEQ, z, 1)
          else if EQ[z] in ['0'..'9'] then
          // if (EQ[z+1] in ['a'..'z','(']) or (EQ[z-1] in ['a'..'z'])  then
            delete(sEQ, z ,1);


      //Result := sEQ;
      //sEQ := EQ2ANSANALYZE(sEQ);
      //sEQ := EQ2ANSPUTE(sEQ);

      EQ:=sEQ;
      pX  := 0;
      fX  := 0;
      eX  := 0;
      Op  := ' ';
      sOp := ' ';
      sX  := '';
      pwr:=false;
      Display := 0;
      a:=1;
     end;
   end;  //(EQ[k] = '(')
  Answer := sEQ;

  end else
   Answer := '0';
  if Answer = '' then Answer := 'Error';
  Result := Answer;
end;


end.
