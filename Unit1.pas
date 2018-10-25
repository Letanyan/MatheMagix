unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, jpeg, Spin, Gauges,
  ActnMan, ActnColorMaps, Menus, Mask, DBCtrls, comobj, CheckLst, Grids,  ModuleStandardLabasic,
  ExtDlgs, ModuleFunctionsCalculator, ModuleStandardCalculator, ImgList, ValEdit;

type
  TfrmMatheMagixPAT = class(TForm)
    pnlBusiness: TPanel;
    pgcInterest: TPageControl;
    tbsCompoundInterest: TTabSheet;
    lblPresentValue: TLabel;
    lblYearsToGrow: TLabel;
    lblInterestRateAnnum: TLabel;
    lblInterestImplementionYearly: TLabel;
    lblFutureValue: TLabel;
    edtCompoundPresentValue: TEdit;
    edtCompoundIntrestRate: TEdit;
    btnCompoundIntresCalculate: TButton;
    edtCompoundFutureValue: TEdit;
    edtCompoundInterestYearsToGrow: TEdit;
    edtCompoundInterestImplmentationYearly: TEdit;
    cmbCompoundInterestHelp: TComboBox;
    tbsSimpleInterest: TTabSheet;
    lblSimpleInitialAmount: TLabel;
    lblSimpleIntrestRates: TLabel;
    lblSimplePaymentPeriod: TLabel;
    lblSimpleMonthlyPayment: TLabel;
    lblSimpleTotalPayment: TLabel;
    edtSimpleInitialAmount: TEdit;
    edtSimpleIntrestRate: TEdit;
    sedSimplePaymentPeriod: TSpinEdit;
    btnSimpleInterestCalculate: TButton;
    edtSimpleMonthlyPayment: TEdit;
    edtSimpleTotalPayment: TEdit;
    pgcMiscellaneous: TPageControl;
    tbsNumericalConverter: TTabSheet;
    lblDecimalSystem: TLabel;
    edtDecimalSystem: TEdit;
    lblRomanNumeral: TLabel;
    edtRomanNumerals: TEdit;
    tbsTimeConverter: TTabSheet;
    tbsTimeDifference: TTabSheet;
    tbsDateCalculation: TTabSheet;
    edtTimeDifferenceValue1: TEdit;
    cmbTimeDifferenceValue1: TComboBox;
    cmbTimeDifferenceValue2: TComboBox;
    edtTimeDifferenceValue2: TEdit;
    edtTimeDifferenceAnswer: TEdit;
    btnTimeDifferenceSwap: TButton;
    cmbTimeDifferenceAnswer: TComboBox;
    redNumeralValues: TRichEdit;
    pgcTimeConverter: TPageControl;
    tbsTimeConverterSimple: TTabSheet;
    lblTimeFrom: TLabel;
    edtTimeFrom: TEdit;
    cmbTimeFrom: TComboBox;
    btnTimeSwap: TButton;
    cmbTimeTo: TComboBox;
    lblTimeTo: TLabel;
    edtTimeTo: TEdit;
    tbsTimeConverterBrokenDown: TTabSheet;
    edtTimeConverterBrokenDownYears: TEdit;
    edtTimeConverterBrokenDownWeeks: TEdit;
    edtTimeConverterBrokenDownDays: TEdit;
    edtTimeConverterBrokenDownHours: TEdit;
    edtTimeConverterBrokenDownMinutes: TEdit;
    edtTimeConverterBrokenDownSecounds: TEdit;
    edtTimeConverterBrokenDownAnswer: TEdit;
    cmbTimeConverterBrokenDown: TComboBox;
    lblTimeConverterBrokenDownYears: TLabel;
    lblTimeConverterBrokenDownWeeks: TLabel;
    lblTimeConverterBrokenDownDays: TLabel;
    lblTimeConverterBrokenDownWeeksHours: TLabel;
    lblTimeConverterBrokenDownMinutes: TLabel;
    lblTimeConverterBrokenDownSecounds: TLabel;
    pgcDateCalculation: TPageControl;
    tbsDateDifference: TTabSheet;
    lblDateDifferenceFrom: TLabel;
    dtk2: TDateTimePicker;
    dtk1: TDateTimePicker;
    lblDateDifferenceUntil: TLabel;
    edtdtkAnswer: TEdit;
    cmbdtk: TComboBox;
    tbsDaysUntil: TTabSheet;
    dtkDaysUntilFrom: TDateTimePicker;
    lblDaysUntilFrom: TLabel;
    lblDaysUntilNumberofDays: TLabel;
    edtDaysUntilNumberofDays: TEdit;
    tbsFactors: TTabSheet;
    edtFactMult: TEdit;
    btnFactorCalc: TButton;
    lblFactMult: TLabel;
    btnClearFactMult: TButton;
    rgpFactMult: TRadioGroup;
    edtnumMultiples: TEdit;
    lblNumMult: TLabel;
    lsbFactMult: TListBox;
    tbsTrigSolve: TTabSheet;
    imgTrigTriangle: TImage;
    lblHypotenuse: TLabel;
    lblAdjacent: TLabel;
    lblOppositeSide: TLabel;
    edtHypoSide: TEdit;
    edtAdjSide: TEdit;
    edtOppSide: TEdit;
    lblAlpha: TLabel;
    edtAlpha: TEdit;
    shpAlpha: TShape;
    lbl90deg: TLabel;
    pnlTrigSolverCalculate: TPanel;
    lblTrigInstructions: TLabel;
    tbsStatistics: TTabSheet;
    edtStatisticsNumber: TEdit;
    btnStatisticsCalculate: TButton;
    lsbStatistics: TListBox;
    lblLAstNumberStats: TLabel;
    pgcStatsGeneral: TPageControl;
    tbsMean: TTabSheet;
    tbsMedian: TTabSheet;
    tbsMode: TTabSheet;
    tbsRange: TTabSheet;
    pgcQuartile: TPageControl;
    tbsQ1: TTabSheet;
    tbsQ3: TTabSheet;
    tbsIQR: TTabSheet;
    tbsSIQR: TTabSheet;
    lblMean: TLabel;
    lblMedian: TLabel;
    lblMode: TLabel;
    lblRange: TLabel;
    lblQ1: TLabel;
    lblQ3: TLabel;
    lblIQR: TLabel;
    lblSIQR: TLabel;
    btnStatsView: TButton;
    srbStats: TScrollBox;
    gpbMean: TGroupBox;
    lblMean2: TLabel;
    gpbMedian: TGroupBox;
    lblMedian2: TLabel;
    gpbMode: TGroupBox;
    lblMode2: TLabel;
    gpbRange: TGroupBox;
    lblRange2: TLabel;
    gpbLowerQ: TGroupBox;
    lblQ12: TLabel;
    gpbUpperQ: TGroupBox;
    lblQ32: TLabel;
    gpbInterQ: TGroupBox;
    lblIQR2: TLabel;
    gpbSemiInterQ: TGroupBox;
    lblSIQR2: TLabel;
    btnDelete: TButton;
    lsbStatisticShow: TListBox;
    lblFrequency: TLabel;
    pnlTimeLine: TPanel;
    pnlTimeLineControls: TPanel;
    lblFinAmount: TLabel;
    bmbTimeLineRefresh: TBitBtn;
    pnlTimeLineEdit: TPanel;
    scbTimeLine: TScrollBar;
    tkbTimeLine: TTrackBar;
    pnlRateChange: TPanel;
    pnlWithdraw: TPanel;
    pnlDeposit: TPanel;
    pnlNewTimeLine: TPanel;
    lblStarInt: TLabel;
    lblStartCap: TLabel;
    lblTnLength: TLabel;
    edtStartingInterest: TEdit;
    edtStartingCapital: TEdit;
    sedTnLength: TSpinEdit;
    rgpInterestType: TRadioGroup;
    sedTimeLineJump: TSpinEdit;
    btnTimeLineJump: TButton;
    bmbTLDeposit: TBitBtn;
    bmbTLWithdraw: TBitBtn;
    bmbTLrateChange: TBitBtn;
    rgpBussiness: TRadioGroup;
    pnlHelpBar: TPanel;
    tmrNonCalcClose: TTimer;
    tmrNonCalcOpen: TTimer;
    imgTitle: TImage;
    img1: TImage;
    pgcGames: TPageControl;
    tbsQuickSums: TTabSheet;
    lblQuestion: TLabel;
    lblAnswer: TLabel;
    edtAnswer: TEdit;
    btnAnswerSums: TButton;
    pnlSumSettings: TPanel;
    btnNewGameSums: TButton;
    cbxDecimal: TCheckBox;
    sedSumLength: TSpinEdit;
    sedMaxNumSize: TSpinEdit;
    lblSumLength: TLabel;
    lblNumSize: TLabel;
    lblUniAutoAnswer: TLabel;
    tmrHelp: TTimer;
    lblDaysUntilDate: TLabel;
    lblTimeLineInstructs: TLabel;
    cmbPreset: TComboBox;
    lblQuickSumsGamesQues: TLabel;
    tmrTimeLine: TTimer;
    imgSettingsIcon: TImage;
    imgSettingsBackGround: TImage;
    tmrSettings: TTimer;
    cmbFunctionMode: TComboBox;
    lblDecimalPointCalc: TLabel;
    sedCalcDecimalPoint: TSpinEdit;
    imgHelp: TImage;
    lblTimeLineCalculate: TLabel;
    lblMinNumber: TLabel;
    sedMinNumSize: TSpinEdit;
    lblDifficulty: TLabel;
    clbQuickSums: TCheckListBox;
    pnlFormulater: TPanel;
    rgpFormulater: TRadioGroup;
    pnlType: TPanel;
    bmbBusiness: TBitBtn;
    bmbFormulater: TBitBtn;
    bmbMiscellaneous: TBitBtn;
    bmbGames: TBitBtn;
    imgMain: TImage;
    imgBar: TImage;
    imgMinimize: TImage;
    tmrTabs: TTimer;
    pnlGameTab: TPanel;
    lblGame1: TLabel;
    pnlMisTab: TPanel;
    lblMis1: TLabel;
    lblMis2: TLabel;
    lblMis3: TLabel;
    lblMis4: TLabel;
    lblMis5: TLabel;
    lblMis6: TLabel;
    lblMis7: TLabel;
    pnlTools: TPanel;
    imgBottomBar: TImage;
    lblUniDecimal: TLabel;
    sedUniDecimalPoint: TSpinEdit;
    btnUniClear: TButton;
    scbUniTool: TScrollBar;
    btnHowTo: TButton;
    btnUniInfo: TButton;
    lblMis8: TLabel;
    lblMis9: TLabel;
    tbsNumStats: TTabSheet;
    tbsTextStats: TTabSheet;
    edtNumStat: TEdit;
    btnNumStatAnalyze: TButton;
    redNumStat: TRichEdit;
    tmrStats: TTimer;
    redTextAnalyzeText: TRichEdit;
    redTextAnalyzeResults: TRichEdit;
    btnTextStatAnalyze: TButton;
    btnLoadTextStat: TButton;
    btnSaveTextStat: TButton;
    cbxTextAnalzeWrapWord: TCheckBox;
    opndlg: TOpenDialog;
    svedlg: TSaveDialog;
    clrdlg: TColorDialog;
    svepicdlg: TSavePictureDialog;
    opnpicdlg: TOpenPictureDialog;
    pgcGeometery: TPageControl;
    tbsPythagoras: TTabSheet;
    imgPythagoras: TImage;
    edtSide3: TEdit;
    edtSide2: TEdit;
    edtSide1: TEdit;
    btnPythagorasCalculate: TButton;
    cbxRootPythagoras: TCheckBox;
    tbs2D: TTabSheet;
    lblFormulaArea: TLabel;
    lblAssignArea: TLabel;
    lbl2DFormulae: TLabel;
    lbl2DKey: TLabel;
    scx2D: TScrollBox;
    img2DSquare: TImage;
    img2DRectangle: TImage;
    img2DCircle: TImage;
    img2DTriangle: TImage;
    img2DRhombus: TImage;
    edt2D: TEdit;
    edtAssignArea: TEdit;
    lsb2D: TListBox;
    lsb2DKey: TListBox;
    tbs3D: TTabSheet;
    lbl3DFormulae: TLabel;
    lbl3DFormula: TLabel;
    lbl3DAssign: TLabel;
    lbl3DKey: TLabel;
    edt3D: TEdit;
    edt3DAssign: TEdit;
    scx3D: TScrollBox;
    img3DCube: TImage;
    img3DRectPris: TImage;
    img3DSphere: TImage;
    img3DPyramid: TImage;
    img3DCone: TImage;
    img3DCylinder: TImage;
    lsb3D: TListBox;
    lsb3DKey: TListBox;
    tbsDrawer: TTabSheet;
    pnlDrawerTools: TPanel;
    lblDrawerColorChoice: TLabel;
    imgDrawerColor: TImage;
    bmbBrush: TBitBtn;
    bmbPencil: TBitBtn;
    bmbEraser: TBitBtn;
    bmbEyeDrop: TBitBtn;
    bmbShape: TBitBtn;
    bmbBucket: TBitBtn;
    scbDrawerSize: TScrollBar;
    pnlDrawerFileOp: TPanel;
    bmbLoad: TBitBtn;
    bmbSave: TBitBtn;
    bmbSaveAs: TBitBtn;
    bmbNewDrawer: TBitBtn;
    bmbFullScreen: TBitBtn;
    pnlDrawer: TPanel;
    imgDrawerCanvas: TImage;
    pnlGeoTab: TPanel;
    lblFormulaterGeo1: TLabel;
    lblFormulaterGeo4: TLabel;
    lblFormulaterGeo3: TLabel;
    lblFormulaterGeo2: TLabel;
    pnlWorksheets: TPanel;
    bmbFullScreenWorksheets: TBitBtn;
    stgWorksheet: TStringGrid;
    edtWorkSheetFormat1: TMemo;
    cmbHistoryClear: TComboBox;
    pnlCalculaterCalc: TPanel;
    lblUnitConverterFrom: TLabel;
    lblUnitConverterTo: TLabel;
    imgCalculatorBackGround: TImage;
    bvlCalc: TBevel;
    lsbCalcHistory: TListBox;
    btnFraction: TButton;
    btnSquared: TButton;
    btnSQRT: TButton;
    btncosFunc: TButton;
    btnntRoot: TButton;
    btnCube: TButton;
    btnPower: TButton;
    btnlog: TButton;
    btnlog2: TButton;
    btntanFunc: TButton;
    btnsinFunc: TButton;
    btnSinh: TButton;
    btnSimplify: TButton;
    btnCosh: TButton;
    btnTanh: TButton;
    btn2ndFunc: TButton;
    btnex: TButton;
    btnDiv: TButton;
    btnPositiveOrNegative: TButton;
    btnClear: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnMulti: TButton;
    btnSubtract: TButton;
    btnPlus: TButton;
    btn6: TButton;
    btn3: TButton;
    btn5: TButton;
    btn2: TButton;
    btn1: TButton;
    btn4: TButton;
    btn0: TButton;
    btnDot: TButton;
    btnPercent: TButton;
    btnEql: TButton;
    rgpCalculatorMode: TRadioGroup;
    cmbConstants: TComboBox;
    edtResult: TEdit;
    btnCalculatorAssign: TButton;
    btnEE: TButton;
    btnOpenBracket: TButton;
    edtCalculatorAnswer: TEdit;
    cmbCalculatorFunctions: TComboBox;
    btnCloseBracket: TButton;
    cmbVar: TComboBox;
    btnCBRT: TButton;
    memCalculatorEqSolve: TRichEdit;
    lsbAutoComplete: TListBox;
    edtOpenBrack: TEdit;
    edtCloseBrack: TEdit;
    memStore: TMemo;
    procedure btnAnalyticalGeometryClick(Sender: TObject);
    procedure btnPythagorasCalculateClick(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnDotClick(Sender: TObject);
    procedure btnMultiClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnPlusClick(Sender: TObject);
    procedure btnSubtractClick(Sender: TObject);
    procedure btnEqlClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure edtSimpleInitialAmountClick(Sender: TObject);
    procedure edtSimpleIntrestRateClick(Sender: TObject);
    procedure btnSimpleInterestCalculateClick(Sender: TObject);
    procedure btnCompoundIntresCalculateClick(Sender: TObject);
    procedure edtCompoundIntrestRateClick(Sender: TObject);
    procedure edtDecimalSystemClick(Sender: TObject);
    procedure sedSimplePaymentPeriodClick(Sender: TObject);
    procedure btnBackspaceClick(Sender: TObject);
    procedure btnPositiveOrNegativeClick(Sender: TObject);
    procedure btnPowerClick(Sender: TObject);
    procedure btnSQRTClick(Sender: TObject);
    procedure btnPiClick(Sender: TObject);
    procedure btnPercentClick(Sender: TObject);
    procedure btnFractionClick(Sender: TObject);
    procedure btnTimeSwapClick(Sender: TObject);
    procedure edtSide2Click(Sender: TObject);
    procedure edtSide3Click(Sender: TObject);
    procedure edtSide1Click(Sender: TObject);
    procedure edtCompoundPresentValueClick(Sender: TObject);
    procedure cmbCompoundInterestHelpChange(Sender: TObject);
    procedure scbUniToolChange(Sender: TObject);
    procedure pgcGeometeryChange(Sender: TObject);
    procedure edtTimeDifferenceValue1Click(Sender: TObject);
    procedure edtTimeDifferenceValue2Click(Sender: TObject);
    procedure btnTimeDifferenceSwapClick(Sender: TObject);
    procedure cmbTimeDifferenceValue2Change(Sender: TObject);
    procedure sedUniDecimalPointExit(Sender: TObject);
    procedure btn2ndFuncClick(Sender: TObject);
    procedure edtTimeConverterBrokenDownYearsClick(Sender: TObject);
    procedure edtTimeConverterBrokenDownWeeksClick(Sender: TObject);
    procedure edtTimeConverterBrokenDownDaysClick(Sender: TObject);
    procedure edtTimeConverterBrokenDownHoursClick(Sender: TObject);
    procedure edtTimeConverterBrokenDownMinutesClick(Sender: TObject);
    procedure edtTimeConverterBrokenDownSecoundsClick(Sender: TObject);
    procedure btnsinFuncClick(Sender: TObject);
    procedure btncosFuncClick(Sender: TObject);
    procedure btntanFuncClick(Sender: TObject);
    procedure btnSinhClick(Sender: TObject);
    procedure btnCoshClick(Sender: TObject);
    procedure btnTanhClick(Sender: TObject);
    procedure btnOpenBracketClick(Sender: TObject);
    procedure btnSquaredClick(Sender: TObject);
    procedure btnCubeClick(Sender: TObject);
    procedure btnEEClick(Sender: TObject);
    procedure btnexClick(Sender: TObject);
    procedure btnlog2Click(Sender: TObject);
    procedure btnlogClick(Sender: TObject);
    procedure btnRandClick(Sender: TObject);
    procedure btnfactorialClick(Sender: TObject);
    procedure btnSimplifyClick(Sender: TObject);
    procedure rgpFactMultClick(Sender: TObject);
    procedure btnFactorCalcClick(Sender: TObject);
    procedure btnClearFactMultClick(Sender: TObject);
    procedure btnntRootClick(Sender: TObject);
    procedure pnlTrigSolverCalculateClick(Sender: TObject);
    procedure btnUniClearClick(Sender: TObject);
    procedure btnStatisticsCalculateClick(Sender: TObject);
    procedure edtStatisticsNumberClick(Sender: TObject);
    procedure edtStatisticsNumberKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnStatsViewClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure lsbCalcHistoryDblClick(Sender: TObject);
    procedure bmbTimeLineRefreshClick(Sender: TObject);
    procedure bmbTLrateChangeClick(Sender: TObject);
    procedure bmbTLWithdrawClick(Sender: TObject);
    procedure bmbTLDepositClick(Sender: TObject);
    procedure scbTimeLineChange(Sender: TObject);
    procedure tkbTimeLineChange(Sender: TObject);
    procedure lblFinAmountClick(Sender: TObject);
    procedure btnTimeLineJumpClick(Sender: TObject);
    procedure tkbTimeLineExit(Sender: TObject);
    procedure rgpFormulaterClick(Sender: TObject);
    procedure rgpBussinessClick(Sender: TObject);
    procedure tmrNonCalcOpenTimer(Sender: TObject);
    procedure tmrNonCalcCloseTimer(Sender: TObject);
    procedure bmbBusinessClick(Sender: TObject);
    procedure bmbFormulaterClick(Sender: TObject);
    procedure bmbMiscellaneousClick(Sender: TObject);
    procedure bmbGamesClick(Sender: TObject);
    procedure pgcInterestChange(Sender: TObject);
    procedure edtRomanNumeralsClick(Sender: TObject);
    procedure cmbConstantsChange(Sender: TObject);
    procedure btnNewGameSumsClick(Sender: TObject);
    procedure btnAnswerSumsClick(Sender: TObject);
    procedure edtAnswerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbTimeToChange(Sender: TObject);
    procedure cmbTimeConverterBrokenDownChange(Sender: TObject);
    procedure cmbTimeDifferenceAnswerChange(Sender: TObject);
    procedure cmbdtkChange(Sender: TObject);
    procedure edtCompoundInterestYearsToGrowClick(Sender: TObject);
    procedure edtCompoundInterestImplmentationYearlyClick(Sender: TObject);
    procedure edtCompoundFutureValueClick(Sender: TObject);
    procedure rgpCalculatorModeClick(Sender: TObject);
    procedure cmbCalculatorFunctionsChange(Sender: TObject);
    procedure lsbCalcHistoryClick(Sender: TObject);
    procedure btnAVUTTimeClick(Sender: TObject);
    procedure btnVATTimeClick(Sender: TObject);
    procedure btnWPTTimeClick(Sender: TObject);
    procedure btnDVTsClick(Sender: TObject);
    procedure btnHowToClick(Sender: TObject);
    procedure edtStartingCapitalChange(Sender: TObject);
    procedure edtStartingInterestChange(Sender: TObject);
    procedure sedTnLengthChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtTiimeFromClick(Sender: TObject);
    procedure edtDaysUntilNumberofDaysClick(Sender: TObject);
    procedure edtFactMultClick(Sender: TObject);
    procedure edtnumMultiplesClick(Sender: TObject);
    procedure edtHypoSideClick(Sender: TObject);
    procedure edtOppSideClick(Sender: TObject);
    procedure edtAdjSideClick(Sender: TObject);
    procedure edtAlphaClick(Sender: TObject);
    procedure edtStartingCapitalClick(Sender: TObject);
    procedure edtStartingInterestClick(Sender: TObject);
    procedure sedTnLengthClick(Sender: TObject);
    procedure cmbPresetChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pgcMiscellaneousChange(Sender: TObject);
    procedure btnCloseBracketClick(Sender: TObject);
    procedure edtResultChange(Sender: TObject);
    procedure sedTimeLineJumpClick(Sender: TObject);
    procedure btnUniInfoClick(Sender: TObject);
    procedure edtSide3Change(Sender: TObject);
    procedure edtSide2Change(Sender: TObject);
    procedure edtSide1Change(Sender: TObject);
    procedure edtCompoundIntrestRateChange(Sender: TObject);
    procedure edtCompoundPresentValueChange(Sender: TObject);
    procedure edtCompoundFutureValueChange(Sender: TObject);
    procedure edtCompoundInterestYearsToGrowChange(Sender: TObject);
    procedure edtCompoundInterestImplmentationYearlyChange(
      Sender: TObject);
    procedure edtSimpleInitialAmountChange(Sender: TObject);
    procedure edtSimpleIntrestRateChange(Sender: TObject);
    procedure edtRomanNumeralsChange(Sender: TObject);
    procedure edtDecimalSystemChange(Sender: TObject);
    procedure edtTimeFromChange(Sender: TObject);
    procedure cmbTimeFromChange(Sender: TObject);
    procedure edtTimeConverterBrokenDownYearsChange(Sender: TObject);
    procedure edtTimeConverterBrokenDownWeeksChange(Sender: TObject);
    procedure edtTimeConverterBrokenDownDaysChange(Sender: TObject);
    procedure edtTimeConverterBrokenDownHoursChange(Sender: TObject);
    procedure edtTimeConverterBrokenDownMinutesChange(Sender: TObject);
    procedure edtTimeConverterBrokenDownSecoundsChange(Sender: TObject);
    procedure cmbTimeDifferenceValue1Change(Sender: TObject);
    procedure edtTimeDifferenceValue1Change(Sender: TObject);
    procedure edtTimeDifferenceValue2Change(Sender: TObject);
    procedure dtk2Change(Sender: TObject);
    procedure dtk1Change(Sender: TObject);
    procedure edtDaysUntilNumberofDaysChange(Sender: TObject);
    procedure dtkDaysUntilFromChange(Sender: TObject);
    procedure edtFactMultChange(Sender: TObject);
    procedure edtnumMultiplesChange(Sender: TObject);
    procedure edtHypoSideChange(Sender: TObject);
    procedure edtOppSideChange(Sender: TObject);
    procedure edtAdjSideChange(Sender: TObject);
    procedure edtAlphaChange(Sender: TObject);
    procedure edtStatisticsNumberChange(Sender: TObject);
    procedure edtDecimalSystemExit(Sender: TObject);
    procedure edtRomanNumeralsExit(Sender: TObject);
    procedure edtTimeFromExit(Sender: TObject);
    procedure edtTimeDifferenceValue1Exit(Sender: TObject);
    procedure edtTimeDifferenceValue2Exit(Sender: TObject);
    procedure edtTimeConverterBrokenDownYearsExit(Sender: TObject);
    procedure edtTimeConverterBrokenDownWeeksExit(Sender: TObject);
    procedure edtTimeConverterBrokenDownDaysExit(Sender: TObject);
    procedure edtTimeConverterBrokenDownHoursExit(Sender: TObject);
    procedure edtTimeConverterBrokenDownMinutesExit(Sender: TObject);
    procedure edtTimeConverterBrokenDownSecoundsExit(Sender: TObject);
    procedure edtDaysUntilNumberofDaysExit(Sender: TObject);
    procedure edtFactMultExit(Sender: TObject);
    procedure edtnumMultiplesExit(Sender: TObject);
    procedure edtHypoSideExit(Sender: TObject);
    procedure edtOppSideExit(Sender: TObject);
    procedure edtAlphaExit(Sender: TObject);
    procedure edtAdjSideExit(Sender: TObject);
    procedure edtStatisticsNumberExit(Sender: TObject);
    procedure edtVIRVoltageExit(Sender: TObject);
    procedure edtVIRCurrentExit(Sender: TObject);
    procedure edtVIRResistanceExit(Sender: TObject);
    procedure edtWQVWattsExit(Sender: TObject);
    procedure edtWQVChargeExit(Sender: TObject);
    procedure edtWQVVoltageExit(Sender: TObject);
    procedure edtQITChargeExit(Sender: TObject);
    procedure edtQITCurrentExit(Sender: TObject);
    procedure edtQITTimeExit(Sender: TObject);
    procedure edtDVTDistanceExit(Sender: TObject);
    procedure edtDVTVelocityExit(Sender: TObject);
    procedure edtDVTTimeExit(Sender: TObject);
    procedure edtPMVMomentumExit(Sender: TObject);
    procedure edtPMVMassExit(Sender: TObject);
    procedure edtPMVVelocityExit(Sender: TObject);
    procedure edtFMAForceExit(Sender: TObject);
    procedure edtFMAMassExit(Sender: TObject);
    procedure edtFMAAccelerationExit(Sender: TObject);
    procedure edtIMVUImpulseExit(Sender: TObject);
    procedure edtIMVUMassExit(Sender: TObject);
    procedure edtIMVUFinalVelocityExit(Sender: TObject);
    procedure edtIMVUInitialVelocityExit(Sender: TObject);
    procedure edtPFAPressureExit(Sender: TObject);
    procedure edtPFAForceExit(Sender: TObject);
    procedure edtPFAAreaUnitExit(Sender: TObject);
    procedure edtMDVMassExit(Sender: TObject);
    procedure edtMDVDensityExit(Sender: TObject);
    procedure edtMDVVolumeExit(Sender: TObject);
    procedure edtJRPAngularMomentumExit(Sender: TObject);
    procedure edtJRPRadiusVectorExit(Sender: TObject);
    procedure edtJRPLinearMomentumExit(Sender: TObject);
    procedure edtTRFTorqueExit(Sender: TObject);
    procedure edtTRFRadiusVectorExit(Sender: TObject);
    procedure edtTRFLinearForceExit(Sender: TObject);
    procedure edtFMVRForceExit(Sender: TObject);
    procedure edtFMVRMassExit(Sender: TObject);
    procedure edtFMVRVelocityExit(Sender: TObject);
    procedure edtFMVRRadiusExit(Sender: TObject);
    procedure edtVARVelocityExit(Sender: TObject);
    procedure edtVARAccelerationExit(Sender: TObject);
    procedure edtVARRadiusExit(Sender: TObject);
    procedure edtM1M2MMass1Exit(Sender: TObject);
    procedure edtM1M2MMass2Exit(Sender: TObject);
    procedure edtM1M2MReducedMassExit(Sender: TObject);
    procedure edtWFDWorkExit(Sender: TObject);
    procedure edtWFDForceExit(Sender: TObject);
    procedure edtWFDDistanceExit(Sender: TObject);
    procedure edtEMHPotentialEnergyExit(Sender: TObject);
    procedure edtEMHMassExit(Sender: TObject);
    procedure edtEMHHeightExit(Sender: TObject);
    procedure edtWPTWorkExit(Sender: TObject);
    procedure edtWPTPowerExit(Sender: TObject);
    procedure edtWPTTimeExit(Sender: TObject);
    procedure edtVATVelocityExit(Sender: TObject);
    procedure edtVATAccelerationExit(Sender: TObject);
    procedure edtVATTimeExit(Sender: TObject);
    procedure edtAVUTAccelerationExit(Sender: TObject);
    procedure edtAVUTFinalVelocityExit(Sender: TObject);
    procedure edtAVUTInitialVelocityExit(Sender: TObject);
    procedure edtAVUTTimeExit(Sender: TObject);
    procedure edtSide3Exit(Sender: TObject);
    procedure edtSide2Exit(Sender: TObject);
    procedure edtSide1Exit(Sender: TObject);
    procedure edtPointOneXExit(Sender: TObject);
    procedure edtPointOneYExit(Sender: TObject);
    procedure edtPointTwoYExit(Sender: TObject);
    procedure edtPointTwoXExit(Sender: TObject);
    procedure edtPointOneXMidExit(Sender: TObject);
    procedure edtPointOneYMIdExit(Sender: TObject);
    procedure edtPointTwoXMidExit(Sender: TObject);
    procedure edtPointTwoYMidExit(Sender: TObject);
    procedure edtPointOneXSlopeExit(Sender: TObject);
    procedure edtPointOneYSlopeExit(Sender: TObject);
    procedure edtPointTwoXSlopeExit(Sender: TObject);
    procedure edtPointTwoYSlopeExit(Sender: TObject);
    procedure edtCompoundPresentValueExit(Sender: TObject);
    procedure edtCompoundIntrestRateExit(Sender: TObject);
    procedure edtCompoundFutureValueExit(Sender: TObject);
    procedure edtCompoundInterestYearsToGrowExit(Sender: TObject);
    procedure edtCompoundInterestImplmentationYearlyExit(Sender: TObject);
    procedure edtSimpleInitialAmountExit(Sender: TObject);
    procedure edtSimpleIntrestRateExit(Sender: TObject);
    procedure edtStartingCapitalExit(Sender: TObject);
    procedure edtStartingInterestExit(Sender: TObject);
    procedure tmrTimeLineTimer(Sender: TObject);
    procedure imgSettingsIconClick(Sender: TObject);
    procedure tmrSettingsTimer(Sender: TObject);
    procedure imgSetBackClick(Sender: TObject);
    procedure sedCalcDecimalPointExit(Sender: TObject);
    procedure cmbAngleUnitExit(Sender: TObject);
    procedure cmbFunctionModeExit(Sender: TObject);
    procedure cmbAngleUnitEnter(Sender: TObject);
    procedure cmbFunctionModeEnter(Sender: TObject);
    procedure sedCalcDecimalPointEnter(Sender: TObject);
    procedure edtResultMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtStatisticsNumberMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtHypoSideMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtAdjSideMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtOppSideMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtAlphaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtFactMultMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtnumMultiplesMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtDaysUntilNumberofDaysMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtTimeDifferenceValue1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtTimeDifferenceValue2MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtTimeConverterBrokenDownYearsMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtTimeConverterBrokenDownWeeksMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtTimeConverterBrokenDownDaysMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtTimeConverterBrokenDownHoursMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtTimeConverterBrokenDownMinutesMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtTimeConverterBrokenDownSecoundsMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtTimeFromMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtDecimalSystemMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtSimpleIntrestRateMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtSimpleInitialAmountMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtCompoundInterestImplmentationYearlyMouseMove(
      Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure edtCompoundInterestYearsToGrowMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtCompoundFutureValueMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtCompoundIntrestRateMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtCompoundPresentValueMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtStartingCapitalMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtStartingInterestMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtSide3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtSide2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtSide1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtPointOneXMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtPointOneYMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtPointTwoYMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtPointTwoXMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtPointOneXMidMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtPointOneYMIdMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtPointTwoYMidMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtPointTwoXMidMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtPointOneXSlopeMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtPointOneYSlopeMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtPointTwoYSlopeMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtPointTwoXSlopeMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtVIRVoltageMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtVIRCurrentMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtVIRResistanceMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtWQVWattsMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtWQVChargeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtWQVVoltageMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtQITChargeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtQITCurrentMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtQITTimeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtAVUTAccelerationMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtAVUTFinalVelocityMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtAVUTInitialVelocityMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtAVUTTimeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtVATVelocityMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtVATAccelerationMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtVATTimeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtWPTWorkMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtWPTPowerMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtWPTTimeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtEMHPotentialEnergyMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtEMHMassMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtEMHHeightMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtWFDWorkMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtWFDForceMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtWFDDistanceMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtM1M2MMass1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtM1M2MMass2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtM1M2MReducedMassMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtVARVelocityMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtVARAccelerationMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtVARRadiusMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtFMVRForceMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtFMVRMassMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtFMVRVelocityMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtFMVRRadiusMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtTRFTorqueMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtTRFRadiusVectorMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtTRFLinearForceMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtJRPAngularMomentumMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtJRPRadiusVectorMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtJRPLinearMomentumMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtMDVMassMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtMDVDensityMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtMDVVolumeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtPFAPressureMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtPFAForceMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtPFAAreaUnitMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtIMVUImpulseMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtIMVUMassMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtIMVUFinalVelocityMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtIMVUInitialVelocityMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtFMAForceMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtFMAMassMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtFMAAccelerationMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtPMVMomentumMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtPMVMassMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtPMVVelocityMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtDVTDistanceMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtDVTVelocityMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure edtDVTTimeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtResultClick(Sender: TObject);
    procedure imgMinimizeClick(Sender: TObject);
    procedure sedMinNumSizeChange(Sender: TObject);
    procedure sedMaxNumSizeChange(Sender: TObject);
    procedure btnVariablesClick(Sender: TObject);
    procedure cmbVarClick(Sender: TObject);
    procedure img2DSquareClick(Sender: TObject);
    procedure lsb2DClick(Sender: TObject);
    procedure edt2DChange(Sender: TObject);
    procedure edtAssignAreaChange(Sender: TObject);
    procedure edtAssignAreaClick(Sender: TObject);
    procedure edtAssignAreaExit(Sender: TObject);
    procedure edt2DExit(Sender: TObject);
    procedure edt2DClick(Sender: TObject);
    procedure img2DRectangleClick(Sender: TObject);
    procedure img2DCircleClick(Sender: TObject);
    procedure img2DTriangleClick(Sender: TObject);
    procedure lsb2DKeyClick(Sender: TObject);
    procedure lbl2DFormulaeClick(Sender: TObject);
    procedure img2DRhombusClick(Sender: TObject);
    procedure cmbVarChange(Sender: TObject);
    procedure cmbResultFormatEnter(Sender: TObject);
    procedure cmbResultFormatExit(Sender: TObject);
    procedure edtCalculatorAnswerMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure lsb3DClick(Sender: TObject);
    procedure img3DCubeClick(Sender: TObject);
    procedure lsb3DKeyClick(Sender: TObject);
    procedure img3DRectPrisClick(Sender: TObject);
    procedure img3DSphereClick(Sender: TObject);
    procedure img3DPyramidClick(Sender: TObject);
    procedure img3DConeClick(Sender: TObject);
    procedure img3DCylinderClick(Sender: TObject);
    procedure lblFormulaterGeo6Click(Sender: TObject);
    procedure tmrTabsTimer(Sender: TObject);
    procedure lblFormulaterGeo1Click(Sender: TObject);
    procedure lblFormulaterGeo2Click(Sender: TObject);
    procedure lblFormulaterGeo3Click(Sender: TObject);
    procedure lblFormulaterGeo4Click(Sender: TObject);
    procedure lblFormulaterGeo5Click(Sender: TObject);
    procedure lblFormulaterGeo7Click(Sender: TObject);
    procedure lblGame1Click(Sender: TObject);
    procedure lblMis1Click(Sender: TObject);
    procedure lblMis2Click(Sender: TObject);
    procedure lblMis3Click(Sender: TObject);
    procedure lblMis4Click(Sender: TObject);
    procedure lblMis5Click(Sender: TObject);
    procedure lblMis6Click(Sender: TObject);
    procedure lblMis7Click(Sender: TObject);
    procedure lblMis8Click(Sender: TObject);
    procedure lblMis9Click(Sender: TObject);
    procedure btnNumStatAnalyzeClick(Sender: TObject);
    procedure edtNumStatChange(Sender: TObject);
    procedure edtNumStatClick(Sender: TObject);
    procedure edtNumStatMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtNumStatExit(Sender: TObject);
    procedure tmrStatsTimer(Sender: TObject);
    procedure cbxTextAnalzeWrapWordClick(Sender: TObject);
    procedure btnLoadTextStatClick(Sender: TObject);
    procedure btnSaveTextStatClick(Sender: TObject);
    procedure btnTextStatAnalyzeClick(Sender: TObject);
    procedure redTextAnalyzeTextChange(Sender: TObject);
    procedure redTextAnalyzeResultsEnter(Sender: TObject);
    procedure redTextAnalyzeTextEnter(Sender: TObject);
    procedure imgDrawerColorMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure imgColorPickerBrightnessMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure imgColorPickerBrightnessMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure imgDrawerCanvasMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure imgDrawerCanvasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgDrawerCanvasMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure scbDrawerSizeChange(Sender: TObject);
    procedure imgDrawerColorMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgDrawerColorMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure lblDrawerColorChoiceClick(Sender: TObject);
    procedure bmbBrushClick(Sender: TObject);
    procedure bmbPencilClick(Sender: TObject);
    procedure bmbEraserClick(Sender: TObject);
    procedure bmbEyeDropClick(Sender: TObject);
    procedure bmbShapeClick(Sender: TObject);
    procedure bmbBucketClick(Sender: TObject);
    procedure bmbSaveAsClick(Sender: TObject);
    procedure bmbNewDrawerClick(Sender: TObject);
    procedure bmbSaveClick(Sender: TObject);
    procedure bmbLoadClick(Sender: TObject);
    procedure bmbFullScreenClick(Sender: TObject);
    procedure imgHelpClick(Sender: TObject);
    procedure edtWorkSheetFormat1Change(Sender: TObject);
    procedure stgWorksheetMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bmbFullScreenWorksheetsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtSide3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSide2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSide1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPointOneXKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPointOneYKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPointTwoYKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt2DKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAssignAreaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt3DKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt3DAssignKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDecimalSystemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtRomanNumeralsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtTimeConverterBrokenDownYearsKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edtTimeConverterBrokenDownWeeksKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edtTimeConverterBrokenDownDaysKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edtTimeConverterBrokenDownHoursKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edtTimeConverterBrokenDownMinutesKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edtTimeConverterBrokenDownSecoundsKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edtTimeFromKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtTimeDifferenceValue1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edtTimeDifferenceValue2KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edtDaysUntilNumberofDaysKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edtFactMultKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtnumMultiplesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtHypoSideKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAdjSideKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtOppSideKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtAlphaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtStatisticsNumberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNumStatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCompoundPresentValueKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edtCompoundIntrestRateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCompoundFutureValueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCompoundInterestYearsToGrowKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure edtCompoundInterestImplmentationYearlyKeyDown(
      Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtSimpleInitialAmountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSimpleIntrestRateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtStartingCapitalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtStartingInterestKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtWorkSheetFormat1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtWorkSheetFormat1Click(Sender: TObject);
    procedure edtWorkSheetFormat1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure edtWorkSheetFormat1Exit(Sender: TObject);
    procedure btnCalculatorAssignClick(Sender: TObject);
    procedure cmbHistoryClearChange(Sender: TObject);
    procedure edtResultKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtTimeDifferenceValue1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCloseBrackEnter(Sender: TObject);
    procedure edtOpenBrackEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     cal                                                              : TCalc;

     voice                                                            : OleVariant;

     Kreate                                                           : boolean;
     ans, preans                                                      : extended;

     VarNme  : array of String;
     VarVal  : array of extended;
     funtions: array of string;

     new                                                               :boolean;

     sTime, sSQRT                                                      :string;

     frequency                                                         :integer;
     Total, lastStat                                                   :real;


     TLTotal, TLRate, TLInitial                                        :real;
     Capital, Rate                                          : array of real;
     edtRate, edtWithdraw, edtDeposite                      : array of TEdit;
     Interval                                               : array of integer;

     SumOp, Difi                                                       :integer;
     Timetoans                                                         :integer;
     openSet                                                           :boolean;

     Shape2D , Shape3D                                                 :Char;

     AngleUnit                                                         : char;
     CalcDecPoint                                                      : integer;
     Format                                                            : char;

     lb                                                                : TLabel;
     lbs                                                               : array of TLabel;
     lblCase                                                           : Char;
     pnlTab                                                            : TPanel;
     spd                                                               : integer;


     drawerBright, drawerDraw, colorPick                               : boolean;
     DrawerMode                                                        : Char;
     flenme                                                            : string;
     beginx, beginy                                                    : integer;

     textstat                                                          : array of string;
     rnsi, rnsk                                                        : integer;

     WorkSheetSums                                                     : TStringGrid;

     AutoComp                                                          : integer;

     NormalAuto                                                        : TComboBox;



     procedure adddigit(c:char);
     procedure OpControl(c:char);
     procedure scifunc ( Functioned : extended; Func : string);
     procedure Constant(cnst:extended);
     procedure EQSOLVE(s : string);

     procedure ChangeView(btn1, btn2, btn3, btn4 : TBitBtn);

     procedure CreateQues;

     procedure EQ2ANSClick(Clike : TEdit);
     procedure EQ2ANSChng(Clike : TEdit);
     procedure EQ2ANSExit;
     procedure EQ2ANSSel(clike : TEdit);
     procedure EQ2ANSVeri(clike : TEdit);

     procedure EQ2ANSVAR(s:string);
     procedure EQ2ANSVARQ(s:string);

     procedure TimeConversionSimple;
     procedure TimeConversionBroken;
     procedure TimeDifference;
     procedure DateDifference;
     procedure DaysUntil;
     procedure FactorMult;
     procedure Trig;
     procedure Stat;
     procedure StatDel(pstn:integer);

     Procedure TabSystem (pnl : TPanel; lbl : TLabel; lbs : array of TLabel; Speed : integer);
     procedure TabSystemSet (pnl : TPanel; lbl : TLabel; lbs : array of TLabel);
     procedure TabSysGeo(lbl : TLabel);
     procedure TabSysMis(lbl : TLabel);

     procedure AutoComplete(edt : TEdit; pstn : integer; lsb : TListBox; str : TStrings; clr : TColor);
     procedure AutoCompleteIni;
     procedure AutoCompKeyD(edt : TEdit; var key : word; lsb : TlistBox);
     procedure Autofy(edt : TEdit; lsb : TListBox);

     procedure UserFriendBrack(edt : TEdit);



    // procedure CustomFunctionize(edt : Tedit);
  end;

var
  frmMatheMagixPAT: TfrmMatheMagixPAT;


implementation

uses Math, StrUtils, ConvUtils, Unit2, Unit3, StdConvs, Unit4,
  Unit5, Unit6, Types, Unit8;

{$R *.dfm}

function Vari(vle : TValueListEditor; x, funks : string; xs : array of string) : boolean;
var
 i : integer;
begin
 While (vle.RowCount - 1 > 1) do vle.DeleteRow(1);

 vle.InsertRow('@', x, false);
 for i := 1 to length(xs) - 1 do
  vle.InsertRow('@'+IntToStr(i), xs[i], false);

 vle.InsertRow('@#', IntToStr(length(xs)-1), false);
 vle.InsertRow('$', funks, false);

 result := true;
end;

function Quickformat(s : string) : string;
var
 i : integer;
begin
 for i := 1 to length(s) do
  if s[i] in [' ']
   then
    Delete(s, i, 1);
 if s <> '' then if s[1] = ' ' then delete(s, 1, 1);
 Result := s;
end;

function ExecuteCode(mem : TMemo; vle : TValueListEditor) : string;
var
 cal : TCalcLabasic;
 i, k, j, l : integer;
 s, memo    : string;
 opn : integer;
begin
 cal := TCalcLabasic.Create;
 i := 0;
 memo := mem.Text;
 if mem.Text <> '' then
 While i <= mem.Lines.Count do
  begin

   s := Quickformat(mem.Lines[i]);

   if length(s) > 2 then
   if LowerCase(s[1] + s[2]) = 'if'
    then begin
     if cal.GetAnswer(mem.Lines[i], vle) = '0' then
      begin
       k := i+1;
       opn := 0;
       Repeat
        s := Quickformat(mem.Lines[k]);
        if s[1] = '<'
         then
          inc(opn)
         else
        if s[1] = '>'
         then
          dec(opn);
        inc(k);
       Until (opn = 0) or (k > mem.Lines.Count);
       i := k-1;

      end else
     if cal.GetAnswer(mem.Lines[i], vle) = '1' then
      begin
       k := i+1;
       opn := 0;
       Repeat
        s := Quickformat(mem.Lines[k]);
        if s[1] = '<'
         then
          inc(opn)
         else
        if s[1] = '>'
         then
          dec(opn);
        inc(k);
       Until (opn = 0) or (k > mem.Lines.Count);

       j := k;
       opn := 0;
       Repeat
        s := Quickformat(mem.Lines[j]);
        if s[1] = '<'
         then
          inc(opn)
         else
        if s[1] = '>'
         then
          dec(opn);
        inc(j);
       Until (opn = 0) or (j > mem.Lines.Count);

       for l := i to k-1 do
        cal.GetAnswer(mem.Lines[l], vle);
       i := j-1;

      end;
     end else      //if statment
     if LowerCase(s[1] + s[2] + s[3]) = 'for' then
     begin

     end else
     if LowerCase(s[1] + s[2]) = 'do' then
     begin

     end else
     if LowerCase(s[1] + s[2] + s[3]) = 'while' then
     begin

     end;

      cal.GetAnswer(mem.Lines[i], vle);
   inc(i);
  end; //WHile memlines


 Result := FloatToStr(cal.Returning);
 cal.Free;
end;

function LabasicCustomfunctionize(s : String; vlevar : TValueListEditor; mem : TMemo; lsb : TListBox; codes : array of string) : string;
var
 i, k, ending, begining : integer;
 o : integer;
 value, fnctn, sfunc: string;
 cal   : TCalc;
 Iiscustom : integer;
 Biscustom : boolean;
 answer : string;
 cmpndFunktion : array of string;
begin
 value := '';
 cal := TCalc.Create;
 for  i := length(s) downto 1 do
  if s[i] = '(' then
   Begin
    o := 0; k := i; value := '';
    Repeat
     if s[k] = '('
      then
       inc(o)
      else
     if s[k] = ')'
      then
       dec(o);
     value := value + s[k];
     inc(k);
    Until (o = 0) or (k > length(s));
    ending := k-1;

    o := 1;
    setLength(cmpndFunktion, 2);
    cmpndFunktion[1] := '';

    for k := 1 to length(value) do
     if ((not(value[k-1] in ['a'..'z','A'..'Z']))and(value[k] in ['0'..'9','.']))
        or((value[k] in ['-'])and(value[k-1] in ['*','/','-','+','(',')','^',',',' ','<','>','=','"']))
        or((value[k] in ['e','E'])and(value[k+1] in ['0'..'9','-']))or((value[k] in ['0'..'9','.'])and(value[k-1] in ['e','E']))
     then
      cmpndFunktion[o] := cmpndFunktion[o] + value[k]
     else
     if (value[k] in [',']) then
     begin
      inc(o);
      SetLength(cmpndFunktion, o + 1);
      cmpndFunktion[o] := '';
     end;


    k := i; fnctn := '';
    Repeat
     fnctn := fnctn + s[k];
     dec(k);
    Until (k<1)or(not (s[k] in ['A'..'Z', 'a'..'z', '0','9'])) or (s[k] = '(');
    begining := k+1;

    sfunc := '';
    for k := length(fnctn) downto 2 do
     sfunc := sfunc + fnctn[k];

    fnctn := sfunc;

    Biscustom := false; Iiscustom := 0;
    for k := 0 to lsb.Items.Count - 1 do
     if lsb.Items[k] = UpperCase(fnctn) then
      begin
       Iiscustom := k;
       Biscustom := true;
      end;

 //   Showmessage(value);
    if Biscustom then
     begin
      mem.Text := frmCustomFunctionsCode.code[Iiscustom];
      Vari(vlevar, cal.GetAnswer(value), '', cmpndFunktion);
      answer := ExecuteCode(mem, vlevar);
      delete(s, begining, ending);
      insert(answer, s, begining);
     end;

   end;
 result := s;
end;

function Variblize( txt : string; const varys : array of string; vary : array of extended): String;
var
 i, y, k, z : integer;
 v       : string;
 sPara   : BOOLEAN;
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


  if (txt[i] in ['a'..'z','A'..'Z']) and ((txt[i-1] in ['+','/','-','*','^','(',')','=',' ',','])or(i=1)) and (txt[i+1] <> ':')  then
   begin
    y:=i;
    v:='';
    Repeat
     if txt[y] in ['a'..'z','A'..'Z','0'..'9','#','$','_'] then v := v + txt[y];
     inc(y);
    Until (txt[y] in ['+','/','-','*','(','^',')',',']) or ( y > length(txt) );
   end;

   for  k := 0 to length(varys)-1 do
    if v = varys[k] then
     begin
      delete(txt, i, length(v));
      insert(FloatToStr(vary[k]), txt, i);
     end;

   v :='([{!@#$%^&*}])';
   inc(i);

 Until (i > length(txt));

 Result := txt;
end;

function FormatAnswer(s : String; c : char) : String;
var
 i: integer;
 x, r, s2, fs : extended;
 den, num : extended;
 e : string;
 negative : boolean;
Begin
 negative := false;
 if s <> '' then
  case c of
   'S'     : Begin
              val(s, fs, i);
              s := FormatFloat('0 000 000 000 000 000 000.000000000000000', fs);
              for i := 1 to length(s) do
               begin
                if s[1] in ['0', ' ']
                 then begin
                  if s[2] <> '.' then delete(s, 1,1)
                 end else
                if s[1] = '-'
                 then if s[2] in ['0',' ']
                  then
                   delete(s, 2,1);
                if s[length(s)] in ['0',' ']
                 then
                  delete(s, length(s), 1);
                end;
               if s[length(s)] = '.'
                then
                 delete(s,length(s),1);
              if s ='' then s := '0';
             end;

   'P','M' : begin
              e := FloatToStr(ABS(Frac(StrToFloat(s))));
              if StrToFloat(s) > 0
               then
                negative := false
               else
                negative := true;

              delete(e,1,2);
              if e <> '' then
               begin
                r := StrToFloat(e);
                num := r;
                x := Trunc(power(10, length(e)));
                den := x;

                While r > 0 do
                 Begin
                  s2 := r;
                  r  := trunc(x) mod trunc(r);
                  x  := s2;
                 end;

               if x <> 0 then
                begin
                 num := num / x;
                 den := den / x;
                end;

                if c = 'P' then
                 begin
                  num := Trunc(StrToFloat(s))*den+num;
                  s := FloatToStr(num) + '/' + FloatToStr(den);
                 end else
                if c = 'M'
                 then
                  s := IntToStr(Trunc(StrToFloat(s)))+ '   ' + FloatToStr(num) + '/' + FloatToStr(den);

               end;
             end;

  end;
 if negative then
   s := '-' + s;
 Result := s;
end;


function GetValu(se : TEdit; AngleUnit : Char):string;
var
 i, k, b, p     : integer;
 sFormula, s    : string;
 first, delleat : boolean;
begin
 b:=0;
 first := true;
 delleat := true;
 if se.SelLength > 0
  then
   sFormula := se.SelText
  else
  begin
   s := se.Text;
   if s <> '' then
    if s[length(s)] = ')' then
     begin
      p:=0;
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
      for i := p+1 to length(s) do
       sFormula := sFormula + s[i];
     end else
     begin
      for i := length(s) downto 1 do
       if s[i] in ['+','-','/','*','^'] then
        if First then
        begin
         first := false;
         for k := i+1 to length(s) do
          sFormula := sFormula + s[k];
        end;
     end;

  end;

  Result := sFormula;

end;

function EQ_SEP(s : string; left : boolean) : string;
var
 p : integer;
begin
 result := '';

 for p := 1 to length(s) do
  if s[p] = ' ' then
   delete(s, p, 1);

 p := 0;

 Repeat
  inc(p);
  result := result + s[p];
 Until (s[p+1] in ['='])or(p = length(s));

 if not left then
  begin
   delete(s, 1, p+1);
   result := s;
  end;
end;

function ReOrderRest(s : array of string; swapin : boolean) : string;
var
 k, p : integer;
 nd   : boolean;
begin
 {Order Terms Rest}
 nd := true;  result := '';
 for p := 1 to length(s) - 1 do
 begin
  for k := 1 to length(s[p]) do
   if (s[p][k] in ['a'..'z', 'A'..'Z']) then
    begin
     nd := false;
    end;
  if nd then
   begin
    if swapin then
      begin
       if s[p][1] in ['+','/','*','-'] then
        begin
         case s[p][1] of
          '+' : s[p] := '-' + s[p];

          '-' : s[p] := '+' + s[p];

          '*' : s[p] := '/' + s[p];

          '/' : s[p] := '*' + s[p];
         end;
         if s[p][2] in ['+','/','*','-'] then delete(s[p], 2, 1);
        end else
        if s[p] <> '' then
         s[p] := '-' + s[p];
      end;
      result := result + s[p];
   end;
  nd := true;
 end;
{Order Terms Rest}

end;

function ReOrderVar(s : array of string; swapin : boolean) : string;
var
 k, p : integer;
begin
{Order Terms Var}
 for p := 1 to length(s) - 1 do
  for k := 1 to length(s[p]) do
   if s[p][k] in ['a'..'z', 'A'..'Z'] then
    begin
     if swapin then
      begin
       if s[p][1] in ['+','/','*','-'] then
        begin
         case s[p][1] of
          '+' : s[p] := '-' + s[p];

          '-' : s[p] := '+' + s[p];

          '*' : s[p] := '/' + s[p];

          '/' : s[p] := '*' + s[p];
         end;
         if s[p][2] in ['+','/','*','-'] then delete(s[p], 2, 1);
        end else
         s[p] := '-' + s[p];
      end;

     result := result + s[p];
    end;

{Order Terms Var}
end;

function SimpTerms(s : array of string) : string;
var
 k, p : integer;
 r    : boolean;
 vari : string;
 cal  : TCalc;
begin
 r := false; vari := ''; result := '';
 cal := TCalc.Create;

 if length(s) = 2 then
 begin
  if StrToFloat(cal.GetAnswer(s[1])) < 0
   then
    result := '-' + s[1]
   else
    result := '+' + s[1];
 end;

 for p := length(s) - 1 downto 1 do
  begin
   if r then
   begin
    for  k := 1 to length(s[p]) do
     if s[p][k] in ['a'..'z', 'A'..'Z'] then
      vari := vari + s[p][k];

    for  k := 1 to length(s[p+1]) do
     if s[p+1][k] in ['a'..'z', 'A'..'Z'] then
      vari := vari + s[p+1][k];

    s[p] := cal.GetAnswer(s[p] + s[p+1]);
    if StrTofloat(s[p]) < 0
     then
      s[p] := '-' + s[p]
     else
      s[p] := '+' + s[p];
    s[p] := s[p] + vari;
    s[p+1] := '';  vari := '';
   end;
   r := false;
   for k := 1 to length(s[p]) do
    if s[p][k] in ['*','/'] then
     r := true;
  end;

 if length(s) > 2 then
 for p := 1 to length(s) - 1 do
  result := result + s[p];
 cal.Free;
end;

function SimpVar(s : string) : string;
var
 p , z: integer;
 c : char;
 cal : TCalc;
begin
 cal  := TCalc.Create;
 Result := ''; c := ' ';
 for p := 1 to length(s) do
  if s[p] in ['a'..'z','A'..'Z'] then
   c := s[p];

 for z := 1 to length(s) do
  if s[z] in ['+','-'] then if s[z+1] in [c] then
   insert('1', s, z+1);


 for z := 1 to length(s) do
  if not (s[z] in ['0'..'9','+','/','-','*','(',')'])  then
   delete(s, z, 1);

 if s[1] = '-' then if s[2] = '-' then
  delete(s, 1,1);

 s := cal.GetAnswer(s);
 if StrToFloat(s) < 0
  then begin
   result := '-' + s + c
  end else
   result := '+' + s + c;

 if Result[1] in ['+','-'] then if Result[2] in ['+','-'] then delete(Result,1,1);
 cal.Free;
end;

function SimpRest(s : string) : string;
var
 cal : Tcalc;
begin
 cal := TCalc.Create;
 s := cal.GetAnswer(s) ;
 if StrToFloat(s) < 0
  then
   result := '-' + s
  else
   result := '+' + s;

 if Result[1] in ['+','-'] then if Result[2] in ['+','-'] then delete(Result,1,1);
 cal.free;
end;

procedure TfrmMatheMagixPAT.EQSOLVE(s : string);
var
 l, r, v      : string;
 p, k         : integer;
 lterm, rterm : array of string;
 rol, ror     : string;
 vrbl         : char;
 cal : TCalc;
begin
 cal := TCalc.Create;
 memCalculatorEqSolve.Lines.add('Equation to Solve');
 memCalculatorEqSolve.Lines.add(s);
 memCalculatorEqSolve.Lines.add(' ');

  for p := 1 to length(s) do
  if s[p] in ['a'..'z','A'..'Z'] then
   if (s[p-1] in ['+','/','-','*'])or(p = 1) then
    insert('1', s, p);

 l := EQ_SEP(s, true);
 r := EQ_SEP(s, false);

 k:=1;
 for p := 1 to length(l) do
  if l[p] in ['+','/','-','*'] then
   inc(k);
 SetLength(lterm, k + 1);

 k:=1;
 for p := 1 to length(r) do
  if r[p] in ['+','/','-','*'] then
   inc(k);
 SetLength(rterm, k + 1);

{MAke Terms Left}
 k:=1; v := '';
 for p := 1 to length(l) do
  begin
    if (l[p] in ['+','/','-','*']) then
    if p <> 1 then
     begin
      lterm[k] := v;
      v := '';
      if k = 1 then if lterm[1][1] <> '-' then
       lterm[1] := '+' + lterm[1];
      inc(k);
     end;
     v := v + l[p];
     if (p = length(l)) then
      lterm[k] := v;
  end;
{MAke Terms Left}

{MAke Terms Rigth}
 k:=1; v := '';
 for p := 1 to length(r) do
  begin
    if (r[p] in ['+','/','-','*']) then
     if p <> 1 then
     begin
      rterm[k] := v;
      v := '';
      if k = 1 then if rterm[1][1] <> '-' then
       rterm[1] := '+' + rterm[1];
      inc(k);
     end;
     v := v + r[p];
     if (p = length(r)) then
      rterm[k] := v;
  end;
{MAke Terms Right}
{Initialize} /////////////////////////////////////////////

 l := SimpTerms(lterm);
 r := SimpTerms(rTerm);

 delete(l,1,1);
 delete(r,1,1);

 memCalculatorEqSolve.Lines.add('Simplify');
 memCalculatorEqSolve.Lines.Add(l + '=' + r);    /////////////////////Simplified ([{  1  }])
 memCalculatorEqSolve.Lines.add(' ');

 k:=1;
 for p := 1 to length(l) do
  if l[p] in ['+','/','-','*'] then
   inc(k);
 SetLength(lterm, k + 1);

 k:=1;
 for p := 1 to length(r) do
  if r[p] in ['+','/','-','*'] then
   inc(k);
 SetLength(rterm, k + 1);

 {MAke Terms Left}
 k:=1; v := '';
 for p := 1 to length(l) do
  begin
    if (l[p] in ['+','/','-','*']) then
    if p <> 1 then
     begin
      lterm[k] := v;
      v := '';
      if k = 1 then if lterm[1][1] <> '-' then
       lterm[1] := '+' + lterm[1];
      inc(k);
     end;
     v := v + l[p];
     if (p = length(l)) then
      lterm[k] := v;
  end;
{MAke Terms Left}
{MAke Terms Rigth}
 k:=1; v := '';
 for p := 1 to length(r) do
  begin
    if (r[p] in ['+','/','-','*']) then
    if p <> 1 then
     begin
      rterm[k] := v;
      v := '';
      if k = 1 then if rterm[1][1] <> '-' then
       rterm[1] := '+' + rterm[1];
      inc(k);
     end;
     v := v + r[p];
     if (p = length(r)) then
      rterm[k] := v;
  end;
{MAke Terms Right}

 rol := ReOrderVar(lterm, false);
 rol := ReOrderVar(rterm, true);

 ror := ReOrderRest(rterm, false);
 ror := ror + ReOrderRest(lterm, true);

 memCalculatorEqSolve.Lines.add('Seperate Terms to appropriate sides');
 memCalculatorEqSolve.Lines.Add(rol + '=' + ror);   /////////////////////Swapin Sides ([{  2  }])
 memCalculatorEqSolve.Lines.add(' ');

 l := SimpVar(rol);
 r := SimpRest(ror);

 memCalculatorEqSolve.Lines.add('Simplify');
 memCalculatorEqSolve.Lines.Add(l + '=' + r);    /////////////////////Simp both sides ([{  3  }])
 memCalculatorEqSolve.Lines.add(' ');

 if r[1] = '-' then if r[2] = '-' then delete(r, 1,1);
 if l[1] = '-' then if l[2] = '-' then delete(l, 1,1);

 if (cal.GetAnswer(l) = '0') or ((cal.GetAnswer(r) = '0')and(cal.GetAnswer(l) = '0'))
  then
   ror := 'Undefined'
  else
   ror := FloatToStr(StrToFloat(cal.GetAnswer(r)) / StrToFloat(cal.GetAnswer(l)));

 vrbl := ' ';
 for  p := 1 to length(l) do
  if l[p] in ['a'..'z','A'..'Z'] then
   vrbl := l[p];

 if cal.GetAnswer(l) = '0'
  then
   rol := ' '
  else
   rol := vrbl + '=';

 memCalculatorEqSolve.Lines.add('Final Answer by isolating Variable');
 memCalculatorEqSolve.Lines.Add(rol + ror); /////////////////////get var alone ([{  4  }])
 memCalculatorEqSolve.Lines.add('----'+TimeToStr(Now)+'----');
 cal.Free;
end;

function GetBracketValSelLength(clike:TEdit):integer;
var
 ob, k, y, i, l : integer;
begin
 ob:=0;
 if clike.Text[clike.SelStart] in ['a'..'z','A'..'Z'] then
     begin
      clike.SelLength := clike.SelLength + 1;
      i:=clike.SelStart;
        Repeat
         l := clike.SelLength + 1;
         clike.SelStart := clike.SelStart -1;
         clike.SelLength := l;
         dec(i);
        Until  (clike.Text[i] in ['+','-','/','*','^','(']) or (i = 0);
     end;

 for k := clike.SelStart+1 to clike.SelStart + clike.SelLength do
    if clike.Text[k] = '('
     then
      inc(ob)
     else if clike.text[k] = ')'
      then
       dec(ob);
    y := clike.SelStart+Clike.SelLength+1;

    if ob <> 0 then
    Repeat
      inc(y);
       if clike.Text[y-1] = '('
        then
         inc(ob)
        else
         if clike.Text[y-1] = ')'
          then
           dec(ob);

           clike.SelLength := clike.SelLength + 1;
       if y > length(clike.Text)+1 then ob:=0;
       //Showmessage(IntToStr(ob)) ;
    Until ob = 0;


    Result:=clike.SelLength;
end;

procedure TfrmMatheMagixPAT.EQ2ANSClick(Clike:TEdit);
var
 y, i, l : integer;
 comma   : integer;
 cal     : TCalc;
begin
 cal := TCalc.Create;
 comma := 0;
 if clike.SelLength = 0 then
  begin
    if Clike.SelStart = length(clike.Text)
     then
      Clike.SelectAll
     else
      if (clike.Text[clike.SelStart] in ['0'..'9','.'])and(clike.Text[clike.SelStart+1] in ['+','/','*','-','^','(','[',']',')',' '])then
      begin
       i := clike.SelStart;
       Repeat
         l := clike.SelLength + 1;
         clike.SelStart := clike.SelStart -1;
         clike.SelLength := l;
         dec(i);
       Until (clike.Text[i] in ['+','/','*','-','^','(','[',']',')'])or(i = 0);
      end;
     cal.GetAnswer(LabasicCustomfunctionize(Variblize(Clike.Text, varnme, varval), frmCustomFunctionsCode.vleVariables, memStore, frmCustomFunctionsCode.lsbNavigon, frmCustomFunctionsCode.Code));
     // lblUniAutoAnswer.caption := FormatAnswer(cal.GetAnswer(Variblize(Clike.Text, VarNme, VarVal)),Format)
  end else                                  //{}}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}
  begin
   y:=0;
   for i := 1 to clike.SelLength do
    if clike.SelText[i] = ','
     then
      inc(comma);

   if comma > 0 then
   begin
   if (clike.Text[clike.SelStart] <> '(')or(clike.Text[clike.SelStart+Clike.SelLength+1] <> ')') then
    begin
     if clike.selText[1] = ',' then
      begin
       if clike.selText[2] <> ' '
        then
         l:=clike.SelLength + 1
        else
         l := clike.SelLength + 2;
       if clike.selText[2] <> ' '
        then
         clike.selStart := clike.selStart + 1
        else
         clike.selStart := clike.selStart + 2;
       clike.SelLength := l;
      end;
     i:=clike.SelStart+clike.SelLength;
     while comma > 0 do
      begin
       if clike.Text[i] = ','
        then
         dec(comma);
       clike.SelLength := clike.SelLength -1;
       dec(i);
      end;
    end;
    if (clike.Text[clike.SelStart] = '(')and(clike.Text[clike.SelStart+Clike.SelLength+1] = ')') then
    begin
     i:=clike.SelStart;
     Repeat
      l := clike.SelLength + 1;
      clike.SelStart := clike.SelStart -1;
      clike.SelLength := l;
      dec(i);
     Until  (clike.Text[i] in ['+','-','/','*','^','(',',',' ']) or (i = 0);
     clike.SelLength := Clike.SelLength + 1;
    end;

   end else //{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}<><><><><>
  if clike.selLength > 0 then
  if (clike.SelText[1] <> '(')and(clike.Text[clike.SelStart+Clike.SelLength+1] <> ')') then
   Repeat
    inc(y);
    if clike.Text[y] in ['0'..'9','.','a'..'z','A'..'Z'] then
     begin
      if y = clike.SelStart then                   //Left Part if num
       begin
        i:=y;
        Repeat
         l := clike.SelLength + 1;
         clike.SelStart := clike.SelStart -1;
         clike.SelLength := l;
         dec(i);
        Until  (clike.Text[i] in ['+','-','/','*','^','(',',',' ']) or (i = 0);
       end else
       if y = clike.SelLength + clike.SelStart then   //Back PArt if num
        begin
         i:=y;
         while not(clike.Text[i+1] in ['+','-','/','*','^',')',',']) do
          begin
           clike.SelLength := clike.SelLength +1;
           inc(i);
          end;
        end else
        if clike.selLength > 1 then if clike.SelText[1] in ['^','*','/','-','+','(',',',' '] then    //left Part if op
         begin
          l := clike.SelLength-1;
          clike.SelStart := clike.SelStart + 1;
          clike.SelLength := l;
         end else
         if clike.SelText[length(clike.SelText)] in ['^','*','/','-','+',')',',',' ']  //Back Part if op
          then
           clike.SelLength := clike.SelLength -1;

     end;
   Until y = length(clike.Text);

   clike.SelLength := GetBracketValSelLength(clike);
  end;
  cal.Free;
end;


function TimeLine(edtDeposite, edtWithdraw, edtRate : array of TEdit; initialval, TlRate : extended; period, IntType : integer; interval : array of integer;varnme : array of string; varvle : array of extended): String;
var
 i, k, f, brks, h : integer;
 Dep, wit, tltotal    : extended;
 ARRbrks : array of extended;
 s:string;
 cal : TCalc;
begin
 cal := TCalc.create;
 brks    := 0;
 TlTotal := Initialval;
 k       := 0;
 SetLength(ARRbrks, 100000);
 Dep := 0;
 Wit := 0;

 for f := 0 to period do
  if interval[f] = f then
   begin
    if (edtDeposite[f].Text <> '')or(edtWithdraw[f].Text <> '')or(edtRate[f].Text <> '') then
     begin
      ARRbrks[f]:=f-k;
      k:=f;
     end;
   end else
    ARRbrks[f]:=0;

 //if b then ARrbrks[0] := -1 else Arrbrks[0] := Period;

 if brks <> period then
  for i := 0 to period do
   begin
    if i <> 0 then
     begin
      if interval[i] <> -1 then if edtDeposite[i].Text <> '' then val( cal.GetAnswer(Variblize(edtDeposite[i].text, varnme, varvle)), dep, h) else dep := 0;
     end else
      dep:=0;

    if interval[i] = -1 then wit := 0 else if edtWithdraw[i].Text <> '' then val( cal.GetAnswer(Variblize(edtWithdraw[i].text, varnme, varvle)), wit, h);

    if intType = 1
     then
      TLTotal:=TLTotal*power(1+ (TLRate/100), Arrbrks[i]) + Dep - Wit
     else
//      if (EQ2ANS(Variblize(edtDeposite[i].text, varnme, varvle), AngleUnit, calcDec) <> '0')
  //     then
        TLTotal:=TLTotal * (1 + (TLRate/100) * Arrbrks[i]) + Dep - Wit;

    if interval[i] <> -1 then if edtRate[i].Text <> '' then val( cal.GetAnswer(Variblize(edtRate[i].text, varnme, varvle)), TLRate, h);
   end;

 s := FloatToStrF(TLTotal, ffCurrency, 13, 2);
 delete(s,1,1);
 Result := 'R '+s;
end;

procedure TfrmMatheMagixPAT.EQ2ANSVeri(clike:TEdit);
var
 s     : string;
 i, p  : integer;
 y, br : integer;
 sF    : boolean;
 f, c  : char;
begin
 s := clike.Text;
 p := clike.SelStart;
 y := 0;
 f := ' ';
 sF := False;

 if clike.Name = 'edtResult' then        {}
     if new then                         {}
      begin                              {}
       if s[length(s)] in ['0'..'9','a'..'z','A'..'Z','#','$','%','(']     {}
        then                             {}
         s:=s[length(s)]                 {}
        else                             //if new then handle as
        if s[length(s)] = '.'            {}
         then                            {}
          s := '0.'                      {}
         else
          if s[length(s)] in ['+','/','*','-','^'] then
           begin
            //delete(s, 1, length(s)-1);
            //insert('ans',s,1);
            //inc(p);
           end;
       if s[length(s)] in ['0'..'9','.','a'..'z','A'..'Z','*','/','+','-','^','(','#','$','%'] then new := false;
      end;                               {}


 if s <> '' then if not (s[1] in ['0'..'9','#','$','%','-','A'..'Z','(','.','a'..'z','[', '|']) then{}
  begin                                                                    {}
   delete(s, 1, 1);                                                        //first char gota b these
   beep;                                                                   {}
  end;                                                                     {}

 if length(s) > 1 then
  Repeat
   inc(y);
   if s[y] in ['^','*','/','-','+','0'..'9','a'..'z','A'..'Z','#','$','%','(',')','_','.',',',' ',':','=','"','<','>','[',']','{','}','|'] then
   begin
    if s[y] = '"' then sF := not sF;

    br := 0;                                                   {}
    if s[y] = ')' then                                         {}
     begin                                                     {}
      for i := 1 to y-1 do                                     {}
       if s[i] = '('                                           {}
        then                                                   //cant close bracket
         inc(br)                                               //if no open bracket
        else if s[i] = ')'                                     {}
         then                                                  {}
          dec(br);                                             {}
      if not (br > 0) then delete(s, y, 1);                    {}
      //beep;
     end;                                                      {}

    if s[y] in ['#','$']                                       {}
     then                                                      {}
      f:=s[y]                                                  //initialize the
     else if s[y] in ['+','-','/','*','^','e']               //format of numeral
      then                                                     {}
       f:=' ';                                                 {}

    if y > 1 then
     if s[y] in ['+','/','*','^','.'] then                     {}
      if (s[y-1] in ['+','/','-','*','^','(','.']) then        {}
       begin                                                   //no ops next to each other
        delete(s, y-1, 1);                                       {}
        //beep;                                                  {}
       end;                                                    {}

  (*  if f = ' ' then
     begin
      if s[y-1] in ['a'..'z','A'..'Z'] then                                  {}
      if not(s[y] in ['(','a'..'z','A'..'Z','+','-','*','/','^',')']) then   {}
       begin                                                                 //only open bracket after function
        delete(s, y, 1);                                                     {}
        beep;                                                                {}
       end;
     end else  *)
     case f of
      '#' : begin
             if (not(s[y-1] in ['+','/','-','*','^','(',',',')'])) or (y > 1) then
              begin
               c := UpCase(s[y+1]);
               delete(s, y+1, 1);
               insert(c, s, y+1);
               if not(c in ['I','V','X','L','C','D','M',' ','+','(','-','*','/','^']) then
                begin
                 delete(s, y+1, 1);
                end;
              end else
               f := ' ';
            end;
      '$' : begin
             if (not(s[y-1] in ['+','/','-','*','^','(',',',')'])) or (y > 1) then
              begin
               c := UpperCase(s)[y+1];
               delete(s, y+1, 1);
               insert(c, s, y+1);
               if not(c in ['A'..'F','0'..'9',' ','+','(','-','*','/','^']) then
                begin
                 delete(s, y+1, 1);
                end;
              end else
               f:= ' ';
            end;
     end;

   if y > 2 then
    if s[y-2] in ['+','/','-','*','^','(',',',')'] then {}
      if s[y-1] = '0' then                              {}
      if s[y]  = '0' then                               // dont allow two zeros
       begin                                            // next to each other unless decimal
        delete(s, y, 1);                                {}
        beep;                                           {}
       end;                                             {}

     for i := 1 to length(s) do                                      {}
     if s[i-2] in [{'+',}'/'{,'-','*','^','(',')','$','%'}] then         {}
      if s[i-1] = '0' then                                           //remove "0" if not "." next
       if not(s[i] in ['.',')']) then                                {}
        delete(s, i-1, 1);                                           {}


  (*  if s[y] = '.' then                                  {}
     begin                                              {}
      i := y;                                           {}
      b := false;                                       {}
      Repeat                                            {}
       dec(i);                                          {}
       if s[i] = '.' then b := true;                    {}
      Until (s[i-1] in ['+','/','-','*','^','(',')'])or(i=0);                {}
      i := y;                                           {}
      Repeat                                            //no 2 "." in 1 number
       inc(i);                                          {}
       if s[i] = '.' then b := true;                    {}
       Until (s[i+1] in ['+','/','-','*','^','(',')'])or(i=length(s));       {}
       if b then                                        {}
       begin                                            {}
        delete(s, i, 1);                                {}
        beep;                                           {}
       end;                                             {}
     end;                                               {}      *)

     

    if y > 1 then
    if s[y-1] in ['^','e','E'] then if s[y-2] in ['0'..'9','.','-']  then{}
     if not(s[y] in ['-','0'..'9','#','%','(',')']) then{}
      begin                                             {}
       delete(s, y, 1);                                 {}
        beep;                                           {}
      end else                                          //certain char after "^" / "e" / "E"
      if s[y] = '+' then                                {}
      begin                                             {}
       MessageDlg('Enter a number normally for a positive exponent', mtError, mbOKCancel, 1);
       beep;                                            {}
       end;                                             {}

    end else
     if not sF then
      delete(s, y, 1);                                   {}//unknown char

   Until y > length(s);

 clike.Text := s;
 if clike.SelStart = 0 then clike.SelStart := p;
end;

function GetBrackPosForOpenBracket(edt : TEdit) : integer;
var
 i : integer;
 o : integer;
begin
 Result := edt.SelStart;

 if edt.Text[edt.SelStart + 1] = '(' then
  begin
   o := 0; i := edt.SelStart + 1;

   Repeat
     if edt.Text[i] = '('
      then
       inc(o)
      else
       if edt.Text[i] = ')'
        then
         dec(o);

     if o = 0 then Result := i;
     inc(i);
    Until (o <= 0) or (i >= length(edt.Text));
  end;
end;

function GetBrackPosForCloseBracket(edt : TEdit) : integer;
var
 i : integer;
 c : integer;
begin
 Result := edt.SelStart;

 if edt.Text[edt.SelStart] = ')' then
  begin
   c := 0; i := edt.SelStart;
   Repeat
     if edt.Text[i] = '('
      then
       dec(c)
      else
       if edt.Text[i] = ')'
        then
         inc(c);

     if c = 0 then Result := i;
     dec(i);
   Until (c <= 0) or (i <= 1);
  end;


end;

function GetTextWidth(edt : TEDIT; wheretodel : integer) : integer;
var
  i{, check} : integer;
  Bit : TBITMAP;
  s  : string;
begin
  s := edt.Text;

 // Bit := TBitmap.Create;
 // Bit.Canvas.Font := edt.Font;
 // check := Bit.Canvas.TextWidth(s);

  delete(s, wheretodel, length(edt.text));

  Bit := TBitmap.Create;
  Bit.Canvas.Font := edt.Font;
  i := Bit.Canvas.TextWidth(s);

  Bit.Free;
  Result := i

end;

function IniBrackShow(edtClose, edtOpen, edtParent : TEdit; slf : integer) : boolean;
var
 p : TPoint;
begin
 edtOpen.Height := edtParent.Height;
 edtClose.Height := edtParent.Height;

 edtOpen.Font := edtParent.Font;
 edtClose.Font := edtParent.Font;

 edtOpen.Font.Color := clSilver;
 edtclose.Font.Color := clSilver;

 p := edtParent.ClientToScreen(Point(0, -slf - edtParent.Height));
 edtOpen.Top := p.Y;
 edtClose.Top := p.Y;

 edtOpen.Show;
 edtClose.Show;

 Result := True;
end;

procedure TfrmMatheMagixPAT.UserFriendBrack(edt : Tedit);
begin

 if edt.Text <> ''
  then
   if edt.Text[edt.SelStart] = ')' then
    begin
     if GetBrackPosForCloseBracket(edt) <> edt.SelStart then
      begin
       edtOpenBrack.Left := edt.Left + GetTextWidth(edt, GetBrackPosForCloseBracket(edt)) + 2;
       edtCloseBrack.Left := edt.Left + GetTextWidth(edt, edt.SelStart) + 2;
       IniBrackShow(edtCloseBrack, edtOpenBrack, edt, self.Top);
      end;
    end else
   if edt.Text[edt.SelStart+1] = '(' then
    begin
     if GetBrackPosForOpenBracket(edt) <> edt.SelStart then
      begin
       edtOpenBrack.Left := edt.Left + GetTextWidth(edt, GetBrackPosForCloseBracket(edt) + 1);
       edtCloseBrack.Left := edt.Left + GetTextWidth(edt, GetBrackPosForOpenBracket(edt)) + 2;
       IniBrackShow(edtCloseBrack, edtOpenBrack, edt, self.Top);
      end;
    end else
    begin
     edtOpenBrack.Hide;
     edtCloseBrack.Hide;
    end;
end;

procedure TfrmMatheMagixPAT.EQ2ANSSel(Clike:TEdit);
begin
 if Clike.SelLength > 0
  then
  lblUniAutoAnswer.Caption := cal.GetAnswer(LabasicCustomfunctionize(Variblize(Clike.SelText, varnme, varval), frmCustomFunctionsCode.vleVariables, memStore, frmCustomFunctionsCode.lsbNavigon, frmCustomFunctionsCode.Code));
  // lblUniAutoAnswer.Caption := FormatAnswer(cal.GetAnswer(Variblize(clike.SelText, VarNme, VarVal)),Format);
end;

procedure TfrmMatheMagixPAT.EQ2ANSVAR(s:string);
Begin
 frmVariables.Vary :=  cal.GetAnswer(LabasicCustomfunctionize(Variblize(s, varnme, varval), frmCustomFunctionsCode.vleVariables, memStore, frmCustomFunctionsCode.lsbNavigon, frmCustomFunctionsCode.Code));
end;

procedure TfrmMatheMagixPAT.EQ2ANSVARQ(s:string);
Begin
 frmVariables.lblVarSumed.Caption :=  cal.GetAnswer(LabasicCustomfunctionize(Variblize(s, varnme, varval), frmCustomFunctionsCode.vleVariables, memStore, frmCustomFunctionsCode.lsbNavigon, frmCustomFunctionsCode.Code));
end;

procedure TfrmMatheMagixPAT.FormCreate(Sender: TObject);
var
 func : TFunc;
begin
  cal := TCalc.Create;
  func := TFunc.Create;

  clbQuickSums.State[0] := cbChecked;
  clbQuickSums.State[1] := cbChecked;

  Kreate := true;
  openSet := True;

  AutoComp := 0;

  frequency := 0;

  dtk1.Date := Date;
  dtk2.Date := Date;
  dtkDaysUntilFrom.date := Date;
  sTime := TimeToStr(Time);

  new := false;


  rnsi := 0;
  rnsk := 1;

  refresh;
  edtResult.Text := '';

  SumOp := -1;

  edtDecimalSystem.Text := 'Decimal Number (eg '+FormatDateTime('yyyy', Now)+' or '+FormatDateTime('d', Now)+'+'+FormatDateTime('mm', Now)+'*Sin('+FormatDateTime('hh', Now)+'/'+FormatDateTime('n', Now)+'))';
  edtRomanNumerals.Text := 'Roman Numeral (eg '+func.DecToRom(StrToInt(FormatDateTime('yyyy', Now)))+' or '+func.DecToRom(StrToInt(FormatDateTime('d', Now)))+'+'+func.DecToRom(StrToInt(FormatDateTime('mm', Now)))+'*Sin('+func.DecToRom(StrToInt(FormatDateTime('hh', Now)))+'/'+func.DecToRom(StrToInt(FormatDateTime('n', Now)))+'))';

  lblUniAutoAnswer.Caption := '';

  AngleUnit := 'R';
  CalcDecPoint := sedCalcDecimalPoint.Value;

  lastStat :=-1;

  if FileExists('EQHistory.txt') then
   memCalculatorEqSolve.Lines.LoadFromFile('EQHistory.txt');

  if FileExists('History.txt') then
   begin
    lsbCalcHistory.Items.LoadFromFile('History.txt');
    if lsbCalcHistory.Items.count < 1 then
     begin
      lsbCalcHistory.Items.add('SINGLE CLICK an item to insert the answer INTO the CURRENT EQUATION');
      lsbCalcHistory.Items.add('DOUBLE CLICK an item to insert the EQUATION');
     end;
   end;

 WorkSheetSums := TStringGrid.Create(Self);
 WorkSheetSums.Parent := self;
 WorkSheetSums.Visible := false;
 frmWorksheet.CellRef(stgWorksheet);
 voice := CreateOLEObject('SAPI.SpVoice');
 func.Free;
end;

procedure TfrmMatheMagixPAT.AutoCompleteIni;
var
 i, p : integer;
begin
 NormalAuto.Items.Clear;

 for i := 2 to cmbCalculatorFunctions.Items.Count  do
  NormalAuto.Items.Add(cmbCalculatorFunctions.Items[i]);
 p := -1;
 for i := cmbCalculatorFunctions.Items.Count  to cmbCalculatorFunctions.Items.Count + frmVariables.vleVariables.RowCount -1 do
  begin
   inc(p);
   NormalAuto.items.Add(frmVariables.vleVariables.Cells[0, p]);
  end;
end;

Function ChangeWidthcmb(const cmb : TComboBox) : integer;
var
 i  : integer;
 nw : integer;
begin
 Result := cmb.Width;
 for i := 0 to cmb.Items.Count -1 do
  begin
   nw := length(cmb.Items[i]) * 7 + 12;
   if nw > Result then Result := nw;
  end;
end;

procedure TfrmMatheMagixPAT.FormActivate(Sender: TObject);
 var
   i : integer;
 begin
  SetLength(funtions, cmbCalculatorFunctions.Items.Count+2);
  for i := 0 to cmbCalculatorFunctions.Items.count do
   funtions[i+1] := cmbCalculatorFunctions.Items[i];

  if kreate then
   begin
     frmVariables.LoadVariables;
     frmCustomFunctionsCode.LoadFunction;

     NormalAuto := TComboBox.Create(self);
     NormalAuto.Parent := self;
     AutoCompleteIni;
     NormalAuto.Hide;

     SetLength(VarNme, frmVariables.vleVariables.RowCount);
     SetLength(VarVal, frmVariables.vleVariables.RowCount);
     frmVariables.lblVarSumed.Caption := '';


      frmThemes.cb := RGB(95, 95, 95);

      imgCalculatorBackGround.Picture.LoadFromFile('BackCalc.bmp');
      imgTitle.Picture.LoadFromFile('HelpBar.bmp');
      imgBar.Picture.LoadFromFile('TopBar.bmp');
      imgBottomBar.Picture.LoadFromFile('BottomBar.bmp');

      Kreate := false;
      edtResult.setfocus;

      img2DSquareClick(Sender);
      img3DCubeClick(Sender);

      SendMessage(cmbConstants.Handle   , CB_SETDROPPEDWIDTH, ChangeWidthcmb(cmbConstants), 0);
      SendMessage(cmbFunctionMode.Handle, CB_SETDROPPEDWIDTH, ChangeWidthcmb(cmbFunctionMode), 0);

      format := 'S';

      SetLength(lbs, 5);
      lbs[1] := lblFormulaterGeo1;
      lbs[2] := lblFormulaterGeo2;
      lbs[3] := lblFormulaterGeo3;
      lbs[4] := lblFormulaterGeo4;
      TabSystemSet(pnlGeoTab, lblFormulaterGeo1, lbs);


      SetLength(lbs, 10);
      lbs[1] := lblMis1;
      lbs[2] := lblMis2;
      lbs[3] := lblMis3;
      lbs[4] := lblMis4;
      lbs[5] := lblMis5;
      lbs[6] := lblMis6;
      lbs[7] := lblMis7;
      lbs[8] := lblMis8;
      lbs[9] := lblMis9;
      TabSystemSet(pnlMisTab, lblMis1, lbs);

      bmbNewDrawerClick(Sender);
      DrawerMode := 'B';
      flenme := '';

      frmVariables.AssignValues;


   end;

     SendMessage(cmbVar.Handle, CB_SETDROPPEDWIDTH, ChangeWidthcmb(cmbVar), 0);

end;

procedure TfrmMatheMagixPAT.btnAnalyticalGeometryClick(Sender: TObject);
begin
 pgcGeometery.Visible   := true;
 scbUniTool.Position    := pgcGeometery.TabIndex;
end;

procedure TfrmMatheMagixPAT.btnPythagorasCalculateClick(Sender: TObject);
var
 rs3, rs2, rs1 : real;
 i             : integer;
begin
{&&&&&&&&&&&&&&&&&&/c/o/n/v/e/r/s/i/o/n/ /t/o /n/u/m/b/e/r/&&&&&&&&&&&&&&&&&&&&}
  edtSide3.Text := cal.GetAnswer(Variblize(edtSide3.Text, VarNme, VarVal), frmVariables.vleVariables);
  edtSide2.Text := cal.GetAnswer(Variblize(edtSide2.Text, VarNme, VarVal), frmVariables.vleVariables);
  edtSide1.Text := cal.GetAnswer(Variblize(edtSide1.Text, VarNme, VarVal), frmVariables.vleVariables);
  Val(edtSide3.Text, rs3, i);
  Val(edtSide2.Text, rs2, i);
  Val(edtSide1.Text, rs1, i);
  rs3:=sqr(rs3);
  rs2:=sqr(rs2);
  rs1:=sqr(rs1);
{&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&}

{%%%%%%%%%%%%%%%%%%%%%%%%%%%%%/f/o/r/m/u/l/a/s/%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
{/a/l/l/ /f/i/e/l/d/s/}
    if ( rs1 > 0 ) and ( rs2 > 0 ) and ( rs3 > 0 ) then beep;

 {/w/o/r/k/o/u/t/ /l/o/n/g/e/s/t /s/i/d/e/}
    if (rs1 > 0) and (rs2 > 0) and (rs3 = 0) then
     begin
      if cbxRootPythagoras.Checked = false then
       begin
        rs3 := sqrt( rs1 + rs2 );
        if sedUniDecimalPoint.value > -1
         then
          edtSide3.Text := FloatToStrF(rs3, fffixed, 21, sedUniDecimalPoint.value)
         else
          edtSide3.Text := FloatToStr(rs3);
       end;
      if cbxRootPythagoras.Checked = true then
       begin
        rs3 := rs1 + rs2;
        if sedUniDecimalPoint.value > -1
         then
          edtSide3.Text := FloatToStrF(rs3, fffixed, 21, sedUniDecimalPoint.value)
         else
          edtSide3.Text := 'sqrt('+FloatToStr(rs2)+')';
       end;
     end;
 {/w/o/r/k/o/u/t/ /h/e/i/g/h/t/}
    if (rs1 > 0) and (rs3 > 0) and (rs2 = 0) and (rs3 > rs1) then
     begin
      if cbxRootPythagoras.Checked = false then
       begin
        rs2 := sqrt( rs3 - rs1 );
        if sedUniDecimalPoint.value > -1
         then
          edtSide2.Text := FloatToStrF(rs2, fffixed, 21, sedUniDecimalPoint.value)
         else
          edtSide2.Text := FloatTOStr(rs2);
       end;
      if cbxRootPythagoras.Checked = true then
       begin
        rs2 := rs3 - rs1;
        if sedUniDecimalPoint.value > -1
         then
          edtSide2.Text := FloatToStrF(rs2, fffixed, 21, sedUniDecimalPoint.value)
         else
          edtSide2.Text := 'sqrt('+FloatToStr(rs2)+')';
       end;
     end;
 {/w/o/r/k/o/u/t/ /B/a/s/e/}
    if (rs1 = 0) and (rs3 > 0) and ( rs2 > 0 ) and ( rs3 > rs2 ) then
     begin
      if cbxRootPythagoras.Checked = false then
       begin
        rs1 := sqrt( rs3 - rs2 );
        if sedUniDecimalPoint.value > -1
         then
          edtSide1.Text := FloatToStrF(rs1, fffixed, 21, sedUniDecimalPoint.value)
         else
          edtSide1.Text := FloatToStr(rs1);
       end;
      if cbxRootPythagoras.Checked = true then
       begin
        rs1 := rs3 - rs2;
        if sedUniDecimalPoint.value > -1
         then
          edtSide1.Text := FloatToStrf(rs1,fffixed,13,sedUniDecimalPoint.value)
         else
          edtSide1.Text := 'sqrt('+FloatToStr(rs1)+')';
       end;
     end;
{%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
end;

procedure TfrmMatheMagixPAT.edtSide2Click(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtSide3Click(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtSide1Click(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtSide3Change(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtSide2Change(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtSide1Change(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtSimpleInitialAmountClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtSimpleIntrestRateClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.sedSimplePaymentPeriodClick(Sender: TObject);
begin
 sedSimplePaymentPeriod.Clear;
end;

procedure TfrmMatheMagixPAT.edtSimpleInitialAmountChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtSimpleIntrestRateChange(Sender: TObject);
begin
  EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.btnSimpleInterestCalculateClick(Sender: TObject);
var
  rInitial, rRate, rTotal : real;
  iPeriod , i             : integer;
begin
  edtSimpleInitialAmount.Text := cal.GetAnswer(Variblize(edtSimpleInitialAmount.Text, VarNme, VarVal), frmVariables.vleVariables);
  edtSimpleIntrestRate.Text := cal.GetAnswer(Variblize(edtSimpleIntrestRate.Text, VarNme, VarVal), frmVariables.vleVariables);
  val(edtSimpleInitialAmount.Text ,rInitial, i);
  val(edtSimpleIntrestRate.Text   ,rRate   , i);

  iPeriod := sedSimplePaymentPeriod.value;

  rTotal := rInitial * (1 + rRate/100 * iPeriod);

  edtSimpleTotalPayment.Text   := FloatToStrF( rTotal   , fffixed, 21, 2);
  edtSimpleMonthlyPayment.Text := FloatToStrF( rTotal/(12*sedSimplePaymentPeriod.Value), fffixed, 21 ,2);
  lblUniAutoAnswer.Caption := '';
end;


procedure TfrmMatheMagixPAT.btnCompoundIntresCalculateClick(Sender: TObject);
var
  rPresent, rYear, rRate,rImplement, rFuture: real;
  i                                         : integer;
begin
{&&&&&&&&&&&&&&&&&&/c/o/n/v/e/r/s/i/o/n/ /t/o /n/u/m/b/e/r/&&&&&&&&&&&&&&&&&&&&}
    edtCompoundPresentValue.Text := cal.GetAnswer(Variblize(edtCompoundPresentValue.Text, VarNme, VarVal),frmVariables.vleVariables);
    edtCompoundIntrestRate.Text  := cal.GetAnswer(Variblize(edtCompoundIntrestRate.Text, VarNme, VarVal) ,frmVariables.vleVariables);
    edtCompoundFutureValue.Text  := cal.GetAnswer(Variblize(edtCompoundFutureValue.Text, VarNme, VarVal) ,frmVariables.vleVariables);
    edtCompoundInterestYearsToGrow.Text         := cal.GetAnswer(Variblize(edtCompoundInterestYearsToGrow.Text, VarNme, VarVal) ,frmVariables.vleVariables);
    edtCompoundInterestImplmentationYearly.Text := cal.GetAnswer(Variblize(edtCompoundInterestImplmentationYearly.Text, VarNme, VarVal) ,frmVariables.vleVariables);
    val(edtCompoundPresentValue.Text, rPresent, i);
    val(edtCompoundIntrestRate.Text , rRate   , i);
    val(edtCompoundFutureValue.Text , rFuture , i);
    val(edtCompoundInterestYearsToGrow.Text        , rYear     , i);
    val(edtCompoundInterestImplmentationYearly.Text, rImplement, i);
    rRate:=rRate/100;
{&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&}
{%%%%%%%%%%%%%%%%%%%%%%%%%%%%/c/o/n/v/e/r/s/i/o/n/s/%%%%%%%%%%%%%%%%%%%%%%%%%%%}
{/f/u/t/u/r/e/}
    if (rPresent <> 0) and (rYear <> 0) and (rRate <> 0) and (rImplement >= 1) and (rFuture = 0)
     then
      edtCompoundFutureValue.Text := floatToStrf
     (
      rPresent*power((1+(rRate/rImplement)),(rYear*rImplement)),fffixed,13,2
     );
{/r/a/t/e/}
    if (rPresent > 0) and (rYear > 0) and (rRate = 0) and (rImplement > 0) and (rFuture > 0)
     then
      edtCompoundIntrestRate.Text := floatToStrf
      (
       (power( (rFuture/rPresent), (1/rYear) )-1)*100,fffixed,13,2
      );
{/y/e/a/r/s/}
    if (rPresent > 0) and (rYear = 0) and (rRate > 0) and (rImplement > 0) and (rFuture > 0)
     then
      edtCompoundInterestYearsToGrow.Text := floatToStrf
     (
      Log10((rFuture/rPresent))/Log10((1+rRate)),fffixed,13,2
     );
{/p/r/e/s/e/n/t/}
    if (rPresent = 0) and (rYear > 0) and (rRate > 0) and (rImplement > 0) and (rFuture > 0)
     then
      edtCompoundPresentValue.Text := floatToStrf
      (
       rFuture/power( (1+rRate), rYear ),fffixed,13,2
      );
{%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
    lblUniAutoAnswer.Caption := '';
end;

procedure TfrmMatheMagixPAT.edtCompoundIntrestRateClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundPresentValueClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundInterestYearsToGrowClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundInterestImplmentationYearlyClick(
  Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundFutureValueClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundIntrestRateChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundPresentValueChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundFutureValueChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundInterestYearsToGrowChange(
  Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundInterestImplmentationYearlyChange(
  Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.cmbCompoundInterestHelpChange(Sender: TObject);
begin
 case cmbCompoundInterestHelp.ItemIndex of
  0 :MessageDlg('Enter Data into "Years to Grow","Interest Rate" and "Future Value"',mtInformation,[mbOK],1);

  1 :MessageDlg('Enter Data into "Present Value","Interest Rate" and "Future Value"',mtInformation,[mbOK],1);

  2 :MessageDlg('Enter Data into "Present Value","Years To Grow" and "Future Value"',mtInformation,[mbOK],1);

  3 :MessageDlg('Enter Data into "Present Value","Years To Grow" and "Interest Rate" and optionaly "Yearly Implementation of Interest',mtInformation,[mbOK],1);
 end;
end;


procedure TfrmMatheMagixPAT.edtDecimalSystemClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtDecimalSystemChange(Sender: TObject);
var
 i : integer;
 v : double;
 func : TFunc;
begin
if edtDecimalSystem.Focused then
begin
 func := TFunc.Create;
 val(cal.GetAnswer(Variblize(edtDecimalSystem.Text, VarNme, VarVal)), v, i);
 EQ2ANSSel(TEdit(Sender));
   if (not edtRomanNumerals.Focused)and(edtDecimalSystem.Focused)
    then
     edtRomanNumerals.Text := func.DecToRom(trunc(v));
 func.Free;
 lblUniAutoAnswer.caption := floatToStr(v);
end;
end;

procedure TfrmMatheMagixPAT.edtRomanNumeralsClick(Sender: TObject);
begin
 if edtRomanNumerals.SelLength = 0 then edtRomanNumerals.SelectAll;
end;

procedure TfrmMatheMagixPAT.edtRomanNumeralsChange(Sender: TObject);
var
 i, y  : integer;
 Roman : string;
 place : boolean;
 func : TFunc;
begin
 if edtRomanNumerals.Focused then
  begin
 Roman := edtRomanNumerals.Text; i := 0; place := true;
 y:=1;
 Repeat
  if Roman <> '' then if not(Roman[y] in ['i','I','v','V','x','X','l','L','c','C','d','D','m','M',' ']) then place := false;
  inc(y);
 Until (Roman[y] in ['+','-','/','*','(',')','^',',','e','E'])or(y >= length(Roman)-1);
 if place then Roman := '#'+Roman;

 place := true;

 if length(Roman) > 1 then
 Repeat
  inc(i);
  if Roman[i] in ['+','-','/','*','(','^',',','e','E'] then
   begin
    y := i+1;
    Repeat
     if not(Roman[y] in ['i','I','v','V','x','X','l','L','c','C','d','D','m','M',' ']) then place := false;
     inc(y);
    Until (Roman[y] in ['+','-','/','*','(',')','^',',','e','E'])or(y >= length(Roman)-1);
    if place then insert('#',Roman,i+1);

    place := true;
   end;
 Until i = Length(Roman)-1;
 Roman := cal.GetAnswer(Roman);
 if (edtRomanNumerals.Focused)then
  if(StrToFloat(Roman) <> Trunc(StrToFloat(Roman)))
   then
    lblUniAutoAnswer.Caption := Roman;
  if StrToFloat(Roman) = Trunc(StrToFloat(Roman))
   then
    lblUniAutoAnswer.caption := '';
 if edtRomanNumerals.Focused then
  begin
   func := Tfunc.Create;
   edtDecimalSystem.Text := IntToStr(Trunc(StrToFloat(Roman)));
   lblUniAutoAnswer.caption := func.DecToRom(StrToInt(edtDecimalSystem.Text));
   func.free;
  end;
  end;
end;

procedure TfrmMatheMagixPAT.adddigit(c:char);
begin
 edtResult.SetFocus;
 edtResult.Text := edtResult.Text + c;
 edtResult.SelStart := length(edtResult.Text);
 edtCalculatorAnswer.Text := cal.GetAnswer(Variblize(edtResult.Text, VarNme, VarVal), frmVariables.vleVariables);
end;

procedure TfrmMatheMagixPAT.btn0Click(Sender: TObject);
begin
adddigit('0');
end;

procedure TfrmMatheMagixPAT.btn1Click(Sender: TObject);
begin
adddigit('1');
end;

procedure TfrmMatheMagixPAT.btn2Click(Sender: TObject);
begin
adddigit('2');
end;

procedure TfrmMatheMagixPAT.btn3Click(Sender: TObject);
begin
adddigit('3');
end;

procedure TfrmMatheMagixPAT.btn4Click(Sender: TObject);
begin
adddigit('4');
end;

procedure TfrmMatheMagixPAT.btn5Click(Sender: TObject);
begin
adddigit('5');
end;

procedure TfrmMatheMagixPAT.btn6Click(Sender: TObject);
begin
adddigit('6');
end;

procedure TfrmMatheMagixPAT.btn7Click(Sender: TObject);
begin
adddigit('7');
end;

procedure TfrmMatheMagixPAT.btn8Click(Sender: TObject);
begin
adddigit('8');
end;

procedure TfrmMatheMagixPAT.btn9Click(Sender: TObject);
begin
adddigit('9');
end;

procedure TfrmMatheMagixPAT.btnDotClick(Sender: TObject);
begin
adddigit('.');
end;

procedure TfrmMatheMagixPAT.OpControl(c:char);
begin
 edtResult.Text := edtResult.Text + c;
 if length(edtResult.Text) > 44 then edtResult.SelStart := length(edtResult.Text);
  edtCalculatorAnswer.Text := cal.GetAnswer(Variblize(edtResult.Text, VarNme, VarVal));
 { if new then new := false;
 edtResult.SetFocus;
 edtResult.SelLength:=0;
 edtResult.SelStart := length(edtResult.Text);    }
end;

procedure TfrmMatheMagixPAT.btnMultiClick(Sender: TObject);
begin
 OpControl('*');
end;

procedure TfrmMatheMagixPAT.btnDivClick(Sender: TObject);
begin
 OpControl('/');
end;

procedure TfrmMatheMagixPAT.btnPlusClick(Sender: TObject);
begin
 OpControl('+');
end;

procedure TfrmMatheMagixPAT.btnSubtractClick(Sender: TObject);
begin
 OpControl('-');
end;

procedure TfrmMatheMagixPAT.btnEEClick(Sender: TObject);
begin
 OpControl('e');
end;

procedure TfrmMatheMagixPAT.btnOpenBracketClick(Sender: TObject);
begin
 adddigit('(');
end;

procedure TfrmMatheMagixPAT.btnCloseBracketClick(Sender: TObject);
begin
 if not new then adddigit(')')
end;

procedure TfrmMatheMagixPAT.btnEqlClick(Sender: TObject);
var
 s : string;
 i : integer;
 b : boolean;
 cls  : TCloseAction;
begin
 if rgpCalculatorMode.ItemIndex = 0 then
  begin
   s:=edtResult.Text;
   b := false;
   for i := 1 to length(s) do
    begin
     if s[i] = ':' then if s[i+1] = '=' then
      b := true;
    end;

   if s[length(s)] = '='
    then
     delete(s,length(s),1);
   if not b then
    lsbCalcHistory.Items.Add(s);
   preans := ans;

   val(cal.GetAnswer(Variblize(edtCalculatorAnswer.Text, varnme, varval), frmVariables.vleVariables), ans, i);
   edtResult.Text := cal.GetAnswer(LabasicCustomfunctionize(Variblize(edtResult.Text, varnme, varval), frmCustomFunctionsCode.vleVariables, frmCustomFunctionsCode.memCode, frmCustomFunctionsCode.lsbNavigon, frmCustomFunctionsCode.Code), frmVariables.vleVariables);
   frmVariables.AssignValues;
   
   if not b then
    lsbCalcHistory.ItemIndex := lsbCalcHistory.Items.Count-1;
   frmVariables.vleVariables.Cells[1, 0] := FloatToStr(ans);
   frmVariables.vleVariables.Cells[1, frmVariables.vleVariables.RowCount - 1] := FloatToStr(preans);
  // frmVariables.deleting := true;
  // frmVariables.LoadVariables;


   frmVariables.FormClose(Sender, cls);
   edtResult.SetFocus;
   edtResult.SelStart := length(edtResult.text);

   edtOpenBrack.Hide;
   edtCloseBrack.Hide;

    new := true;
  end else
   EQSOLVE(edtResult.Text);
end;

procedure TfrmMatheMagixPAT.lsbCalcHistoryDblClick(Sender: TObject);
begin
 if (lsbCalcHistory.Items[lsbCalcHistory.ItemIndex] <> 'SINGLE CLICK an item to insert the answer INTO the CURRENT EQUATION') or (lsbCalcHistory.Items[lsbCalcHistory.ItemIndex] <> 'DOUBLE CLICK an item to insert the EQUATION') then
  begin
   edtCalculatorAnswer.Text := cal.GetAnswer(Variblize(lsbCalcHistory.Items.Strings[lsbCalcHistory.itemindex], VarNme, VarVal));
   edtResult.Text := lsbCalcHistory.Items[lsbCalcHistory.itemindex];
   edtResult.SetFocus;
   edtResult.SelLength := 0;
   edtResult.SelStart := length(edtResult.Text);
   new := false;
  end; 
end;

procedure TfrmMatheMagixPAT.lsbCalcHistoryClick(Sender: TObject);
var
 s, a : string;
begin
 if (lsbCalcHistory.Items[lsbCalcHistory.ItemIndex] <> 'SINGLE CLICK an item to insert the answer INTO the CURRENT EQUATION') or (lsbCalcHistory.Items[lsbCalcHistory.ItemIndex] <> 'DOUBLE CLICK an item to insert the EQUATION') then
  begin
   s := edtResult.Text;
   a := cal.GetAnswer(Variblize(lsbCalcHistory.Items.Strings[lsbCalcHistory.itemindex], VarNme, VarVal));
   if s = '' then
   begin
    edtresult.Text := a;
    edtresult.SetFocus;
    edtresult.SelStart := length(a);
   end else
   if s[length(s)] in ['+','/','*','-','^','e','E','%','$','('] then
    begin
     edtResult.Text := s + a;
     edtResult.SetFocus;
     edtResult.SelStart := length(edtResult.Text) - length(a);
     edtResult.SelLength := length(a);
    end else
    begin
     edtResult.Text := s + '(' + a + ')';
     edtResult.SetFocus;
     edtResult.SelStart := length(edtResult.Text) - length(a) - 2;
     edtResult.SelLength := length(a)+2;
    end;
    new := false;
   edtCalculatorAnswer.Text := cal.GetAnswer(Variblize(lsbCalcHistory.Items.Strings[lsbCalcHistory.itemindex], VarNme, VarVal));
  end;
end;

procedure TfrmMatheMagixPAT.btnClearClick(Sender: TObject);
begin
 edtResult.Clear;
end;

procedure TfrmMatheMagixPAT.btnBackspaceClick(Sender: TObject);
var
 s:string;
begin
 s:=edtResult.Text;
 delete(s,length(s),1);
 edtresult.Text := s;
end;

procedure TfrmMatheMagixPAT.btnPositiveOrNegativeClick(Sender: TObject);
var
 y : integer;
 s : string;
begin
 s := edtResult.Text;
 y := length(s);
 if s[length(s)] in ['+','-','/','*','^','e','(']
  then
   s := s + '-'
  else
  Repeat
   dec(y);
   if s[y-1] in ['+','-','/','*','^','e','('] then
    insert('-',s,y)
  Until s[y] in ['+','-','/','*','^','e','('];

 edtResult.Text := s;
end;

procedure TfrmMatheMagixPAT.btnPowerClick(Sender: TObject);
begin
edtResult.Text := edtResult.Text + '^';
end;

procedure TfrmMatheMagixPAT.btnntRootClick(Sender: TObject);
begin
edtResult.Text := edtResult.Text + '^1/';
end;

procedure TfrmMatheMagixPAT.btnPiClick(Sender: TObject);
begin
 edtResult.Text := edtResult.Text + FloatToStr(pi);
end;

procedure TfrmMatheMagixPAT.scifunc( Functioned : extended; Func : string);
 var
  i, p, b, l, st : integer;
  delleat        : boolean;
  sFormula, s    : string;
 begin
  sFormula := edtResult.text;
  delleat := true;
   
    case cmbFunctionMode.ItemIndex of
     0 : if edtResult.text = ''
          then
           edtResult.text := Func + '('
          else
         if edtResult.SelLength = 0 then
          begin
            s:=edtresult.Text;
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
              edtResult.text := sFormula+')';
             end else
             begin
              delleat := true;
              s:=edtresult.text;
              p:=length(s);
              for i := length(s) downto 1 do
               if delleat then
               if not (s[i] in ['+','-','/','*','^'])
                then
                 dec(p)
                else
                 delleat:=false;
               insert(Func+'(', sFormula, p+1);
               edtResult.Text := sFormula + ')';
             end;
          end
          else begin
           insert(Func+'(',sformula,edtResult.SelStart+1);
           st:=edtResult.SelStart;
           l := edtResult.SelLength;
           edtResult.Text:=sFormula;
           insert(')',sformula,l+st+length(func)+2);
           edtResult.Text := sFormula;
          end;

     1 :  if edtResult.text = ''
           then
            beep
           else
          if edtResult.SelLength = 0 then
           begin
            s:=edtresult.Text;
            b:=0;
            p:=0;
            delleat:=true;
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
              if delleat
               then
                delete(sFormula, p, length(edtResult.Text))
               else
                delete(sFormula, p+1, length(edtResult.Text));
              edtResult.text := sFormula + FloatToStr(Functioned);
             end else
             begin
              delleat := true;
              s:=edtresult.text;
              for i := length(s) downto 1 do
               if delleat then
               if not (s[i] in ['+','-','/','*','^'])
                then
                 delete(sFormula, i, 1)
                else
                 delleat:=false;
               edtResult.Text := sFormula + FloatToStr(Functioned)
             end;
           end else
           begin
            delete(sFormula, edtResult.SelStart+1, length(edtResult.Seltext));
            Insert(FloatToStr(Functioned), sFormula, edtResult.SelStart+1);
            edtResult.Text := sFormula;
           end;

    end;
    if length(edtResult.Text) > 44 then edtResult.SelStart := length(edtResult.Text);
   cmbConstants.Text := 'Insert A Constant';
   edtCalculatorAnswer.Text := cal.GetAnswer(Variblize(edtResult.Text, VarNme, VarVal));
end;


procedure TfrmMatheMagixPAT.cmbCalculatorFunctionsChange(Sender: TObject);
begin
 if TComboBox(Sender).ItemIndex > 1 then
  begin
   scifunc(StrToFloat(cal.GetAnswer(Variblize(cmbCalculatorFunctions.Items[cmbCalculatorFunctions.itemindex]+'('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), cmbCalculatorFunctions.Items[cmbCalculatorFunctions.itemindex]);
   cmbCalculatorFunctions.Text := 'Apply A Function';
  end else
  if TComboBox(Sender).ItemIndex = 0
   then
    frmExplanation.Show
   else
    frmCustomFunctionsCode.show;
end;

procedure TfrmMatheMagixPAT.btnSQRTClick(Sender: TObject);
begin
 scifunc(StrToFloat(cal.GetAnswer(Variblize('SQRT('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'SQRT');
end;

procedure TfrmMatheMagixPAT.btnPercentClick(Sender: TObject);
begin
 adddigit('%');
end;

procedure TfrmMatheMagixPAT.btnFractionClick(Sender: TObject);
begin
scifunc(StrToFloat(cal.GetAnswer(Variblize('INV('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'INV');
end;

procedure TfrmMatheMagixPAT.btnSquaredClick(Sender: TObject);
begin
scifunc(StrToFloat(cal.GetAnswer(Variblize('SQR('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'SQR');
end;

procedure TfrmMatheMagixPAT.btnCubeClick(Sender: TObject);
begin
scifunc(StrToFloat(cal.GetAnswer(Variblize('CUBE('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'CUBE');
end;

procedure TfrmMatheMagixPAT.btnfactorialClick(Sender: TObject);
begin
scifunc(StrToFloat(cal.GetAnswer(Variblize('FACT('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'FACT');
end;


procedure TfrmMatheMagixPAT.btnexClick(Sender: TObject);
begin
scifunc(StrToFloat(cal.GetAnswer(Variblize('EXP('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'EXP') ;
end;


procedure TfrmMatheMagixPAT.btnlog2Click(Sender: TObject);
begin
scifunc(StrToFloat(cal.GetAnswer(Variblize('LN('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'LN') ;
end;

procedure TfrmMatheMagixPAT.btnlogClick(Sender: TObject);
begin
scifunc(StrToFloat(cal.GetAnswer(Variblize('LOG('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'LON') ;
end;

procedure TfrmMatheMagixPAT.btnRandClick(Sender: TObject);
begin
scifunc(StrToFloat(cal.GetAnswer(Variblize('RANDOM('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'RANDOM') ;
end;

procedure TfrmMatheMagixPAT.btn2ndFuncClick(Sender: TObject);
begin
  if btncosFunc.caption='cos' then
   begin
    btnsinFunc.caption:='asin';
    btncosFunc.caption:='acos';
    btntanFunc.caption:='atan';
    btnSinh.caption:='asinh';
    btnCosh.caption:='acosh';
    btnTanh.caption:='atanh';
   end else
   begin
    btnsinFunc.caption:='sin';
    btncosFunc.caption:='cos';
    btntanFunc.caption:='tan';
    btnSinh.caption:='sinh';
    btnCosh.caption:='cosh';
    btnTanh.caption:='tanh';
   end;
end;

procedure TfrmMatheMagixPAT.btnSimplifyClick(Sender: TObject);
var
 sFormula : string;
begin
 if edtResult.SelLength > 0 then
  begin
   sFormula := edtResult.Text;
   delete(sFormula, edtResult.SelStart+1, length(edtResult.Seltext));
   Insert(cal.GetAnswer(Variblize(edtResult.SelText, VarNme, VarVal)), sFormula, edtResult.SelStart+1);
   edtResult.Text := sFormula;
   edtResult.SetFocus;
  end;
end;

procedure TfrmMatheMagixPAT.btnsinFuncClick(Sender: TObject);
begin
 if TButton(Sender).caption='sin'
  then
   scifunc(StrToFloat(cal.GetAnswer(Variblize('SIN('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'SIN')
  else
    scifunc(StrToFloat(cal.GetAnswer(Variblize('ASIN('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'ASIN') ;
end;

procedure TfrmMatheMagixPAT.btncosFuncClick(Sender: TObject);
begin
 if TButton(Sender).caption='cos'
  then
   scifunc(StrToFloat(cal.GetAnswer(Variblize('COS('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'COS')
  else
   scifunc(StrToFloat(cal.GetAnswer(Variblize('ACOS('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'ACOS') ;
end;

procedure TfrmMatheMagixPAT.btntanFuncClick(Sender: TObject);
begin
 if TButton(Sender).caption='tan'
  then
   scifunc(StrToFloat(cal.GetAnswer(Variblize('TAN('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'TAN')
  else
   scifunc(StrToFloat(cal.GetAnswer(Variblize('ATAN('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'ATAN') ;
end;

procedure TfrmMatheMagixPAT.btnSinhClick(Sender: TObject);
begin
 if TButton(Sender).caption='sinh'
  then
   scifunc(StrToFloat(cal.GetAnswer(Variblize('ASINH('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'SINH')
  else
   scifunc(StrToFloat(cal.GetAnswer(Variblize('ASINH('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'ASINH') ;
end;

procedure TfrmMatheMagixPAT.btnCoshClick(Sender: TObject);
begin
 if TButton(Sender).caption='cosh'
  then
   scifunc(StrToFloat(cal.GetAnswer(Variblize('COSH('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'COSH')
  else
   scifunc(StrToFloat(cal.GetAnswer(Variblize('ACOSH('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'ACOSH') ;
end;

procedure TfrmMatheMagixPAT.btnTanhClick(Sender: TObject);
begin
 if TButton(Sender).caption='tanh'
  then
   scifunc(StrToFloat(cal.GetAnswer(Variblize('TANH('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'TANH')
  else
   scifunc(StrToFloat(cal.GetAnswer(Variblize('ATANH('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'ATANH') ;
end;


procedure TfrmMatheMagixPAT.TimeConversionSimple;
var
  rFrom, rDec : real;
  i           : integer;
begin
    val(cal.GetAnswer(Variblize(edtTimeFrom.Text, VarNme, VarVal)),rFrom,i);
{/////////////////////////////////conversion from secound//////////////////////}
    case cmbTimeFrom.ItemIndex of
     0 : case cmbTimeTo.ItemIndex of
          0 : edtTimeTo.text:=FloatToStr(rFrom*1);//sec
          1 : edtTimeTo.text:=FloatToStr(rFrom/60);//min
          2 : edtTimeTo.text:=FloatToStr(rFrom/3600);//hr
          3 : edtTimeTo.text:=FloatToStr(rFrom/86400);//day
          4 : edtTimeTo.text:=FloatToStr(rFrom/604800);//week
          5 : edtTimeTo.text:=FloatToStr(rFrom/32659200);//year
          6 : edtTimeTo.text:=FloatToStr(rFrom/326592000);//dec
          7 : edtTimeTo.text:=FloatToStr(rFrom/3265920000);//cen
          8 : edtTimeTo.text:=FloatToStr(rFrom/32659200000);//mil
         end;
{/////////////////////////////conversions from minute//////////////////////////}
     1 : case cmbTimeTo.ItemIndex of
          0 : edtTimeTo.text:=FloatToStr(rFrom*60);//sec
          1 : edtTimeTo.text:=FloatToStr(rFrom*1);//min
          2 : edtTimeTo.text:=FloatToStr(rFrom/60);//hr
          3 : edtTimeTo.text:=FloatToStr(rFrom/1440);//day
          4 : edtTimeTo.text:=FloatToStr(rFrom/10080);//week
          5 : edtTimeTo.text:=FloatToStr(rFrom/544320);//year
          6 : edtTimeTo.text:=FloatToStr(rFrom/5443200);//dec
          7 : edtTimeTo.text:=FloatToStr(rFrom/54432000);//cen
          8 : edtTimeTo.text:=FloatToStr(rFrom/544320000);//mil
         end;
{///////////////////////conversion from hr/////////////////////////////////////}
     2 : case cmbTimeTo.ItemIndex of
          0 : edtTimeTo.text:=FloatToStr(rFrom*3600);//sec
          1 : edtTimeTo.text:=FloatToStr(rFrom*60);//min
          2 : edtTimeTo.text:=FloatToStr(rFrom*1);//hr
          3 : edtTimeTo.text:=FloatToStr(rFrom/24);//day
          4 : edtTimeTo.text:=FloatToStr(rFrom/168);//week
          5 : edtTimeTo.text:=FloatToStr(rFrom/9072);//year
          6 : edtTimeTo.text:=FloatToStr(rFrom/90720);//dec
          7 : edtTimeTo.text:=FloatToStr(rFrom/907200);//cen
          8 : edtTimeTo.text:=FloatToStr(rFrom/9072000);//mil
         end;
{/////////////////////////conversion from days/////////////////////////////////}
     3 : case cmbTimeTo.ItemIndex of
          0 : edtTimeTo.text:=FloatToStr(rFrom*86400);//sec
          1 : edtTimeTo.text:=FloatToStr(rFrom*1440);//min
          2 : edtTimeTo.text:=FloatToStr(rFrom*24);//hr
          3 : edtTimeTo.text:=FloatToStr(rFrom*1);//day
          4 : edtTimeTo.text:=FloatToStr(rFrom/7);//week
          5 : edtTimeTo.text:=FloatToStr(rFrom/365);//year
          6 : edtTimeTo.text:=FloatToStr(rFrom/3650);//dec
          7 : edtTimeTo.text:=FloatToStr(rFrom/36500);//cen
          8 : edtTimeTo.text:=FloatToStr(rFrom/365000);//mil
         end;
{/////////////conversion from weeks////////////////////////////////////////////}
     4 : case cmbTimeTo.ItemIndex of
          0 : edtTimeTo.text:=FloatToStr(rFrom*604800);//sec
          1 : edtTimeTo.text:=FloatToStr(rFrom*10080);//min
          2 : edtTimeTo.text:=FloatToStr(rFrom*168);//hr
          3 : edtTimeTo.text:=FloatToStr(rFrom*7);//day
          4 : edtTimeTo.text:=FloatToStr(rFrom*1);//week
          5 : edtTimeTo.text:=FloatToStr(rFrom/54);//year
          6 : edtTimeTo.text:=FloatToStr(rFrom/540);//dec
          7 : edtTimeTo.text:=FloatToStr(rFrom/5400);//cen
          8 : edtTimeTo.text:=FloatToStr(rFrom/54000);//mil
         end;
{//////////////////////////////conversion from years///////////////////////////}
     5 : case cmbTimeTo.ItemIndex of
          0 : edtTimeTo.text:=FloatToStr(rFrom*32659200);//sec
          1 : edtTimeTo.text:=FloatToStr(rFrom*544320);//min
          2 : edtTimeTo.text:=FloatToStr(rFrom*9072);//hr
          3 : edtTimeTo.text:=FloatToStr(rFrom*378);//day
          4 : edtTimeTo.text:=FloatToStr(rFrom*54);//week
          5 : edtTimeTo.text:=FloatToStr(rFrom*1);//year
          6 : edtTimeTo.text:=FloatToStr(rFrom/10);//dec
          7 : edtTimeTo.text:=FloatToStr(rFrom/100);//cen
          8 : edtTimeTo.text:=FloatToStr(rFrom/1000);//mil
         end;
{/////////////////////////conversion from decade///////////////////////////////}
     6 : case cmbTimeTo.ItemIndex of
          0 : edtTimeTo.text:=FloatToStr(rFrom*326592000);//sec
          1 : edtTimeTo.text:=FloatToStr(rFrom*5443200);//min
          2 : edtTimeTo.text:=FloatToStr(rFrom*90720);//hr
          3 : edtTimeTo.text:=FloatToStr(rFrom*3780);//day
          4 : edtTimeTo.text:=FloatToStr(rFrom*540);//week
          5 : edtTimeTo.text:=FloatToStr(rFrom*10);//year
          6 : edtTimeTo.text:=FloatToStr(rFrom*1);//dec
          7 : edtTimeTo.text:=FloatToStr(rFrom/10);//cen
          8 : edtTimeTo.text:=FloatToStr(rFrom/100);//mil
         end;
{///////////////////////////conversion from century////////////////////////////}
     7 : case cmbTimeTo.ItemIndex of
          0 : edtTimeTo.text:=FloatToStr(rFrom*3265920000);//sec
          1 : edtTimeTo.text:=FloatToStr(rFrom*54432000);//min
          2 : edtTimeTo.text:=FloatToStr(rFrom*907200);//hr
          3 : edtTimeTo.text:=FloatToStr(rFrom*37800);//day
          4 : edtTimeTo.text:=FloatToStr(rFrom*5400);//week
          5 : edtTimeTo.text:=FloatToStr(rFrom*100);//year
          6 : edtTimeTo.text:=FloatToStr(rFrom*10);//dec
          7 : edtTimeTo.text:=FloatToStr(rFrom*1);//cen
          8 : edtTimeTo.text:=FloatToStr(rFrom/10);//mil
         end;
{///////////////////////conversion from Millenium//////////////////////////////}
     8 : case cmbTimeTo.ItemIndex of
          0 : edtTimeTo.text:=FloatToStr(rFrom*32659200000);//sec
          1 : edtTimeTo.text:=FloatToStr(rFrom*544320000);//min
          2 : edtTimeTo.text:=FloatToStr(rFrom*9072000);//hr
          3 : edtTimeTo.text:=FloatToStr(rFrom*378000);//day
          4 : edtTimeTo.text:=FloatToStr(rFrom*54000);//week
          5 : edtTimeTo.text:=FloatToStr(rFrom*1000);//year
          6 : edtTimeTo.text:=FloatToStr(rFrom*100);//dec
          7 : edtTimeTo.text:=FloatToStr(rFrom*10);//cen
          8 : edtTimeTo.text:=FloatToStr(rFrom*1);//mil
         end;
    end;
    if sedUniDecimalPoint.value>-1 then
     begin
      rDec:=StrToFloat(edtTimeTo.Text);
      edtTimeTo.Text:=FloatToStrF(rDec,fffixed,13,sedUniDecimalPoint.value);
     end;
end;

procedure TfrmMatheMagixPAT.btnTimeSwapClick(Sender: TObject);
var
 cmb1, cmb2 : integer;
begin
  cmb1:=cmbTimeFrom.ItemIndex;
  cmb2:=cmbTimeTo.ItemIndex;
  cmbTimeFrom.ItemIndex:=cmb2;
  cmbTimeTo.ItemIndex:=cmb1;
  TimeConversionSimple;
end;

procedure TfrmMatheMagixPAT.edtTimeFromChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
 TimeConversionSimple;
end;

procedure TfrmMatheMagixPAT.cmbTimeFromChange(Sender: TObject);
begin
 TimeConversionSimple;
end;

procedure TfrmMatheMagixPAT.scbUniToolChange(Sender: TObject);
begin
  if scbUniTool.Focused then
  if pnlFormulater.visible=true then
   begin

    if pgcGeometery.visible=true then
     begin
      pgcGeometery.TabIndex := scbUniTool.Position;
      SetLength(lbs, 8);
      lbs[1]  := lblFormulaterGeo1 ;
      lbs[2]  := lblFormulaterGeo2 ;
      lbs[3]  := lblFormulaterGeo3 ;
      lbs[4]  := lblFormulaterGeo4 ;
      lblFormulaterGeo1.Font.Color := clBlack;
      lblFormulaterGeo2.Font.Color := clBlack;
      lblFormulaterGeo3.Font.Color := clBlack;
      lblFormulaterGeo4.Font.Color := clBlack;
      lblCase := 'G';
      spd := 8;
      pnlTab := pnlGeoTab;
      case pgcGeometery.TabIndex of
       0  : lb := lblFormulaterGeo1;
       1  : lb := lblFormulaterGeo2;
       2  : lb := lblFormulaterGeo3;
       3  : lb := lblFormulaterGeo4;
      end;
      lb.Font.Color := frmThemes.cb;
      tmrTabs.Enabled := true;
     end;

   end;
  if pgcMiscellaneous.Visible=true then
   begin
      pgcMiscellaneous.TabIndex := scbUniTool.Position;
      SetLength(lbs, 10);
      lbs[1]  := lblMis1 ;
      lbs[2]  := lblMis2 ;
      lbs[3]  := lblMis3 ;
      lbs[4]  := lblMis4 ;
      lbs[5]  := lblMis5 ;
      lbs[6]  := lblMis6 ;
      lbs[7]  := lblMis7 ;
      lbs[8]  := lblMis8 ;
      lbs[9]  := lblMis9 ;
      lblMis1.Font.Color := clBlack;
      lblMis2.Font.Color := clBlack;
      lblMis3.Font.Color := clBlack;
      lblMis4.Font.Color := clBlack;
      lblMis5.Font.Color := clBlack;
      lblMis6.Font.Color := clBlack;
      lblMis7.Font.Color := clBlack;
      lblMis8.Font.Color := clBlack;
      lblMis9.Font.Color := clBlack;
      lblCase := 'Z';
      spd := 8;
      pnlTab := pnlMisTab;
      case pgcMiscellaneous.TabIndex of
       0  : lb := lblMis1;
       1  : lb := lblMis2;
       2  : lb := lblMis3;
       3  : lb := lblMis4;
       4  : lb := lblMis5;
       5  : lb := lblMis6;
       6  : lb := lblMis7;
       7  : lb := lblMis8;
       8  : lb := lblMis9;
      end;
      lb.Font.Color := frmThemes.cb;
      tmrTabs.Enabled := true;
   end;
  if pgcGames.Visible = true then
   begin
    scbUniTool.max:=0;
   end;
  if pnlBusiness.Visible then
   if pgcInterest.Visible then
    begin
     scbUniTool.Max := 1;
     pgcInterest.TabIndex := scbUniTool.Position;
    end else
    begin
     scbUniTool.Max := scbTimeLine.Max;
     scbTimeLine.Position := scbUniTool.Position;
     scbTimeLineChange(sender);
    end;
end;


procedure TfrmMatheMagixPAT.pgcGeometeryChange(Sender: TObject);
begin
 scbUniTool.Max := 6;
 scbUniTool.position:=pgcGeometery.TabIndex
end;

procedure TfrmMatheMagixPAT.edtTimeDifferenceValue1Click(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtTimeDifferenceValue2Click(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.TimeDifference;
var
 rValue1, rValue2, rDec : real;
 i                      : integer;
begin
   val(cal.GetAnswer(Variblize(edtTimeDifferenceValue1.Text, VarNme, VarVal)), rValue1,i);
   val(cal.GetAnswer(Variblize(edtTimeDifferenceValue2.Text, VarNme, VarVal)), rValue2,i);

{/////////////////////////////////conversion to secound////////////////////////}
case cmbTimeDifferenceAnswer.ItemIndex of
0 :  begin
  if cmbTimeDifferenceValue1.ItemIndex=0 then rValue1:=rValue1*1;//sec
  if cmbTimeDifferenceValue2.ItemIndex=0 then rValue2:=rValue2*1;
  if cmbTimeDifferenceValue1.ItemIndex=1 then rValue1:=rValue1*60;//min
  if cmbTimeDifferenceValue2.ItemIndex=1 then rValue2:=rValue2*60;
  if cmbTimeDifferenceValue1.ItemIndex=2 then rValue1:=rValue1*3600;//hour
  if cmbTimeDifferenceValue2.ItemIndex=2 then rValue2:=rValue2*3600;
  if cmbTimeDifferenceValue1.ItemIndex=3 then rValue1:=rValue1*86400;//day
  if cmbTimeDifferenceValue2.ItemIndex=3 then rValue2:=rValue2*86400;
  if cmbTimeDifferenceValue1.ItemIndex=4 then rValue1:=rValue1*604800;//week
  if cmbTimeDifferenceValue2.ItemIndex=4 then rValue2:=rValue2*604800;
  if cmbTimeDifferenceValue1.ItemIndex=5 then rValue1:=rValue1*32659200;//year
  if cmbTimeDifferenceValue2.ItemIndex=5 then rValue2:=rValue2*32659200;
  if cmbTimeDifferenceValue1.ItemIndex=6 then rValue1:=rValue1*326592000;//dec
  if cmbTimeDifferenceValue2.ItemIndex=6 then rValue2:=rValue2*326592000;
  if cmbTimeDifferenceValue1.ItemIndex=7 then rValue1:=rValue1*3265920000;//cen
  if cmbTimeDifferenceValue2.ItemIndex=7 then rValue2:=rValue2*3265920000;
  if cmbTimeDifferenceValue1.ItemIndex=8 then rValue1:=rValue1*32659200000;//mil
  if cmbTimeDifferenceValue2.ItemIndex=8 then rValue2:=rValue2*32659200000;
 end;
{/////////////////////////////////conversion from minute///////////////////////}
1 :begin
  if cmbTimeDifferenceValue1.ItemIndex=0 then rValue1:=rValue1/60;//sec
  if cmbTimeDifferenceValue2.ItemIndex=0 then rValue2:=rValue2/60;
  if cmbTimeDifferenceValue1.ItemIndex=1 then rValue1:=rValue1/1;//min
  if cmbTimeDifferenceValue2.ItemIndex=1 then rValue2:=rValue2/1;
  if cmbTimeDifferenceValue1.ItemIndex=2 then rValue1:=rValue1*60;//hour
  if cmbTimeDifferenceValue2.ItemIndex=2 then rValue2:=rValue2*60;
  if cmbTimeDifferenceValue1.ItemIndex=3 then rValue1:=rValue1*1440;//day
  if cmbTimeDifferenceValue2.ItemIndex=3 then rValue2:=rValue2*1440;
  if cmbTimeDifferenceValue1.ItemIndex=4 then rValue1:=rValue1*10080;//week
  if cmbTimeDifferenceValue2.ItemIndex=4 then rValue2:=rValue2*10080;
  if cmbTimeDifferenceValue1.ItemIndex=5 then rValue1:=rValue1*544320;//year
  if cmbTimeDifferenceValue2.ItemIndex=5 then rValue2:=rValue2*544320;
  if cmbTimeDifferenceValue1.ItemIndex=6 then rValue1:=rValue1*5443200;//dec
  if cmbTimeDifferenceValue2.ItemIndex=6 then rValue2:=rValue2*5443200;
  if cmbTimeDifferenceValue1.ItemIndex=7 then rValue1:=rValue1*54432000;//cen
  if cmbTimeDifferenceValue2.ItemIndex=7 then rValue2:=rValue2*54432000;
  if cmbTimeDifferenceValue1.ItemIndex=8 then rValue1:=rValue1*544320000;//mil
  if cmbTimeDifferenceValue2.ItemIndex=8 then rValue2:=rValue2*544320000;
    end;
{/////////////////////////////////conversion from hours////////////////////////}
2 :begin
  if cmbTimeDifferenceValue1.ItemIndex=0 then rValue1:=rValue1/3600;//sec
  if cmbTimeDifferenceValue2.ItemIndex=0 then rValue2:=rValue2/3600;
  if cmbTimeDifferenceValue1.ItemIndex=1 then rValue1:=rValue1/60;//min
  if cmbTimeDifferenceValue2.ItemIndex=1 then rValue2:=rValue2/60;
  if cmbTimeDifferenceValue1.ItemIndex=2 then rValue1:=rValue1/1;//hour
  if cmbTimeDifferenceValue2.ItemIndex=2 then rValue2:=rValue2/1;
  if cmbTimeDifferenceValue1.ItemIndex=3 then rValue1:=rValue1*24;//day
  if cmbTimeDifferenceValue2.ItemIndex=3 then rValue2:=rValue2*24;
  if cmbTimeDifferenceValue1.ItemIndex=4 then rValue1:=rValue1*168;//week
  if cmbTimeDifferenceValue2.ItemIndex=4 then rValue2:=rValue2*168;
  if cmbTimeDifferenceValue1.ItemIndex=5 then rValue1:=rValue1*9072;//year
  if cmbTimeDifferenceValue2.ItemIndex=5 then rValue2:=rValue2*9072;
  if cmbTimeDifferenceValue1.ItemIndex=6 then rValue1:=rValue1*90720;//dec
  if cmbTimeDifferenceValue2.ItemIndex=6 then rValue2:=rValue2*90720;
  if cmbTimeDifferenceValue1.ItemIndex=7 then rValue1:=rValue1*907200;//cen
  if cmbTimeDifferenceValue2.ItemIndex=7 then rValue2:=rValue2*907200;
  if cmbTimeDifferenceValue1.ItemIndex=8 then rValue1:=rValue1*9072000;//mil
  if cmbTimeDifferenceValue2.ItemIndex=8 then rValue2:=rValue2*9072000;
    end;
{/////////////////////////////////conversion to days///////////////////////////}
3 :begin
  if cmbTimeDifferenceValue1.ItemIndex=0 then rValue1:=rValue1/86400;//sec
  if cmbTimeDifferenceValue2.ItemIndex=0 then rValue2:=rValue2/86400;
  if cmbTimeDifferenceValue1.ItemIndex=1 then rValue1:=rValue1/1440;//min
  if cmbTimeDifferenceValue2.ItemIndex=1 then rValue2:=rValue2/1440;
  if cmbTimeDifferenceValue1.ItemIndex=2 then rValue1:=rValue1/24;//hour
  if cmbTimeDifferenceValue2.ItemIndex=2 then rValue2:=rValue2/24;
  if cmbTimeDifferenceValue1.ItemIndex=3 then rValue1:=rValue1/1;//day
  if cmbTimeDifferenceValue2.ItemIndex=3 then rValue2:=rValue2/1;
  if cmbTimeDifferenceValue1.ItemIndex=4 then rValue1:=rValue1*7;//week
  if cmbTimeDifferenceValue2.ItemIndex=4 then rValue2:=rValue2*7;
  if cmbTimeDifferenceValue1.ItemIndex=5 then rValue1:=rValue1*365;//year
  if cmbTimeDifferenceValue2.ItemIndex=5 then rValue2:=rValue2*365;
  if cmbTimeDifferenceValue1.ItemIndex=6 then rValue1:=rValue1*3780;//dec
  if cmbTimeDifferenceValue2.ItemIndex=6 then rValue2:=rValue2*3780;
  if cmbTimeDifferenceValue1.ItemIndex=7 then rValue1:=rValue1*37800;//cen
  if cmbTimeDifferenceValue2.ItemIndex=7 then rValue2:=rValue2*37800;
  if cmbTimeDifferenceValue1.ItemIndex=8 then rValue1:=rValue1*378000;//mil
  if cmbTimeDifferenceValue2.ItemIndex=8 then rValue2:=rValue2*378000;
  end;
{///////////////////////////////conversion from weeks//////////////////////////}
  4:begin
  if cmbTimeDifferenceValue1.ItemIndex=0 then rValue1:=rValue1/604800;//sec
  if cmbTimeDifferenceValue2.ItemIndex=0 then rValue2:=rValue2/604800;
  if cmbTimeDifferenceValue1.ItemIndex=1 then rValue1:=rValue1/10080;//min
  if cmbTimeDifferenceValue2.ItemIndex=1 then rValue2:=rValue2/10080;
  if cmbTimeDifferenceValue1.ItemIndex=2 then rValue1:=rValue1/168;//hour
  if cmbTimeDifferenceValue2.ItemIndex=2 then rValue2:=rValue2/168;
  if cmbTimeDifferenceValue1.ItemIndex=3 then rValue1:=rValue1/7;//day
  if cmbTimeDifferenceValue2.ItemIndex=3 then rValue2:=rValue2/7;
  if cmbTimeDifferenceValue1.ItemIndex=4 then rValue1:=rValue1/1;//week
  if cmbTimeDifferenceValue2.ItemIndex=4 then rValue2:=rValue2/1;
  if cmbTimeDifferenceValue1.ItemIndex=5 then rValue1:=rValue1*54;//year
  if cmbTimeDifferenceValue2.ItemIndex=5 then rValue2:=rValue2*54;
  if cmbTimeDifferenceValue1.ItemIndex=6 then rValue1:=rValue1*540;//dec
  if cmbTimeDifferenceValue2.ItemIndex=6 then rValue2:=rValue2*540;
  if cmbTimeDifferenceValue1.ItemIndex=7 then rValue1:=rValue1*5400;//cen
  if cmbTimeDifferenceValue2.ItemIndex=7 then rValue2:=rValue2*5400;
  if cmbTimeDifferenceValue1.ItemIndex=8 then rValue1:=rValue1*54000;//mil
  if cmbTimeDifferenceValue2.ItemIndex=8 then rValue2:=rValue2*54000;
    end;
{///////////////////////////////conversion from years//////////////////////////}
  5:begin
  if cmbTimeDifferenceValue1.ItemIndex=0 then rValue1:=rValue1/81648000;//sec
  if cmbTimeDifferenceValue2.ItemIndex=0 then rValue2:=rValue2/81648000;
  if cmbTimeDifferenceValue1.ItemIndex=1 then rValue1:=rValue1/1360800;//min
  if cmbTimeDifferenceValue2.ItemIndex=1 then rValue2:=rValue2/1360800;
  if cmbTimeDifferenceValue1.ItemIndex=2 then rValue1:=rValue1/22680;//hour
  if cmbTimeDifferenceValue2.ItemIndex=2 then rValue2:=rValue2/22680;
  if cmbTimeDifferenceValue1.ItemIndex=3 then rValue1:=rValue1/378;//day
  if cmbTimeDifferenceValue2.ItemIndex=3 then rValue2:=rValue2/378;
  if cmbTimeDifferenceValue1.ItemIndex=4 then rValue1:=rValue1/54;//week
  if cmbTimeDifferenceValue2.ItemIndex=4 then rValue2:=rValue2/54;
  if cmbTimeDifferenceValue1.ItemIndex=5 then rValue1:=rValue1/1;//year
  if cmbTimeDifferenceValue2.ItemIndex=5 then rValue2:=rValue2/1;
  if cmbTimeDifferenceValue1.ItemIndex=6 then rValue1:=rValue1*10;//dec
  if cmbTimeDifferenceValue2.ItemIndex=6 then rValue2:=rValue2*10;
  if cmbTimeDifferenceValue1.ItemIndex=7 then rValue1:=rValue1*100;//cen
  if cmbTimeDifferenceValue2.ItemIndex=7 then rValue2:=rValue2*100;
  if cmbTimeDifferenceValue1.ItemIndex=8 then rValue1:=rValue1*1000;//mil
  if cmbTimeDifferenceValue2.ItemIndex=8 then rValue2:=rValue2*1000;
    end;
{///////////////////////////////conversion from decades////////////////////////}
  6:begin
  if cmbTimeDifferenceValue1.ItemIndex=0 then rValue1:=rValue1/816480000;//sec
  if cmbTimeDifferenceValue2.ItemIndex=0 then rValue2:=rValue2/816480000;
  if cmbTimeDifferenceValue1.ItemIndex=1 then rValue1:=rValue1/13608000;//min
  if cmbTimeDifferenceValue2.ItemIndex=1 then rValue2:=rValue2/13608000;
  if cmbTimeDifferenceValue1.ItemIndex=2 then rValue1:=rValue1/226800;//hour
  if cmbTimeDifferenceValue2.ItemIndex=2 then rValue2:=rValue2/226800;
  if cmbTimeDifferenceValue1.ItemIndex=3 then rValue1:=rValue1/3780;//day
  if cmbTimeDifferenceValue2.ItemIndex=3 then rValue2:=rValue2/3780;
  if cmbTimeDifferenceValue1.ItemIndex=4 then rValue1:=rValue1/540;//week
  if cmbTimeDifferenceValue2.ItemIndex=4 then rValue2:=rValue2/540;
  if cmbTimeDifferenceValue1.ItemIndex=5 then rValue1:=rValue1/10;//year
  if cmbTimeDifferenceValue2.ItemIndex=5 then rValue2:=rValue2/10;
  if cmbTimeDifferenceValue1.ItemIndex=6 then rValue1:=rValue1/1;//dec
  if cmbTimeDifferenceValue2.ItemIndex=6 then rValue2:=rValue2/1;
  if cmbTimeDifferenceValue1.ItemIndex=7 then rValue1:=rValue1*10;//cen
  if cmbTimeDifferenceValue2.ItemIndex=7 then rValue2:=rValue2*10;
  if cmbTimeDifferenceValue1.ItemIndex=8 then rValue1:=rValue1*100;//mil
  if cmbTimeDifferenceValue2.ItemIndex=8 then rValue2:=rValue2*100;
    end;
{///////////////////////////////conversion from centuries//////////////////////}
  7:begin
  if cmbTimeDifferenceValue1.ItemIndex=0 then rValue1:=rValue1/8164800000;//sec
  if cmbTimeDifferenceValue2.ItemIndex=0 then rValue2:=rValue2/8164800000;
  if cmbTimeDifferenceValue1.ItemIndex=1 then rValue1:=rValue1/136080000;//min
  if cmbTimeDifferenceValue2.ItemIndex=1 then rValue2:=rValue2/136080000;
  if cmbTimeDifferenceValue1.ItemIndex=2 then rValue1:=rValue1/2268000;//hour
  if cmbTimeDifferenceValue2.ItemIndex=2 then rValue2:=rValue2/2268000;
  if cmbTimeDifferenceValue1.ItemIndex=3 then rValue1:=rValue1/37800;//day
  if cmbTimeDifferenceValue2.ItemIndex=3 then rValue2:=rValue2/37800;
  if cmbTimeDifferenceValue1.ItemIndex=4 then rValue1:=rValue1/5400;//week
  if cmbTimeDifferenceValue2.ItemIndex=4 then rValue2:=rValue2/5400;
  if cmbTimeDifferenceValue1.ItemIndex=5 then rValue1:=rValue1/100;//year
  if cmbTimeDifferenceValue2.ItemIndex=5 then rValue2:=rValue2/100;
  if cmbTimeDifferenceValue1.ItemIndex=6 then rValue1:=rValue1/10;//dec
  if cmbTimeDifferenceValue2.ItemIndex=6 then rValue2:=rValue2/10;
  if cmbTimeDifferenceValue1.ItemIndex=7 then rValue1:=rValue1/1;//cen
  if cmbTimeDifferenceValue2.ItemIndex=7 then rValue2:=rValue2/1;
  if cmbTimeDifferenceValue1.ItemIndex=8 then rValue1:=rValue1*10;//mil
  if cmbTimeDifferenceValue2.ItemIndex=8 then rValue2:=rValue2*10;
    end;
{///////////////////////////////conversion from centuries//////////////////////}
  8:begin
  if cmbTimeDifferenceValue1.ItemIndex=0 then rValue1:=rValue1/81648000000;//sec
  if cmbTimeDifferenceValue2.ItemIndex=0 then rValue2:=rValue2/81648000000;
  if cmbTimeDifferenceValue1.ItemIndex=1 then rValue1:=rValue1/1360800000;//min
  if cmbTimeDifferenceValue2.ItemIndex=1 then rValue2:=rValue2/1360800000;
  if cmbTimeDifferenceValue1.ItemIndex=2 then rValue1:=rValue1/22680000;//hour
  if cmbTimeDifferenceValue2.ItemIndex=2 then rValue2:=rValue2/22680000;
  if cmbTimeDifferenceValue1.ItemIndex=3 then rValue1:=rValue1/378000;//day
  if cmbTimeDifferenceValue2.ItemIndex=3 then rValue2:=rValue2/378000;
  if cmbTimeDifferenceValue1.ItemIndex=4 then rValue1:=rValue1/54000;//week
  if cmbTimeDifferenceValue2.ItemIndex=4 then rValue2:=rValue2/54000;
  if cmbTimeDifferenceValue1.ItemIndex=5 then rValue1:=rValue1/1000;//year
  if cmbTimeDifferenceValue2.ItemIndex=5 then rValue2:=rValue2/1000;
  if cmbTimeDifferenceValue1.ItemIndex=6 then rValue1:=rValue1/100;//dec
  if cmbTimeDifferenceValue2.ItemIndex=6 then rValue2:=rValue2/100;
  if cmbTimeDifferenceValue1.ItemIndex=7 then rValue1:=rValue1/10;//cen
  if cmbTimeDifferenceValue2.ItemIndex=7 then rValue2:=rValue2/10;
  if cmbTimeDifferenceValue1.ItemIndex=8 then rValue1:=rValue1/1;//mil
  if cmbTimeDifferenceValue2.ItemIndex=8 then rValue2:=rValue2/1;
    end;
 end;
edtTimeDifferenceAnswer.Text:=FloatToStr(rValue1-rValue2);
 if sedUniDecimalPoint.value>-1 then
  begin
   rDec:=StrToFloat(edtTimeDifferenceAnswer.Text);
   edtTimeDifferenceAnswer.Text:=FloatToStrF(rDec,fffixed,13,sedUniDecimalPoint.value);
  end;
end;

procedure TfrmMatheMagixPAT.cmbTimeDifferenceValue1Change(Sender: TObject);
begin
 TimeDifference;
end;

procedure TfrmMatheMagixPAT.edtTimeDifferenceValue1Change(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
 TimeDifference;
end;

procedure TfrmMatheMagixPAT.edtTimeDifferenceValue2Change(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
 TimeDifference;
end;

procedure TfrmMatheMagixPAT.btnTimeDifferenceSwapClick(Sender: TObject);
var
  cmb1, cmb2:integer;
begin
  cmb1:=cmbTimeDifferenceValue1.ItemIndex;
  cmb2:=cmbTimeDifferenceValue2.ItemIndex;
  cmbTimeDifferenceValue1.ItemIndex:=cmb2;
  cmbTimeDifferenceValue2.ItemIndex:=cmb1;
  if (edtTimeDifferenceValue1.Text<>'')and(edtTimeDifferenceValue2.Text<>'')then
  TimeDifference;
end;

procedure TfrmMatheMagixPAT.cmbTimeDifferenceValue2Change(Sender: TObject);
begin
 cmbTimeDifferenceAnswer.ItemIndex:=cmbTimeDifferenceValue2.ItemIndex;
 TimeDifference;
end;

procedure TfrmMatheMagixPAT.sedUniDecimalPointExit(Sender: TObject);
begin
 try
  if sedUniDecimalPoint.value>-1
   then
    sedUniDecimalPoint.Color:=clActiveCaption
   else
    sedUniDecimalPoint.Color:=clInactiveCaption;
 except on EconvertError do
  sedUniDecimalPoint.value:=-1;
 end
end;

procedure TfrmMatheMagixPAT.DateDifference;
var
 d1,d2,dt,dc:TDate;
 ds:string;
 rDec:real;
begin
 d1:=dtk1.Date;
   d2:=dtk2.Date;
   if d1-d2 < 0
    then
     dc:=(d1-d2)*-1
    else
     dc:=d1-d2;
   ds:=floatToStrf(dc,fffixed,13,0);
   dt:=StrToFloat(ds);
   case cmbdtk.ItemIndex of
    0 : edtdtkAnswer.Text:=FloatToStr(dt*24);
    1 : edtdtkAnswer.Text:=FloatToStr(dt);
    2 : edtdtkAnswer.Text:=FloatToStr(dt/7);
   end;
   if sedUniDecimalPoint.value>-1 then
    begin
     rDec:=StrToFloat(edtdtkAnswer.Text);
     edtdtkAnswer.Text:=FloatToStrF(rDec,fffixed,13,sedUniDecimalPoint.value);
    end;
end;

procedure TfrmMatheMagixPAT.dtk2Change(Sender: TObject);
begin
 DateDifference;
end;

procedure TfrmMatheMagixPAT.dtk1Change(Sender: TObject);
begin
 DateDifference;
end;

procedure TfrmMatheMagixPAT.TimeConversionBroken;
var
 y, w, d, h, m, s, rDec:real;
 i                     :integer;
begin

   val(cal.GetAnswer(Variblize(edtTimeConverterBrokenDownYears.Text, VarNme, VarVal)), y, i);
   val(cal.GetAnswer(Variblize(edtTimeConverterBrokenDownWeeks.Text, VarNme, VarVal)), w, i);
   val(cal.GetAnswer(Variblize(edtTimeConverterBrokenDownDays.Text, VarNme, VarVal)), d, i);
   val(cal.GetAnswer(Variblize(edtTimeConverterBrokenDownHours.Text, VarNme, VarVal)), h, i);
   val(cal.GetAnswer(Variblize(edtTimeConverterBrokenDownMinutes.Text, VarNme, VarVal)), m, i);
   val(cal.GetAnswer(Variblize(edtTimeConverterBrokenDownSecounds.Text, VarNme, VarVal)), s, i);

   case cmbTimeConverterBrokenDown.ItemIndex of
{////////////////////////////////conversion to years///////////////////////////}
    0:begin
       y:=y*1;
       w:=w/52.17746;
       d:=d/365.2422;
       h:=h/8765.8128;
       m:=m/525948.767;
       s:=s/31556926;
      end;
{////////////////////////////////conversion to weeks///////////////////////////}
    1:begin
       y:=y*52.17746;
       w:=w/1;
       d:=d/7;
       h:=h/168;
       m:=m/10080;
       s:=s/604800;
      end;
{////////////////////////////////conversion to days////////////////////////////}
    2:begin
       y:=y*365.2422;
       w:=w*7;
       d:=d/1;
       h:=h/24;
       m:=m/1440;
       s:=s/86400;
      end;
{////////////////////////////////conversion to hours///////////////////////////}
    3:begin
       y:=y*8765.8128;
       w:=w*168;
       d:=d*24;
       h:=h/1;
       m:=m/60;
       s:=s/3600;
      end;
{////////////////////////////////conversion to minute//////////////////////////}
    4:begin
       y:=y*525948.767;
       w:=w*10080;
       d:=d*1440;
       h:=h*60;
       m:=m/1;
       s:=s/60;
      end;
{/////////////////////////////conversion to secounds///////////////////////////}
    5:begin
       y:=y*31556926;
       w:=w*604800;
       d:=d*86400;
       h:=h*3600;
       m:=m*60;
       s:=s/1;
      end;
   end;
  edtTimeConverterBrokenDownAnswer.Text:=FloatToStr(y+w+d+h+m+s);
  if sedUniDecimalPoint.value>-1 then
   begin
    rDec:=StrToFloat(edtTimeConverterBrokenDownAnswer.Text);
    edtTimeConverterBrokenDownAnswer.Text:=FloatToStrF(rDec,fffixed,13,sedUniDecimalPoint.value);
   end;
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownYearsClick(
  Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownWeeksClick(
  Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownDaysClick(
  Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownHoursClick(
  Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownMinutesClick(
  Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownSecoundsClick(
  Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownYearsChange(
  Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
 TimeConversionBroken;
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownWeeksChange(
  Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
 TimeConversionBroken;
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownDaysChange(
  Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
 TimeConversionBroken;
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownHoursChange(
  Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
 TimeConversionBroken;
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownMinutesChange(
  Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
 TimeConversionBroken;
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownSecoundsChange(
  Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
 TimeConversionBroken;
end;

procedure TfrmMatheMagixPAT.DaysUntil;
var
 dtkDate          : TDate;
 rDateFrom, rDays : real;
 i                : integer;
begin
 rDateFrom := dtkDaysUntilFrom.Date;
 val(cal.GetAnswer(Variblize(edtDaysUntilNumberofDays.Text, VarNme, VarVal)), rDays, i);
 dtkDate   := FloatToDateTime(rDateFrom+rDays);
 lblDaysUntilDate.Caption := FormatDateTime('dddd, dd mmmm yyyy',dtkDate) ;
end;

procedure TfrmMatheMagixPAT.edtDaysUntilNumberofDaysChange(
  Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
 DaysUntil;
end;

procedure TfrmMatheMagixPAT.dtkDaysUntilFromChange(Sender: TObject);
begin
 DaysUntil
end;


procedure TfrmMatheMagixPAT.rgpFactMultClick(Sender: TObject);
begin
  case rgpFactMult.ItemIndex of
   0 : begin
        lblFactMult.caption:='Calculate the factors of';
        lblNumMult.font.Color:=clGray;
        edtnumMultiples.color:=clSilver;
        edtnumMultiples.Enabled:=false;
       end;
   1 : begin
        lblFactMult.caption:='Calculate the multiples of';
        lblNumMult.font.Color:=clBlack;
        edtnumMultiples.color:=clWindow;
        edtnumMultiples.Enabled:=true;
       end;
  end;
end;

procedure TfrmMatheMagixPAT.factorMult;
var
 i, cnt, dec    : integer;
 rFrom, nummult : real;
begin
   edtFactMult.Text := cal.GetAnswer(Variblize(edtFactMult.Text, VarNme, VarVal));
   val(edtFactMult.Text, rFrom, i);
   if edtnumMultiples.Text <> ''
    then
     val(cal.GetAnswer(Variblize(edtnumMultiples.Text, VarNme, VarVal)),nummult,i)
    else
     nummult:=1;
   case rgpFactMult.ItemIndex of
    0 : begin
         cnt:=0;
         dec:=0;

         for i := 1 to length(edtFactMult.Text) do
          if edtFactMult.Text[i] = '.' then dec := i;

         if dec > 0 then
         for i := dec+1 to length(edtFactMult.Text) do
          inc(cnt);

         lsbFactMult.Items.add('Factors of '+FloatToStr(rFrom));
         rFrom := rFrom * power(10,cnt);
         for i:=1 to round(rFrom) do
          if rFrom/i-round(rFrom/i) = 0 then lsbFactMult.Items.add(FloatToStr(i/power(10, cnt)));
         lsbFactMult.Items.add('----------------------------------------------');
        end;
    1 : begin
         lsbFactMult.Items.add('Multiples of '+FloatToStr(rFrom));
         for i:=1 to round(nummult) do
          lsbFactMult.Items.add(FloatToStr(rFrom)+'x'+FloatToStr(i)+'='+FloatToStr(rFrom*i));
         lsbFactMult.Items.add('----------------------------------------------');
        end;
   end;
end;

procedure TfrmMatheMagixPAT.edtFactMultChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtnumMultiplesChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.btnFactorCalcClick(Sender: TObject);
begin
 edtFactMult.Text := cal.GetAnswer(Variblize(edtFactMult.Text, VarNme, VarVal));
 if rgpFactMult.ItemIndex = 1
  then
   edtnumMultiples.Text := cal.GetAnswer(Variblize(edtnumMultiples.Text, VarNme, VarVal))
end;

procedure TfrmMatheMagixPAT.btnClearFactMultClick(Sender: TObject);
begin
 lsbFactMult.Items.clear
end;

procedure TfrmMatheMagixPAT.Trig;
var
 o, h, a, alpha : double;
 i              : integer;
begin
   val(cal.GetAnswer(Variblize(edtOppSide.Text, VarNme, VarVal)) , o    , i);
   val(cal.GetAnswer(Variblize(edtHypoSide.Text, VarNme, VarVal)), h    , i);
   val(cal.GetAnswer(Variblize(edtAdjSide.Text, VarNme, VarVal)) , a    , i);
   val(cal.GetAnswer(Variblize(edtAlpha.Text, VarNme, VarVal))   , alpha, i);

   if (edtAlpha.Text <> '') and (edtOppSide.Text <> '') and
   (edtHypoSide.Text <> '') and (edtAdjSide.Text <> '')
    then
     MessageDlg('I Don''t Think you Need my Help to Figure This Out',mtError,mbOKCancel,1);

   if (edtAlpha.Text <> '') and (edtOppSide.Text <> '') and
   (edtHypoSide.Text <> '') and (edtAdjSide.Text = '')
    then
     edtAdjSide.Text   :=  FloatToStr ( h * cos(alpha*(pi/180)) )    ;

   if (edtAlpha.Text <> '') and (edtOppSide.Text <> '') and
    (edtHypoSide.Text = '') and (edtAdjSide.Text <> '')
    then
     edtHypoSide.Text   :=  FloatToStr ( a * cos(alpha*(pi/180)) )    ;

   if (edtAlpha.Text <> '') and (edtOppSide.Text = '') and
   (edtHypoSide.Text <> '') and (edtAdjSide.Text <> '')
    then
     edtOppSide.Text   :=  FloatToStr ( a * tan(alpha*(pi/180)) )    ;

   if (edtAlpha.Text = '') and (edtOppSide.Text <> '') and
  (edtHypoSide.Text <> '') and (edtAdjSide.Text <> '')
    then
     edtAlpha.Text := FloatToStr ( arccos( a/h ) );

   if (edtAlpha.Text <> '') and (edtOppSide.Text = '') and
   (edtHypoSide.Text = '') and (edtAdjSide.Text = '') then
   ShowMessage('At Least 1 Sides Length required ');

   if (edtAlpha.Text <> '') and (edtOppSide.Text <> '') and
   (edtHypoSide.Text = '') and (edtAdjSide.Text = '') then
    begin
     edtHypoSide.Text := FloatToStr ( o / sin(alpha*(pi/180)) )    ;
     edtAdjSide.Text  := FloatToSTr ( o / tan(alpha*(pi/180)) )    ;
    end;

   if (edtAlpha.Text <> '') and (edtOppSide.Text = '') and
   (edtHypoSide.Text <> '') and (edtAdjSide.Text = '') then
    begin
     edtOppSide.Text  := FloatToStr ( h * sin(alpha*(pi/180)) )    ;
     edtAdjSide.Text  := FloatToSTr ( h * cos(alpha*(pi/180)) )    ;
    end;

   if (edtAlpha.Text <> '') and (edtOppSide.Text = '') and
   (edtHypoSide.Text = '') and (edtAdjSide.Text <> '') then
    begin
     edtOppSide.Text   := FloatToStr ( a * tan(alpha*(pi/180)) )    ;
     edtHypoSide.Text  := FloatToSTr ( a * cos(alpha*(pi/180)) )    ;
    end;

   if (edtAlpha.Text = '') and (edtOppSide.Text <> '') and
   (edtHypoSide.Text <> '') and (edtAdjSide.Text = '') then
    begin
     edtAlpha.Text     := FloatToStr ( arcsin( o/h )             )    ;
     edtAdjSide.Text   := FloatToStr ( sqrt  ( sqr(h) - sqr(o) ) )    ;
    end;

   if (edtAlpha.Text = '') and (edtOppSide.Text <> '') and
   (edtHypoSide.Text = '') and (edtAdjSide.Text <> '') then
    begin
     edtAlpha.Text      := FloatToStr ( arctan( o/a )             )    ;
     edtHypoSide.Text   := FloatToStr ( sqrt  ( sqr(a) + sqr(o) ) )    ;
    end;

   if (edtAlpha.Text = '') and (edtOppSide.Text = '') and
   (edtHypoSide.Text <> '') and (edtAdjSide.Text <> '') then
    begin
     edtAlpha.Text     :=  FloatToStr ( arccos( a/h )             )    ;
     edtOppSide.Text   :=  FloatToStr ( sqrt  ( sqr(h) - sqr(a) ) )    ;
    end;
end;

procedure TfrmMatheMagixPAT.edtHypoSideChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtOppSideChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtAdjSideChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtAlphaChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.pnlTrigSolverCalculateClick(Sender: TObject);
begin
   Trig;
   edtHypoSide.Text := cal.GetAnswer(Variblize(edtHypoSide.Text, VarNme, VarVal), frmVariables.vleVariables);
   edtAlpha.Text    := cal.GetAnswer(Variblize(edtAlpha.Text, VarNme, VarVal)   , frmVariables.vleVariables);
   edtAdjSide.Text  := cal.GetAnswer(Variblize(edtAdjSide.Text, VarNme, VarVal) , frmVariables.vleVariables);
   edtOppSide.Text  := cal.GetAnswer(Variblize(edtAlpha.Text, VarNme, VarVal)   , frmVariables.vleVariables);
end;

procedure TfrmMatheMagixPAT.btnUniClearClick(Sender: TObject);
begin
   if pnlFormulater.visible=true then
    begin


       if pgcGeometery.Visible then
        case pgcGeometery.TabIndex of
         0:begin
            edtSide1.clear;
            edtSide2.clear;
            edtSide3.clear;
           end;
         1:begin
            edt2D.Clear;
            edtAssignArea.Clear;
           end;
         2:begin
            edt3D.Clear;
            edt3DAssign.Clear;
           end;
         3:begin
            bmbNewDrawerClick(Sender);
           end;
        end;

     end;
   if pgcMiscellaneous.Visible=true then
    case pgcMiscellaneous.TabIndex of
     0: begin
         edtDecimalSystem.clear;
         edtRomanNumerals.clear;
        end;
     1: case pgcTimeConverter.TabIndex of
         0: begin
             edtTimeFrom.clear;
             edtTimeTo.clear;
            end;
         1: begin
             edtTimeConverterBrokenDownYears.clear;
             edtTimeConverterBrokenDownWeeks.clear;
             edtTimeConverterBrokenDownDays.clear;
             edtTimeConverterBrokenDownHours.clear;
             edtTimeConverterBrokenDownMinutes.clear;
             edtTimeConverterBrokenDownSecounds.clear;
             edtTimeConverterBrokenDownAnswer.clear;
            end;
        end;
     2: begin
         edtTimeDifferenceValue1.clear;
         edtTimeDifferenceValue2.clear;
         edtTimeDifferenceAnswer.clear;
        end;
     3: case pgcTimeConverter.TabIndex of
         0: edtdtkAnswer.clear;
         1: begin
             edtDaysUntilNumberofDays.clear;
             lblDaysUntilDate.caption:='';
            end;
        end;
     4: begin
         edtFactMult.clear;
         edtnumMultiples.clear;
        end;
     5: begin
         edtHypoSide.clear;
         edtOppSide.clear;
         edtAdjSide.clear;
         edtAlpha.clear;
        end;
     6: begin
         lsbStatistics.clear;
         lsbStatisticShow.clear;
         total:=0;
         frequency:=0;
         lblMean.caption:='';
         lblMedian.caption:='';
         lblMode.caption:='';
         lblQ1.caption:='';
         lblQ3.caption:='';
         lblIQR.caption:='';
         lblSIQR.caption:='';
         lblRange.caption:='';
         lblMean2.caption:='';
         lblMedian2.caption:='';
         lblMode2.caption:='';
         lblRange2.caption:='';
         lblQ12.caption:='';
         lblQ32.caption:='';
         lblIQR2.caption:='';
         lblSIQR2.caption:='';
        end;
    end;
     if pnlBusiness.Visible then
      begin
       if pgcInterest.Visible then
        case pgcInterest.TabIndex of
         0: begin
             edtCompoundPresentValue.clear;
             edtCompoundIntrestRate.clear;
             edtCompoundFutureValue.clear;
             edtCompoundInterestYearsToGrow.clear;
             edtCompoundInterestImplmentationYearly.clear;
            end;
         1: begin
             edtSimpleInitialAmount.clear;
             edtSimpleIntrestRate.clear;
             edtSimpleMonthlyPayment.clear;
             edtSimpleTotalPayment.clear;
            end;
        end;
    end;
end;

procedure TfrmMatheMagixPAT.Stat;
var
 Number          : real;
 Median, Q1, Q3  : double;
 i, ii, lasti, k : integer;
 s, sc           : string;
 sMode           : string;
 aMode           : array of integer;
 highest         : double;
begin
   val(cal.GetAnswer(Variblize(edtStatisticsNumber.Text, VarNme, VarVal)),Number,i);
   s:=cal.GetAnswer(Variblize(edtStatisticsNumber.Text, VarNme, VarVal));;
   if s <> '' then
   if Number<100000000000 then
    begin
{//setup}
     if Number < 10 then s:= '0000000000'+s else
     if Number < 100 then s:= '000000000'+s else
     if Number < 1000 then s:= '00000000'+s else
     if Number < 10000 then s:= '0000000'+s else
     if Number < 100000 then s:= '000000'+s else
     if Number < 1000000 then s:= '00000'+s else
     if Number < 10000000 then s:= '0000'+s else
     if Number < 100000000 then s:= '000'+s else
     if Number < 1000000000 then s:= '00'+s else
     if Number < 10000000000 then s:= '0'+s ;

     lsbStatistics.Items.Add(s);
     frequency:=frequency+1;
     Total:=Total+Number;

     lsbStatisticShow.clear;

     for i:=1 to lsbStatistics.Items.Count do
      begin
       sc:=lsbStatistics.items[i-1];
       for ii:=1 to 10 do if sc[1]='0' then delete(sc,1,1);
       lsbStatisticShow.Items.Add(sc);
     end;

     lblLAstNumberStats.caption:='Last Number: '+edtStatisticsNumber.Text;
     lblFrequency.caption:='Count: '+Floattostr(frequency);
     SetLength(aMode,lsbStatistics.Items.Count+1000);
{setup//}

  {//Mean}
     if sedUniDecimalPoint.value=-1
      then
       lblMean.caption:=FloatToStr(Total/frequency)
      else
       lblMean.caption:=FloatToStrF(Total/frequency,fffixed,18,sedUniDecimalPoint.Value);
  {Mean//}

  {//Median}
     Median:=frequency/2;
     if median = round(median)
      then
       lblMedian.caption:= FloatToStr((StrToFloat(lsbStatisticShow.Items[round(median)])+StrToFloat(lsbStatisticShow.Items[round(median)-1]))/2)
      else
       lblMedian.caption:= lsbStatisticShow.Items[round(median-0.5)];
  {Median//}

  {//Mode}
     highest := StrToFLoat(lsbStatisticShow.Items[lsbStatisticShow.Items.Count-1]);
     //showmessage(FloatToStr(highest));
     for k := 1 to trunc(highest) do
      aMode[k] := 0;
     for k := 1 to trunc(highest) do
      if k < lsbStatisticShow.Items.Count then
      begin
       aMode[StrToInt(lsbStatisticShow.Items[k])] := aMode[StrToInt(lsbStatisticShow.Items[k])] + 1;
      end;
     for k := 1 to trunc(highest) do
      if k = aMode[k] then
       if aMode[k] > aMode [k+1]
        then
         sMode := IntToStr(k-1)
        else
         sMOde := IntToStr(k);
     lblMode.Caption := sMode;

  {Mode//}

  {//Range}
     lasti:=lsbStatisticShow.Items.Count;
     lblRange.caption:= FloatToStr (StrToFloat(lsbStatisticShow.Items[lasti-1])-StrToFloat(lsbStatisticShow.Items[0]));
  {Range//}

  {//Q1}
     Q1:=frequency/2/2;
     if Q1 = round(Q1)
      then
       lblQ1.caption:= FloatToStr((StrToFloat(lsbStatisticShow.Items[round(Q1)])+StrToFloat(lsbStatisticShow.Items[round(Q1)-1]))/2)
      else
       lblQ1.caption:= lsbStatisticShow.Items[round(Q1-0.5)];
  {Q1//}

  {//Q3}
     Q3:= frequency/2/2+frequency/2;
     if Q3 = round(Q3)
      then
       lblQ3.caption:= FloatToStr((StrToFloat(lsbStatisticShow.Items[round(Q3)])+StrToFloat(lsbStatisticShow.Items[round(Q3)-1]))/2)
      else
       lblQ3.caption:= lsbStatisticShow.Items[round(Q3-0.5)];
  {Q3//}

  {//IQR}
     lblIQR.caption:=FloatToStr(StrToFLoat(lblQ3.caption)-StrToFLoat(lblQ1.caption));
  {IQR//}

  {//SIQR}
     lblSIQR.caption:=FloatToStr(StrToFLoat(lblIQR.caption)/2);
  {SIQR//}

     lblMean2.caption:=lblMean.caption;
     lblMedian2.caption:=lblMedian.caption;
     lblMode2.caption:=lblMode.caption;
     lblRange2.caption:=lblRange.caption;
     lblQ12.caption:=lblQ1.caption;
     lblQ32.caption:=lblQ3.caption;
     lblIQR2.caption:=lblIQR.caption;
     lblSIQR2.caption:=lblSIQR.caption;

    end else
     MessageDlg('Number Must be lower than 100 000 000 000',mtError, mbOKCancel,1);
end;

procedure TfrmMatheMagixPAT.btnStatisticsCalculateClick(Sender: TObject);
begin
   Stat;
   edtStatisticsNumber.Clear;
end;

procedure TfrmMatheMagixPAT.edtStatisticsNumberChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtStatisticsNumberClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtStatisticsNumberKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if pgcMiscellaneous.Visible then if key = vk_Return then btnStatisticsCalculateClick(sender);
end;

procedure TfrmMatheMagixPAT.btnStatsViewClick(Sender: TObject);
begin
   if btnStatsView.caption='Grid View' then
    begin
     srbstats.Visible:=false;
     btnStatsView.caption:='List View'
    end else
    begin
     srbstats.Visible:=true;
     btnStatsView.caption:='Grid View';
    end;
end;

procedure TfrmMatheMagixPAT.StatDel(pstn:integer);
var
 Number         : real;
 Median, Q1, Q3 : double;
 lasti, lsbi    : integer;
begin
   
   lsbStatistics.ItemIndex:=pstn;
   lsbi:=pstn;

   if lsbi > 0 then //if lsbStatistics.Selected[lsbi] then
    begin
     Number:=StrToFloat(lsbStatistics.Items.Strings[lsbi]);
    // if lsbStatisticShow.Selected[lsbi] then
        lsbStatisticShow.DeleteSelected;
    // if lsbStatistics.Selected[lsbi] then
        lsbStatistics.DeleteSelected;


     frequency:=frequency-1;
     lblFrequency.caption:='Count: '+IntToStr(frequency);
     Total:=Total-Number;


  {//Mean}
     if sedUniDecimalPoint.value=-1
      then
       lblMean.caption:=FloatToStr(Total/frequency)
      else
       lblMean.caption:=FloatToStrF(Total/frequency,fffixed,18,sedUniDecimalPoint.Value);
  {Mean//}

  {//Median}
     Median:=frequency/2;
     if median = round(median)
      then
       lblMedian.caption:= FloatToStr((StrToFloat(lsbStatisticShow.Items[round(median)])+StrToFloat(lsbStatisticShow.Items[round(median)-1]))/2)
      else
       lblMedian.caption:= lsbStatisticShow.Items[round(median-0.5)];
  {Median//}

  {//Mode}

  {Mode//}

  {//Range}
     lasti:=lsbStatisticShow.Items.Count;
     lblRange.caption:= FloatToStr (StrToFloat(lsbStatisticShow.Items[lasti-1])-StrToFloat(lsbStatisticShow.Items[0]));
  {Range//}

  {//Q1}
     Q1:=frequency/2/2;
     if Q1 = round(Q1)
      then
       lblQ1.caption:= FloatToStr((StrToFloat(lsbStatisticShow.Items[round(Q1)])+StrToFloat(lsbStatisticShow.Items[round(Q1)-1]))/2)
      else
       lblQ1.caption:= lsbStatisticShow.Items[round(Q1-0.5)];
  {Q1//}

  {//Q3}
     Q3:= frequency/2/2+frequency/2;
     if Q3 = round(Q3)
      then
       lblQ3.caption:= FloatToStr((StrToFloat(lsbStatisticShow.Items[round(Q3)])+StrToFloat(lsbStatisticShow.Items[round(Q3)-1]))/2)
      else
       lblQ3.caption:= lsbStatisticShow.Items[round(Q3-0.5)];
  {Q3//}

  {//IQR}
     lblIQR.caption:=FloatToStr(StrToFLoat(lblQ3.caption)-StrToFLoat(lblQ1.caption));
  {IQR//}

  {//SIQR}
     lblSIQR.caption:=FloatToStr(StrToFLoat(lblIQR.caption)/2);
  {SIQR//}

     lblMean2.caption:=lblMean.caption;
     lblMedian2.caption:=lblMedian.caption;
     //lblMode2.caption:=lblMode.caption;
     lblRange2.caption:=lblRange.caption;
     lblQ12.caption:=lblQ1.caption;
     lblQ32.caption:=lblQ3.caption;
     lblIQR2.caption:=lblIQR.caption;
     lblSIQR2.caption:=lblSIQR.caption;
    end;
end;

procedure TfrmMatheMagixPAT.btnDeleteClick(Sender: TObject);
begin
 StatDel(lsbStatisticShow.ItemIndex);
end;

procedure TfrmMatheMagixPAT.tmrTimeLineTimer(Sender: TObject);
var
 i : integer;
begin
 if bmbTimeLineRefresh.Tag = 2 then
  begin
   for i := 1 to tkbTimeLine.Max-1 do
    begin
     if i <> 1 then if Interval[i] <> -1 then if edtDeposite[i].Visible then if not edtDeposite[i].Focused then EQ2ANSExit else if edtDeposite[i].text <> ''
      then begin
      if edtDeposite[i].SelLength > 0
       then
        EQ2ANSSel(edtDeposite[i])
       else
        EQ2ANSChng(edtDeposite[i]);
      //Interval[tkbTimeLine.position]:=tkbTimeLine.position

      end;
     if i <> 1 then if Interval[i] <> -1 then if edtRate[i].Visible then if not edtRate[i].Focused then EQ2ANSExit else if edtRate[i].text <> ''
      then begin
      //Interval[tkbTimeLine.position]:=tkbTimeLine.position;
      if edtRate[i].SelLength > 0
       then
        EQ2ANSSel(edtRate[i])
       else
        EQ2ANSChng(edtRate[i]);

      end;
     if i <> 1 then if Interval[i] <> -1 then if edtWithdraw[i].Visible then if not edtWithdraw[i].Focused then EQ2ANSExit else if edtWithdraw[i].text <> ''
      then begin
      //Interval[tkbTimeLine.position]:=tkbTimeLine.position;
      if edtWithdraw[i].SelLength > 0
       then
        EQ2ANSSel(edtWithdraw[i])
       else
        EQ2ANSChng(edtWithdraw[i]);
      end;

    end;

  lblTimeLineCalculate.Caption := TimeLine(edtDeposite, edtWithdraw, edtRate, TLinitial, TLRate, tkbTimeLine.max, rgpInterestType.itemindex, interval, VarNme, VarVal);
  end;
end;

procedure TfrmMatheMagixPAT.bmbTimeLineRefreshClick(Sender: TObject);
var
 i : integer;
begin
   if bmbTimeLineRefresh.tag = 1 then
    begin
     pnlTimeLineEdit.Top:=0;
     scbTimeLine.Position:=0;
     tkbTimeLine.Position:=0;
     bmbTimeLineRefresh.Kind := bkRetry;
     bmbTimeLineRefresh.Caption := '';
     pnlNewTimeLine.Visible  := False;
     tkbTimeline.Max:=sedTnLength.value;
     SetLength(edtRate,tkbTimeLine.Max+1);
     SetLength(edtDeposite,tkbTimeLine.Max+1);
     SetLength(edtWithdraw,tkbTimeLine.Max+1);
     SetLength(Interval, 100000);
     bmbTLDeposit.Enabled:=true;
     bmbTLWithdraw.Enabled:=true;
     bmbTLrateChange.enabled:=true;
     lblTimeLineCalculate.Enabled:=true;
     sedTimeLineJump.Enabled:=true;
     btnTimeLineJump.Enabled:=true;
     //TLTotal:=TLInitial*(1+TLRate/100*tkbTimeLine.Max);
     tkbTimeline.Width:=sedTnLength.Value*120;
     scbTimeLine.Max := sedTnLength.Value*120-150;
     pnlWithdraw.Width:= scbTimeLine.Max+100;
     pnlDeposit.Width:= scbTimeLine.Max+100;
     pnlRateChange.Width:= scbTimeLine.Max+100;
     bmbTLrateChange.Tag:=0;
     bmbTLWithdraw.Tag:=0;
     bmbTLDeposit.Tag:=0;
     pnlTimeLineEdit.Enabled:=true;
     for i := 0 to tkbTimeLine.Max-1 do
      begin

       bmbTLrateChange.Tag:=i;
       bmbTLWithdraw.Tag:=i;
       bmbTLDeposit.Tag:=i;

       bmbTLrateChange.Click;
       bmbTLWithdraw.Click;
       bmbTLDeposit.Click;

       interval[i] := -1;
      end;

     interval[tkbTimeLine.Max]:=tkbTimeLine.Max;
     edtStartingInterest.Text := cal.GetAnswer(Variblize(edtStartingInterest.Text, VarNme, VarVal), frmVariables.vleVariables);
     edtStartingCapital.Text := cal.GetAnswer(Variblize(edtStartingCapital.Text, VarNme, VarVal), frmVariables.vleVariables);
     val(edtStartingCapital.Text, TLInitial, i );
     val(edtStartingInterest.Text, TLRate, i );

     if TLInitial = 0 then edtStartingCapital.Text := '100';
     if TLRate = 0 then edtStartingInterest.Text := '10';

     tkbTimeLine.Position := 0;
     bmbTLDeposit.Tag := 0;
     bmbTLrateChange.Tag := 0;


     edtRate[0].Text := edtStartingInterest.Text;
     edtDeposite[0].Text:= edtStartingCapital.Text;
     edtRate[0].Color := clBlack;
     edtDeposite[0].color := clBlack;
     interval[0] := 0;
     bmbTimeLineRefresh.Tag := 2;
     bmbTLDepositClick(Sender);
     bmbTLrateChangeClick(Sender);
     edtRate[0].Enabled := false;
     edtDeposite[0].Enabled := false;
     tmrTimeLine.Enabled := true;
     EQ2ANSExit;
     lblTimeLineCalculate.Caption := TimeLine(edtDeposite, edtWithdraw, edtRate, TLinitial, TLRate, tkbTimeLine.max, rgpInterestType.itemindex, interval, VarNme, VarVal);

    end else
    begin

     bmbTimeLineRefresh.Kind := bkYes;
     bmbTimeLineRefresh.Caption := '';
     bmbTimeLineRefresh.Tag  := 1;
     pnlNewTimeLine.Visible  := True;
     TLRate     := 0;
     TLInitial  := 0;
     edtStartingCapital.clear;
     edtStartingInterest.clear;
     sedTnLength.value:=0;
     sedTimeLineJump.value:=0;


     for i := 1 to tkbTimeLine.Max do edtWithdraw[i-1].Destroy;
     for i := 1 to tkbTimeLine.Max do edtDeposite[i-1].Destroy;
     for i := 1 to tkbTimeLine.Max do edtRate[i-1].Destroy;

     bmbTLDeposit.Enabled:=false;
     bmbTLWithdraw.Enabled:=false;
     bmbTLrateChange.enabled:=false;
     lblTimeLineCalculate.Caption := '';
     sedTimeLineJump.Enabled:=false;
     btnTimeLineJump.Enabled:=false;
     bmbTimeLineRefresh.Enabled := false;

    end;
end;

procedure TfrmMatheMagixPAT.bmbTLrateChangeClick(Sender: TObject);
begin
   if bmbTimeLineRefresh.Tag = 1 then
    begin
     edtRate[bmbTLrateChange.Tag] := TEdit.Create(pnlTimeLine);

     with edtRate[bmbTLrateChange.Tag] do
      begin
       Parent := pnlRateChange;
       if bmbTLrateChange.Tag <> 0
        then
         left := bmbTLrateChange.Tag*120+12
        else
         left := 12;
       visible:=false;
       Top := 4;
       Color := clBlue;
      width := 100;
      Font.color := clWhite;
     end;
    end else
    if tkbTimeLine.Position <> tkbTimeLine.Max then
     begin
      if not edtRate[tkbTimeLine.position].visible
       then
        edtRate[tkbTimeLine.position].visible:=true
       else if tkbTimeLine.Position <> 0 then
        begin
         edtRate[tkbTimeLine.position].Text := '0';
         edtRate[tkbTimeLine.position].visible:=false;
        end;

      if edtRate[tkbTimeLine.position].visible
       then
        Interval[tkbTimeLine.position]:=tkbTimeLine.position
       else
        Interval[tkbTimeLine.position]:=-1;

      if edtRate[tkbTimeLine.position].visible
       then
        edtRate[tkbTimeLine.position].SetFocus
       else
        lblTimeLineCalculate.Caption := TimeLine(edtDeposite, edtWithdraw, edtRate, TLinitial, TLRate, tkbTimeLine.max, rgpInterestType.itemindex, interval,VarNme, VarVal);
     end;
end;

procedure TfrmMatheMagixPAT.bmbTLWithdrawClick(Sender: TObject);
begin
   if bmbTimeLineRefresh.Tag = 1 then
    begin
     edtWithdraw[bmbTLWithdraw.Tag] := TEdit.Create(pnlTimeLine);

     with edtWithdraw[bmbTLWithdraw.Tag] do
      begin
       Parent := pnlWithdraw;
       if bmbTLWithdraw.Tag <> 0
        then
         left := bmbTLWithdraw.Tag*120+12
        else
         left :=12;
       Top := 4;
       Font.Color := clBlack;
       Color:= clRed;
       width := 100;
       visible:=false;
      end;

    end else
    if tkbTimeLine.Position <> tkbTimeLine.Max then
     begin
      if edtWithdraw[tkbTimeLine.position].visible
       then
        edtWithdraw[tkbTimeLine.position].visible:=false
       else if tkbTimeLine.Position <> 0 then
        begin
         edtWithdraw[tkbTimeLine.position].Text := '0';
         edtWithdraw[tkbTimeLine.position].visible:=true;
        end;

      if edtWithdraw[tkbTimeLine.position].visible
       then
        Interval[tkbTimeLine.position]:=tkbTimeLine.position
       else
        Interval[tkbTimeLine.position]:=-1;

      if edtWithdraw[tkbTimeLine.position].visible
       then
        edtWithdraw[tkbTimeLine.position].SetFocus
       else
        lblTimeLineCalculate.Caption := TimeLine(edtDeposite, edtWithdraw, edtRate, TLinitial,  TLRate,tkbTimeLine.max, rgpInterestType.itemindex, interval,VarNme, VarVal);
     end;

end;

procedure TfrmMatheMagixPAT.bmbTLDepositClick(Sender: TObject);
begin

   if bmbTimeLineRefresh.Tag = 1 then
    begin
     edtDeposite[bmbTLDeposit.Tag] := TEdit.Create(pnlTimeLine);

   with edtDeposite[bmbTLDeposit.Tag] do
    begin
     Parent := pnlDeposit;
     if bmbTLDeposit.Tag <> 0
      then
       left := bmbTLDeposit.Tag*120+12
      else
       left := 12;
     Top := 4;
     Color := clGreen;
     width := 100;
     visible:=false;
    end;
   end else
   if tkbTimeLine.Position <> tkbTimeLine.Max then
    begin
     if not edtDeposite[tkbTimeLine.position].visible
      then
       edtDeposite[tkbTimeLine.position].visible:=true
      else if tkbTimeLine.Position <> 0 then
       begin
        edtDeposite[tkbTimeLine.position].Text := '0';
        edtDeposite[tkbTimeLine.position].visible:=false;
       end;

     if edtDeposite[tkbTimeLine.position].visible
      then
       Interval[tkbTimeLine.position]:=tkbTimeLine.position
      else
       Interval[tkbTimeLine.position]:=-1;
     if edtDeposite[tkbTimeLine.position].visible
      then
       edtDeposite[tkbTimeLine.position].SetFocus
      else
       lblTimeLineCalculate.Caption := TimeLine(edtDeposite, edtWithdraw, edtRate, TLinitial, TLRate, tkbTimeLine.max, rgpInterestType.itemindex, interval, VarNme, VarVal);
    end;

end;

procedure TfrmMatheMagixPAT.scbTimeLineChange(Sender: TObject);
begin
 if not pnlNewTimeLine.Visible then
  begin
   tkbTimeLine.Left:=0-scbTimeLine.position;
   pnlDeposit.left:=0-scbTimeLine.position;
   pnlWithdraw.left:=0-scbTimeLine.position;
   pnlRateChange.left:=0-scbTimeLine.position;
  end;
end;

procedure TfrmMatheMagixPAT.tkbTimeLineChange(Sender: TObject);
begin
 sedTimeLineJump.value:=tkbTimeLine.Position;
end;

procedure TfrmMatheMagixPAT.lblFinAmountClick(Sender: TObject);
begin
 lblTimeLineCalculate.Caption := TimeLine(edtDeposite, edtWithdraw, edtRate, TLinitial, TLRate, tkbTimeLine.max, rgpInterestType.itemindex, interval, VarNme, VarVal);
end;

procedure TfrmMatheMagixPAT.btnTimeLineJumpClick(Sender: TObject);
begin
   //lblTimeLineCalculate.Caption := TimeLine(edtDeposite, edtWithdraw, edtRate, TLinitial, TLRate, tkbTimeLine.max, CalcDecPoint, rgpInterestType.itemindex, interval, angleUnit);
   tkbTimeLine.Position:=sedTimeLineJump.Value;
   scbTimeLine.Position:=tkbTimeLine.Position*100-200;
end;

procedure TfrmMatheMagixPAT.tkbTimeLineExit(Sender: TObject);
begin
scbTimeLine.Position:=tkbTimeLine.Position*100-200;
end;

procedure TfrmMatheMagixPAT.rgpFormulaterClick(Sender: TObject);
begin
 case rgpFormulater.ItemIndex of
  2 : begin
       pgcGeometery.Visible:=True;
       pnlGeoTab.Visible := True;
       scbUniTool.Max := 6;
       scbUniTool.Position := pgcGeometery.TabIndex;
      end;
 end;
end;

procedure TfrmMatheMagixPAT.rgpBussinessClick(Sender: TObject);
begin
 case rgpBussiness.ItemIndex of
  0 : begin
       pnlTimeLine.visible:=true;
       pgcInterest.Visible:=false;
       pnlWorksheets.Visible := false;
      end;
  1 : begin
       pnlTimeLine.visible:=false;
       pgcInterest.Visible:=true;
       pnlWorksheets.Visible := false;
      end;
  2 : begin
       pnlTimeLine.visible:=false;
       pgcInterest.Visible:=false;
       pnlWorksheets.Visible := true;
      end;
 end;
end;

procedure TfrmMatheMagixPAT.tmrNonCalcOpenTimer(Sender: TObject);
begin

 if tmrNonCalcClose.Enabled
  then
   tmrNonCalcOpen.Enabled := false
  else
  begin
   if frmMatheMagixPAT.Height < 760 then
    begin
     frmMatheMagixPAT.Height := frmMatheMagixPAT.Height + 5;
     frmMatheMagixPAT.Top := frmMatheMagixPAT.Top - 2;
     if imgMinimize.top > 389 then imgMinimize.Top := imgMinimize.Top -1;
    end else
    if frmMatheMagixPAT.Tag < 13 then
    begin
     frmMatheMagixPAT.Tag := frmMatheMagixPAT.Tag + 1;
     frmMatheMagixPAT.Top := frmMatheMagixPAT.Top - 2;
    end else
    begin
     tmrNonCalcOpen.Enabled := false;
    end;
  end;
end;

procedure TfrmMatheMagixPAT.tmrNonCalcCloseTimer(Sender: TObject);
begin

 if tmrNonCalcOpen.Enabled
  then
   tmrNonCalcClose.Enabled := false
  else
  begin
   if frmMatheMagixPAT.Height > 526 then
    begin
     frmMatheMagixPAT.Height := frmMatheMagixPAT.Height - 5;
     frmMatheMagixPAT.Top := frmMatheMagixPAT.Top +2;
     if imgMinimize.Top < 430 then  imgMinimize.Top := imgMinimize.Top +1;
    end else
    if frmMatheMagixPAT.Tag > 0 then
    begin
     frmMatheMagixPAT.Tag := frmMatheMagixPAT.Tag - 1;
     frmMatheMagixPAT.Top := frmMatheMagixPAT.Top + 2;
    end else
    begin
     tmrNonCalcClose.Enabled := false;
    end;
  end;

end;

procedure TfrmMatheMagixPAT.ChangeView(btn1, btn2, btn3, btn4 : TBitBtn);
begin
   if pnlCalculaterCalc.Top <> 33 then tmrSettings.Enabled := true;

   pgcMiscellaneous.visible:=false;
   pnlFormulater.Visible:=false;
   pnlBusiness.Visible:=false;
   pgcGames.Visible:=false;
   pnlGameTab.Visible := false;
   pnlMisTab.Visible := false;


   if btn1.Caption = 'Business' then pnlBusiness.Visible := true;
   if btn1.Caption = 'Formulater' then pnlFormulater.Visible := true;
   if btn1.Caption = 'Miscellaneous' then
    begin
     pgcMiscellaneous.Visible := true;
     pnlMIsTab.Visible := true;
    end;
   if btn1.caption = 'Games' then
    begin
     pgcGames.Visible := true;
     pnlGameTab.Visible := true;
    end;

  if (not tmrNonCalcClose.Enabled) and (not tmrNonCalcOpen.enabled) then
  if btn1.Font.color = clBlack then
   begin
    btn4.Font.color := clBlack;
    btn3.Font.color := clBlack;
    btn2.font.color := clBlack;
    btn1.Font.Color := frmThemes.cb;
    If frmMatheMagixPAT.Height < 760 then tmrNonCalcOpen.enabled := true;
    cmbConstants.DropDownCount:=25;
    cmbCalculatorFunctions.DropDownCount:=25;
    scbUniTool.Enabled:=true;
    btnUniClear.Enabled:=true;
   end else
   begin
    btn1.Font.color := clBlack;
    tmrNonCalcClose.Enabled:=true;
    cmbConstants.DropDownCount:=18;
    cmbCalculatorFunctions.DropDownCount:=18;
    scbUniTool.Enabled:=false;
    btnUniClear.Enabled:=false;
   end;
end;

procedure TfrmMatheMagixPAT.bmbBusinessClick(Sender: TObject);
begin
 ChangeView(bmbBusiness, bmbFormulater, bmbMiscellaneous, bmbGames);
end;

procedure TfrmMatheMagixPAT.bmbFormulaterClick(Sender: TObject);
begin
 ChangeView(bmbFormulater, bmbBusiness, bmbMiscellaneous, bmbGames);
 rgpFormulaterClick(Sender);
end;

procedure TfrmMatheMagixPAT.bmbMiscellaneousClick(Sender: TObject);
begin
 ChangeView(bmbMiscellaneous, bmbFormulater, bmbBusiness, bmbGames);
 scbUniTool.Max := 9;
 scbUniTool.Position := pgcMiscellaneous.TabIndex;
end;

procedure TfrmMatheMagixPAT.bmbGamesClick(Sender: TObject);
begin
 ChangeView(bmbGames, bmbFormulater, bmbMiscellaneous, bmbBusiness);
end;

procedure TfrmMatheMagixPAT.pgcInterestChange(Sender: TObject);
begin
 scbUniTool.max :=  1;
 scbUniTool.Position := pgcInterest.TabIndex;
end;

procedure TfrmMatheMagixPAT.Constant(cnst:extended);
begin
 edtResult.Text := edtResult.Text + '(' + FloatToStr(cnst) + ')';
 cmbCalculatorFunctions.Text := 'Apply A Function';
end;


procedure TfrmMatheMagixPAT.cmbConstantsChange(Sender: TObject);
const
 constants : array[0..44] of extended =
 (149597870691, 1.66053886e-27, 6.0221415e23, 0.5291772108e-10, 927.400949e-26, 1.3806505e-23
 , 376.730313461, 7.748091733e-5, 8.987742438e9, 1.054571628e-34, 5.9736e24, 8.854187817e-12, 1.60217653e-19
 , 96485.3383, 1.16639e-5, 7.297352568e-3, 3.74177138e-16, 8.314472, 6.67428e-11, 365.2425, 4.35974417e-18
 , 483597.879e9, 9.4607304725808e15, 2.6867773e25, 1.256637061e-6, 2.06783372e-15, 6371000, 3.990312716e-10
 , 5.05078343e-27, 3.08567802e16, 6.62606896e-34, 3.636947550e-4, 12906.403725, 10973731.568525, 1.4387752e-2
 , 365.2564, 299792458, 5.670400e-8, 3.827e26, 1.9891e30, 6.96265e8, 0.665245873e-28, 365.2422, 0.22215,25812.807449);
begin
 Constant(constants[cmbConstants.ItemIndex]);
end;

procedure TfrmMatheMagixPAT.CreateQues;
var
 op, n    : integer;
 i, p     : integer;
 Max, Min : integer;
 Divi     : array of real;
 s        : string;
 k, l     : real;
begin

 Randomize;
 difi := sedSumLength.value;
 Max  := sedMaxNumSize.Value;
 Min  := sedMinNumSize.Value;
 k    := 0;
 op   := -1;

 for i:=0 to Difi-1 do
  begin

     if op = 3 then
      begin
       if cbxDecimal.Checked then SetLength(Divi, round(k*10)+1) else SetLength(Divi, round(k)+1);
       p:=1;
       if cbxDecimal.Checked then k := k*10;
       for n := 1 to trunc(k) do
        if k/n = trunc(k/n) then
         begin
          if cbxDecimal.Checked then Divi[p] := n/10 else Divi[p] := n;
          inc(p);
         end;
       l := Divi[Random(p)];
       if l = 0 then l:=1;
       s := s+FloatToStr(l);
      end else
      begin
       k := (RandomRange(Min, max)+1);
       if cbxDecimal.Checked then k := k + (Random(9)+1)/10;
       s := s + FloatToStr(k);
      end;

     if (clbQuickSums.Checked[0])and(not clbQuickSums.Checked[1])and(not clbQuickSums.Checked[2])and(not clbQuickSums.Checked[3]) then
       op:=0;

     if (not clbQuickSums.Checked[0])and(clbQuickSums.Checked[1])and(not clbQuickSums.Checked[2])and(not clbQuickSums.Checked[3]) then
       op:=1;

     if (not clbQuickSums.Checked[0])and(not clbQuickSums.Checked[1])and(clbQuickSums.Checked[2])and(not clbQuickSums.Checked[3]) then
       op:=2;

     if (not clbQuickSums.Checked[0])and(not clbQuickSums.Checked[1])and(not clbQuickSums.Checked[2])and(clbQuickSums.Checked[3]) then
      op:=3;


     if (clbQuickSums.Checked[0])and(clbQuickSums.Checked[1])and(not clbQuickSums.Checked[2])and(not clbQuickSums.Checked[3]) then
      op:=Random(2);

     if (clbQuickSums.Checked[1])and(clbQuickSums.Checked[2])and(not clbQuickSums.Checked[0])and(not clbQuickSums.Checked[3]) then
      op:=Random(2)+1;

     if (clbQuickSums.Checked[2])and(clbQuickSums.Checked[3])and(not clbQuickSums.Checked[0])and(not clbQuickSums.Checked[1]) then
      begin
       op:=Random(4)+1;
       if op > 2 then op:=3 else op:=2;
      end;

     if (clbQuickSums.Checked[0])and(clbQuickSums.Checked[2])and(not clbQuickSums.Checked[1])and(not clbQuickSums.Checked[3]) then
      begin
       op:=Random(3);
       if op in [0,1] then op := 0 else op:=2;
      end;

     if (clbQuickSums.Checked[0])and(clbQuickSums.Checked[3])and(not clbQuickSums.Checked[1])and(not clbQuickSums.Checked[2]) then
      begin
       op:=Random(4);
       if op in [0,1] then op := 0 else op:=3;
      end;

     if (clbQuickSums.Checked[1])and(clbQuickSums.Checked[3])and(not clbQuickSums.Checked[0])and(not clbQuickSums.Checked[2]) then
      begin
       op:=Random(4);
       if op in [0,1] then op := 1 else op:=3;
      end;

     if (clbQuickSums.Checked[0])and(clbQuickSums.Checked[1])and(clbQuickSums.Checked[2])and(not clbQuickSums.Checked[3]) then
       op:=Random(3);

     if (clbQuickSums.Checked[0])and(clbQuickSums.Checked[1])and(clbQuickSums.Checked[3])and(not clbQuickSums.Checked[2]) then
      begin
       op:=Random(4);
       if op in [2] then op := 3;
      end;

     if (clbQuickSums.Checked[0])and(clbQuickSums.Checked[2])and(clbQuickSums.Checked[3])and(not clbQuickSums.Checked[1]) then
      begin
       op:=Random(4);
       if op in [1] then op := 0;
      end;

     if (clbQuickSums.Checked[1])and(clbQuickSums.Checked[2])and(clbQuickSums.Checked[3])and(not clbQuickSums.Checked[0]) then
      begin
       op:=Random(4);
       if op in [0] then op := 1;
      end;

     if (clbQuickSums.Checked[0])and(clbQuickSums.Checked[1])and(clbQuickSums.Checked[2])and(clbQuickSums.Checked[3]) then
      op:=Random(4);

     case op of
       0 : s := s + '+';
       1 : s := s + '-';
       2 : s := s + '*';
       3 : s := s + '/';
     end;


 end;
  delete(s, length(s), 1);
  lblQuickSumsGamesQues.Caption := s;
end;

procedure TfrmMatheMagixPAT.cmbPresetChange(Sender: TObject);
begin
 case cmbPreset.ItemIndex of
  0 : begin
       cbxDecimal.checked := false;
       sedMaxNumSize.Value := 10;
       sedSumLength.value := 2;
      end;
  1 : begin
       cbxDecimal.checked := false;
       sedMaxNumSize.Value := 10;
       sedSumLength.value := 3;
      end;
  2 : begin
       cbxDecimal.checked := false;
       sedMaxNumSize.Value := 10;
       sedSumLength.value := 3;
      end;
  3 : begin
       cbxDecimal.checked := false;
       sedMaxNumSize.Value := 10;
       sedSumLength.value := 4;
      end;
  4 : begin
       cbxDecimal.checked := true;
       sedMaxNumSize.Value := 10;
       sedSumLength.value := 2;
      end;
  5 : begin
       cbxDecimal.checked := false;
       sedMaxNumSize.Value := 20;
       sedSumLength.value := 4;
      end;
  6 : begin
       cbxDecimal.checked := false;
       sedMaxNumSize.Value := 10;
       sedSumLength.value := 3;
      end;
  7 : begin
       cbxDecimal.checked := false;
       sedMaxNumSize.Value := 10;
       sedSumLength.value := 4;
      end;
  8 : begin
       cbxDecimal.checked := false;
       sedMaxNumSize.Value := 20;
       sedSumLength.value := 3;
      end;
  9 : begin
       cbxDecimal.checked := false;
       sedMaxNumSize.Value := 30;
       sedSumLength.value := 4;
      end;
 10  : begin
       cbxDecimal.checked := false;
       sedMaxNumSize.Value := 20;
       sedSumLength.value := 4;
      end;
 11 : begin
       cbxDecimal.checked := true;
       sedMaxNumSize.Value := 30;
       sedSumLength.value := 4;
      end;
 end;
 btnNewGameSums.Click;
end;

procedure TfrmMatheMagixPAT.btnNewGameSumsClick(Sender: TObject);
begin
  lblQuickSumsGamesQues.Enabled:=true;
  edtAnswer.Enabled:=true;
  CreateQues;
  edtAnswer.SetFocus;
end;

procedure TfrmMatheMagixPAT.btnAnswerSumsClick(Sender: TObject);
begin
 if edtAnswer.Text <> '' then
 if StrToFloat(edtanswer.text)=StrToFloat(cal.GetAnswer(lblQuickSumsGamesQues.caption))
  then
   ShowMessage('Yay! You were Correct')
  else
   MessageDlg('Sorry the Right Answer was  ' + cal.GetAnswer(lblQuickSumsGamesQues.caption), mtInformation, mbOKCancel, 1);
 edtAnswer.clear;
 edtAnswer.SetFocus;
 CreateQues;
end;

procedure TfrmMatheMagixPAT.edtAnswerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if pgcGames.Visible then if edtAnswer.Text <> '' then if Key = vk_Return then btnAnswerSumsClick(Sender);
end;

procedure TfrmMatheMagixPAT.cmbTimeToChange(Sender: TObject);
begin
 TimeConversionSimple;
end;

procedure TfrmMatheMagixPAT.cmbTimeConverterBrokenDownChange(
  Sender: TObject);
begin
 TimeConversionBroken;
end;

procedure TfrmMatheMagixPAT.cmbTimeDifferenceAnswerChange(Sender: TObject);
begin
 TimeDifference;
end;

procedure TfrmMatheMagixPAT.cmbdtkChange(Sender: TObject);
begin
 DateDifference;
end;

procedure TfrmMatheMagixPAT.rgpCalculatorModeClick(Sender: TObject);
begin
 case rgpCalculatorMode.ItemIndex of
  0 : memCalculatorEqSolve.Visible := false;
  1 : memCalculatorEqSolve.Visible := true;
 end;
end;

procedure TfrmMatheMagixPAT.btnAVUTTimeClick(Sender: TObject);
begin
 bmbMiscellaneous.click;
 pgcMiscellaneous.TabIndex := 1;
end;

procedure TfrmMatheMagixPAT.btnVATTimeClick(Sender: TObject);
begin
 bmbMiscellaneous.click;
 pgcMiscellaneous.TabIndex := 1;
end;

procedure TfrmMatheMagixPAT.btnWPTTimeClick(Sender: TObject);
begin
 bmbMiscellaneous.click;
 pgcMiscellaneous.TabIndex := 1;
end;

procedure TfrmMatheMagixPAT.btnDVTsClick(Sender: TObject);
begin
 bmbMiscellaneous.click;
 pgcMiscellaneous.TabIndex := 1;
end;

procedure TfrmMatheMagixPAT.btnHowToClick(Sender: TObject);
var
 s,s2:string;
begin
   if frmMatheMagixPAT.Height > 550 then
    begin
     if pnlFormulater.visible=true then
      begin

       if pgcGeometery.visible=true then
        case pgcGeometery.TabIndex of
         0 : s := 'You Can Work Out any of the Sides, but you will need to Enter Data into the Other 2 Known Sides';
         1 : s := 'You Can Work Out the Distance Between 2 Points, by Entering the X and Y co-ordinates of both Points';
         2 : s := 'You Can Work Out the Mid-Point of a Line, by Entering the X and Y co-ordinates of both Points';
         3 : s := 'You Can Work Out the Slope of a Line, by Entering the X and Y co-ordinates of both Points';
        end;

      end;
     if pgcMiscellaneous.Visible=true then
      case pgcMiscellaneous.TabIndex of
       0 : s := 'You Can Convert a Decimal Number to a Roman Numeral or a Roman Numeral to Decimal, Just Enter the Specific Data into the Field you Are Calculating From and Press Convert';
       1 : case pgcTimeConverter.TabIndex of
            0 : s := 'You Can Convert a Time Value of a Specific Measurement To Another. Just Enter the Value into the From Field and Change the To and From Measurement Types to What you Require';
            1 : s := 'You Can Convert a Set of Different Time Values into One Type. Just Enter the the Amounts under the Appropriate Field. and Remember all Fields Do Not need to be Filled in';
           end;
       2 : s := 'You Can Work Out the Difference Between 2 Value of Time. Just Enter the Values and Measurements and Press Calculate';
       3 : case pgcDateCalculation.TabIndex of
            0 : s := 'You Can Work Out the Difference Between 2 Dates. Just Choose the 2 Dates and Choose the Measurement of the Result you Want and Press Calculate';
            1 : s := 'You Can See the Date After a Certain Amount of Days. Just Enter the Amount of Days that need to Pass and Press Calculate';
           end;
       4 : begin
            s := 'You Can Work Out Either the Factors or Multiples of a Number. To Calculate a Numbers Factors Just Enter the Number and Press Calculate.';
            s2:= ' To Calculate the Multiples of a Number Just Enter the Number and Under That Choose how many of the Said Numbers Multiples Must be Shown'
           end;
       5 : s := 'You Can Work Out the Length of a Trianlges Sides and the Unknown Angle. Just Enter Data into at least 2 of the Fields that you Know';
       6 : s := 'You Can Work Out Some Stats of a Set of Numbers. Just Enter a Number and the Program will do the Rest';
      end;
       if pnlBusiness.Visible then
        begin
         if pnlBusiness.Visible then
          case rgpBussiness.ItemIndex of
           0 : begin
                s := 'You Can Create your Own Time Line of Interest. Just Set it up First by Entering the Initial Amount, Initial Rate and the Length and then Choose an Interest Type Then Press the Tick at the Bottom Right.';
                s2:= ' Now in edit Mode, Move the Track Bar in Middle to the Year you Want and then You can Press "Deposit, Withdraw or %Change" to and Enter the Change in that Field. When you''re Done you Can Check the Final Amount by Pressing "Show Final Amount"';
               end;
           1 : s := 'You Can Work Out the Simple Interest. Just Enter the Initial amount, the Interest rate and the Time Period';
           2 : s := 'You Can Work Out any of the Fields except for the Yearly Implementation. Just enter Data into Every Field Except for the Field you Want to Calculate';
          end;
        end;
       if pgcGames.Visible then s := 'This is a Simple Game Just Enter your Answer in and Click on the Answer Button. If you Change the Settings then Press New Game to apply it';
       voice.speak(s+s2,1);
       MessageDlg(s+s2,mtInformation, mbOKCancel,1);
    end else
    begin
     s:='Press One of the 4 Buttons Below, namely (Business, Formulator, Miscellaneous or Games) and I will Explain any of its Sections';
     voice.speak(s, 1);
     MessageDlg(s,mtInformation,mbOKCancel,1);
    end;
end;

procedure TfrmMatheMagixPAT.edtStartingCapitalChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
 if (edtStartingCapital.Text <> '')and(edtStartingInterest.Text <> '')and(sedTnLength.value>0)
  then
   bmbTimeLineRefresh.Enabled:=true
  else
   bmbTimeLineRefresh.Enabled:=false;
end;

procedure TfrmMatheMagixPAT.edtStartingInterestChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
 if (edtStartingCapital.Text <> '')and(edtStartingInterest.Text <> '')and(sedTnLength.value>0)
  then
   bmbTimeLineRefresh.Enabled:=true
  else
   bmbTimeLineRefresh.Enabled:=false;
end;

procedure TfrmMatheMagixPAT.sedTnLengthChange(Sender: TObject);
begin
 if sedTnLength.Text <> '' then
 if (edtStartingCapital.Text <> '')and(edtStartingInterest.Text <> '')and(sedTnLength.value > 0)
  then
   bmbTimeLineRefresh.Enabled:=true
  else
   bmbTimeLineRefresh.Enabled:=false;
end;

procedure TfrmMatheMagixPAT.edtTiimeFromClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtDaysUntilNumberofDaysClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtFactMultClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtnumMultiplesClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtHypoSideClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtOppSideClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtAdjSideClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtAlphaClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtStartingCapitalClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.edtStartingInterestClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender))
end;

procedure TfrmMatheMagixPAT.sedTnLengthClick(Sender: TObject);
begin
 sedTnLength.clear
end;


procedure TfrmMatheMagixPAT.pgcMiscellaneousChange(Sender: TObject);
begin
 scbUniTool.max :=  9;
 scbUniTool.Position := pgcMiscellaneous.TabIndex;
end;

procedure TfrmMatheMagixPAT.AutoComplete(edt : TEdit; pstn : integer; lsb : TListBox; str : TStrings; clr : TColor);
var
 i, d     : integer;
 auto, ss : string;
 p        : TPoint;
begin
 if (edt.Focused) and (edt.text <> '') then
  begin

   i := pstn; ss := edt.Text;

    if not (ss[i] in ['a'..'z', 'A'..'Z', '0'..'9', '"', ' ','+','-','/','*','^']) or (length(ss) < 1) then
     begin
      auto := '';
      lsb.Items.Clear;
      lsb.Visible := false;
      exit;
     end;

   i := pstn; Auto := ''; ss := edt.Text;

   if ss[i] in ['a'..'z', 'A'..'Z', '0'..'9','"'] then
   Repeat
    Auto := Auto + ss[i];
    dec(i);
   Until (ss[i] in ['+', '-', '/', '*', '^', '(', ')', ',', ' ', '"']) or (i < 1);

   ss := '';
   for i := length(auto) downto 1 do
    ss := ss + auto[i];

   lsb.Items.clear;

   if str.Count - 1 > 0 then
   for d := 0 to str.Count - 1 do
    begin
     auto := '';
     for i := 1 to length(ss) do
     if length(ss) <= length(str[d]) then
      auto := auto + str[d][i];

     if LowerCase(ss) = LowerCase(auto) then
     if str[d] <> '' then
      lsb.Items.add(str[d]);
    end;

     p := edt.ClientToScreen(Point(-self.Left + GetTextWidth(edt, edt.SelStart + 1), -self.Top));


    if lsb.Items.Count < 1
     then
      lsb.Visible := false
     else
      lsb.Visible := True;
    if p.x <= ClientWidth  - lsb.Width
     then
      lsb.Left := p.x
     else
      lsb.Left := ClientWidth  - lsb.Width;
    lsb.Top := p.y;


    if lsb.Items.Count < 10
     then
      lsb.Height := lsb.Items.Count * 14 + 8
     else
      lsb.Height := 146;

    lsb.color := clr;
    lsb.Color := clSilver;

  end;

end;

procedure TfrmMatheMagixPAT.AutoFy(edt : Tedit; lsb : TListBox);
var
 str, edit : string;
 i, t      : integer;
 isfunc    : boolean;
begin

 edit := edt.Text;
 str := lsb.Items[lsb.itemindex];


 if not(edit[edt.SelStart - 1] in ['+', '-', '/', '*', '^' , '(', ')', ' ']) then
 // edt.SelStart := edt.SelStart - 1 else
 if (edt.SelStart > 1) then
 begin
  Repeat
   if edt.Text[edt.SelStart] <> ' ' then edt.SelStart := edt.SelStart - 1;
  Until (edit[edt.SelStart - 1] in ['+', '-', '/', '*', '^' , '(', ')', ' ', '"',',']) or (edt.SelStart < 2);
  if edit[edt.SelStart] in ['+', '-', '/', '*', '^' , '(', ')', ',', ' ', '"', ','] then
   edt.SelStart := edt.SelStart + 1;
 end
 else edt.SelStart := 1;

 if length(edit) > 1 then
  begin
   Repeat
    delete(edit, edt.selstart, 1);
   Until (edit[edt.SelStart + 1] in ['+', '-', '/', '*', '^' , '(', ')', ' ','"',',']) or (edt.SelStart >= length(edit));
  {if edt.SelStart = length(edit) then }delete(edit, edt.SelStart, 1);
  end
 else delete(edit, 1, 1);

 str := lsb.Items[lsb.itemindex];

 isfunc := false;
 for i := 0 to cmbCalculatorFunctions.Items.Count - 1 do
  if str = cmbCalculatorFunctions.Items[i] then
   isfunc := true;

 if isfunc
  then
   str := str + '()';

 t := 0;
 if isfunc then
 if edt.SelStart < length(edit) then
  if edit[edt.SelStart] = '(' then
   begin
    delete(str, length(str) - 1, 2);
    t := 2;
   end;

 if isfunc
  then
   t := edt.SelStart + length(str) - 2 + t
  else
   t := edt.SelStart + length(str) - 1 + t;

 insert(str, edit, edt.SelStart);

 edt.Text := edit;

 edt.SelStart := t;

end;

function IsNormalAuto(edt : TEdit) : Byte;
var
 i : integer;
 s : string;
 compat : boolean;
begin
 if edt.Text <> '' then
  begin
   Result := 0;
   s := '';
   i := edt.SelStart;
   compat := false;

   Repeat
    dec(i);
    if edt.Text[i] = ',' then compat := true;
    if (edt.Text[i] in ['+','/','-','*','^']) or ((edt.Text[i] = '"') and (edt.Text[i+1]=','))
     then
      exit;
   Until (edt.Text[i] in ['(']) or (i < 1);

   Repeat
    if edt.Text[i] in ['a'..'z','A'..'Z'] then s := s + edt.Text[i];
    dec(i);
   Until (edt.Text[i] in ['+','-','*','/','^','0'..'9','(']) or (i < 1) ;

   s := Uppercase(s);

   if s <> 'TREVNOC' then exit else inc(result);
   if compat then inc(Result);
  end else
   Result := 0;
end;

function CheckcorrectCategorie(d : integer; cmb : TComboBox; s : string) : integer;
var
 i : integer;
begin
 result := 0;
 for i := 0 to cmb.Items.Count do
  if s = cmb.Items[i] then
   Result := d;
end;

function KiesDieKorrectKategorie(edt : TEdit; cmbD, cmbA, cmbV, cmbM, cmbT, cmbTp, cmbAll : TComboBox) : TStrings;
var
 i, cmb : integer;
 s : string;
begin
 i := edt.SelStart;
 Result := cmbAll.Items;
 Repeat
  dec(i);
 Until (edt.Text[i] in ['(']) or (i < 1);
 s := '';
 Repeat
  if edt.Text[i] in ['A'..'Z','a'..'z'] then s := s + edt.Text[i];
  inc(i);
 Until (edt.Text[i] in [',']) or (i > length(edt.Text));

 cmb := CheckcorrectCategorie(1, cmbD, s);
 if cmb = 1 then
  begin
   Result := cmbD.Items;
   exit;
  end;

 cmb := CheckcorrectCategorie(2, cmbA, s);
 if cmb = 2 then
  begin
   Result := cmbA.Items;
   exit;
  end;

 cmb := CheckcorrectCategorie(3, cmbV, s);
 if cmb = 3 then
  begin
   Result := cmbV.Items;
   exit;
  end;

 cmb := CheckcorrectCategorie(4, cmbM, s);
 if cmb = 4 then
  begin
   Result := cmbM.Items;
   exit;
  end;

 cmb := CheckcorrectCategorie(5, cmbT, s);
 if cmb = 5 then
  begin
   Result := cmbT.Items;
   exit;
  end;

 cmb := CheckcorrectCategorie(6, cmbTp, s);
 if cmb = 6 then
  begin
   Result := cmbTp.Items;
   exit;
  end;

end;

procedure TfrmMatheMagixPAT.AutoCompKeyD(edt : TEdit; var key : word; lsb : TListBox);
begin
 if (key = vk_Return) and (lsb.ItemIndex = -1)
  then
   lsb.ItemIndex := 0;

 case key of
  VK_UP     : begin
                lsb.ItemIndex := lsb.ItemIndex - 1;
                if edt.SelStart <> length(edt.Text)
                 then
                  edt.SelStart := edt.SelStart + 1
                 else
                  edt.SelStart := edt.SelStart + 2;
              // Autofy(edt);
              end;

  VK_DOWN   : begin
               lsb.ItemIndex := lsb.ItemIndex + 1;
                if edt.SelStart <> length(edt.Text)
                 then
                 edt.SelStart := edt.SelStart - 1;
               //Autofy(edt);
              end;

  VK_LEFT   :  if IsNormalAuto(edtResult) = 0
                then
                 AutoComplete(edtResult, edtresult.SelStart, lsbAutoComplete, NormalAuto.Items, clSilver)
                else
               if IsNormalAuto(edtResult) = 1
                then
                 AutoComplete(edtResult, edtResult.SelStart, lsbAutoComplete, frmExplanation.cmbAllConvert.Items, clSkyBlue)
                else
               if IsNormalAuto(edtResult) = 2
                then
                 AutoComplete(edtResult, edtResult.SelStart, lsbAutoComplete, KiesDieKorrectKategorie(edtresult, frmExplanation.cmbDistance, frmExplanation.cmbArea, frmExplanation.cmbVolume, frmExplanation.cmbMass, frmExplanation.cmbTime, frmExplanation.cmbTempreture, frmExplanation.cmbAllConvert), clTeal);
  //AutoComplete(edt, edt.SelStart - 1, lsb, NormalAuto.Items);

  VK_RIGHT  : if IsNormalAuto(edtResult) = 0
                then
                 AutoComplete(edtResult, edtresult.SelStart, lsbAutoComplete, NormalAuto.Items, clSilver)
                else
               if IsNormalAuto(edtResult) = 1
                then
                 AutoComplete(edtResult, edtResult.SelStart, lsbAutoComplete, frmExplanation.cmbAllConvert.Items, clSkyBlue)
                else
               if IsNormalAuto(edtResult) = 2
                then
                 AutoComplete(edtResult, edtResult.SelStart, lsbAutoComplete, KiesDieKorrectKategorie(edtresult, frmExplanation.cmbDistance, frmExplanation.cmbArea, frmExplanation.cmbVolume, frmExplanation.cmbMass, frmExplanation.cmbTime, frmExplanation.cmbTempreture, frmExplanation.cmbAllConvert), clTeal);
  //AutoComplete(edt, edt.SelStart + 1, lsb, NormalAuto.Items);

  VK_RETURN : if lsb.ItemIndex > -1 then
              begin
               Autofy(edt, lsb);
               lsb.Visible := false;
              end;
 end;
 //UserFriendBrack(edt);

end;

procedure TfrmMatheMagixPAT.EQ2ANSchng(Clike:TEdit);
begin
 if clike.text = ''
  then begin
   clike.text := '0';
   lsbAutoComplete.Hide;
  end else
  if clike.Text[length(clike.Text)] <> '='
   then begin
   EQ2ANSVeri(clike);
    //lblUniAutoAnswer.caption := cal.GetAnswer(Variblize(Clike.Text, varnme, varval));
    lblUniAutoAnswer.caption := cal.GetAnswer(LabasicCustomfunctionize(Variblize(Clike.Text, varnme, varval), frmCustomFunctionsCode.vleVariables, memStore, frmCustomFunctionsCode.lsbNavigon, frmCustomFunctionsCode.Code));
    if Clike.text <> '' then
    if IsNormalAuto(edtResult) = 0
       then
        AutoComplete(Clike, Clike.SelStart, lsbAutoComplete, NormalAuto.Items, clSilver)
       else
      if IsNormalAuto(Clike) = 1
       then
        AutoComplete(Clike, Clike.SelStart, lsbAutoComplete, frmExplanation.cmbAllConvert.Items, clSkyBlue)
       else
      if IsNormalAuto(edtResult) = 2
       then
        AutoComplete(Clike, Clike.SelStart, lsbAutoComplete, KiesDieKorrectKategorie(edtresult, frmExplanation.cmbDistance, frmExplanation.cmbArea, frmExplanation.cmbVolume, frmExplanation.cmbMass, frmExplanation.cmbTime, frmExplanation.cmbTempreture, frmExplanation.cmbAllConvert), clTeal);

    //AutoComplete(clike, clike.SelStart, lsbAutoComplete, frmMatheMagixPAT.NormalAuto.Items);
   end else
    cal.GetAnswer(LabasicCustomfunctionize(Variblize(Clike.Text, varnme, varval), frmCustomFunctionsCode.vleVariables, memStore, frmCustomFunctionsCode.lsbNavigon, frmCustomFunctionsCode.Code), frmVariables.vleVariables);
end;

procedure TfrmMatheMagixPAT.edtResultChange(Sender: TObject);
begin
 if rgpCalculatorMode.ItemIndex = 0 then
 begin
  if edtResult.text = ''
   then begin
    edtCalculatorAnswer.Text := '0';
    lsbAutoComplete.Hide;
   end else
    if edtResult.Text[length(edtResult.Text)] <> '='
     then begin
      EQ2ANSVeri(edtResult);
      edtCalculatorAnswer.Text := cal.GetAnswer(LabasicCustomfunctionize(Variblize(edtResult.Text, varnme, varval), frmCustomFunctionsCode.vleVariables, memStore, frmCustomFunctionsCode.lsbNavigon, frmCustomFunctionsCode.Code));
      if IsNormalAuto(edtResult) = 0
       then
        AutoComplete(edtResult, edtresult.SelStart, lsbAutoComplete, NormalAuto.Items, clSilver)
       else
      if IsNormalAuto(edtResult) = 1
       then
        AutoComplete(edtResult, edtResult.SelStart, lsbAutoComplete, frmExplanation.cmbAllConvert.Items, clSkyBlue)
       else
      if IsNormalAuto(edtResult) = 2
       then
        AutoComplete(edtResult, edtResult.SelStart, lsbAutoComplete, KiesDieKorrectKategorie(edtresult, frmExplanation.cmbDistance, frmExplanation.cmbArea, frmExplanation.cmbVolume, frmExplanation.cmbMass, frmExplanation.cmbTime, frmExplanation.cmbTempreture, frmExplanation.cmbAllConvert), clTeal);

     end else
      btnEqlClick(Sender);
 end else
  edtCalculatorAnswer.Text := 'Press "=" to solve';

end;

procedure TfrmMatheMagixPAT.sedTimeLineJumpClick(Sender: TObject);
begin
lblTimeLineCalculate.Caption := TimeLine(edtDeposite, edtWithdraw, edtRate, TLinitial, TLRate, tkbTimeLine.max, rgpInterestType.itemindex, interval,VarNme, VarVal);
end;

procedure TfrmMatheMagixPAT.btnUniInfoClick(Sender: TObject);
var
 func : TFunc;
begin
   if pnlFormulater.visible=true then
    begin

     if pgcGeometery.visible=true then
      case pgcGeometery.TabIndex of
       0:begin
          edtSide1.Text := 'Base';
          edtSide2.Text := 'Height';
          edtSide3.Text := 'Hypotenuse';
         end;
      end;

     end;
   if pgcMiscellaneous.Visible=true then
    case pgcMiscellaneous.TabIndex of
     0: begin
         func := TFunc.create;
         edtDecimalSystem.Text := 'Decimal Number (eg '+FormatDateTime('yyyy', Now)+' or '+FormatDateTime('d', Now)+'+'+FormatDateTime('mm', Now)+')';
         edtRomanNumerals.Text := 'Roman Numeral (eg '+func.DecToRom(StrToInt(FormatDateTime('yyyy', Now)))+' or '+func.DecToRom(StrToInt(FormatDateTime('d', Now)))+'+'+func.DecToRom(StrToInt(FormatDateTime('mm', Now)))+')';
         func.Free;
        end;
     1: case pgcTimeConverter.TabIndex of
         0: begin
             edtTimeFrom.Text := 'Number That You Have';
             edtTimeTo.Text := 'Number You''re Converting too';
            end;
         1: begin
             edtTimeConverterBrokenDownYears.Text := '0';
             edtTimeConverterBrokenDownWeeks.Text := '0';
             edtTimeConverterBrokenDownDays.Text := '0';
             edtTimeConverterBrokenDownHours.Text := '0';
             edtTimeConverterBrokenDownMinutes.Text := '0';
             edtTimeConverterBrokenDownSecounds.Text := '0';
             edtTimeConverterBrokenDownAnswer.Text := '0';
            end;
        end;
     2: begin
         edtTimeDifferenceValue1.Text := 'Value Taken From';
         edtTimeDifferenceValue2.Text := 'Value Taken Out';
         edtTimeDifferenceAnswer.Text := 'Answer';
        end;
     3: case pgcTimeConverter.TabIndex of
         0: edtdtkAnswer.Text := 'Answer';
         1: begin
             edtDaysUntilNumberofDays.Text := 'Number of Days';
             lblDaysUntilDate.caption:='';
            end;
        end;
     4: begin
         edtFactMult.Text := 'Factors';
         edtnumMultiples.Text := 'Multiples';
        end;
     5: begin
         edtHypoSide.Text := 'Hypotenuse';
         edtOppSide.Text := 'Opposite Side';
         edtAdjSide.Text := 'Adjacent Side';
         edtAlpha.Text := 'Angle';
        end;
     6: begin
         edtStatisticsNumber.Text := 'Numbers Here';
        end;
    end;
     if pnlBusiness.Visible then
      begin
       if pgcInterest.Visible then
        case pgcInterest.TabIndex of
         0: begin

            end;
         1: begin
             edtSimpleInitialAmount.Text := 'Investment Amount';
             edtSimpleIntrestRate.Text := 'Rate';
             edtSimpleMonthlyPayment.Text := 'Monthly Return';
             edtSimpleTotalPayment.Text := 'Total Return';
            end;
        end;
    end;
end;

procedure TfrmMatheMagixPAT.EQ2ANSExit;
begin
 lblUniAutoAnswer.Caption := '';
 lsbAutoComplete.Visible := false;
end;

procedure TfrmMatheMagixPAT.edtDecimalSystemExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtRomanNumeralsExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtTimeFromExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtTimeDifferenceValue1Exit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtTimeDifferenceValue2Exit(Sender: TObject);
begin
EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownYearsExit(
  Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownWeeksExit(
  Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownDaysExit(
  Sender: TObject);
begin
  EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownHoursExit(
  Sender: TObject);
begin
 EQ2ANSExit; 
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownMinutesExit(
  Sender: TObject);
begin
  EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownSecoundsExit(
  Sender: TObject);
begin
  EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtDaysUntilNumberofDaysExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtFactMultExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtnumMultiplesExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtHypoSideExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtOppSideExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtAlphaExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtAdjSideExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtStatisticsNumberExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtVIRVoltageExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtVIRCurrentExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtVIRResistanceExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtWQVWattsExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtWQVChargeExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtWQVVoltageExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtQITChargeExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtQITCurrentExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtQITTimeExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtDVTDistanceExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtDVTVelocityExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtDVTTimeExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPMVMomentumExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPMVMassExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPMVVelocityExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtFMAForceExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtFMAMassExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtFMAAccelerationExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtIMVUImpulseExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtIMVUMassExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtIMVUFinalVelocityExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtIMVUInitialVelocityExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPFAPressureExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPFAForceExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPFAAreaUnitExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtMDVMassExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtMDVDensityExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtMDVVolumeExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtJRPAngularMomentumExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtJRPRadiusVectorExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtJRPLinearMomentumExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtTRFTorqueExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtTRFRadiusVectorExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtTRFLinearForceExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtFMVRForceExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtFMVRMassExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtFMVRVelocityExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtFMVRRadiusExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtVARVelocityExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtVARAccelerationExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtVARRadiusExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtM1M2MMass1Exit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtM1M2MMass2Exit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtM1M2MReducedMassExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtWFDWorkExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtWFDForceExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtWFDDistanceExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtEMHPotentialEnergyExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtEMHMassExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtEMHHeightExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtWPTWorkExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtWPTPowerExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtWPTTimeExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtVATVelocityExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtVATAccelerationExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtVATTimeExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtAVUTAccelerationExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtAVUTFinalVelocityExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtAVUTInitialVelocityExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtAVUTTimeExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtSide3Exit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtSide2Exit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtSide1Exit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPointOneXExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPointOneYExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPointTwoYExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPointTwoXExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPointOneXMidExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPointOneYMIdExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPointTwoXMidExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPointTwoYMidExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPointOneXSlopeExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPointOneYSlopeExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPointTwoXSlopeExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtPointTwoYSlopeExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtCompoundPresentValueExit(Sender: TObject);
begin
  EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtCompoundIntrestRateExit(Sender: TObject);
begin
 EQ2ANSExit; 
end;

procedure TfrmMatheMagixPAT.edtCompoundFutureValueExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtCompoundInterestYearsToGrowExit(
  Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtCompoundInterestImplmentationYearlyExit(
  Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtSimpleInitialAmountExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtSimpleIntrestRateExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtStartingCapitalExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edtStartingInterestExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.imgSettingsIconClick(Sender: TObject);
begin
 if not tmrSettings.Enabled then
 if imgSettingsIcon.tag = 1 then        //close
  begin
   imgSettingsIcon.tag := 0;
   imgSettingsIcon.Picture.LoadFromFile('SettingsIcon.ico');
  end else
  begin                           //open
   imgSettingsIcon.tag := 1;
   imgSettingsIcon.Picture.LoadFromFile('SettingsIconSet.ico');
   cmbFunctionMode.Text := 'Function Mode';
  end;
 tmrSettings.Enabled := true;
 lsbAutoComplete.Hide;
 //sedCalcDecimalPoint.SetFocus;
end;

procedure TfrmMatheMagixPAT.tmrSettingsTimer(Sender: TObject);
begin
 if openSet then
 begin
  if pnlCalculaterCalc.Top < 73 then    //open
   pnlCalculaterCalc.top := pnlCalculaterCalc.top + 1
  else if pnlCalculaterCalc.Top = 73 then
   begin
    OpenSet:=false;
    tmrSettings.Enabled := false;
   end;
 end else
 begin
  if pnlCalculaterCalc.Top > 33 then     //close
   pnlCalculaterCalc.top := pnlCalculaterCalc.top - 1
  else if pnlCalculaterCalc.Top = 33 then
   begin
    OpenSet:=True;
    tmrSettings.Enabled := false;
   end;
 end;
end;

procedure TfrmMatheMagixPAT.imgSetBackClick(Sender: TObject);
begin
 tmrSettings.Enabled := true;
end;

procedure TfrmMatheMagixPAT.sedCalcDecimalPointExit(Sender: TObject);
begin
 if  (not cmbFunctionMode.Focused) and (not sedCalcDecimalPoint.Focused)
 then if pnlCalculaterCalc.Top <> 33 then  tmrSettings.Enabled := true;
end;

procedure TfrmMatheMagixPAT.cmbAngleUnitExit(Sender: TObject);
begin
 if  (not cmbFunctionMode.Focused) and (not sedCalcDecimalPoint.Focused)
 then if pnlCalculaterCalc.Top <> 33 then  tmrSettings.Enabled := true;
end;

procedure TfrmMatheMagixPAT.cmbFunctionModeExit(Sender: TObject);
begin
 if  (not cmbFunctionMode.Focused) and (not sedCalcDecimalPoint.Focused)
 then if pnlCalculaterCalc.Top <> 33 then  tmrSettings.Enabled := true;
end;

procedure TfrmMatheMagixPAT.cmbAngleUnitEnter(Sender: TObject);
begin
 tmrSettings.Enabled :=false;
end;

procedure TfrmMatheMagixPAT.cmbFunctionModeEnter(Sender: TObject);
begin
 tmrSettings.Enabled :=false;
end;

procedure TfrmMatheMagixPAT.sedCalcDecimalPointEnter(Sender: TObject);
begin
 tmrSettings.Enabled :=false;
end;

procedure TfrmMatheMagixPAT.edtResultMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if edtResult.SelLength > 0 then
  begin
   //edtCalculatorAnswer.Text := FormatAnswer(cal.GetAnswer(Variblize(edtResult.SelText, varnme, VarVal)),Format);
   edtCalculatorAnswer.Text := cal.GetAnswer(LabasicCustomfunctionize(Variblize(edtResult.SelText, varnme, varval), frmCustomFunctionsCode.vleVariables, memStore, frmCustomFunctionsCode.lsbNavigon, frmCustomFunctionsCode.Code));
   btnSimplify.Enabled := true;
  end else
   btnSimplify.Enabled := false;
end;

procedure TfrmMatheMagixPAT.edtStatisticsNumberMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtHypoSideMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtAdjSideMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtOppSideMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtAlphaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtFactMultMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtnumMultiplesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtDaysUntilNumberofDaysMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtTimeDifferenceValue1MouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtTimeDifferenceValue2MouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownYearsMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownWeeksMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownDaysMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownHoursMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownMinutesMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownSecoundsMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtTimeFromMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtDecimalSystemMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
 i : integer;
 v : double;
 func : TFunc;
begin
if edtDecimalSystem.Focused then
begin
 func := TFunc.Create;
 val(cal.GetAnswer(Variblize(edtDecimalSystem.Text, VarNme, VarVal)), v, i);
 EQ2ANSSel(TEdit(Sender));
 if edtDecimalSystem.SelLength > 0
  then
   if (not edtRomanNumerals.Focused)and(edtDecimalSystem.Focused)
    then
     edtRomanNumerals.Text := func.DecToRom(trunc(v));
 func.Free;
end;
end;

procedure TfrmMatheMagixPAT.edtSimpleIntrestRateMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtSimpleInitialAmountMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundInterestImplmentationYearlyMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundInterestYearsToGrowMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundFutureValueMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundIntrestRateMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCompoundPresentValueMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtStartingCapitalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtStartingInterestMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtSide3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtSide2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtSide1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPointOneXMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPointOneYMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPointTwoYMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPointTwoXMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPointOneXMidMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPointOneYMIdMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPointTwoYMidMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPointTwoXMidMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPointOneXSlopeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPointOneYSlopeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPointTwoYSlopeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPointTwoXSlopeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtVIRVoltageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtVIRCurrentMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtVIRResistanceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtWQVWattsMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtWQVChargeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtWQVVoltageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtQITChargeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtQITCurrentMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtQITTimeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtAVUTAccelerationMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtAVUTFinalVelocityMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtAVUTInitialVelocityMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtAVUTTimeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtVATVelocityMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtVATAccelerationMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtVATTimeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtWPTWorkMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtWPTPowerMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtWPTTimeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtEMHPotentialEnergyMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtEMHMassMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtEMHHeightMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtWFDWorkMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtWFDForceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtWFDDistanceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtM1M2MMass1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtM1M2MMass2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtM1M2MReducedMassMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtVARVelocityMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtVARAccelerationMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtVARRadiusMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtFMVRForceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtFMVRMassMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtFMVRVelocityMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtFMVRRadiusMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtTRFTorqueMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtTRFRadiusVectorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtTRFLinearForceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtJRPAngularMomentumMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtJRPRadiusVectorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtJRPLinearMomentumMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtMDVMassMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtMDVDensityMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtMDVVolumeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPFAPressureMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPFAForceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPFAAreaUnitMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtIMVUImpulseMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtIMVUMassMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtIMVUFinalVelocityMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtIMVUInitialVelocityMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtFMAForceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtFMAMassMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtFMAAccelerationMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPMVMomentumMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPMVMassMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtPMVVelocityMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtDVTDistanceMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtDVTVelocityMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtDVTTimeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtResultClick(Sender: TObject);
var
 s       : string;
 y, i, l : integer;
 comma   : integer;
 clike   : TEdit;
begin
 comma := 0;
 clike := edtResult;
 if clike.SelLength = 0 then
  begin
    if Clike.SelStart = length(clike.Text)
     then
      Clike.SelectAll
     else
      if (clike.Text[clike.SelStart] in ['0'..'9','.'])and(clike.Text[clike.SelStart+1] in ['+','/','*','-','^','(',')',' '])then
      begin
       i := clike.SelStart;
       Repeat
         l := clike.SelLength + 1;
         clike.SelStart := clike.SelStart -1;
         clike.SelLength := l;
         dec(i);
       Until (clike.Text[i] in ['+','/','*','-','^','(',')'])or(i = 0);
      end;
    EQ2ANSVeri(edtCalculatorAnswer);
    edtCalculatorAnswer.Text := cal.GetAnswer(LabasicCustomfunctionize(Variblize(edtResult.Text, varnme, varval), frmCustomFunctionsCode.vleVariables, memStore, frmCustomFunctionsCode.lsbNavigon, frmCustomFunctionsCode.Code));
    s:=edtCalculatorAnswer.Text;
  end else
  begin
   y:=0;
   for i := 1 to clike.SelLength do
    if clike.SelText[i] = ','
     then
      inc(comma);

   if comma > 0 then
   begin
   if (clike.Text[clike.SelStart] <> '(')or(clike.Text[clike.SelStart+Clike.SelLength+1] <> ')') then
    begin
     if clike.selText[1] = ',' then
      begin
       if clike.selText[2] <> ' '
        then
         l:=clike.SelLength + 1
        else
         l := clike.SelLength + 2;
       if clike.selText[2] <> ' '
        then
         clike.selStart := clike.selStart + 1
        else
         clike.selStart := clike.selStart + 2;
       clike.SelLength := l;
      end;
     i:=clike.SelStart+clike.SelLength;
     while comma > 0 do
      begin
       if clike.Text[i] = ','
        then
         dec(comma);
       clike.SelLength := clike.SelLength -1;
       dec(i);
      end;
    end;
    if (clike.Text[clike.SelStart] = '(')and(clike.Text[clike.SelStart+Clike.SelLength+1] = ')') then
    begin
     i:=clike.SelStart;
     Repeat
      l := clike.SelLength + 1;
      clike.SelStart := clike.SelStart -1;
      clike.SelLength := l;
      dec(i);
     Until  (clike.Text[i] in ['+','-','/','*','^','(',',',' ']) or (i = 0);
     clike.SelLength := Clike.SelLength + 1;
    end;

   end else //{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}<><><><><>
  if clike.selLength > 0 then
  if (clike.SelText[1] <> '(')and(clike.Text[clike.SelStart+Clike.SelLength+1] <> ')') then
   Repeat
    inc(y);
    if clike.Text[y] in ['0'..'9','.','a'..'z','A'..'Z'] then
     begin
      if y = clike.SelStart then                   //Left Part if num
       begin
        i:=y;
        Repeat
         l := clike.SelLength + 1;
         clike.SelStart := clike.SelStart -1;
         clike.SelLength := l;
         dec(i);
        Until  (clike.Text[i] in ['+','-','/','*','^','(',',',' ']) or (i = 0);
       end else
       if y = clike.SelLength + clike.SelStart then   //Back PArt if num
        begin
         i:=y;
         while not(clike.Text[i+1] in ['+','-','/','*','^',')',',']) do
          begin
           clike.SelLength := clike.SelLength +1;
           inc(i);
          end;
        end else
        if clike.selLength > 1 then if clike.SelText[1] in ['^','*','/','-','+','(',',',' '] then    //left Part if op
         begin
          l := clike.SelLength-1;
          clike.SelStart := clike.SelStart + 1;
          clike.SelLength := l;
         end else
         if clike.SelText[length(clike.SelText)] in ['^','*','/','-','+',')',',',' ']  //Back Part if op
          then
           clike.SelLength := clike.SelLength -1;

     end;
   Until y = length(clike.Text);

   clike.SelLength := GetBracketValSelLength(clike);
  end;
end;

procedure TfrmMatheMagixPAT.imgMinimizeClick(Sender: TObject);
begin
 bmbGames.Font.color := clBlack;
 bmbMiscellaneous.font.Color := clBlack;
 bmbFormulater.font.color := clBlack;
 bmbBusiness.font.color := clBlack;
 tmrNonCalcClose.Enabled:=true;
 cmbConstants.DropDownCount:=18;
 cmbCalculatorFunctions.DropDownCount:=18;
 scbUniTool.Enabled:=false;
 btnUniClear.Enabled:=false;
end;

procedure TfrmMatheMagixPAT.sedMinNumSizeChange(Sender: TObject);
begin
 if sedMinNumSize.Value >= sedMaxNumSize.Value then sedMaxNumSize.Value := sedMinNumSize.value+10;
end;

procedure TfrmMatheMagixPAT.sedMaxNumSizeChange(Sender: TObject);
begin
 if sedMinNumSize.Value >= sedMaxNumSize.Value then sedMinNumSize.Value := sedMaxNumSize.value-10;
end;

procedure TfrmMatheMagixPAT.btnVariablesClick(Sender: TObject);
begin
 frmVariables.Show;
 frmMatheMagixPAT.Enabled := false;
end;

procedure TfrmMatheMagixPAT.cmbVarClick(Sender: TObject);
var
 i, l : integer;
 s : string;
begin
 l := cmbVar.ItemIndex;
 if l > 0 then
  begin
   i:=0;
   Repeat
    inc(i);
    s := s + cmbVar.Items[l][i];
   Until cmbVar.Items[l][i+1] = '=';

   if edtResult.SelLength = 0 then
   if edtResult.text <> '' then
   if edtResult.Text[length(edtResult.Text)] in ['+','/','*','-','^','e','E','(',',','<','>','=','"','#','$','%'] then
    begin
     edtResult.Text := edtResult.Text + s;
     edtResult.SetFocus;
     edtResult.SelStart := length(edtResult.Text) - length(s);
     edtResult.SelLength := length(s);
    end else
    begin
     edtResult.Text := edtResult.Text + '(' + s + ')';
     edtResult.SetFocus;
     edtResult.SelStart := length(edtResult.Text) - length(s)-2;
     edtResult.SelLength := length(s)+2;
    end;
    edtResultChange(Sender);
  end else
  begin
   frmVariables.Show;

   if frmMatheMagixPAT.Left - frmVariables.Width - 15 > 0
    then
     frmVariables.Left := frmMatheMagixPAT.Left - frmVariables.Width - 15;
   //frmMatheMagixPAT.Enabled := false;
  end;
end;

procedure TfrmMatheMagixPAT.lsb2DClick(Sender: TObject);
var
 i : integer;
 s : string;
begin
 edt2D.Clear;
 s := lsb2D.Items[lsb2D.itemindex];
 i := length(s);
 if lsb2D.ItemIndex >= 0 then
  Repeat
   if s[i] = '=' then
    insert(':', s ,i);
   dec(i);
  Until s[i+1] = '=';
 edt2D.Text := s;
 edt2D.SetFocus;
 edt2D.SelStart := length(s);
 EQ2ANSChng(edt2D);
end;

procedure TfrmMatheMagixPAT.edt2DChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtAssignAreaChange(Sender: TObject);
var
 done : boolean;
begin
 done := false;
 if TEdit(Sender).Text <> '' then
  if (Tedit(Sender).Text[length(TEdit(Sender).Text)] = '=')
  and(Tedit(Sender).Text[length(TEdit(Sender).Text)-1] <> ':') then
   done := true;
  EQ2ANSChng(TEdit(Sender));
 if done then edt2D.SetFocus;
end;

procedure TfrmMatheMagixPAT.edtAssignAreaClick(Sender: TObject);
begin
 Tedit(Sender).Clear;
 Tedit(Sender).Font.Color := clBlack;
end;

procedure TfrmMatheMagixPAT.edtAssignAreaExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edt2DExit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.edt2DClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.img2DSquareClick(Sender: TObject);
begin
 lsb2D.Items.Clear;
 lsb2DKey.Items.clear;
 lsb2D.Items.Add('A = L^2');
 lsb2D.Items.Add('A = SQR(P / 4)');
 lsb2D.Items.Add('P = L * 4');
 lsb2D.Items.Add('P = 4 * SQRT(A)');
 lsb2D.Items.Add('L = SQRT(A)');
 lsb2D.Items.Add('L = P / 4');

 lsb2DKey.Items.add('A = Area');
 lsb2DKey.Items.add('P = Perimeter');
 lsb2DKey.Items.add('L = Length');
 edt2D.Clear;

 Shape2D := 'S';
end;

procedure TfrmMatheMagixPAT.img2DRectangleClick(Sender: TObject);
begin
 lsb2D.Items.Clear;
 lsb2DKey.Items.clear;
 lsb2D.Items.Add('A = L * B');
 lsb2D.Items.Add('P = 2L + 2B');
 lsb2D.Items.Add('L = A / B');
 lsb2D.Items.Add('L = (P - 2B) / 2');
 lsb2D.Items.Add('B = A / L');
 lsb2D.Items.Add('B = (P - 2L) / 2');

 lsb2DKey.Items.add('A = Area');
 lsb2DKey.Items.add('P = Perimeter');
 lsb2DKey.Items.add('L = Length');
 lsb2DKey.Items.add('B = Breath');
 edt2D.Clear;

 Shape2D := 'R';
end;

procedure TfrmMatheMagixPAT.img2DCircleClick(Sender: TObject);
begin
 lsb2D.Items.Clear;
 lsb2DKey.Items.clear;
 lsb2D.Items.Add('A = pi * r^2');
 lsb2D.Items.Add('A = pi * d^2 / 4');
 lsb2D.Items.Add('P = 2pi * r');
 lsb2D.Items.Add('P = 2pi * (d / 2)');
 lsb2D.Items.Add('r = SQRT(A / pi)');
 lsb2D.Items.Add('r = P / (2pi)');
 lsb2D.Items.Add('d = 2SQRT(A / pi)');
 lsb2D.Items.Add('d = P / (2pi) * 2');

 lsb2DKey.Items.add('A = Area');
 lsb2DKey.Items.add('P = Circumfrence');
 lsb2DKey.Items.add('r = Radius');
 lsb2DKey.Items.add('d = Diameter');
 edt2D.Clear;

 Shape2D := 'C';
end;

procedure TfrmMatheMagixPAT.img2DTriangleClick(Sender: TObject);
begin
 lsb2D.Items.Clear;
 lsb2DKey.Items.clear;
 lsb2D.Items.Add('A = (1 / 2)b * h');
 lsb2D.Items.Add('A = SQRT(s(s - a)(s - b)(s - c))');
 lsb2D.Items.Add('A = 1 / 2a * b * SIN(C)');
 lsb2D.Items.Add('P = SUM(a, b, c)');
 lsb2D.Items.Add('s = SUM(a, b, c) / 2');
 lsb2D.Items.Add('h = 2A / b');
 lsb2D.Items.Add('b = A / h *  2');
 lsb2D.Items.Add('a = P - SUM(b, c)');
 lsb2D.Items.Add('b = P - SUM(a, c)');
 lsb2D.Items.Add('c = P - SUM(a, b)');
 lsb2D.Items.Add('C = ASIN((2A) / (a * b))');

 lsb2DKey.Items.add('A = Area');
 lsb2DKey.Items.add('a = A Side');
 lsb2DKey.Items.add('b = Base');
 lsb2DKey.Items.add('C = An Angle');
 lsb2DKey.Items.add('c = A Side');
 lsb2DKey.Items.add('h = Height');
 lsb2DKey.Items.add('P = Perimeter');
 lsb2DKey.Items.add('s = Half the Perimter');
 edt2D.Clear;

 Shape2D := 'T';
end;

procedure TfrmMatheMagixPAT.lsb2DKeyClick(Sender: TObject);
var
 i, k : integer;
 c    : char;
begin
 c := lsb2DKey.Items[lsb2DKey.ItemIndex][1];
 k := lsb2DKey.ItemIndex;
 case Shape2D of
  'S' : img2DSquareClick(Sender);
  'R' : img2DRectangleClick(Sender);
  'C' : img2DCircleClick(Sender);
  'T' : img2DTriangleClick(Sender);
  'H' : img2DRhombusClick(Sender);
 end;
 i := 0;
 if lsb2D.Items.Count > 0 then
  Repeat
   if lsb2D.Items[i][1] <> c
    then
     lsb2D.Items.Delete(i)
    else
     inc(i);
  Until i > lsb2D.Items.Count-1;
 lsb2DKey.ItemIndex := k;
end;

procedure TfrmMatheMagixPAT.lbl2DFormulaeClick(Sender: TObject);
begin
 case Shape2D of
  'S' : img2DSquareClick(Sender);
  'R' : img2DRectangleClick(Sender);
  'C' : img2DCircleClick(Sender);
  'T' : img2DTriangleClick(Sender);
  'H' : img2DRhombusClick(Sender);
 end;
end;

procedure TfrmMatheMagixPAT.img2DRhombusClick(Sender: TObject);
begin
 lsb2D.Items.Clear;
 lsb2DKey.Items.clear;
 lsb2D.Items.Add('A = (1/2)d1 * d2');
 lsb2D.Items.Add('A = b * SIN(o)');
 lsb2D.Items.Add('r = A / (1 / 2 * d2)');
 lsb2D.Items.Add('h = A / (1 / 2 * d1)');
 lsb2D.Items.Add('o = ASIN(A / b)');
 lsb2D.Items.Add('b = A / SIN(o)');


 lsb2DKey.Items.add('A = Area');
 lsb2DKey.Items.add('o = Any Angle');
 lsb2DKey.Items.add('r = Diagnal of 2 Opposite Angles');
 lsb2DKey.Items.add('h = Diagnal of 2 Opposite Angles Side');
 lsb2DKey.Items.add('b = Base');
 lsb2DKey.Items.add('P = Perimeter');
 edt2D.Clear;

 Shape2D := 'H';
end;

procedure TfrmMatheMagixPAT.cmbVarChange(Sender: TObject);
begin
 SendMessage(cmbVar.Handle, CB_SETDROPPEDWIDTH, ChangeWidthcmb(cmbVar), 0);
end;

procedure TfrmMatheMagixPAT.cmbResultFormatEnter(Sender: TObject);
begin
tmrSettings.Enabled :=false;
end;

procedure TfrmMatheMagixPAT.cmbResultFormatExit(Sender: TObject);
begin
 if  (not cmbFunctionMode.Focused) and (not sedCalcDecimalPoint.Focused)
 then if pnlCalculaterCalc.Top <> 33 then  tmrSettings.Enabled := true;
end;

procedure TfrmMatheMagixPAT.edtCalculatorAnswerMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
edtCalculatorAnswer.Hint := edtCalculatorAnswer.Text;
end;

procedure TfrmMatheMagixPAT.lsb3DClick(Sender: TObject);
var
 i : integer;
 s : string;
begin
 edt3D.Clear;
 s := lsb3D.Items[lsb3D.itemindex];
 i := length(s);
 if lsb2D.ItemIndex >= 0 then
  Repeat
   if s[i] = '=' then
    insert(':', s ,i);
   dec(i);
  Until s[i+1] = '=';
 edt3D.Text := s;
 edt3D.SetFocus;
 edt3D.SelStart := length(s);
 EQ2ANSChng(edt3D);
end;

procedure TfrmMatheMagixPAT.img3DCubeClick(Sender: TObject);
begin
 lsb3D.Items.Clear;
 lsb3DKey.Items.clear;
 lsb3D.Items.Add('V = L^3');
 lsb3D.Items.Add('A = 6(L^2)');
 lsb3D.Items.Add('L = CBRT(V)');
 lsb3D.Items.Add('L = SQRT(A / 6)');


 lsb3DKey.Items.add('A = Surface Area');
 lsb3DKey.Items.add('V = Volume');
 lsb3DKey.Items.add('L = Length');
 edt3D.Clear;

 Shape3D := 'C';
end;

procedure TfrmMatheMagixPAT.lsb3DKeyClick(Sender: TObject);
var
 i, k : integer;
 c    : char;
begin
 c := lsb3DKey.Items[lsb3DKey.ItemIndex][1];
 k := lsb3DKey.ItemIndex;
 case Shape3D of
  'C' : img3DCubeClick(Sender);
  'R' : img3DRectPrisClick(Sender);
  'S' : img3DSphereClick(Sender);
  'P' : img3DPyramidClick(Sender);
  '^' : img3DConeClick(Sender);
  'U' : img3DCylinderClick(Sender);
 end;              
 i := 0;
 if lsb3D.Items.Count > 0 then
  Repeat
   if lsb3D.Items[i][1] <> c
    then
     lsb3D.Items.Delete(i)
    else
     inc(i);
  Until i > lsb3D.Items.Count-1;
 lsb3DKey.ItemIndex := k;
end;

procedure TfrmMatheMagixPAT.img3DRectPrisClick(Sender: TObject);
begin
 lsb3D.Items.Clear;
 lsb3DKey.Items.clear;
 lsb3D.Items.Add('V = L * H * W');
 lsb3D.Items.Add('A = 2(LH + WL + HW)');
 lsb3D.Items.Add('L = V / (H * W)');
 lsb3D.Items.Add('L = (A - 2W * H) / (2W + 2H)');
 lsb3D.Items.Add('H = V / (L * W)');
 lsb3D.Items.Add('H = (A - 2W * L) / (2W + 2L)');
 lsb3D.Items.Add('W = V / (H * L)');
 lsb3D.Items.Add('W = (A - 2L * H) / (2L + 2H)');

 lsb3DKey.Items.add('V = Volume');
 lsb3DKey.Items.add('A = Surface Area');
 lsb3DKey.Items.add('L = Length');
 lsb3DKey.Items.add('H = Height');
 lsb3DKey.Items.add('W = Width');
 edt3D.Clear;

 Shape3D := 'R';
end;

procedure TfrmMatheMagixPAT.img3DSphereClick(Sender: TObject);
begin
 lsb3D.Items.Clear;
 lsb3DKey.Items.clear;
 lsb3D.Items.Add('V = (4 / 3) * pi * r^3');
 lsb3D.Items.Add('A = 4pi * r^2');
 lsb3D.Items.Add('r = CBRT(3 / 4V / pi)');
 lsb3D.Items.Add('r = SQRT(A / 4pi)');

 lsb3DKey.Items.add('V = Volume');
 lsb3DKey.Items.add('A = Surface Area');
 lsb3DKey.Items.add('r = Radius');
 edt3D.Clear;

 Shape3D := 'S';
end;

procedure TfrmMatheMagixPAT.img3DPyramidClick(Sender: TObject);
begin
 lsb3D.Items.Clear;
 lsb3DKey.Items.clear;
 lsb3D.Items.Add('V = (1 / 3)B^2 * H');
 lsb3D.Items.Add('A = 2B * S + B^2');
 lsb3D.Items.Add('B = SQRT(3V / H)');
 lsb3D.Items.Add('B = SQRT(A + S^2) - S');
 lsb3D.Items.Add('H = 3V / B^2');
 lsb3D.Items.Add('S = A-B^2 / (2B)');

 lsb3DKey.Items.add('V = Volume');
 lsb3DKey.Items.add('A = Surface Area');
 lsb3DKey.Items.add('B = Base');
 lsb3DKey.Items.add('H = Height');
 lsb3DKey.Items.add('S = Slant Height');
 edt3D.Clear;

 Shape3D := 'P';
end;

procedure TfrmMatheMagixPAT.img3DConeClick(Sender: TObject);
begin
 lsb3D.Items.Clear;
 lsb3DKey.Items.clear;
 lsb3D.Items.Add('V = (1 / 3)pi * r^2 * H');
 lsb3D.Items.Add('A = pi * r * S + pi * r^2');
 lsb3D.Items.Add('r = SQRT(3V / pi * H)');
 lsb3D.Items.Add('r = -1 * (SQRT(pi) * SQRT(4A + pi * S^2) + pi * S) / 2pi');
 lsb3D.Items.Add('H = 3V / pi * r^2');
 lsb3D.Items.Add('S = (A - pi * r^2) / (pi * r)');

 lsb3DKey.Items.add('V = Volume');
 lsb3DKey.Items.add('A = Surface Area');
 lsb3DKey.Items.add('H = Height');
 lsb3DKey.Items.add('r = Radius');
 edt3D.Clear;

 Shape3D := '^';
end;

procedure TfrmMatheMagixPAT.img3DCylinderClick(Sender: TObject);
begin
 lsb3D.Items.Clear;
 lsb3DKey.Items.clear;
 lsb3D.Items.Add('V = pi * r^2 * H');
 lsb3D.Items.Add('A = 2pi * r^2 + 2pi * r * H');
 lsb3D.Items.Add('r = SQRT(V / (pi * H))');
 lsb3D.Items.Add('r = -1 * (SQRT(pi) * SQRT(4A + pi * S^2) + pi * S) / 2pi');
 lsb3D.Items.Add('H = SQRT(V / (pi * r^2))');
 lsb3D.Items.Add('H = (A - 2(pi * r^2)) / (2pi * r)');

 lsb3DKey.Items.add('V = Volume');
 lsb3DKey.Items.add('A = Surface Area');
 lsb3DKey.Items.add('H = Height');
 lsb3DKey.Items.add('r = Radisu');
 edt3D.Clear;

 Shape3D := 'U';
end;

procedure TfrmMatheMagixPAT.TabSystemSet(pnl : TPanel; lbl : TLabel; lbs : array of TLabel);
var
 i: integer;
Begin

 if pnl.Width > 25 then
 Begin

 if lbl.Left > pnl.Width div 2 - lbl.Width div 2 -5 then
 Repeat

  for i := 1 to length(lbs) - 1 do
   lbs[i].left := lbs[i].left - 1;

  for i := 1 to length(lbs) - 1 do
   begin
    if i > 1 then
    if lbs[i].Left <= -lbs[i].Width
     then
      lbs[i].Left := lbs[i-1].Left + lbs[i-1].Width + 9;
    if i = 1 then
     if lbs[i].Left <= -lbs[i].Width
     then
      lbs[i].Left := lbs[length(lbs)-1].Left + lbs[length(lbs)-1].Width + 9;
   end;

 Until lbl.Left <= pnl.Width div 2 - lbl.Width div 2 -5
 else Repeat
  for i := 1 to length(lbs) - 1 do
   lbs[i].left := lbs[i].left + 1;

  for i := 1 to length(lbs) - 1 do
   begin

     if lbs[i].Left >= pnl.Width
      then
       if i < length(lbs)-1
        then
         lbs[i].Left := lbs[i+1].Left - lbs[i].Width - 9
        else
         lbs[i].Left := lbs[1].Left - lbs[i].Width - 9;
   end;

  Until lbl.Left >= pnl.Width div 2 - lbl.Width div 2 -5

 end else

   if lbl.Top > pnl.Height div 2 - lbl.Height Div 2 then
   Repeat
    for i := 1 to length(lbs) - 1 do
     lbs[i].Top := lbs[i].Top - 1;

    for i := 1 to length(lbs) - 1 do
     begin
      if i > 1 then
      if lbs[i].Top <= -lbs[i].Height + 10
       then
        lbs[i].Top := lbs[i-1].top + lbs[i-1].Height + 9;
      if i = 1 then
       if lbs[i].Top <= -lbs[i].Height
       then
        lbs[i].Top := lbs[length(lbs)-1].Top + lbs[length(lbs)-1].Height + 9;
     end;

   Until lbl.Top <= pnl.Height div 2 - lbl.Height div 2
   else Repeat

    for i := 1 to length(lbs) - 1 do
     lbs[i].Top := lbs[i].Top + 1;

    for i := 1 to length(lbs) - 1 do
     begin

       if lbs[i].Top >= pnl.Height - 10
        then
         if i < length(lbs)-1
          then
           lbs[i].Top := lbs[i+1].Top - lbs[i].Height - 9
          else
           lbs[i].Top := lbs[1].Top - lbs[i].Height - 9;
     end;

    Until lbl.Top >= pnl.Height div 2 - lbl.Height div 2;
 lbl.Font.Color := frmThemes.cb;
end;

procedure TfrmMatheMagixPAT.TabSystem(pnl : TPanel; lbl : TLabel; lbs : array of TLabel; speed : integer);
var
 i: integer;
Begin
 if (lbl.Left = pnl.Width div 2 - lbl.Width div 2)
 or (lbl.Top  = pnl.Height div 2 - lbl.Height div 2)
 then tmrTAbs.Enabled := false;

 if pnl.Width > 25 then
 Begin
 if tmrTabs.Enabled then
 if lbl.Left > pnl.Width div 2 - lbl.Width div 2 -5 then
 Begin
  for i := 1 to length(lbs) - 1 do
   lbs[i].left := lbs[i].left - speed;

  for i := 1 to length(lbs) - 1 do
   begin
    if i > 1 then
    if lbs[i].Left <= -lbs[i].Width
     then
      lbs[i].Left := lbs[i-1].Left + lbs[i-1].Width + 9;
    if i = 1 then
     if lbs[i].Left <= -lbs[i].Width
     then
      lbs[i].Left := lbs[length(lbs)-1].Left + lbs[length(lbs)-1].Width + 9;
   end;

  if lbl.Left <= pnl.Width div 2 - lbl.Width div 2 -5 then tmrTabs.Enabled := False;
 end else
 Begin
  for i := 1 to length(lbs) - 1 do
   lbs[i].left := lbs[i].left + speed;

  for i := 1 to length(lbs) - 1 do
   begin

     if lbs[i].Left >= pnl.Width
      then
       if i < length(lbs)-1
        then
         lbs[i].Left := lbs[i+1].Left - lbs[i].Width - 9
        else
         lbs[i].Left := lbs[1].Left - lbs[i].Width - 9;
   end;

  if lbl.Left >= pnl.Width div 2 - lbl.Width div 2 -5 then tmrTabs.Enabled := false;
 end;
 end else
 Begin
  if tmrTabs.Enabled then
   if lbl.Top > pnl.Height div 2 - lbl.Height Div 2 then
   Begin
    for i := 1 to length(lbs) - 1 do
     lbs[i].Top := lbs[i].Top - speed;

    for i := 1 to length(lbs) - 1 do
     begin
      if i > 1 then
      if lbs[i].Top <= -lbs[i].Height + 10
       then
        lbs[i].Top := lbs[i-1].top + lbs[i-1].Height + 9;
      if i = 1 then
       if lbs[i].Top <= -lbs[i].Height
       then
        lbs[i].Top := lbs[length(lbs)-1].Top + lbs[length(lbs)-1].Height + 9;
     end;

    if lbl.Top <= pnl.Height div 2 - lbl.Height div 2 then tmrTabs.Enabled := False;
   end else
   Begin
    for i := 1 to length(lbs) - 1 do
     lbs[i].Top := lbs[i].Top + speed;

    for i := 1 to length(lbs) - 1 do
     begin

       if lbs[i].Top >= pnl.Height - 10
        then
         if i < length(lbs)-1
          then
           lbs[i].Top := lbs[i+1].Top - lbs[i].Height - 9
          else
           lbs[i].Top := lbs[1].Top - lbs[i].Height - 9;
     end;

    if lbl.Top >= pnl.Height div 2 - lbl.Height div 2 then tmrTabs.Enabled := false;
   end;
 End;
end;

procedure TfrmMatheMagixPAT.tmrTabsTimer(Sender: TObject);
begin
 TabSystem(pnlTab, lb, lbs, spd);
 case lblCase of
 'G' : Begin
        lblFormulaterGeo1 := lbs[1];
        lblFormulaterGeo2 := lbs[2];
        lblFormulaterGeo3 := lbs[3];
        lblFormulaterGeo4 := lbs[4];
       end;

 'Z' : Begin
        lblMis1 := lbs[1];
        lblMis2 := lbs[2];
        lblMis3 := lbs[3];
        lblMis4 := lbs[4];
        lblMis5 := lbs[5];
        lblMis6 := lbs[6];
        lblMis7 := lbs[7];
        lblMis8 := lbs[8];
        lblMis9 := lbs[9];
       end;
 end;
end;

procedure TfrmMatheMagixPAT.TabSysGeo(lbl : TLabel);
Begin
 if lb <> lbl then
 if (not tmrTabs.Enabled) then
  begin
     SetLength(lbs, 5);
     lbs[1] := lblFormulaterGeo1;
     lbs[2] := lblFormulaterGeo2;
     lbs[3] := lblFormulaterGeo3;
     lbs[4] := lblFormulaterGeo4;
     lb := lbl;
     pnlTab := pnlGeoTab;
     spd := 4;
     tmrTabs.Enabled := True;
     lblFormulaterGeo1.Font.Color := clBlack;
     lblFormulaterGeo2.Font.Color := clBlack;
     lblFormulaterGeo3.Font.Color := clBlack;
     lblFormulaterGeo4.Font.Color := clBlack;
     lblCase := 'G';
     pgcGeometery.TabIndex := StrToInt(lbl.Name[length(lbl.Name)])-1;
     scbUniTool.Position := StrToInt(lbl.Name[length(lbl.Name)])-1;
     lbl.Font.Color := frmThemes.cb;
  end;

end;

procedure TfrmMatheMagixPAT.lblFormulaterGeo6Click(Sender: TObject);
begin
 TabSysGeo(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblFormulaterGeo1Click(Sender: TObject);
begin
 TabSysGeo(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblFormulaterGeo2Click(Sender: TObject);
begin
 TabSysGeo(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblFormulaterGeo3Click(Sender: TObject);
begin
 TabSysGeo(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblFormulaterGeo4Click(Sender: TObject);
begin
 TabSysGeo(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblFormulaterGeo5Click(Sender: TObject);
begin
 TabSysGeo(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblFormulaterGeo7Click(Sender: TObject);
begin
 TabSysGeo(TLabel(Sender));
end;



procedure TfrmMatheMagixPAT.lblGame1Click(Sender: TObject);
begin
 pgcGames.TabIndex := 0;
end;

procedure TfrmMatheMagixPAT.TabSysMis(lbl : TLabel);
Begin
if lb <> lbl then
 if (not tmrTabs.Enabled) then
  begin
     SetLength(lbs, 10);
     lbs[1] := lblMis1;
     lbs[2] := lblMis2;
     lbs[3] := lblMis3;
     lbs[4] := lblMis4;
     lbs[5] := lblMis5;
     lbs[6] := lblMis6;
     lbs[7] := lblMis7;
     lbs[8] := lblMis8;
     lbs[9] := lblMis9;


     lblMis1.Font.Color := clBlack;
     lblMis2.Font.Color := clBlack;
     lblMis3.Font.Color := clBlack;
     lblMis4.Font.Color := clBlack;
     lblMis5.Font.Color := clBlack;
     lblMis6.Font.Color := clBlack;
     lblMis7.Font.Color := clBlack;
     lblMis8.Font.Color := clBlack;
     lblMis9.Font.Color := clBlack;
     spd := 4;
     lb := lbl;
     pnlTab := pnlMisTab;
     tmrTabs.Enabled := True;
     lblCase := 'Z';
     pgcMiscellaneous.TabIndex := StrToInt(lbl.Name[length(lbl.Name)])-1;
     scbUniTool.Position := StrToInt(lbl.Name[length(lbl.Name)])-1;
     lbl.Font.Color := frmThemes.cb;
  end;
end;

procedure TfrmMatheMagixPAT.lblMis1Click(Sender: TObject);
begin
 TabSysMis(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblMis2Click(Sender: TObject);
begin
 TabSysMis(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblMis3Click(Sender: TObject);
begin
 TabSysMis(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblMis4Click(Sender: TObject);
begin
 TabSysMis(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblMis5Click(Sender: TObject);
begin
 TabSysMis(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblMis6Click(Sender: TObject);
begin
 TabSysMis(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblMis7Click(Sender: TObject);
begin
 TabSysMis(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblMis8Click(Sender: TObject);
begin
 TabSysMis(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.lblMis9Click(Sender: TObject);
begin
 TabSysMis(TLabel(Sender));
end;

procedure TfrmMatheMagixPAT.btnNumStatAnalyzeClick(Sender: TObject);
var
 x : extended;
 s : string;
 i : integer;
 k, j : integer;
begin
 redNumStat.Lines.Clear;
 s := cal.GetAnswer(variblize(edtNumStat.Text, VarNme, VarVal));
 x := StrToFloat(s);
 i := trunc(x);
 SetLength(textstat, 8);
 rnsk := 1;
 rnsi := 0;
 textStat[1] := 'Analyzes of the Number '+s+'    ------------------------------------------------';
 if trunc(x) = x then
  Begin

   //odd or even
   if i mod 2 = 0
    then
     textStat[2] := s + ' is an Even '
    else
     textStat[2] := s + ' is an Odd ';
   //odd or even

   //type of number
    if i > 0
     then
      textStat[2] := textStat[2] + 'Natural Number'
     else
    if i >= 0
     then
      textStat[2] := textStat[2] + 'Whole Number'
     else
      textStat[2] := textStat[2] + 'Integer';
   //Type of number

   //factors
    textStat[3] := 'Factors '+#9+':';
    for k := 1 to i do if i/k = round(i/k) then textStat[3] := textStat[3] +', ' +IntToStr(k);
    delete(textStat[3], 11, 1);
   //factors

   //Prime Factors
    textStat[4] := '';
    j := i; k := 1;
    Repeat
     inc(k);
     if j mod k = 0 then
      begin
       textStat[4]:= textStat[4] + ' * ' + IntToStr(k);
       j := j div k;
       k := 1;
      end;
    Until  k > j ;
    delete(textStat[4], 2, 1);

  {  j := 0; k := 0; l := 0;
    Repeat
     inc(j);
     if textStat[4][j] in ['0'..'9'] then
      begin
       if k = StrToInt(textStat[4][j])
        then
         inc(l);
       if (k <> StrToInt(textStat[4][j])) or (j = length(textStat[4])) then
        if l > 0 then
        begin
         j := j - l*4;
         delete(textStat[4], j, l*4);
         insert(' ^ '+IntToStr(l+1), textStat[4], j - 3);
         l := 0;
        end;
      end;

     if textStat[4][j] in ['0'..'9'] then
       k := StrToInt(textStat[4][j]);


    Until length(textStat[4]) = j;   }

    textStat[4] := 'Prime Factors '+#9+':' + TextStat[4];
   //Prime Factors


   //Expanded Form
    textStat[5] := 'Expanded Form '+#9+':';
    j:=length(s);
    for k := 1 to length(s) do
     begin
      dec(j);
      if StrToInt(s[k]) * power(10, j) <> 0 then textStat[5] := textStat[5] + ' + ' + floatToStr(StrToInt(s[k]) * power(10, j) );
     end;
    delete(textStat[5], 18, 1);
   //Expanded Form

   //Functions
    textStat[6] := 'Square '+#9+':'+cal.GetAnswer('SQR('+s+')');
    textStat[7] := 'Square Root '+#9+':'+cal.GetAnswer('SQRT('+s+')');
   //Functions
  end else
  Begin
  
  end;

 tmrStats.Enabled := true;
end;

procedure TfrmMatheMagixPAT.edtNumStatChange(Sender: TObject);
begin
 EQ2ANSChng(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtNumStatClick(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtNumStatMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtNumStatExit(Sender: TObject);
begin
EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.tmrStatsTimer(Sender: TObject);
begin
 inc(rnsi);
 if (rnsk < length(textStat))and(rnsi < length(textStat[rnsk]) + 1) then
  if pgcMiscellaneous.TabIndex = 7
   then
    redNumStat.Text := redNumStat.Text +  TextStat[rnsk][rnsi]
   else
    redTextAnalyzeResults.Text := redTextAnalyzeResults.Text + TextStat[rnsk][rnsi];
 if rnsi >= length(textstat[rnsk]) then
  begin
   inc(rnsk);
   if pgcMiscellaneous.TabIndex = 7
    then
     redNumStat.Lines.Add(' ')
    else
     redTextAnalyzeResults.Lines.Add(' ');
   rnsi := 0;
  end;
 if rnsk = length(textstat) then tmrStats.Enabled := false;
end;

procedure TfrmMatheMagixPAT.cbxTextAnalzeWrapWordClick(Sender: TObject);
begin
 redTextAnalyzeText.WordWrap := cbxTextAnalzeWrapWord.Checked;
end;

procedure TfrmMatheMagixPAT.btnLoadTextStatClick(Sender: TObject);
begin
 opndlg.Execute;
 if opndlg.FileName <> '' then
  Begin
   redTextAnalyzeText.Lines.LoadFromFile(opndlg.FileName);
  end;
 btnTextStatAnalyzeClick(sender); 
end;

procedure TfrmMatheMagixPAT.btnSaveTextStatClick(Sender: TObject);
begin
 svedlg.Execute;
 if svedlg.FileName<>'' then
   redTextAnalyzeText.Lines.SaveToFile(svedlg.FileName+'.rtf');
end;

procedure TfrmMatheMagixPAT.btnTextStatAnalyzeClick(Sender: TObject);
var
 i : integer;
 words, char_1, char_0, sentence, Lines : integer;
begin
 rnsi := 0;
 rnsk := 1;
 redTextAnalyzeResults.lines.Clear;
 SetLength(TextStat, 7);
 words := 0;
 char_1 := 0;
 char_0 := 0;
 sentence := 0;
 lines := 1;
 for i := 1 to length(redTextAnalyzeText.Text) do
  Begin
   if (redTextAnalyzeText.Text[i] in [' ', #10, #13]) then
   if not (redTextAnalyzeText.Text[i-1] in [' ', #10, #13]) then
    inc(words);

   if redTextAnalyzeText.Text[i] = #10
    then
     inc(lines);

   if redTextAnalyzeText.Text[i] = '.'
    then
     inc(sentence);

   if not(redTextAnalyzeText.Text[i] in [#10,#13])
    then
     inc(char_1);

   if not(redTextAnalyzeText.Text[i] in [' ',#10,#13])
    then
     inc(char_0);

  end;
 if redTextAnalyzeText.Text <> '' then
  if redTextAnalyzeText.Text[length(redTextAnalyzeText.Text)] <> ' ' then
   inc(words);

 textstat[1] := 'Characters without spaces '+ #9 +':'+IntToStr(char_0);
 textstat[2] := 'Characters with spaces '+ #9 +':'+IntToStr(char_1);
 textstat[3] := 'Words '+ #9 +':'+IntToStr(words);
 textstat[4] := 'Sentences '+ #9 +':'+IntToStr(Sentence);
 textstat[5] := 'Lines '+ #9 +':'+IntToStr(Lines);
 tmrStats.Enabled := true;
end;

procedure TfrmMatheMagixPAT.redTextAnalyzeTextChange(Sender: TObject);
var
 i : integer;
begin

 btnTextStatAnalyzeClick(Sender);
 tmrStats.Enabled := false;
 for i := 1 to length(textStat) - 1 do
  redTextAnalyzeResults.Lines.Add(TextStat[i]);

end;

procedure TfrmMatheMagixPAT.redTextAnalyzeResultsEnter(Sender: TObject);
begin
 if redTextAnalyzeResults.font.Color = clGray
  then
   redTextAnalyzeResults.lines.Clear;
 redTextAnalyzeResults.font.Color := clBlack;
end;

procedure TfrmMatheMagixPAT.redTextAnalyzeTextEnter(Sender: TObject);
begin
 if redTextAnalyzeText.Font.Color = clGray
  then
   redTextAnalyzeText.lines.Clear;
  redTextAnalyzeText.font.Color := clBlack;
end;



procedure TfrmMatheMagixPAT.imgColorPickerBrightnessMouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
Begin
 drawerBright := true;
end;

procedure TfrmMatheMagixPAT.imgColorPickerBrightnessMouseUp(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
drawerBright := false;
end;

procedure TfrmMatheMagixPAT.imgDrawerCanvasMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 drawerDraw := true;
 imgDrawerCanvas.Canvas.MoveTo(x,y);
 case DrawerMode of
  'D' : Begin
         lblDrawerColorChoice.Color := imgDrawerCanvas.Picture.Bitmap.Canvas.Pixels[x,y];
         imgDrawerCanvas.Canvas.Pen.Color :=imgDrawerCanvas.Picture.Bitmap.Canvas.Pixels[x,y];
        end;
  'U' : begin
         imgDrawerCanvas.Canvas.Brush.color:= lblDrawerColorChoice.Color;
         imgDrawerCanvas.Canvas.FloodFill(x, y, imgDrawerCanvas.Canvas.Pixels[x,y], fsSurface);
        end;
  'S' : Begin
          imgDrawerCanvas.Canvas.MOveTo(x,y);
        end;
 end;
end;

procedure TfrmMatheMagixPAT.imgDrawerCanvasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

 case drawerMode of
  'S' : Begin
         imgDrawerCanvas.Canvas.LineTo(x,y);
        end;
 end;
 drawerDraw := false;
end;

procedure TfrmMatheMagixPAT.imgDrawerCanvasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

 if drawerDraw then
  case DrawerMode of
   'B' : imgDrawerCanvas.Canvas.LineTo(x,y);
   'P' : begin
          imgDrawerCanvas.Canvas.Pen.Width := 1;
          imgDrawerCanvas.Canvas.LineTo(x,y);
         end;
   'E' : begin
          imgDrawerCanvas.Canvas.Pen.color := clWhite;
          imgDrawerCanvas.Canvas.LineTo(x,y);
         end;
   'S' : begin

         end;
  end;
   frmDrawer.imgCanvas.Picture := imgDrawerCanvas.Picture;
end;

procedure TfrmMatheMagixPAT.scbDrawerSizeChange(Sender: TObject);
begin
imgDrawerCanvas.Canvas.Pen.Width := scbDrawerSize.Position;
end;

procedure TfrmMatheMagixPAT.imgDrawerColorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 colorPick := true;
 imgDrawerCanvas.Canvas.Pen.Color := imgDrawerColor.Picture.Bitmap.Canvas.Pixels[x,y];
 lblDrawerColorChoice.Color := imgDrawerColor.Picture.Bitmap.Canvas.Pixels[x,y];
end;

procedure TfrmMatheMagixPAT.imgDrawerColorMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 colorPick := false;
end;

procedure TfrmMatheMagixPAT.imgDrawerColorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if colorPick then
 Begin
  imgDrawerCanvas.Canvas.Pen.Color := imgDrawerColor.Picture.Bitmap.Canvas.Pixels[x,y];
  lblDrawerColorChoice.Color := imgDrawerColor.Picture.Bitmap.Canvas.Pixels[x,y];
 end;
end;

procedure TfrmMatheMagixPAT.lblDrawerColorChoiceClick(Sender: TObject);
begin
 clrdlg.Execute;
 clrdlg.Color := lblDrawerColorChoice.Color;
 imgDrawerCanvas.Canvas.Pen.Color := clrdlg.Color;
end;

procedure TfrmMatheMagixPAT.bmbBrushClick(Sender: TObject);
begin
 scbDrawerSize.Enabled := true;
 imgDrawerCanvas.Canvas.Pen.Width := scbDrawerSize.Position;
 imgDrawerCanvas.Canvas.Pen.Color := lblDrawerColorChoice.Color;
 DrawerMode := 'B';
end;

procedure TfrmMatheMagixPAT.bmbPencilClick(Sender: TObject);
begin
 imgDrawerCanvas.Canvas.Pen.Color := lblDrawerColorChoice.Color;
 DrawerMode := 'P';
 scbDrawerSize.Enabled := false;
end;

procedure TfrmMatheMagixPAT.bmbEraserClick(Sender: TObject);
begin
 scbDrawerSize.Enabled := true;
 imgDrawerCanvas.Canvas.Pen.Width := scbDrawerSize.Position;
 DrawerMode := 'E';
end;

procedure TfrmMatheMagixPAT.bmbEyeDropClick(Sender: TObject);
begin
 scbDrawerSize.Enabled := true;
 DrawerMOde := 'D';
end;

procedure TfrmMatheMagixPAT.bmbShapeClick(Sender: TObject);
begin
 scbDrawerSize.Enabled := true;
 imgDrawerCanvas.Canvas.Pen.Color := lblDrawerColorChoice.Color;
 DrawerMode := 'S';
end;

procedure TfrmMatheMagixPAT.bmbBucketClick(Sender: TObject);
begin
 scbDrawerSize.Enabled := true;
 DrawerMode := 'U';
end;

procedure TfrmMatheMagixPAT.bmbSaveAsClick(Sender: TObject);
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
     imgDrawerCanvas.Picture.SaveToFile(svepicdlg.FileName + '.bmp')
    else
    imgDrawerCanvas.Picture.SaveToFile(svepicdlg.FileName);
   FleNme := svepicdlg.FileName;
  end;
end;

procedure TfrmMatheMagixPAT.bmbNewDrawerClick(Sender: TObject);
begin
 flenme := '';
 imgDrawerCanvas.Picture := nil;
 imgDrawerCanvas.Canvas.Pen.Color := lblDrawerColorChoice.Color;
 DrawerMode := 'B';
end;

procedure TfrmMatheMagixPAT.bmbSaveClick(Sender: TObject);
begin
 if flenme <> ''
  then
   imgDrawerCanvas.Picture.SaveToFile(flenme)
  else
   bmbSaveAsClick(Sender);
end;

procedure TfrmMatheMagixPAT.bmbLoadClick(Sender: TObject);
begin
 opnpicdlg.Execute;
 if opnpicdlg.FileName <> '' then
  begin
   imgDrawerCanvas.Picture.LoadFromFile(opnpicdlg.FileName);
   flenme := opnpicdlg.FileName;
  end;
end;

procedure TfrmMatheMagixPAT.bmbFullScreenClick(Sender: TObject);
begin
 frmDrawer.Show;
 frmDrawer.imgCanvas.Picture := imgDrawerCanvas.Picture;
 frmDrawer.imgCanvas.Width := imgDrawerCanvas.Width;
 frmDrawer.imgCanvas.Height := imgDrawerCanvas.Height;
 frmDrawer.FileName := flenme;
 frmDrawer.ClientHeight := frmDrawer.imgCanvas.Height + frmDrawer.pnlDrawerTools.Height + 100;
 frmDrawer.ClientWidth :=  frmDrawer.imgCanvas.Width + 100;
end;

procedure TfrmMatheMagixPAT.imgHelpClick(Sender: TObject);
begin
 frmThemes.Show;
 frmMatheMagixPAT.Enabled := false;
 frmWorksheet.Enabled := false;
 frmExplanation.Enabled := false;
 frmDrawer.Enabled := false;
 frmVariables.Enabled := false;
end;

function SpiltRefToCol(s : string) : string;
var
 i : integer;
begin
 Result := '';
 Uppercase(s);
 i := 0;
 repeat
  inc(i);
  if s[i] in ['A'..'Z'] then Result := Result + s[i];
 Until (s[i] in ['0'..'9']) or (i > length(s));
end;

function LookUpCellRefCol(stg : TStringGrid; ref : string) : integer;
var
 i : integer;
begin
 Result := 0;
 for i := 1 to stg.ColCount do
  if SpiltRefToCol(ref) = stg.Cells[i ,0] then
   begin
    Result := i;
    Exit;
   end;
end;

function LookUpCellRefRow(s : string) : integer;
var
 i : integer;
 ref : string;
begin
 ref := '';
 for i := 1 to length(s) do
  if s[i] in ['0'..'9'] then
   ref := ref + s[i];
 val(ref, Result, i);
end;

function CellRefVal(stg : TStringGrid; s : string) : string;
var
 i : integer;
 ref : string;
begin
 i := 0;
 Repeat
  inc(i);
  if s <> '' then
  if s[i] = '[' then
  begin
   Repeat
    inc(i);
    ref := ref + s[i];
   Until (s[i+1] in [']']) or (i > length(s));
   i := i + 1;
   Repeat
    delete(s, i, 1);
    dec(i);
   Until (s[i] = '[') or (i <= 0);
   delete(s, i , 1);
   if s <> '' then insert(stg.Cells[LookUpCellRefCol(stg, ref), LookUpCellRefRow(ref)], s, i);
   ref := '';
  end;

 Until i > length(s);
 Result := s;
end;

procedure TfrmMatheMagixPAT.edtWorkSheetFormat1Change(Sender: TObject);
var
 c, r : integer;
begin
 c := stgWorksheet.col;
 r := stgWorksheet.Row;
 WorkSheetSums.Cells[c, r] := edtWorkSheetFormat1.Text;
 if edtWorkSheetFormat1.Text <> '' then
 if edtWorkSheetFormat1.Text[1] = '='
  then
   stgWorksheet.Cells[c, r] := cal.GetAnswer(CellRefVal(stgWorksheet, edtWorkSheetFormat1.Text))
  else
   stgWorksheet.Cells[c, r] := edtWorkSheetFormat1.Text;
 //EQ2ANSChng(TEdit(Sender));

end;

procedure TfrmMatheMagixPAT.stgWorksheetMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 edtWorkSheetFormat1.Text := WorkSheetSums.Cells[stgWorksheet.Col, stgWorksheet.row];
 edtWorkSheetFormat1.SetFocus;
 //frmWorksheet.stgWorksheet := frmMatheMagixPAT.stgWorksheet;
end;

procedure TfrmMatheMagixPAT.bmbFullScreenWorksheetsClick(Sender: TObject);
begin
 frmWorksheet.Show;
// frmMatheMagixPAT.Hide;
end;

procedure TfrmMatheMagixPAT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 lsbCalcHistory.Items.SaveToFile('History.txt');
 memCalculatorEqSolve.Lines.SaveToFile('EQHistory.txt');
 frmVariables.SaveVariables(frmVariables.vleVariables);
 frmCustomFunctionsCode.SaveFunctions;
 cal.Free;
 WorkSheetSums.Free;
 NormalAuto.Free;
end;

procedure TfrmMatheMagixPAT.edtSide3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtSide2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtSide1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtPointOneXKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtPointOneYKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtPointTwoYKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edt2DKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtAssignAreaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edt3DKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edt3DAssignKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtDecimalSystemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtRomanNumeralsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownYearsKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownWeeksKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownDaysKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownHoursKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownMinutesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtTimeConverterBrokenDownSecoundsKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtTimeFromKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtTimeDifferenceValue1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtTimeDifferenceValue2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtDaysUntilNumberofDaysKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtFactMultKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtnumMultiplesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtHypoSideKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtAdjSideKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtOppSideKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtAlphaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtStatisticsNumberKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtNumStatKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtCompoundPresentValueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtCompoundIntrestRateKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtCompoundFutureValueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtCompoundInterestYearsToGrowKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtCompoundInterestImplmentationYearlyKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtSimpleInitialAmountKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtSimpleIntrestRateKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtStartingCapitalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtStartingInterestKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtWorkSheetFormat1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 AutoCompKeyD(TEdit(Sender), key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtWorkSheetFormat1Click(Sender: TObject);
begin
 EQ2ANSClick(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtWorkSheetFormat1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 EQ2ANSSel(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtWorkSheetFormat1Exit(Sender: TObject);
begin
 EQ2ANSExit;
end;

procedure TfrmMatheMagixPAT.btnCalculatorAssignClick(Sender: TObject);
begin
scifunc(StrToFloat(cal.GetAnswer(Variblize('VAR('+ GetValu(edtResult, AngleUnit)+')', VarNme, VarVal))), 'VAR') ;
end;

procedure TfrmMatheMagixPAT.cmbHistoryClearChange(Sender: TObject);
var
 i : integer;
begin

 case cmbHistoryClear.ItemIndex of
  0 : Repeat
       cmbHistoryClear.ItemIndex := cmbHistoryClear.ItemIndex + 1;
       cmbHistoryClearChange(Sender);
      Until cmbHistoryClear.ItemIndex = cmbHistoryClear.Items.Count - 1;
  1 : begin
       lsbCalcHistory.Items.Clear;
       lsbCalcHistory.Items.add('DOUBLE CLICK an item to insert the EQUATION');
       lsbCalcHistory.Items.add('SINGLE CLICK an item to insert the answer INTO the CURRENT EQUATION');
      end;
  2 : memCalculatorEqSolve.Lines.Clear;
  3 : begin
       frmVariables.deleting := true;
       frmVariables.vleVariables.Strings.Clear;
       frmVariables.vleVariables.InsertRow('preans','0',false);
       frmVariables.vleVariables.InsertRow('ans','0',false);
       SetLEngth(varval, 2);
       SetLEngth(varnme, 2);
       if 25 * frmVariables.vleVariables.RowCount < frmVariables.vleVariables.Height
        then
         frmVariables.bvlHeaderSeperator.Left := frmVariables.pnlHeader.Width Div 2 - 2
        else
         frmVariables.bvlHeaderSeperator.Left := frmVariables.pnlHeader.Width Div 2 - 11;
      end;
  4 : begin
       frmCustomFunctionsCode.lsbNavigon.Items.Clear;
       for i := 0 to length(frmCustomFunctionsCode.Code) - 1 do
        frmCustomFunctionsCode.Code[i] := '';
       SetLength(frmCustomFunctionsCode.Code, 1);
       frmCustomFunctionsCode.memCode.Text := ''; 
      end;

 end;
end;

procedure TfrmMatheMagixPAT.edtResultKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 UserFriendBrack(TEdit(Sender));
 AutoCompKeyD(TEdit(Sender) ,key, lsbAutoComplete);
end;

procedure TfrmMatheMagixPAT.edtTimeDifferenceValue1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 UserFriendBrack(TEdit(Sender));
end;

procedure TfrmMatheMagixPAT.edtCloseBrackEnter(Sender: TObject);
begin
 frmMatheMagixPAT.SetFocus;
end;

procedure TfrmMatheMagixPAT.edtOpenBrackEnter(Sender: TObject);
begin
 frmMatheMagixPAT.SetFocus;
end;

end.

