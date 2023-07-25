unit unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBCtrls, RxDBGrid,
  RxDBGridFooterTools, ZConnection, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    RxDBGrid1: TRxDBGrid;
    RxDBGridFooterTools1: TRxDBGridFooterTools;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.

