unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBCtrls,
  StdCtrls, ZDataset, ZConnection, ZAbstractRODataset, RxDBGrid,
  RxDBGridFooterTools;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    Edit1: TEdit;
    Panel1: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxDBGridFooterTools1: TRxDBGridFooterTools;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery1nama: TZRawStringField;
    ZQuery1nilai: TZIntegerField;
    ZQuery1vno: TZIntegerField;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.

