unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, DB, Ora, MemDS,
  DBAccess;

type
  TForm1 = class(TForm)
    OraSession1: TOraSession;
    OraQuery1: TOraQuery;
    OraDataSource1: TOraDataSource;
    DBGridEh1: TDBGridEh;
    qryInsert: TOraQuery;
    edtID: TEdit;
    edtNaim: TEdit;
    btn: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    OraQuery1ID: TFloatField;
    OraQuery1NAIM: TStringField;
    procedure edtIDKeyPress(Sender: TObject; var Key: Char);
    procedure btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edtIDKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key:=#0;
end;

procedure TForm1.btnClick(Sender: TObject);
begin
  qryInsert.Params[0].AsInteger:=StrToInt(edtID.Text);
  qryInsert.Params[1].AsString:=edtNaim.Text;
  qryInsert.ExecSQL;
  OraQuery1.Close;
  OraQuery1.Open;
end;

end.
