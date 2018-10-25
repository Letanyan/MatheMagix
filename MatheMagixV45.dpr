program MatheMagixV45;

uses
  Forms,
  Windows,
  Unit1 in 'Unit1.pas' {frmMatheMagixPAT},
  Unit2 in 'Unit2.pas' {frmVariables},
  Unit3 in 'Unit3.pas' {frmThemes},
  Unit4 in 'Unit4.pas' {frmDrawer},
  Unit5 in 'Unit5.pas' {frmExplanation},
  Unit6 in 'Unit6.pas' {frmWorksheet},
  //Unit7 in 'Unit7.pas' {frmCreationCenter},
  LogicModel in 'LogicModel.pas',
  Unit8 in 'Unit8.pas' {frmCustomFunctionsCode};

{$R *.res}


begin

  Application.Initialize;
  Application.Title := 'MatheMagix';
  Application.CreateForm(TfrmMatheMagixPAT, frmMatheMagixPAT);
  Application.CreateForm(TfrmVariables, frmVariables);
  Application.CreateForm(TfrmThemes, frmThemes);
  Application.CreateForm(TfrmDrawer, frmDrawer);
  Application.CreateForm(TfrmExplanation, frmExplanation);
  Application.CreateForm(TfrmWorksheet, frmWorksheet);
  //Application.CreateForm(TfrmCreationCenter, frmCreationCenter);
  Application.CreateForm(TfrmCustomFunctionsCode, frmCustomFunctionsCode);
  Application.Run;

  
end.
