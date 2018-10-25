unit LogicModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, jpeg, Spin, Gauges,
  ActnMan, ActnColorMaps, Menus, Mask, DBCtrls, comobj, CheckLst, Grids,
  ExtDlgs, Math, StrUtils, ConvUtils,  ValEdit , StdConvs;

type
 TLogic = class
   function SyntaxBoolConv(funks : string) : string;
   function SimpleBoolConv(funks : string) : string;
   function ComplexBoolConv(funks : string) : byte;
   function AssignValBoolConv(s : string; x : extended) : string;
 end;

implementation

{ TLogic }

function TLogic.SyntaxBoolConv(funks : string) : string;
var
 i : integer;
begin
 if funks <> '' then
  begin
   funks := '{' + lowercase(funks) + '}';
   i := 1;
   While i < length(funks) do
    begin
     if funks[i] = ' ' then
      begin
       delete(funks, i, 1);
       dec(i);
      end;
     inc(i);
    end;

   i := 1;
   While i < length(funks) do
    begin
     if (funks[i] = 'i') and (funks[i+1] = 'n') then
      begin
       delete(funks, i, 2);
       insert('><', funks, i);
       dec(i, 2);
      end;
     inc(i);
     if i < 1 then i := 1;
    end;

   i := 1;
   Repeat
    if (funks[i] in ['0'..'9']) then
     begin

      if (funks[i-1] in ['a'..'z','{'])
       then
        insert('/', funks, i);

      if (funks[i+1] in ['a'..'z','}'])
       then
        insert('\', funks, i+1);
     end;
    inc(i, 1);
   Until (i >= length(funks));
  end;
 Result := funks;
end;

function  TLogic.SimpleBoolConv(funks : string) : string;
var
 i, k, j  : integer;
 term1, term2, term3, term : string;
 WhatTerm : byte;
 Res : byte;
 t1, t2, t3 : extended;
begin
 res := 0;
 for i := length(funks) downto 1 do
  begin
   if funks[i] = '/' then
    begin
     k := i;
     term1 := '';
     term2 := '';
     term3 := '';
     WhatTerm := 1;
     term := '';
     Repeat
      if funks[k] in ['<','>','='] then
       begin
        WhatTerm := 2;
        term := term + funks[k];
       end;
      if funks[k] in ['&'] then
        WhatTerm := 3;

      if funks[k] in ['0'..'9','.','E','e','-'] then
       if WhatTerm = 1
        then
         term1 := term1 + funks[k]
        else
       if WhatTerm = 2
        then
         term2 := term2 + funks[k]
        else
         term3 := term3 + funks[k];

       inc(k);
    Until (funks[k] in ['\']) or (k > length(funks));

     val(term1, t1, j);
     val(term2, t2, j);
     val(term3, t3, j);

     if term = '<' then
      begin
       if t1 < t2 then Res := 1 else res := 0;
      end else
     if term = '>' then
      begin
       if t1 > t2 then Res := 1 else res := 0;
      end else
     if term = '=' then
      begin
       if t1 = t2 then Res := 1 else res := 0;
      end else
     if term = '<=' then
      begin
       if t1 <= t2 then Res := 1 else res := 0;
      end else
      if term = '>=' then
      begin
       if t1 >= t2 then Res := 1 else res := 0;
      end else
      if (term = '<>') or (term = '!=') then
      begin
       if t1 <> t2 then Res := 1 else res := 0;
      end else
      if term = '><' then
      begin
       if (t1 > t2) and (t1 < t3) then Res := 1 else res := 0;
      end;

     k := i;
     Repeat
      if k < length(funks) then delete(funks, k, 1);
     Until (funks[k] in ['\']) or (k >= length(funks));
     delete(funks, k, 1);
     insert(IntToStr(res), funks, i);
    end;
  end;
 Result := funks;
end;

function  TLogic.AssignValBoolConv(s : string; x : extended) : string;
var
 i : integer;
begin
 i := 1;
 While i < length(s) do
  begin
   if s[i] = ' '
    then
     delete(s, i, 1);
    inc(i);
  end;

 if not(s[1] in ['@','{']) then s := '@' + s else
  if (s[1] = '{') and (s[2] in ['<','>','=']) then
   insert('@', s, 2);
 i := 1;
 Repeat
  if s[i] in ['<','>','='] then
   begin
    if not(s[i-1] in ['0'..'9','@','<','>','='])
     then
      insert('@', s, i)
     else
    if not(s[i+1] in ['0'..'9','@','<','>','='])
     then
      insert('@', s, i+1);
   end;
  inc(i);
 Until (i > length(s));

 i:=1;
 Result := s;
  Repeat
   if Result[i] = '@' then
    begin
     delete(Result, i, 1);
     Insert(FloatToStr(x), Result, i);
     i := i + length(floatToStr(x));
    end else
     inc(i);
  Until (i > length(Result));
 result := SyntaxBoolConv(Result);
end;

Function SolveEQ(EQ : String) : string;
var
 NewVal, PrevVal, Display    : Extended;
 X,  fX                  : Extended;
 sX, sEQ                     : String;
 Op, c                  : Char;
 leny, lenb                  : boolean;
 k, w, z : integer;
begin
 if (EQ <> '') then
 begin

 EQ :='('+EQ;
 Display := 0;
  fX      := 0;
 Op      := ' ';  sX      := '';
  Result := '0'; Result := '0';
 leny:=true;

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

      if (c in ['0','1'])
      then
       begin

         val(sX, PrevVal, z);
          sX := sX + c;
         val(sX, NewVal, z);

        if not (c in ['-']) then
         if Op <> ' ' then
          case Op of
           '+' : if Display + NewVAl - PrevVal = 0 then Display := 0 else Display := 1;
           '^' : if Display = NewVal then Display := 0 else if (display = 1) or (NewVal = 1) then Display := 1 else Display := 0;
           '#' : if (Display = NewVal) and (display = 0) then Display := 1 else Display := 0;
           '*' : if (Display = NewVal) and (display = 1) then Display := 1 else Display := 0;

          end else
           Display := NewVal;


       end else //* and + or ^ xor # nor
       if (c in ['*','+','^','#']) then
       begin
        val(sX, X, z);
        sX := '';
        if Op <> ' ' then
           case Op of
            '+' : if fX + X = 0 then fX := 0 else fX := 1;
            '^' : if fX = X then fX := 0 else if (X = 1) or (fX = 1) then fX := 1 else fX := 0;
            '*' : fX := fX * X;
            '#' : if (X=0) and (fX=0) then fX := 1 else fX := 0;
           end else
            fX := X;
            Op := c;

       end;
     end else //if EQ[w] <> ')' then
     begin
       {! not}
      if EQ[k-1] = '!' then
       if Display = 1
        then
         Display := 0
        else
         Display := 1;

      for z := k-1 to length(EQ) do
       begin
        if leny then if EQ[z] <> ')' then
         begin
           delete(sEQ, k, 1);
         end else
         begin
           leny := false;
         end;
       end;


      leny:=true;
      lenb:=false;

      insert(FloatToStr(display), sEQ, k);

      EQ:=sEQ;
      fX  := 0;
      Op  := ' ';
      sX  := '';
      Display := 0;
     end;
   end;
  Result := sEQ;

  end else
   Result := '0';
end;


function TLogic.ComplexBoolConv(funks: string): byte;
var
 i: integer;
begin
 if length(funks) = 3 then
  begin
   val(funks[2], Result, i);
   Exit;
  end;

 i := 1;
 While i < length(funks) do
  begin
   if (funks[i] = 'o') and (funks[i+1] = 'r') then
    begin
     delete(funks, i, 2);
     insert('+', funks, i);
     dec(i, 2);
    end;
   if (funks[i] = 'a') and (funks[i+1] = 'n') and (funks[i+2] = 'd') then
    begin
     delete(funks, i, 3);
     insert('*', funks, i);
     dec(i, 3);
    end;
   if (funks[i] = 'x') and (funks[i+1] = 'o') and (funks[i+2] = 'r') then
    begin
     delete(funks, i, 3);
     insert('^', funks, i);
     dec(i, 3);
    end;
   if (funks[i] = 'n') and (funks[i+1] = 'o') and (funks[i+2] = 't') then
    begin
     delete(funks, i, 3);
     insert('!', funks, i);
     dec(i, 3);
    end;
   if (funks[i] = 'n') and (funks[i+1] = 'o') and (funks[i+2] = 'r') then
    begin
     delete(funks, i, 3);
     insert('#', funks, i);
     dec(i, 3);
    end;
   inc(i);
   if i < 1 then i := 1; 
 end;

 i := 1;
 While i < length(funks) do
  begin
  if funks[i] in ['a'..'z', 'A'..'Z'] then
   begin
    delete(funks, i, 1);
    insert('+' ,funks, i);
    dec(i);
   end;
  inc(i);
 end;

 for i := 1 to length(funks) do
  if funks[i] = '{' then
   begin
    delete(funks, i, 1);
    insert('(', funks, i);
   end else
  if funks[i] = '}' then
   begin
    delete(funks, i, 1);
    insert(')', funks, i);
   end;

 funks := SolveEQ(funks);
 delete(funks, 1, 1);
 val(Funks, Result, i);
end;

end.
