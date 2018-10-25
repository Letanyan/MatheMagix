unit ModuleFunctionsCalculator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, jpeg, Spin, Gauges,
  ActnMan, ActnColorMaps, Menus, Mask, DBCtrls, comobj, CheckLst, Grids,
  ExtDlgs, Math, StrUtils, ConvUtils,  ValEdit , StdConvs, LogicModel;

type
  TFunc = Class
   function BaseToBase10(Value: string; Base : Smallint): Longint;
   function Base2Num(cmpndFunktion : array of extended): extended;
//   function NumToBase(Value: Longint; base, digits : Integer): string;
   function DecToRom(Decimal: Longint): string;
   function RomToDec(RomNum:String):integer;
   function HexTODecimal(s:string):integer;
   Function BinToDec(s:string):Integer;
  { function ConvertUnitType(SI : String) : TConvType;
   function ConvertUnit(valu : extended; frm, too : string):Extended;
   function ConvertUnit2X(valu : extended; frm, too, frm2, too2 : string):extended;
   function DATEDIF(DateCon : String) : TDATE;                        }
   function DURATION(funks : string):Extended;
  // function MinForLarge(cmpndfunktion : array of extended):Extended;
  // function MaxforSmall(cmpndfunktion : array of extended):Extended;
   function AverageDeviantion(cmpndfunktion : array of extended):Extended;
   function ATAN2(cmpndfunktion : array of extended):Extended;
   function Average(cmpndfunktion : array of extended):Extended;
   function AverageIf(cmpndfunktion : array of extended; funks : string):Extended;
   function Code(Funks : string) : extended;
   function Combin(cmpndfunktion : array of extended):Extended;
   function Convert(cmpndfunktion : array of extended; funks : string):Extended;
   function DateDifference(Funks : string) : extended;
   function DevSqr(cmpndfunktion : array of extended):Extended;
   function DivInt(cmpndfunktion : array of extended):Extended;
   function Even(Display : extended) : extended;
   function factorial(Display : extended) : extended;
   function factDoub(Display : extended) : extended;
   function Find(funks : string; cmpndfunktion : array of extended):extended;
   function Fixed(cmpndfunktion : array of extended):Extended;
   function GCD(cmpndfunktion : array of extended):Extended;
   function GeoMean(cmpndfunktion : array of extended):Extended;
   function HarMean(cmpndfunktion : array of extended):Extended;
   function Large(cmpndfunktion : array of extended; funks : string):extended;
   function LCM(cmpndfunktion : array of extended):Extended;
   function logarithim(cmpndfunktion : array of extended):Extended;
   function Maximum(cmpndfunktion : array of extended):Extended;
   function Median(cmpndfunktion : array of extended):Extended;
   function Minimum(cmpndfunktion : array of extended):Extended;
   function Modular(cmpndfunktion : array of extended):Extended;
   function Multinomial(cmpndfunktion : array of extended):Extended;
   function Num2Base(cmpndfunktion : array of extended):Extended;
   function ODDRound(Display : extended) : extended;
   function Permut(cmpndfunktion : array of extended):Extended;
   function Pwr(cmpndfunktion : array of extended):Extended;
   function product(cmpndfunktion : array of extended):Extended;
   function RandBetween(cmpndfunktion : array of extended):Extended;
   function Root(cmpndfunktion : array of extended):Extended;
   function RoundToo(cmpndfunktion : array of extended):Extended;
   function SHLLogic(cmpndfunktion : array of extended):Extended;
   function SHRLogic(cmpndfunktion : array of extended):Extended;
   function SumFunk(cmpndfunktion : array of extended):Extended;
   function Sumif(cmpndfunktion : array of extended; funks : string):Extended;
   function Pii(Display : extended):extended;
   function SumSqr(cmpndfunktion : array of extended):Extended;
   function Small(cmpndfunktion : array of extended; funks : string):extended;
   function DistanceRelativeRating(cmpndfunktion : array of extended):Extended;

   function VarNoAssign(cmpndfunktion : array of extended):Extended;
   function VarAssign(cmpndfunktion : array of extended; funks : string; vle : TValueListEditor):Extended;

   function TrueFalse(funks : string) : byte;

   function IFState(cmpndfunktion : array of extended):Extended;
   function IfErrorLogic(cmpndfunktion : array of extended):byte;

   function IsEvenLogic(Display : extended):byte;
   function IsOddLogic(Display : extended):byte;

   function NotLogic(Display : extended):byte;
   function OrLogic(cmpndfunktion : array of extended):byte;
   function AndLogic(cmpndfunktion : array of extended):byte;
   function XORLOgic(cmpndfunktion : array of extended):byte;

   function GreaterLogic(cmpndfunktion : array of extended):byte;
   function SmallerLogic(cmpndfunktion : array of extended) : byte;
   function EqualLogic(cmpndfunktion : array of extended) : byte;
   function GreaterEQLogic(cmpndfunktion : array of extended) : byte;
   function SmallerEQLogic(cmpndfunktion : array of extended) : byte;
   function NotEqualLogic(cmpndfunktion : array of extended) : byte;

  end;

implementation

function TFunc.VarAssign(cmpndfunktion : array of extended; funks : string; vle : TValueListEditor):Extended;
var
 i : integer;
 change : integer;
begin
 change := -1;
 for i := 0 to vle.RowCount - 1  do
  if vle.Cells[0, i] = funks then
   change := i;

 if funks <> '' then
 if change = -1
  then begin
   vle.Row := vle.RowCount - 1;
   vle.InsertRow(funks, FloatToStr(cmpndfunktion[2]), false);
  end else
   vle.Cells[1, change] := FloatToStr(cmpndfunktion[2]);

 Result := cmpndfunktion[2];
end;


function TFunc.VarNoAssign(cmpndfunktion : array of extended):Extended;
begin
 if length(cmpndfunktion) > 2
  then
   Result := cmpndfunktion[2]
  else
   Result := 0;
end;

function Tfunc.SumSqr(cmpndfunktion : array of extended):Extended;
var
 y : integer;
begin
  Result := 0;
 if length(cmpndFunktion) > 1 then Result:=Sqr(cmpndFunktion[1]);
  for y := 1 to length(cmpndFunktion)-2 do
  if (cmpndFunktion[y] <> 0)
   then
    Result := (Result+Sqr(cmpndFunktion[y+1]));
end;

function TFunc.Pii(Display : extended) : extended;
begin
 if Display <> 0
   then
    Display := Display * pi
   else
    Display := pi;
 Result := Display;
end;

function Tfunc.Sumif(cmpndfunktion : array of extended; funks : string):Extended;
var
 k      : integer;
 logic  : TLogic;
begin
 Result := 0;
 if (length(funks)>1)and(length(cmpndFunktion)>2) then
  begin
   Logic := TLogic.Create;
   for k := 2 to length(cmpndFunktion)-1 do
    if Logic.ComplexBoolConv(Logic.SimpleBoolConv(logic.AssignValBoolConv(funks, cmpndFunktion[k]))) = 1
     then
      Result := Result +cmpndFunktion[k];
   Logic.Free; 
  end;
end;

function TFunc.SumFunk(cmpndfunktion : array of extended):Extended;
var
 y : integer;
begin
  Result := 0;
 
 if length(cmpndFunktion) > 1 then Result:=cmpndFunktion[1];
  for y := 1 to length(cmpndFunktion)-2 do
  if (cmpndFunktion[y] <> 0)
   then
    Result := (Result+cmpndFunktion[y+1]);
end;

function TFunc.SHLLogic(cmpndfunktion : array of extended):Extended;
var
 y : integer;
begin
   Result := 0;
  if length(cmpndFunktion) > 2 then
   begin
    Result:=cmpndFunktion[1];
    for y := 2 to length(cmpndFunktion)-1 do
     if (Result <> 0)and(trunc(cmpndFunktion[y]) <> 0)
      then
       Result := ( trunc(Result) shl trunc(cmpndFunktion[y]) );
   end;
end;

function TFunc.SHRLogic(cmpndfunktion : array of extended):Extended;
var
 y : integer;
begin
   Result := 0;
  if length(cmpndFunktion) > 2 then
   begin
    Result:=cmpndFunktion[1];
    for y := 2 to length(cmpndFunktion)-1 do
     if (Result <> 0)and(trunc(cmpndFunktion[y]) <> 0)
      then
       Result := ( trunc(Result) shr trunc(cmpndFunktion[y]) );
   end;
end;

function Tfunc.RoundToo(cmpndfunktion : array of extended):Extended;
begin
  Result := 0;
 if length(cmpndFunktion)>2
  then
   Result := RoundTo(cmpndFunktion[1],round(cmpndFunktion[2]));
end;

function TFunc.Root(cmpndfunktion : array of extended):Extended;
var
 y : integer;
begin
  Result := 0;
 if length(cmpndFunktion) > 2 then
   begin
    Result:=cmpndFunktion[1];
    for y := 2 to length(cmpndFunktion)-1 do
     if (Result <> 0)and(trunc(cmpndFunktion[y]) <> 0)
      then
       Result := power(Result, 1/cmpndFunktion[y]);
   end;
end;

function Tfunc.RandBetween(cmpndfunktion : array of extended):Extended;
begin
  Result := 0;
 if length(cmpndFunktion) > 2 then
   Result := RandomRange(Trunc(cmpndFunktion[1]), Trunc(cmpndFunktion[2]));
end;

function TFunc.product(cmpndfunktion : array of extended):Extended;
var
 y : integer;
begin
  Result := 0;
 if length(cmpndFunktion) > 1 then
   begin
    Result:=cmpndFunktion[1];
    for y := 1 to length(cmpndFunktion)-2 do
     if (cmpndFunktion[y] <> 0)
      then
       Result := (Result*cmpndFunktion[y+1]);
   end;
end;

function TFunc.Pwr(cmpndfunktion : array of extended):Extended;
var
 y : integer;
begin
  Result := 0;
 if length(cmpndFunktion) > 2 then
   begin
    Result:=cmpndFunktion[1];
    for y := 2 to length(cmpndFunktion)-1 do
     if (Result <> 0)
      then
       Result := power(Result, cmpndFunktion[y]);
   end;
end;

function Tfunc.Permut(cmpndfunktion : array of extended):Extended;
var
 z, y : integer;
begin
  Result := 0;
 if length(cmpndFunktion) > 2 then
   begin
    if (trunc(cmpndFunktion[1]) <> 0) and (trunc(cmpndFunktion[2]) <> 0)
     then
     if cmpndFunktion[1] > cmpndFunktion[2] then
      begin
       z := trunc(cmpndFunktion[1] - cmpndFunktion[2]);
       for y := 1 to trunc(cmpndFunktion[1])-1 do cmpndFunktion[1] := trunc(cmpndFunktion[1]) * y;
       for y := 1 to z-1 do z := z * y;
       if z <> 0 then Result := cmpndFunktion[1] / z;
      end else
       MessageDlg('Unable To Calculate, Group must be smaller than total', mtError, mbOKCancel, 1);
   end;
end;

function TFunc.ODDRound(Display : extended):extended;
begin
 if Display > 0
   then
    Display := ceil(Display)
   else
  if Display < 0
   then
    Display := Floor(Display)
   else
  if Display = 0
   then
    Display := 0;
  if Ceil(Display) mod 2 = 0 then
   if Display > 0
    then
     Display := Display + 1
    else
     Display := Display - 1;
 Result := Display;
end;

function NumToBase(Value: Longint; base, digits : Integer): string;
var
  rest: Longint;
  oct: string;
  i: Integer;
begin
  oct := '';
  if Base > 0 then
  while Value <> 0 do
  begin
   rest  := Value mod base;
   Value := Value div base;
    oct := IntToStr(rest) + oct;
  end;
  for i := Length(oct) + 1 to digits do
    oct := '0' + oct;
  if oct <> '' then  Result := oct else result := '0'
end;

function TFunc.Num2Base(cmpndfunktion : array of extended):Extended;
begin
  Result := 0;
 if length(cmpndFunktion) > 3
   then
    REsult := StrToInt(NumToBase(trunc(cmpndFunktion[1]),trunc(cmpndFunktion[2]),trunc(cmpndFunktion[3])))
   else if length(cmpndFunktion) > 2
    then
     REsult := StrToInt(NumToBase(trunc(cmpndFunktion[1]),trunc(cmpndFunktion[2]),0));
end;

function TFunc.Multinomial(cmpndfunktion : array of extended):Extended;
var
 x, r : extended;
 y, k : integer;
begin
  Result := 0;
 if length(cmpndFunktion) > 2 then
   Begin
     x:=0;
     for y := 1 to length(cmpndFunktion)-1 do
      x := x + cmpndFunktion[y];
     for y := 1 to Trunc(x)-1 do
      x := x * y;

     r:=1;
     for y := 1 to length(cmpndFunktion)-1 do
      for k := 1 to Trunc(cmpndFunktion[y])-1 do
       cmpndFunktion[y] := cmpndFunktion[y] * k;
     for y := 1 to length(cmpndFunktion)-1 do
      r := r * cmpndFunktion[y];

     if r <> 0 then Result := x/r;
   end;
end;

function TFunc.Modular(cmpndfunktion : array of extended):Extended;
var
 y : integer;
begin
  Result := 0;
 if length(cmpndFunktion) > 2 then
   begin
    Result:=cmpndFunktion[1];
    for y := 2 to length(cmpndFunktion)-1 do
     if (Result <> 0)and(trunc(cmpndFunktion[y]) <> 0)
      then
       Result := ( trunc(Result) mod trunc(cmpndFunktion[y]) );
   end;
end;

function TFunc.Minimum(cmpndfunktion : array of extended):Extended;
var
 MM1, MM2 : extended;
 y        : integer;
begin
 MM1:=0; Result := 0;
  if length(cmpndFunktion) > 1 then MM1:=cmpndFunktion[1];
  if length(cmpndFunktion) > 2
   then
    MM2:=cmpndFunktion[2]
   else
    MM2:=cmpndFunktion[1];
  if Length(cmpndFunktion) = 3
   then
    Result := Min(cmpndFunktion[1],cmpndFunktion[2]);
  for y := 1 to length(cmpndFunktion)-1 do
   if  MM1 < MM2 then
    begin
     MM2 := cmpndFunktion[y+1];
     Result := MM1;
    end else
    begin
     MM1 := cmpndFunktion[y+1];
     Result := MM2;
    end;

end;

function TFunc.Median(cmpndfunktion : array of extended):Extended;
var
 condition : array of string;
 order : Tlistbox;
 y, i     : integer;
 x : extended;
 s : string;
begin
  Result := 0;
 if length(cmpndFunktion) > 2 then
   begin
   // Order := TListBox.Create(lsb);
   // Order.Parent := nil;

    order.Sorted := true;
    order.Items.Clear;
    SetLength(condition, length(cmpndFunktion));

    for y := 1 to length(cmpndFunktion)-1 do
     begin
      s := FloatToStr(cmpndFunktion[y]);
      if cmpndFunktion[y] < 10 then s:= '000000000000000000'+s else
      if cmpndFunktion[y] < 100 then s:= '00000000000000000'+s else
      if cmpndFunktion[y] < 1000 then s:= '0000000000000000'+s else
      if cmpndFunktion[y] < 10000 then s:= '000000000000000'+s else
      if cmpndFunktion[y] < 100000 then s:= '00000000000000'+s else
      if cmpndFunktion[y] < 1000000 then s:= '0000000000000'+s else
      if cmpndFunktion[y] < 10000000 then s:= '000000000000'+s else
      if cmpndFunktion[y] < 100000000 then s:= '00000000000'+s else
      if cmpndFunktion[y] < 1000000000 then s:= '0000000000'+s else
      if cmpndFunktion[y] < 10000000000 then s:= '000000000'+s else
      if cmpndFunktion[y] < 100000000000 then s:= '00000000'+s else
      if cmpndFunktion[y] < 1000000000000 then s:= '0000000'+s else
      if cmpndFunktion[y] < 10000000000000 then s:= '000000'+s else
      if cmpndFunktion[y] < 100000000000000 then s:= '00000'+s else
      if cmpndFunktion[y] < 1000000000000000 then s:= '0000'+s else
      if cmpndFunktion[y] < 10000000000000000 then s:= '000'+s else
      if cmpndFunktion[y] < 100000000000000000 then s:= '00'+s else
      if cmpndFunktion[y] < 1000000000000000000 then s:= '0'+s ;
      Order.Items.Add(s);
     end;

     x:=order.Items.Count/2;

     if x = round(x)
      then begin
       for i := 1 to order.Items.Count -1 do if round(x) < order.items.count then x := (StrToFloat(order.Items[round(x)])+StrToFloat(order.Items[round(x)-1]))/2
      end else
       for i := 1 to order.Items.Count -1 do if round(x-0.5) < order.items.count then x := StrToFloat(order.Items[round(x-0.5)]);

     Result := x;

    FreeAndNil(Order);
   end;
end;

function TFunc.Maximum(cmpndfunktion : array of extended):Extended;
var
 MM1, MM2 : extended;
 y        : integer;
begin
 MM1:=0;  Result := 0;
  if length(cmpndFunktion) > 1 then MM1:=cmpndFunktion[1];
  if length(cmpndFunktion) > 2
   then
    MM2:=cmpndFunktion[2]
   else
    MM2:=cmpndFunktion[1];
  if Length(cmpndFunktion) = 3
   then
    Result := Max(cmpndFunktion[1],cmpndFunktion[2])
   else
   for y := 1 to length(cmpndFunktion)-1 do
    if  MM1 > MM2 then
     begin
      MM2 := cmpndFunktion[y+1];
      Result := MM1;
     end else
     begin
      MM1 := cmpndFunktion[y+1];
      Result := MM2;
     end;
end;

function TFunc.logarithim(cmpndfunktion : array of extended):Extended;
begin
  Result := 0;
 if length(cmpndFunktion)>2 then if (cmpndFunktion[2] > 0)and(cmpndFunktion[1]>0)
   then
    Result := LogN(cmpndFunktion[1],cmpndFunktion[2])
end;

function TFunc.HarMean(cmpndfunktion : array of extended):Extended;
var
 y : integer;
begin
 Result:=0;
  for y := 1 to length(cmpndFunktion)-1 do
   if cmpndFunktion[y] > 0 then Result := (Result + 1 / cmpndFunktion[y]);
  if Result > 0 then Result := (length(cmpndFunktion)-1)/Result;
end;

function TFunc.GeoMean(cmpndfunktion : array of extended):Extended;
var
 y : integer;
begin
 Result := 0;
 if length(cmpndFunktion) > 1 then if cmpndFunktion[1] > 0 then Result := cmpndFunktion[1];
  for y := 2 to length(cmpndFunktion)-1 do
   if cmpndFunktion[y] > 0 then Result := (Result * cmpndFunktion[y]);
  if length(cmpndFunktion)-1 > 0 then Result := power(Result, 1 / (length(cmpndFunktion)-1));
end;

function TFunc.GCD(cmpndfunktion : array of extended):Extended;
var
 x, r, s2 : extended;
 y : integer;
begin
 Result := cmpndfunktion[1];
 if length(cmpndFunktion) > 2 then
   Begin
    x := cmpndFunktion[1];
    for y := 2 to length(cmpndFunktion)-1 do
     begin
      r := cmpndFunktion[y];
      if r > x then
       begin
        s2 := x;
        x  := r;
        r  := s2;
       end;

       While r > 0 do
        Begin
         s2 := r;
         r  := trunc(x) mod Trunc(r);
         x  := s2;
        end;

       if r = 0 then Result := x;
     end;
   end;
end;

function TFunc.Fixed(cmpndfunktion : array of extended):Extended;
var
 s : String;
begin
 result := cmpndfunktion[1];
 if length(cmpndFunktion) > 2 then
   Begin
    s  := FloatToStrF(cmpndFunktion[1], ffFixed, 21,trunc(cmpndFunktion[2]));
    Result := StrToFloat(s);
   end;
end;

function TFunc.Find(funks : string; cmpndfunktion : array of extended):extended;
var
 k, a : integer;
 condition : array of string;
begin
 Result := 0;
 if Funks <> '' then
   begin
     SetLength(condition, 3);
     a:=1;

     for k := 1 to length(funks) do
       if a < 3 then
       begin
        if not (Funks[k] in [',','"','(',')'])
         then
          condition[a] := condition[a] + Funks[k]
         else
          if (Funks[k] in [',','"'])
           then
            inc(a);
       end;
     if condition[2] <> '' then if condition[2][1] = ' ' then Delete(condition[2], 1, 1);
     if cmpndFunktion[a+1] <> 0 then Delete(condition[2], 1, ABS(trunc(cmpndFunktion[a+1])));
     Result := pos(condition[1], condition[2]) + cmpndFunktion[a+1];
   end;
end;

function TFunc.factDoub(Display : extended) : extended;
var
 z : integer;
begin
  Display := trunc(Display);
  if trunc(Display) mod 2 = 0 then
   begin
    for z := 1 to round(Display)-1 do if z mod 2 = 0 then Display := Display*z
   end else
    for z := 1 to round(Display)-1 do if z mod 2 <> 0 then Display := Display*z;
  Result := Display;
end;

function TFunc.factorial(Display : extended) : extended;
var
 z : integer;
begin
 for z := 1 to round(Display)-1 do Display := Display*z;
 Result := Display;
end;

function TFunc.Even(Display : extended) : extended;
begin
 if Display > 0
   then
    Display := ceil(Display)
   else
  if Display < 0
   then
    Display := Floor(Display)
   else
  if Display = 0
   then
    Display := 0;
  if Ceil(Display) mod 2 <> 0 then
   if Display > 0
    then
     Display := Display + 1
    else
     Display := Display - 1;
 Result := Display;
end;

function TFunc.DivInt(cmpndfunktion : array of extended):Extended;
var
 y : integer;
begin
 Result := 0;
 if length(cmpndFunktion) > 2 then
   begin
    Result:=cmpndFunktion[1];
    for y := 2 to length(cmpndFunktion)-1 do
     if (Result <> 0)and(trunc(cmpndFunktion[y]) <> 0)
      then
       Result := ( trunc(Result) div trunc(cmpndFunktion[y]) );
   end;
end;

function TFunc.DevSqr(cmpndfunktion : array of extended):Extended;
var
 r, x : extended;
 y : integer;
begin
  Result := 0;
 if length(cmpndFunktion) > 2 then
   begin
    r := 0;
    for y := 1 to length(cmpndFunktion)-1 do r := r + cmpndFunktion[y];
    r := r / (length(cmpndFunktion)-1);
    for y := 1 to length(cmpndFunktion)-1 do cmpndFunktion[y] := Sqr(ABS(cmpndFunktion[y]-r));
    x := cmpndFunktion[1];
    for y := 2 to length(cmpndFunktion)-1 do x := x + cmpndFunktion[y];
    Result := x;
   end;
end;

function Tfunc.Combin(cmpndfunktion : array of extended):Extended;
var
 y, z : integer;
begin
  Result := 0;
 if length(cmpndFunktion) > 2 then
   begin
    if (trunc(cmpndFunktion[1]) <> 0) and (trunc(cmpndFunktion[2]) <> 0)
     then
     if cmpndFunktion[1] >= cmpndFunktion[2] then
      begin
       z := trunc(cmpndFunktion[1]) - trunc(cmpndFunktion[2]);
       for y := 1 to z-1 do z := z * y;
       for y := 1 to trunc(cmpndFunktion[1])-1 do cmpndFunktion[1] := cmpndFunktion[1] * y;
       for y := 1 to trunc(cmpndFunktion[2])-1 do cmpndFunktion[2] := cmpndFunktion[2] * y;
       if (cmpndFunktion[2]*z) <> 0 then Result := cmpndFunktion[1] / (cmpndFunktion[2] * z );
      end else
       MessageDlg('Unable To Calculate, Group must be smaller than total', mtError, mbOKCancel, 1);
   end;
end;

function Tfunc.Code(Funks : string) : extended;
begin
  Result := 0;
 if Funks <> '' then Result := Ord(funks[1]);
end;

function TFunc.Base2Num(cmpndfunktion : array of extended):extended;
begin
  Result := 0;
 if length(cmpndFunktion) > 2
   then
    Result := BaseToBase10(FloatToStr(cmpndFunktion[1]),trunc(cmpndFunktion[2]));
end;

function Tfunc.AverageIf(cmpndfunktion : array of extended; funks : string):Extended;
var
 k, denom      : integer;
 Logic         : TLogic;
begin
 Result := 0; denom := 0;
 if (length(funks)>1)and(length(cmpndFunktion)>2) then
  begin
   Logic := TLogic.Create;
   for k := 2 to length(cmpndFunktion)-1 do
    if Logic.ComplexBoolConv(Logic.SimpleBoolConv(logic.AssignValBoolConv(funks, cmpndFunktion[k]))) = 1 then
     begin
      inc(denom);
      Result := Result + cmpndFunktion[k];
     end;
    if denom > 0 then result := result / denom;
   Logic.Free;  
  end;
end;


function TFunc.Average(cmpndfunktion : array of extended):Extended;
var
 y : integer;
begin
 Result:=0;
  for y := 1 to length(cmpndFunktion)-1 do
   Result := (Result+cmpndFunktion[y]);
  Result := Result / (length(cmpndFunktion)-1);
end;

function TFunc.ATAN2(cmpndfunktion : array of extended):Extended;
begin
 if length(cmpndFunktion) > 2
  then
   Result := ArcTan2(cmpndFunktion[1],cmpndFunktion[2])
  else
   Result := cmpndFunktion[1];
end;

function TFunc.AverageDeviantion(cmpndfunktion : array of extended):Extended;
var
 r, x : extended;
 y : integer;
begin
 if length(cmpndfunktion) > 2 then
  begin
   r := 0;
   for y := 1 to length(cmpndFunktion)-1 do r := r + cmpndFunktion[y];
   r := r / (length(cmpndFunktion)-1);
   for y := 1 to length(cmpndFunktion)-1 do cmpndFunktion[y] := ABS(cmpndFunktion[y]-r);
   x := cmpndFunktion[1];
   for y := 2 to length(cmpndFunktion)-1 do x := x + cmpndFunktion[y];
   Result := x/(length(cmpndFunktion)-1);
  end else
   Result := cmpndFunktion[1];
end;

function TFunc.BaseToBase10(Value: string; Base : Smallint): Longint;
var
  i: Integer;
  int: Integer;
begin
  int := 0;
  for i := 1 to Length(Value) do
   int := int * Base + StrToInt(Copy(Value, i, 1));
  Result := int;
end;



function TFunc.DecToRom(Decimal: Longint): string;
 const
  Numbers: array[1..22] of Integer =
   (1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000, 4000,
    5000, 10000, 40000, 50000, 100000, 400000, 500000, 1000000);
  Romans: array[1..22] of string =
   ('I', 'IV', 'V', 'IX', 'X', 'XL', 'L', 'XC', 'C', 'CD', 'D', 'CM', 'M', 'M(V)',
    '(V)', '(X)','(X)(L)','(L)', '(C)','(C)(D)','(D)', '(M)');
 var
  i: Integer;                                   
 begin
  Result := '';                                 
  for i  := 22 downto 1 do                      
   while (Decimal >= Numbers[i]) do
    begin
     Decimal := Decimal - Numbers[i];
     Result  := Result  + Romans[i];
    end;
 end;

function TFunc.RomToDec(RomNum:String):integer;
 var
  i:integer;
 begin
  Result := 0;
  if RomNum <> '' then
  for i  := 0 to length(RomNum) do
    case RomNum[i] of
     'I' : if  (RomNum[i+1] in ['I','i'])or(i + 1 > length(RomNum)) then Result := Result + 1 else Result := Result -1;
     'i' : if  (RomNum[i+1] in ['I','i'])or(i + 1 > length(RomNum)) then Result := Result + 1 else Result := Result -1;
     'V' : if  (RomNum[i+1] in ['V','v','I','i'])or(i + 1 > length(RomNum)) then Result := Result + 5 else Result := Result -5;
     'v' : if  (RomNum[i+1] in ['V','v','I','i'])or(i + 1 > length(RomNum)) then Result := Result + 5 else Result := Result -5;
     'X' : if  (RomNum[i+1] in ['X','x','V','v','I','i'])or(i + 1 > length(RomNum)) then Result := Result + 10 else Result := Result -10;
     'x' : if  (RomNum[i+1] in ['X','x','V','v','I','i'])or(i + 1 > length(RomNum)) then Result := Result + 10 else Result := Result -10;
     'L' : if  (RomNum[i+1] in ['L','l','X','x','V','v','I','i'])or(i + 1 > length(RomNum)) then Result := Result + 50 else Result := Result -50;
     'l' : if  (RomNum[i+1] in ['L','l','X','x','V','v','I','i'])or(i + 1 > length(RomNum)) then Result := Result + 50 else Result := Result -50;
     'C' : if  (RomNum[i+1] in ['C','c','L','l','X','x','V','v','I','i'])or(i + 1 > length(RomNum)) then Result := Result + 100 else Result := Result -100;
     'c' : if  (RomNum[i+1] in ['C','c','L','l','X','x','V','v','I','i'])or(i + 1 > length(RomNum)) then Result := Result + 100 else Result := Result -100;
     'D' : if  (RomNum[i+1] in ['D','d','C','c','L','l','X','x','V','v','I','i'])or(i + 1 > length(RomNum)) then Result := Result + 500 else Result := Result -500;
     'd' : if  (RomNum[i+1] in ['D','d','C','c','L','l','X','x','V','v','I','i'])or(i + 1 > length(RomNum)) then Result := Result + 500 else Result := Result -500;
     'M' : if  (RomNum[i+1] in ['M','m','D','d','C','c','L','l','X','x','V','v','I','i'])or(i + 1 > length(RomNum)) then Result := Result + 1000 else Result := Result -1000;
     'm' : if  (RomNum[i+1] in ['M','m','D','d','C','c','L','l','X','x','V','v','I','i'])or(i + 1 > length(RomNum)) then Result := Result + 1000 else Result := Result -1000;
    end;
 end;

function TFunc.HexTODecimal(s:string):integer;
var
 Dec : real;
 i   : integer;
 hx  : char;
begin
 Dec:=0;
 for i := 0 to length(s)-1 do
  begin
   hx := s[length(s)-i];
   if hx in ['0'..'9'] then Dec := Dec + StrToInt(hx) *power(16,i);
   if hx in ['A'..'F'] then
    case hx of
     'A' : Dec := Dec + 10 * power(16,i);
     'B' : Dec := Dec + 11 * power(16,i);
     'C' : Dec := Dec + 12 * power(16,i);
     'D' : Dec := Dec + 13 * power(16,i);
     'E' : Dec := Dec + 14 * power(16,i);
     'F' : Dec := Dec + 15 * power(16,i);
    end;
  end;
 Result:=Trunc(Dec);
end;

Function TFunc.BinToDec(s:string):Integer;
var
 Dec : real;
 i   : integer;
begin
 Dec:=0;
 for i := 0 to length(s)-1 do
  if s[length(s)-i] = '1' then Dec:=Dec+power(2,i);
 Result:=Trunc(Dec);
end;

function ConvertUnitType(SI : String) : TConvType;
begin
 SI := LowerCase(Si);
{Distance}
 if SI = 'micromicrons'  then Result := duMicromicrons      else
 if SI = 'angstroms'    then Result := duAngstroms         else
 if SI = 'millimicrons'  then Result := duMillimicrons      else
 if SI = 'microns'   then Result := duMicrons           else
 if SI = 'millimeters'   then Result := duMillimeters       else
 if SI = 'centimeters'   then Result := duCentimeters       else
 if SI = 'decimeters'   then Result := duDecimeters        else
 if SI = 'meters'    then Result := duMeters            else
 if SI = 'decameters'  then Result := duDecameters        else
 if SI = 'hectometers'   then Result := duHectometers       else
 if SI = 'kilometers'   then Result := duKilometers        else
 if SI = 'megameters'   then Result := duMegameters        else
 if SI = 'gigameters'   then Result := duGigameters        else
 if SI = 'inches'   then Result := duInches            else
 if SI = 'feet'   then Result := duFeet              else
 if SI = 'yards'   then Result := duYards             else
 if SI = 'miles'   then Result := duMiles             else
 if SI = 'nauticalmiles'  then Result := duNauticalMiles     else
 if SI = 'astronomicalunits'   then Result := duAstronomicalUnits else
 if SI = 'lightyears'   then Result := duLightYears        else
 if SI = 'parsecs'   then Result := duParsecs           else
 if SI = 'cubits'  then Result := duCubits            else
 if SI = 'fathoms' then Result := duFathoms           else
 if SI = 'furlongs' then Result := duFurlongs          else
 if SI = 'hands' then Result := duHands             else
 if SI = 'paces' then Result := duPaces             else
 if SI = 'rods'  then Result := duRods              else
 if SI = 'chains'  then Result := duChains            else
 if SI = 'links' then Result := duLinks             else
 if SI = 'picas' then Result := duPicas             else
 if SI = 'points'  then Result := duPoints            else
{Distance}
{Area}
 if SI = 'squaremillimeters'  then Result := auSquareMillimeters else
 if SI = 'squarecentimeters'  then Result := auSquareCentimeters else
 if SI = 'squaredecimeters'  then Result := auSquareDecimeters  else
 if SI = 'squaremeters'   then Result := auSquareMeters      else
 if SI = 'squaredecameters'   then Result := auSquareDecameters      else
 if SI = 'squarehectometers'  then Result := auSquareHectometers else
 if SI = 'squarekilometers'  then Result := auSquareKilometers      else
 if SI = 'squareinches'  then Result := auSquareInches      else
 if SI = 'squarefeet'  then Result := auSquareFeet        else
 if SI = 'squareyards'  then Result := auSquareYards       else
 if SI = 'squaremiles'  then Result := auSquareMiles       else
 if SI = 'acres' then Result := auAcres        else
 if SI = 'centares'   then Result := auCentares             else
 if SI = 'ares'  then Result := auAres          else
 if SI = 'hectares' then Result := auHectares              else
 if SI = 'squarerods'   then Result := auSquareRods          else
{Area}
{Volume}
 if SI = 'cubicmillimeters'    then Result := vuCubicMillimeters  else
 if SI = 'cubiccentimeters'    then Result := vuCubicCentimeters  else
 if SI = 'cubicdecimeters'    then Result := vuCubicDecimeters   else
 if SI = 'cubicmeters'     then Result := vuCubicMeters       else
 if SI = 'cubicdecameters'   then Result := vuCubicDecameters   else
 if SI = 'cubichectometers'    then Result := vuCubicHectometers  else
 if SI = 'cubickilometers'    then Result := vuCubicKilometers   else
 if SI = 'cubicinches'    then Result := vuCubicInches       else
 if SI = 'cubicfeet'    then Result := vuCubicFeet         else
 if SI = 'cubicyards'    then Result := vuCubicYards        else
 if SI = 'cubicmiles'    then Result := vuCubicMiles        else
 if SI = 'milliliters'     then Result := vuMilliLiters       else
 if SI = 'centiliters'     then Result := vuCentiLiters       else
 if SI = 'deciliters'     then Result := vuDeciLiters        else
 if SI = 'liters'      then Result := vuLiters            else
 if SI = 'decaliters'    then Result := vuDecaLiters        else
 if SI = 'hectoliters'     then Result := vuHectoLiters       else
 if SI = 'kiloliters'     then Result := vuKiloLiters        else
 if SI = 'acrefeet'   then Result := vuAcreFeet          else
 if SI = 'acreinches'   then Result := vuAcreInches        else
 if SI = 'cords'     then Result := vuCords             else
 if SI = 'cordfeet'   then Result := vuCordFeet          else
 if SI = 'decisteres'    then Result := vuDecisteres        else
 if SI = 'steres'   then Result := vuSteres            else
 if SI = 'decasteres' then Result := vuDecasteres        else
 if SI = 'fluidgallons'   then Result := vuFluidGallons      else
 if SI = 'fluidquarts'    then Result := vuFluidQuarts       else
 if SI = 'fluidpints'    then Result := vuFluidPints        else
 if SI = 'fluidcups'    then Result := vuFluidCups         else
 if SI = 'fluidgills'  then Result := vuFluidGills        else
 if SI = 'fluidounces'    then Result := vuFluidOunces       else
 if SI = 'fluidtablespoons'   then Result := vuFluidTablespoons  else
 if SI = 'fluidteaspoons'    then Result := vuFluidTeaspoons    else
 if SI = 'drygallons'   then Result := vuDryGallons        else
 if SI = 'dryquarts'    then Result := vuDryQuarts         else
 if SI = 'drypints'    then Result := vuDryPints          else
 if SI = 'drypecks'   then Result := vuDryPecks          else
 if SI = 'drybuckets'   then Result := vuDryBuckets        else
 if SI = 'drybushels'  then Result := vuDryBushels        else
 if SI = 'ukgallons'  then Result := vuUKGallons         else
 if SI = 'ukpottle'  then Result := vuUKPottles         else
 if SI = 'ukquarts'   then Result := vuUKQuarts          else
 if SI = 'ukpints'   then Result := vuUKPints           else
 if SI = 'ukgill'  then Result := vuUKGills           else
 if SI = 'ukounces'   then Result := vuUKOunces          else
 if SI = 'ukpecks'  then Result := vuUKPecks           else
 if SI = 'ukbuckets'  then Result := vuUKBuckets         else
 if SI = 'ukbushels' then Result := vuUKBushels         else
{Volume}
{Mass}
 if SI = 'nanograms'   then Result := muNanograms           else
 if SI = 'micrograms'   then Result := muMicrograms          else
 if SI = 'milligrams'   then Result := muMilligrams          else
 if SI = 'centigrams'   then Result := muCentigrams          else
 if SI = 'decigrams'   then Result := muDecigrams           else
 if SI = 'grams'    then Result := muGrams               else
 if SI = 'decagrams'  then Result := muDecagrams           else
 if SI = 'hectograms'   then Result := muHectograms          else
 if SI = 'kilograms'   then Result := muKilograms           else
 if SI = 'metrictons' then Result := muMetricTons          else
 if SI = 'drams' then Result := muDrams               else
 if SI = 'grains'   then Result := muGrains              else
 if SI = 'longtons' then Result := muLongTons            else
 if SI = 'tons'  then Result := muTons                else
 if SI = 'ounces'   then Result := muOunces              else
 if SI = 'pounds'   then Result := muPounds              else
 if SI = 'stones'   then Result := muStones              else
{Mass}
{Temp}
 if SI = 'celsius'    then Result := tuCelsius             else
 if SI = 'kelvin'    then Result := tuKelvin              else
 if SI = 'fahrenheit'    then Result := tuFahrenheit          else
 if SI = 'rankine'   then Result := tuRankine             else
 if SI = 'reaumur'   then Result := tuReaumur             else
{Temp}
{Time}
 if SI = 'milliseconds'   then Result := tuMilliSeconds        else
 if SI = 'seconds'    then Result := tuSeconds             else
 if SI = 'minutes'  then Result := tuMinutes             else
 if SI = 'hours'   then Result := tuHours               else
 if SI = 'days'  then Result := tuDays                else
 if SI = 'weeks'   then Result := tuWeeks               else
 if SI = 'fortnights'   then Result := tuFortnights          else
 if SI = 'months'  then Result := tuMonths              else
 if SI = 'years'   then Result := tuYears               else
 if SI = 'decades'  then Result := tuDecades             else
 if SI = 'centuries'  then Result := tuCenturies           else
 if SI = 'millennia'  then Result := tuMillennia           else
 if SI = 'juliandate'  then Result := tuJulianDate          else
 if SI = 'modifiedjuliandate' then Result := tuModifiedJulianDate  else
{Time}
 Result := tuDateTime;

end;

function isCorrectSiUnit(frm, too : string) : boolean;
begin
 if ConvTypeToFamily(ConvertUnitType(frm)) = ConvTypeToFamily(ConvertUnitType(too)) then result := true else result := false;
end;

function ConvertUnit(valu : extended; frm, too : string):Extended;
begin
 Result := 0;
 if frm <> '' then if too <> '' then if valu <> 0
  then
   if (ConvertUnitType(frm) <> tuDateTime) and (ConvertUnitType(too) <> tuDateTime)
    then
     if isCorrectSiUnit(frm, too)
      then
       Result := Convert(valu, ConvertUnitType(frm), ConvertUnitType(too))
      else
       Result := 0;
end;

function ConvertUnit2X(valu : extended; frm, too, frm2, too2 : string):extended;
Begin
  Result := 0;
 if (frm <> '') and (too <> '') and (frm2 <> '') and (too2 <> '') then if valu <> 0
  then
   if (ConvertUnitType(frm) <> tuDateTime) and (ConvertUnitType(too) <> tuDateTime)
    and  (ConvertUnitType(frm2) <> tuDateTime) and (ConvertUnitType(too2) <> tuDateTime)
    then
     if (isCorrectSiUnit(frm, too)) and (isCorrectSiUnit(frm2, too2))
      then
       Result := Convert(valu, ConvertUnitType(frm), ConvertUnitType(frm2), ConvertUnitType(too), ConvertUnitType(too2));
end;

function TFunc.Convert(cmpndfunktion : array of extended; funks : string):Extended;
var
 a, k : integer;
 condition : array of string;
begin
 a:=1;
 Result := 0;
  SetLength(condition, 5);

  if length(cmpndFunktion) > 2 then
   begin
    Result := cmpndFunktion[a+1];
    for k := 1 to length(funks) do
     if not (Funks[k] in [',',' ','"','(',')'])
      then
       condition[a] := condition[a] + Funks[k]
      else
       if (Funks[k] in [',','"'])
        then
         inc(a);

    if (condition[1] <> '') and (condition[2] <> '') then
     if (condition[3] = '') and (condition[4] = '')
      then
       Result := ConvertUnit(cmpndFunktion[a+1], condition[1], condition[2])
      else
       Result := ConvertUnit2X(cmpndFunktion[a+1], condition[1], condition[2], condition[3], condition[4]);
  end;
end;

function DATEDIF(DateCon : String) : TDATE;
var
 k, a, i  : integer;
 BDATE    : array of Word;
 DayTable : PDayTable;
 s        : string;
Begin
 a := 1; s := '';
 SetLength(BDATE, 5);
 Result := 2000;

 DateCon := DateCon + '/1';
  for k := 1 to length(DateCon) do
   if k = length(DateCon) then
    begin
     if (BDATE[1] >= 1)and(BDATE[1] <= 9999)
      then
       DayTable := @MonthDays[IsLeapYear(BDATE[1])]
      else
       DayTable := @MonthDays[IsLeapYear(1)];
     if (BDATE[1] >= 1)and(BDATE[1] <= 9999)
     then if (BDATE[2] >= 1)and(BDATE[2] <= 12)
     then if (BDATE[3] >= 1)and(BDATE[3] <= DayTable^[BDATE[2]])
     then Result := EncodeDate(BDATE[1], BDATE[2], BDATE[3]);
    end else
   if DateCon[k] in ['0'..'9']
    then
     s := s + DateCon[k]
    else
     if DateCon[k] in ['/'] then
      begin
       val(s, BDATE[a], i);
       inc(a);
       s:='';
      end;
end;

function Tfunc.DateDifference(Funks :string) : extended;
var
 date1, date2 : TDate;
 condition : array of string;
 k, a  : integer;
 s : string;
begin
 a := 1;  s:= ''; Result := 0;
  SetLength(condition, 4);

  if Length(Funks) > 1 then
   begin

     for k := 1 to length(funks) do
     if a < 3 then
     begin
      if not (Funks[k] in [',',' ','"','(',')'])
       then
        condition[a] := condition[a] + Funks[k]
       else
        if (Funks[k] in [',','"'])
         then
          inc(a);
     end else
     if funks[k] in ['A'..'Z','a'..'z'] then
      s := s + funks[k];

     date1 := DATEDIF(condition[1]);
     date2 := DATEDIF(condition[2]);

     s := UpperCase(s);

     Result := Date1 - Date2;

  {   if s = 'W'
      then
       Result := Convert(Result, tuDays, tuWeeks)
      else
     if s = 'M'
      then
       Result := Convert(Result, tuDays, tuMonths)
      else
     if s = 'Y'
      then
       Result := Convert(Result, tuDays, tuYears)
      else
     if s = 'D'
      then
       Result := Result;
                             }

   end;
end;

function GCD4LCM(x, r : extended):extended;
var
 s2 : extended;
begin
  Result := 0;

  if r > x then
   begin
    s2 := x;
    x  := r;
    r  := s2;
   end;
  While r > 0 do
   Begin
    s2 := r;
    r  := trunc(x) mod Trunc(r);
    x  := s2;
   end;

  if r = 0 then Result := x;

end;

function TFunc.LCM(cmpndfunktion : array of extended):Extended;
var
 x, r : extended;
 y    : integer;
begin
 Result := 0;
 if length(cmpndFunktion) > 2 then
   begin
    x := cmpndfunktion[1];
    for y := 2 to length(cmpndFunktion) - 1 do
     begin
      r := cmpndfunktion[y];
      x := x * r / GCD4LCM(x, r);
     end;
    Result := x;
   end;
end;

function TFunc.DURATION(funks : string):Extended;
var
 s    : string;
 y, i : integer;
 x    : extended;
Begin
 Result := 0; s := '';
  if funks <> '' then
   begin
    for y := 1 to length(Funks) do
     if funks[y] in ['0'..'9'] then
      s := s + funks[y]
     else  begin
      val(s, x, i);

     case funks[y] of
      'Y', 'y' : Result := Result + x * 365;
      'M'      : Result := Result + x * 31;
      'w', 'W' : Result := Result + x * 7;
      'd', 'D' : Result := Result + x * 1;
      'h', 'H' : Result := Result + x / 24;
      'm'      : Result := Result + x / 1440;
      's', 'S' : Result := Result + x / 86400;
     end;
     s:='';
    end;
   end;
end;

function MinForLarge(cmpndfunktion : array of extended):Extended;
var
 MM1, MM2 : extended;
 y        : integer;
begin
 MM1:=0;
 Result := 0;
  if length(cmpndFunktion) > 2 then MM1:=cmpndFunktion[2];
  if length(cmpndFunktion) > 3
   then
    MM2:=cmpndFunktion[3]
   else
    MM2:=cmpndFunktion[2];
  if Length(cmpndFunktion) = 4
   then
    Result := Min(cmpndFunktion[2],cmpndFunktion[3]);
  for y := 2 to length(cmpndFunktion)-1 do
   if  MM1 < MM2 then
    begin
     MM2 := cmpndFunktion[y+1];
     Result := MM1;
    end else
    begin
     MM1 := cmpndFunktion[y+1];
     Result := MM2;
    end;
end;

function TFunc.Large(cmpndFunktion : array of extended; funks :string) : extended;
var
 a, y, i, z : integer;
 condition : array of string;
 Order : TListBox;
// lsb : TListBox;
 s :string;
begin
 Result := 0;
 if length(cmpndFunktion) > 2 then
   begin

//    Order := TListBox.Create(lsb);

    a := 1;
 //   order.Sorted := true;
   // order.Clear;
    SetLength(condition, length(cmpndFunktion));

    for y := 2 to length(cmpndFunktion)-1 do
     begin
      s := FloatToStr(cmpndFunktion[y]);
      if cmpndFunktion[y] < 10 then s:= '000000000000000000'+s else
      if cmpndFunktion[y] < 100 then s:= '00000000000000000'+s else
      if cmpndFunktion[y] < 1000 then s:= '0000000000000000'+s else
      if cmpndFunktion[y] < 10000 then s:= '000000000000000'+s else
      if cmpndFunktion[y] < 100000 then s:= '00000000000000'+s else
      if cmpndFunktion[y] < 1000000 then s:= '0000000000000'+s else
      if cmpndFunktion[y] < 10000000 then s:= '000000000000'+s else
      if cmpndFunktion[y] < 100000000 then s:= '00000000000'+s else
      if cmpndFunktion[y] < 1000000000 then s:= '0000000000'+s else
      if cmpndFunktion[y] < 10000000000 then s:= '000000000'+s else
      if cmpndFunktion[y] < 100000000000 then s:= '00000000'+s else
      if cmpndFunktion[y] < 1000000000000 then s:= '0000000'+s else
      if cmpndFunktion[y] < 10000000000000 then s:= '000000'+s else
      if cmpndFunktion[y] < 100000000000000 then s:= '00000'+s else
      if cmpndFunktion[y] < 1000000000000000 then s:= '0000'+s else
      if cmpndFunktion[y] < 10000000000000000 then s:= '000'+s else
      if cmpndFunktion[y] < 100000000000000000 then s:= '00'+s else
      if cmpndFunktion[y] < 1000000000000000000 then s:= '0'+s ;
      Order.Items.Add(s);
     end;

    condition[1] := order.Items[0];

    for y := 0 to order.Items.Count-1 do
      if order.Items[y] <> condition[a] then
       begin
        inc(a);
        SetLength(condition, a+1);
        condition[a] := order.Items[y]
       end;

    order.Items.Clear;

    for y := 1 to length(condition)-1 do
     order.Items.Add(condition[y]);

    if funks = ''
     then
      i := trunc(cmpndfunktion[1])
     else Begin
      s:='';
      for y := 1 to length(funks) do
       if funks[y] in ['0'..'9'] then
        s := s + funks[y];
      val(s, i, z);
     end;


    if (order.Items.Count - i > 0)and(order.Items.Count - i < order.Items.Count - 1)
     then
      Result := StrToFloat(order.Items[order.Items.Count - i ])
     else
      Result := Minforlarge(cmpndFunktion);//MessageDlg('Parameter is Out of Bounds', mtError, mbOKCancel, 1);


    FreeAndNil(Order);
   end;
end;

function MaxforSmall(cmpndfunktion : array of extended):Extended;
var
 MM1, MM2 : extended;
 y        : integer;
begin
 MM1:=0;
 Result := 0;
  if length(cmpndFunktion) > 2 then MM1:=cmpndFunktion[2];
  if length(cmpndFunktion) > 3
   then
    MM2:=cmpndFunktion[3]
   else
    MM2:=cmpndFunktion[2];
  if Length(cmpndFunktion) = 4
   then
    Result := Max(cmpndFunktion[2],cmpndFunktion[3])
   else
   for y := 2 to length(cmpndFunktion)-1 do
    if  MM1 > MM2 then
     begin
      MM2 := cmpndFunktion[y+1];
      Result := MM1;
     end else
     begin
      MM1 := cmpndFunktion[y+1];
      Result := MM2;
     end;
end;

function TFunc.Small(cmpndFunktion : array of extended; funks :string) : extended;
var
 a, y, i, z : integer;
 condition : array of string;
 Order : TListBox;
// lsb : TListBox;
 s :string;
begin
  Result := 0;
  if length(cmpndFunktion) > 2 then
   begin
  //  Order := TListBox.Create(lsb);
  //  Order.Parent := nil;

    a := 1;
    order.Sorted := true;
   // order.Clear;
    SetLength(condition, length(cmpndFunktion));

    for y := 2 to length(cmpndFunktion)-1 do
     begin
      s := FloatToStr(cmpndFunktion[y]);
      if cmpndFunktion[y] < 10 then s:= '000000000000000000'+s else
      if cmpndFunktion[y] < 100 then s:= '00000000000000000'+s else
      if cmpndFunktion[y] < 1000 then s:= '0000000000000000'+s else
      if cmpndFunktion[y] < 10000 then s:= '000000000000000'+s else
      if cmpndFunktion[y] < 100000 then s:= '00000000000000'+s else
      if cmpndFunktion[y] < 1000000 then s:= '0000000000000'+s else
      if cmpndFunktion[y] < 10000000 then s:= '000000000000'+s else
      if cmpndFunktion[y] < 100000000 then s:= '00000000000'+s else
      if cmpndFunktion[y] < 1000000000 then s:= '0000000000'+s else
      if cmpndFunktion[y] < 10000000000 then s:= '000000000'+s else
      if cmpndFunktion[y] < 100000000000 then s:= '00000000'+s else
      if cmpndFunktion[y] < 1000000000000 then s:= '0000000'+s else
      if cmpndFunktion[y] < 10000000000000 then s:= '000000'+s else
      if cmpndFunktion[y] < 100000000000000 then s:= '00000'+s else
      if cmpndFunktion[y] < 1000000000000000 then s:= '0000'+s else
      if cmpndFunktion[y] < 10000000000000000 then s:= '000'+s else
      if cmpndFunktion[y] < 100000000000000000 then s:= '00'+s else
      if cmpndFunktion[y] < 1000000000000000000 then s:= '0'+s ;
      Order.Items.Add(s);
     end;

    condition[1] := order.Items[0];

    for y := 0 to order.Items.Count-1 do
      if order.Items[y] <> condition[a] then
       begin
        inc(a);
        SetLength(condition, a+1);
        condition[a] := order.Items[y]
       end;

    order.Items.Clear;

    for y := 1 to length(condition)-1 do
     order.Items.Add(condition[y]);


   if funks = ''
     then
      i := trunc(cmpndfunktion[1])
     else Begin
      s:='';
      for y := 1 to length(funks) do
       if funks[y] in ['0'..'9'] then
        s := s + funks[y];
      val(s, i, z);
     end;

    if (order.Items.Count - i  > 0)and(order.Items.Count - i < order.Items.Count-1)
     then
      Result := StrToFloat(order.Items[i-1])
     else
      Result := MaxForSmall(cmpndFunktion);//MessageDlg('Parameter is Out of Bounds', mtError, mbOKCancel, 1);

    FreeAndNil(order);
  end;
end;

function TFunc.IFState(cmpndfunktion: array of extended): Extended;
var
 Logic : byte;
begin
 Result := 0;
 Logic := Trunc(cmpndfunktion[1]);
 if length(cmpndfunktion) > 3 then
  begin
   if Logic >= 1
    then
     Result := cmpndfunktion[2]
    else
     Result := cmpndfunktion[3];
  end else
 if length(cmpndfunktion) > 2 then
  begin
   if Logic >= 1
    then
     Result := cmpndfunktion[2]
    else
     Result := 0;
  end else
 if length(cmpndfunktion) > 1 then
  begin
   Result := 0;
  end;
end;


function TFunc.AndLogic(cmpndfunktion: array of extended): byte;
var
 i : integer;
begin
 result := trunc(cmpndfunktion[1]);
 if Length(cmpndfunktion) > 2
  then
   for i := 1 to length(cmpndfunktion) - 2 do
   if (cmpndfunktion[i] = 1) and (cmpndfunktion[i+1] = 1)
    then
     Result := 1
    else
     Result := 0;
end;

function TFunc.IfErrorLogic(cmpndfunktion: array of extended): byte;
begin
 Result := 0;
end;

function TFunc.XORLOgic(cmpndfunktion : array of extended):byte;
var
 i : integer;
begin
 result := trunc(cmpndfunktion[1]);
 if Length(cmpndfunktion) > 2
  then
   for i := 1 to length(cmpndfunktion) - 1 do
   if (cmpndfunktion[i] = 1) xor (cmpndfunktion[i+1] = 1)
    then
     Result := 1
    else
     Result := 0;
end;

function TFunc.IsEvenLogic(Display: extended): byte;
begin
 if trunc(Display) mod 2 = 0 then Result := 1 else result := 0;
end;

function TFunc.IsOddLogic(Display: extended): byte;
begin
 if trunc(Display) mod 2 = 0 then Result := 0 else result := 1;
end;

function TFunc.NotLogic(Display: extended): byte;
begin
 if Display >= 1
  then
   Result := 0
  else
   result := 1;
end;

function TFunc.OrLogic(cmpndfunktion: array of extended): byte;
var
 i : integer;
begin
 result := trunc(cmpndfunktion[1]);
 if Length(cmpndfunktion) > 2
  then
   for i := 1 to length(cmpndfunktion) - 2 do
   if (cmpndfunktion[i] = 1) or (cmpndfunktion[i+1] = 1)
    then
     Result := 1
    else
     Result := 0;
end;

function TFunc.EqualLogic(cmpndfunktion: array of extended): byte;
var
 i : integer;
begin
 if length(cmpndfunktion) > 2 then
  begin
    Result := 1;
    for i := 1 to length(cmpndfunktion) - 2 do
     if cmpndfunktion[i] <> cmpndfunktion[i+1]
      then
       Result := 0;
  end else
   result := 0;
end;

function TFunc.GreaterEQLogic(cmpndfunktion: array of extended): byte;
var
 i : integer;
begin
 if length(cmpndfunktion) > 2 then
  begin
    Result := 1;
    for i := 1 to length(cmpndfunktion) - 2 do
     if cmpndfunktion[i] < cmpndfunktion[i+1]
      then
       Result := 0;
  end else
   result := 0;
end;

function TFunc.GreaterLogic(cmpndfunktion: array of extended): byte;
var
 i : integer;
begin
 if length(cmpndfunktion) > 2 then
  begin
    Result := 1;
    for i := 1 to length(cmpndfunktion) - 2 do
     if cmpndfunktion[i] <= cmpndfunktion[i+1]
      then
       Result := 0;
  end else
   result := 0;
end;

function TFunc.SmallerEQLogic(cmpndfunktion: array of extended): byte;
var
 i : integer;
begin
 if length(cmpndfunktion) > 2 then
  begin
    Result := 1;
    for i := 1 to length(cmpndfunktion) - 2 do
     if cmpndfunktion[i] > cmpndfunktion[i+1]
      then
       Result := 0;
  end else
   result := 0;
end;

function TFunc.SmallerLogic(cmpndfunktion: array of extended): byte;
var
 i : integer;
begin
 if length(cmpndfunktion) > 2 then
  begin
    Result := 1;
    for i := 1 to length(cmpndfunktion) - 2 do
     if cmpndfunktion[i] >= cmpndfunktion[i+1]
      then
       Result := 0;
  end else
   result := 0;
end;

function TFunc.NotEqualLogic(cmpndfunktion: array of extended): byte;
var
 i : integer;
begin
 if length(cmpndfunktion) > 2 then
  begin
    Result := 1;
    for i := 1 to length(cmpndfunktion) - 2 do
     if cmpndfunktion[i] = cmpndfunktion[i+1]
      then
       Result := 0;
  end else
   result := 0;
end;

function TFunc.TrueFalse(funks: string): byte;
var
 Logic : TLogic;
begin
 Logic := TLogic.Create;
 Result := Logic.ComplexBoolConv(Logic.SimpleBoolConv(Logic.SyntaxBoolConv(funks)));
 Logic.Free;
end;

function TFunc.DistanceRelativeRating(
  cmpndfunktion: array of extended): Extended;
begin
 Result := 0;

 if length(cmpndfunktion) > 3 then
  begin
   if cmpndfunktion[3] = 0 then
    cmpndfunktion[3] := 1;
   if cmpndfunktion[1] > cmpndfunktion[2]
    then
     Result := Round(cmpndfunktion[1] + ((cmpndfunktion[1] - cmpndfunktion[2]) / (cmpndfunktion[3])) * ((100 - cmpndfunktion[1]) / 100))
    else
     Result := Round(cmpndfunktion[1] + ((cmpndfunktion[1] - cmpndfunktion[2]) / (cmpndfunktion[3])) * (cmpndfunktion[1] / 100))
  end;
end;


end.
