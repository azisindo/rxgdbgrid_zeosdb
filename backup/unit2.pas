unit unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBCtrls, RxDBGrid,
  RxDBGridFooterTools, BCMaterialDesignButton, ZConnection, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    btn_ping: TBCMaterialDesignButton;
    btn_save: TBCMaterialDesignButton;
    close_db: TBCMaterialDesignButton;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    RxDBGrid1: TRxDBGrid;
    RxDBGridFooterTools1: TRxDBGridFooterTools;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure btn_pingClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure close_dbClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btn_saveClick(Sender: TObject);
begin
  //debuging  saat commit.
  try
    ZQuery1.ApplyUpdates;
    ZConnection1.Commit;
  except
    on E:Exception do
    begin
      ZConnection1.Rollback;
      ShowMessage('Error '+E.Message);
    end;
  end;
end;

procedure TForm1.close_dbClick(Sender: TObject);
begin
  ZConnection1.Disconnect;
end;

procedure TForm1.btn_pingClick(Sender: TObject);
begin
  if ZConnection1.PingServer then
    ShowMessage('connect');
  else
    ShowMessage('tidak connect');

end;

end.

