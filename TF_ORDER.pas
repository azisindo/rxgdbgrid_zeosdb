unit TF_ORDER;
interface

uses Libc,
  Qt, StrUtils, SysUtils, Types, Classes, Variants, QTypes, QGraphics, QControls, QForms,
  QDialogs, QStdCtrls, FMTBcd, DB, SqlExpr, DBXpress, QGrids, QDBGrids,
  DBClient, Provider, DBLocal, DBLocalS, QExtCtrls, QComCtrls, QDBCtrls,
  QButtons, DBAccess, MyAccess, MemDS, QMask;

type
  Torder = class(TForm)
    Panel_atas: TPanel;
    SB_Status: TStatusBar;
    C_DB: TMyConnection;
    MQ: TMyQuery;
    DSP: TDataSetProvider;
    CDS: TClientDataSet;
    DS: TDataSource;
    MQD: TMyQuery;
    DSPD: TDataSetProvider;
    CDSD: TClientDataSet;
    DSD: TDataSource;
    CDSTPH_PK: TStringField;
    CDSTPH_MT_KODE: TStringField;
    CDSTPH_NO: TStringField;
    CDSTPH_MV_KODE: TStringField;
    CDSTPH_DATE: TDateField;
    CDSTPH_DATE_TIBA: TDateField;
    CDSTPH_MTP_KODE: TStringField;
    CDSTPH_TY: TStringField;
    CDSTPH_AMOUNT: TFloatField;
    CDSTPH_PPN: TFloatField;
    CDSTPH_PPN_BM: TFloatField;
    CDSTPH_NETTO: TFloatField;
    CDSTPH_DSC_PR1: TFloatField;
    CDSTPH_DSC_RP1: TFloatField;
    CDSTPH_DSC_PR2: TFloatField;
    CDSTPH_DSC_RP2: TFloatField;
    CDSTPH_ITEM: TSmallintField;
    CDSTPH_EDIT: TSmallintField;
    CDSTPH_DI: TDateTimeField;
    CDSTPH_NI: TStringField;
    CDSTPH_DU: TDateTimeField;
    CDSTPH_NU: TStringField;
    CDSDTPD_PK: TStringField;
    CDSDTPD_TPH_PK: TStringField;
    CDSDTPD_BARCODE: TStringField;
    CDSDTPD_EKOR: TSmallintField;
    CDSDTPD_DESCP: TStringField;
    CDSDTPD_CONV1: TSmallintField;
    CDSDTPD_CONV2: TSmallintField;
    CDSDTPD_MK_KODE: TIntegerField;
    CDSDTPD_QTY: TFloatField;
    CDSDTPD_AMOUNT: TFloatField;
    CDSDTPD_DSC: TFloatField;
    CDSDTPD_DSC_PR1: TFloatField;
    CDSDTPD_DSC_RP1: TFloatField;
    CDSDTPD_DSC_PR2: TFloatField;
    CDSDTPD_DSC_RP2: TFloatField;
    CDSDTPD_DSC_PR3: TFloatField;
    CDSDTPD_DSC_RP3: TFloatField;
    CDSDTPD_PPN: TFloatField;
    CDSDTPD_PPN_BM: TFloatField;
    CDSDTPD_NETTO: TFloatField;
    CDSDTPD_EKOR_B: TSmallintField;
    CDSDTPD_DESCP_B: TStringField;
    CDSDTPD_AMOUNT_B: TFloatField;
    CDSDTPD_KET: TStringField;
    CDSDTPD_DI: TDateTimeField;
    CDSDTPD_NI: TStringField;
    CDSDTPD_DU: TDateTimeField;
    CDSDTPD_NU: TStringField;
    dbg: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    edvendor: TEdit;
    dbevendor: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    dbe_date_tiba: TDBEdit;
    Panel2: TPanel;
    CDSDic_plu_b: TStringField;
    dbe_pot1_persen: TDBEdit;
    Label60: TLabel;
    dbe_pot1_amount: TDBEdit;
    dbe_pot2_persen: TDBEdit;
    Label14: TLabel;
    dbe_pot2_amount: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    CDSC_FAKTUR: TFloatField;
    CDSC_PPN: TFloatField;
    CDSC_PPN_BM: TFloatField;
    CDSDic_jumlah: TFloatField;
    CDSDa_netto: TAggregateField;
    CDSDa_ppn: TAggregateField;
    CDSDa_ppn_bm: TAggregateField;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    pbonus: TPanel;
    Panel4: TPanel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    pdiskon: TPanel;
    Panel6: TPanel;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    CDSDic_bonus: TStringField;
    me_nomor: TMaskEdit;
    CDSDic_curah: TStringField;
    CDSDTPD_QTY_B: TFloatField;
    CDSDic_curah_b: TStringField;
    CDSDic_ppn: TStringField;
    CDSDic_ppn_bm: TStringField;
    CDSDic_minor: TFloatField;
    CDSDTPD_MTS_KODE: TStringField;
    CDSDic_barcode_b: TStringField;
    CDSDTPD_NETTO2: TFloatField;
    CDSTPH_MT_KODE_TF: TStringField;
    CDSTPH_ST_REC: TStringField;
    Label10: TLabel;
    edit1: TEdit;
    Panelpilihcetak: TPanel;
    Label26: TLabel;
    Panel8: TPanel;
    cb_prn: TComboBox;
    StatusBar4: TStatusBar;
    Button1: TButton;
    Button2: TButton;
    Label24: TLabel;
    Label25: TLabel;
    dbg2: TDBGrid;
    CDSDTPD_ALOKASI: TStringField;
    CDSDTPD_BIAYA_KUBIKASI: TFloatField;
    CDSDTPD_BIAYA_LAIN: TFloatField;
    CDSDTPD_VOLUME: TFloatField;
    CDSDTPD_BERAT: TFloatField;
    DBGrid1: TDBGrid;
    Image1: TImage;
    Panel5: TPanel;
    Image2: TImage;
    dbe_barcode: TEdit;
    CDSic_leadtime: TIntegerField;
    CDSDic_on_hand: TFloatField;
    CDSDic_last_cost: TFloatField;
    CDSDic_avg_sales: TFloatField;
    CDSDic_avg_cost: TFloatField; //TFloatField;
    CDSDic_min_stock: TFloatField;
    CDSDic_max_stock: TFloatField;
    CDSDic_on_order: TFloatField;
    CDSDic_git: TFloatField;
    CDSDic_service_level: TFloatField;
    CDSDic_promo: TFloatField;
    CDSDic_lead_time: TFloatField;
    CDSDic_volume: TFloatField;
    CDSDic_berat: TFloatField;
    DBEdit1: TDBEdit;
    CDSTPH_VOLUME: TFloatField;
    CDSTPH_BERAT: TFloatField;
    Label21: TLabel;
    Label22: TLabel;
    CDSDa_volume: TAggregateField;
    CDSDic_review: TStringField;
    DBEdit2: TDBEdit;
    Label23: TLabel;
    CDSDa_berat: TAggregateField;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    CDSDic_hjual: TIntegerField;
    CDSDic_mup_avg: TFloatField;
    CDSDic_mup_netto: TFloatField;
    CDSDic_mup_lcost: TFloatField;
    CDSDic_rp_mup_avg: TFloatField;
    CDSDic_rp_mup_lcost: TFloatField;
    CDSDic_rp_mup_netto: TFloatField;
    CDSDic_harga_excl_ppn: TFloatField;
    Panel3: TPanel;
    Panel7: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    me_toko: TMaskEdit;
    Edit4: TEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    CDSDTPD_QTY_QUK: TFloatField;
    CDSDTPD_QTY_REC: TFloatField;
    CDSDTPD_MP_SKU: TStringField;
    CDSDTPD_MP_SKU_B: TStringField;
    CDSDic_plu: TStringField;
    dbcb_multirec: TDBCheckBox;
    edsku: TEdit;
    P_Form: TPanel;
//    DBG_Form: TDBGrid;
    Panel12: TPanel;
    B_Ok: TButton;
    B_Cancel: TButton;
    Panel13: TPanel;
    Panel15: TPanel;
    skunew: TEdit;
    Label37: TLabel;
    edsbarcode: TEdit;
    EdDescp: TEdit;
    Edcsku: TEdit;
    Edconv1: TEdit;
    Edconv2: TEdit;
    Label38: TLabel;
    Label39: TLabel;
    EdDiv: TEdit;
    EdDept: TEdit;
    EdSDept: TEdit;
    EdKtgr: TEdit;
    edsktgr: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    GroupBox1: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    edmerk: TEdit;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    EdSubKtgr: TEdit;
    Edvarian: TEdit;
    Edkemasan: TEdit;
    Edsatuan: TEdit;
    Edisi: TEdit;
    edndiv: TEdit;
    ednsubktgr: TEdit;
    ednktgr: TEdit;
    ednsdept: TEdit;
    edndept: TEdit;
    edjenis: TEdit;
    Label52: TLabel;
    Button4: TButton;
    Button5: TButton;
    CheckBox1: TCheckBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label53: TLabel;
    Button6: TButton;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    edc_a: TEdit;
    edc_d: TEdit;
    edc_c: TEdit;
    edc_b: TEdit;
    MQP: TMyQuery;
    DSPP: TDataSetProvider;
    CDSP: TClientDataSet;
    CDSPMPG_MT_KODE: TStringField;
    CDSPMPG_BARCODE: TStringField;
    CDSPMPG_MERK: TStringField;
    CDSPMPG_DESCP: TStringField;
    CDSPMPG_DESCP2: TStringField;
    CDSPMPG_SAT: TStringField;
    CDSPMPG_CONV1: TSmallintField;
    CDSPMPG_CONV2: TIntegerField;
    CDSPMPG_MK_KODE: TIntegerField;
    CDSPMPG_PPN: TStringField;
    CDSPMPG_HEIGHT: TFloatField;
    CDSPMPG_WIDTH: TFloatField;
    CDSPMPG_DEPTH: TFloatField;
    CDSPMPG_WEIGHT: TFloatField;
    CDSPMPG_HEIGHT_PER_FIB: TFloatField;
    CDSPMPG_WIDTH_PER_FIB: TFloatField;
    CDSPMPG_DEPTH_PER_FIB: TFloatField;
    CDSPMPG_WEIGHT_PER_FIB: TFloatField;
    CDSPMPG_DESCP3: TStringField;
    CDSPMPG_ISI: TSmallintField;
    CDSPMPG_UKURAN: TStringField;
    CDSPMPG_KEMASAN: TStringField;
    CDSPMPG_VARIAN: TStringField;
    CDSPMPG_KETERANGAN: TStringField;
    CDSPMPG_CLASS_A: TStringField;
    CDSPMPG_CLASS_B: TStringField;
    CDSPMPG_CLASS_C: TStringField;
    CDSPMPG_CLASS_D: TStringField;
    CDSPMPG_KD_VARIANCE: TStringField;
    CDSPMPG_PICT: TStringField;
    CDSPMPG_SKU: TStringField;
    DataSource1: TDataSource;
    CDSDic_hb_ppn: TFloatField;
    CDSDic_hb_ppn_qty: TFloatField;
    CDSTPH_MT_KODE_TS: TStringField;
    CDSTPH_M_REC: TStringField;
    CDSTPH_F_REC: TStringField;
    CDSTPH_F_BAYAR: TStringField;
    CDSTPH_ST_PRN: TStringField;
    CDSDTPD_QTY_QFC: TFloatField;
    CDSDTPD_MP_SKU_REF: TStringField;
    CDSTPH_REF: TStringField;
    CDSTPH_MV_KODE_REF: TStringField;
    panelcompare: TPanel;
    Panel14: TPanel;
    StatusBar3: TStatusBar;
    DBGrid2: TDBGrid;
    CDSTPH_ST_VMS: TStringField;
    CDSTPH_ST_OTO: TStringField;
    CDSTPH_DU_OTO: TDateTimeField;
    CDSTPH_NU_OTO: TStringField;
    CDSDa_dsc_item: TAggregateField;
    DBEdit17: TDBEdit;
    CDSDa_amount: TAggregateField;
    DBEdit18: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    Panel11: TPanel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label35: TLabel;
    Label7: TLabel;
    Label36: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    CDSDa_netto2: TAggregateField;
    CDSDa_disc_fak: TAggregateField;
    CDSDic_jumlah2: TFloatField;
    CDSTPH_DSC: TFloatField;
    CDSC_DSC_FAK: TFloatField;
    CDSTPH_TPD_AMOUNT: TFloatField;
    CDSTPH_TPD_DSC: TFloatField;
    CDSC_NET: TFloatField;
    CDSDTPD_CONV1_B: TSmallintField;
    CDSDTPD_CONV2_B: TSmallintField;
    CDSDTPD_MK_KODE_B: TIntegerField;
    Label62: TLabel;
    Label63: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BeforeInsert(DataSet: TDataSet);
    procedure BeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure BeforeDelete(DataSet: TDataSet);
    procedure KeyDownAll(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BeforePost(DataSet: TDataSet);
    procedure CDSDCalcFields(DataSet: TDataSet);
    procedure CDSCalcFields(DataSet: TDataSet);
    procedure CDSDNewRecord(DataSet: TDataSet);
    procedure CDSNewRecord(DataSet: TDataSet);
    procedure dbgKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure me_nomorExit(Sender: TObject);
    procedure skunewExit(Sender: TObject);
    procedure CDSTPH_MV_KODEValidate(Sender: TField);
    procedure CDSDic_pluValidate(Sender: TField);
    procedure dbgColExit(Sender: TObject);
    procedure CDSDTPD_QTYValidate(Sender: TField);
    procedure CDSDTPD_QTY_BValidate(Sender: TField);
    procedure CDSDTPD_DSC_PR1Change(Sender: TField);
    procedure DBEdit7Exit(Sender: TObject);
    procedure CDSDic_plu_bValidate(Sender: TField);
    procedure CDSDTPD_AMOUNTValidate(Sender: TField);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure CDSDTPD_NETTOValidate(Sender: TField);
    procedure dbevendorExit(Sender: TObject);
    procedure me_nomorEnter(Sender: TObject);
    procedure dbe_date_tibaExit(Sender: TObject);
    procedure CDSDAfterDelete(DataSet: TDataSet);
    procedure cb_prnExit(Sender: TObject);
    procedure CDSTPH_DSC_PR1Validate(Sender: TField);
    procedure CDSDAfterScroll(DataSet: TDataSet);
    procedure Image1DblClick(Sender: TObject);
    procedure Image2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure me_tokoExit(Sender: TObject);
//    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
//    procedure B_OkClick(Sender: TObject);
    procedure B_CancelClick(Sender: TObject);
//    procedure DBG_FormKeyDown(Sender: TObject; var Key: Word;
//      Shift: TShiftState);
    procedure ed_subExit(Sender: TObject);
    procedure skunewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button6Click(Sender: TObject);
    procedure EdcskuExit(Sender: TObject);
    procedure dbgEnter(Sender: TObject);
    procedure dbgColEnter(Sender: TObject);
    procedure me_tokoEnter(Sender: TObject);
    procedure dbe_pot1_persenEnter(Sender: TObject);
    procedure dbe_pot2_persenEnter(Sender: TObject);
    procedure dbe_pot1_amountEnter(Sender: TObject);
    procedure dbe_pot2_amountEnter(Sender: TObject);
    procedure CDSDTPD_DSCValidate(Sender: TField);
    procedure CDSDTPD_DSC_PR1Validate(Sender: TField);
    procedure CDSTPH_DSC_RP1Validate(Sender: TField);
    procedure dbe_pot1_amountExit(Sender: TObject);
    procedure dbe_pot2_amountExit(Sender: TObject);
    procedure dbe_pot1_persenExit(Sender: TObject);
    procedure dbe_pot2_persenExit(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure CDSDTPD_EKORValidate(Sender: TField);
    procedure DBEdit7Enter(Sender: TObject);
    procedure dbevendorEnter(Sender: TObject);

  private
    { Private declarations }
     A_Unik : array [0..300,0..2] of string;
        kkey : array [0..4] of integer;
     xbaris:integer;
    sfkonv: string;
     bolehsimpan,
    inputhjual,
    tibanhargapo,tibanproforma,tibanretur,sethargajualdipo,
    pomultirec,multisku,
    tanpainputuu,boleheditpo,bolehcetakulangpo,


//    tibanhargapo,tibanproforma,tibanretur,
    sku_ok,
    insert_harga_beli : boolean;
    sku6or8,
    konter,expired_po : integer;
    lokasi_ttf,
    ghargabelisentral,ghargabelieceran,
    stag,sppn,alamat_vendor,no_telp,no_fax,mtp,contact:string;
    cetak_list,
    tanpaekor,
    bbaru,bpkp,bprinsipal, bnotedit,bproses,bedit,beditdisc,bcetak,bNewTrans,bPLUawal,bPLUakhir,bPLUEnd,bPLUStart    ,cetak_footer_po  : boolean;
    dppn,dppnbm,dminorv:double;
    g_opsi_cetak,
    x_simpan : boolean;
    multistore,po_proforma, ///cetak_proforma,
    g_multistore : boolean;

    
    procedure Baru;
    procedure TekanF2(Sender:TObject);
    procedure TekanF22(Sender:TObject);
    procedure TekanF3(Sender:TObject);
    procedure TekanF4(Sender:TObject);

    procedure TekanF6(Sender:TObject);
    procedure SimpanData2;
    procedure BatalData;
    procedure SimpanData;
    procedure HapusData;
    procedure KeluarForm(Sender:TObject);
    procedure cetakpo;
    procedure cekbonus;
    procedure tampiltop;
    procedure cetak_list_checker;
//    function cek_constrain(pk,plu,init : String; event:char; var xbaris:integer):boolean;
//    procedure  empty_memory;
  public
    { Public declarations }
    f : TextFile ;

  end;

var
  order: Torder;

implementation

uses Umain, F_LIB, TF_LOV_ALL, TF_ALMANAK, TF_CETAKAN,
  TF_CETAK_PO,TF_EHJUAL,main_help;


{$R *.xfm}



procedure Torder.Baru;
begin
 label62.Caption:='#';
 xbaris:=0;
 bolehsimpan:=true;
  x_simpan:=false;
  sku_ok:=false;
  //
  fmain.empty_memory;

  dbg.ReadOnly:=false;
//  lib.msgbox(112);
//  boleheditpo:=false;  //true;
  bolehcetakulangpo:=false;
  Panelpilihcetak.Visible:=false;
  P_Form.Hide;
  lokasi_ttf:='';
//  lib.msgbox(113);
  MQ.Close;
  CDS.close;
  MQ.SQL.Text := 'Select * From tr.T_PO_HDR where TPH_PK = "XXX" ';
  CDS.open;
  MQ.open;
  MQD.Close;
  CDSD.close;
  MQD.SQL.Text := 'Select * From tr.T_PO_DTL where TPD_PK = "XXX" ';
  MQD.open;
  CDSD.open;
//  lib.msgbox(114);

  { Variable ini digunakan untuk checked transaksi tersebut baru atau edit }
  pbonus.visible:=false;
  pdiskon.visible:=false;
  bcetak:=false;
  sppn := '9';
//  lib.msgbox(115);

  bNewTrans := TRUE;
  bPLUEnd   := FALSE;
  bPLUStart := FALSE;
  bPLUawal  := FALSE;
  bPLUakhir := FALSE;
  bbaru:=false;
  tanpaekor:=true;
  konter:=0;
  label24.Caption:='';
  label24.Font.Style:= [fsBold];
  label25.Caption:='';
  //lib.msgbox(116);

  bnotedit  :=false;
  edvendor.Clear;
  edit1.Clear;
  me_nomor.readonly:=false;
  me_nomor.color:=$00ECFFA7;
  me_nomor.tabstop:=true;
  me_nomor.Clear;
//  me_nomor.SetFocus;
{
    me_toko.Clear;

  if b_sts_uu='1' then
     me_toko.SetFocus
  else
     me_nomor.SetFocus;
  if not g_multistore then me_toko.Text:= g_uu_code_aktif;
}
 // lib.msgbox(117);

 if tanpainputuu then
 begin
//lib.msgbox(118);
    panel7.hide;
    panel10.show;
    me_nomor.SetFocus;
   // me_toko.Text:= g_uu_code_aktif;
    g_uu_code_ts:= me_toko.Text; //g_uu_code_aktif;
    g_uu_code_ts_text := Edit4.Text;

 end
 else
 if b_sts_uu='1' then
 begin
  // lib.msgbox(119);

    if g_code_form='T1' then
    begin
    //  lib.msgbox(120);

      panel7.Hide;
      panel10.show;
      me_nomor.SetFocus;
     // me_toko.Text:= g_uu_code_aktif;
     // g_uu_code_ts:= g_uu_code_aktif;
      g_uu_code_ts:= me_toko.Text;
      g_uu_code_ts_text := Edit4.Text;
      //  lib.msgbox(121);


    end
    else if g_code_form='T1_1' then
    begin
    //  lib.msgbox(122);

  //  lib.msgbox('3');
      panel7.show;
 //   panel10.Hide;
      me_toko.SetFocus
    end;
  end
  else
  begin
 //lib.msgbox(123);
 //
 panel7.show;
    //me_toko.Text:= g_uu_code_aktif;
    //g_uu_code_ts:= g_uu_code_aktif;
    g_uu_code_ts:= me_toko.Text;
    g_uu_code_ts_text := Edit4.Text;
    CDS.Edit;
    me_nomor.SetFocus;
end;

  //lib.msgbox(124);




//     me_nomor.SetFocus;
//?  if not g_multistore then me_toko.Text:= g_uu_code_aktif;


  //g_uu_code_ts:= g_uu_code_aktif;
  g_uu_code_ts:= me_toko.Text;
  g_uu_code_ts_text := Edit4.Text;


 // lib.msgbox(125);

   me_toko.Enabled:= true;
   me_nomor.Enabled:=true;
//   dbevendor.Enabled:=true;
//   dbe_date_tiba.Enabled:=true;

  //lib.msgbox(126);


end;

{ Fungsi : LOV Data }

procedure Torder.TekanF3(Sender:TObject);
var    cari_no,carino,g_lov_stm2,cari : string;
       typepo,kounter,icount: integer;
       saverec : TBookmark;
begin
  if ((Sender = dbg) and (dbg.SelectedField.FieldName = 'ic_plu'))  or
     (sender = dbedit7) then
  begin

            cari:='';
            saverec := cdsd.GetBookmark;
            cdsd.DisableControls;
            cdsd.First;

            kounter:=cdsd.RecordCount ;
            for icount:= 1 to kounter  do
            begin
               cari:=concat(cari, cdsd.fieldbyname('TPD_MP_SKU').asstring,',');
               CDSD.Next;
            end;
            cdsd.EnableControls;
            CDSD.GotoBookmark(saverec);
            CDSD.Append;
            cari:= leftstr(cari,length(cari)-1);

//                ' and MPS_MT_KODE='''+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'''' )+
//            ifthen(cari<>'',' and MP_SKU not in  ('+cari+') ','')+
//             ' group by MPH_MP_SKU order by MP_DESCP'; //MPH_MP_SKU';




    g_lov_stm := 'Select MP_SKU, MP_BARCODE, MP_DESCP,MP_QM_SOLD,MP_QM_REC,(MP_QM_REC-MP_QM_SOLD-MP_STOCK),MP_STOCK, MP_CONV1, MP_CONV2, MP_AVG_COST, MP_MK_KODE, MP_ST_CURAH, MP_MV_KODE  from ms.M_PRODUK where MP_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+
          ') and MP_SKU>1  and length(MP_SKU)= '+IntToStr(sku6or8)+

            ifthen(cari<>'',' and MP_SKU not in  ('+cari+') ','')+
         ' order by MP_SKU'; //and MP_SKU=MPG_SKU and length(MP_SKU)=6 ';
    if g_debug then writeln(f,'xx92: '+ g_lov_stm);
    if g_debug then flush(f);
     g_lov_hdr := 'Data Produk;SKU;60;L;Barcode;100;L;Nama Produk;200;L;Sales;50;R;Receip;50;R;Koreksi;50;R;Stock;50;R;Conv 1;50;R;Conv 2;50;R;Avg. Cost;100;R;Kelompok;75;L;Curah;50;C;Vendor;80;C;';
     tlov_all.Create(nil).ShowModal ;
     if (g_lov_nil[0] <> null) then
     begin
  //   lib.msgbox('readonly 4' );
         if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
//         lib.msgbox('iki 2sb ');
{         if dbg.SelectedField.FieldName = 'ic_plu' then
//            cdsd.fieldbyname('ic_plu').asstring:=g_lov_nil[0]*10+2

            cdsd.fieldbyname('ic_plu').asstring:=g_lov_nil[0]   //concat(g_lov_nil[0],'2')
         else
          //  cdsd.fieldbyname('ic_plu_b').asstring:=g_lov_nil[0]; // g_lov_nil[0]*10+2;
            cdsd.fieldbyname('ic_plu_b').asstring:=g_lov_nil[0]; //concat(g_lov_nil[0],'2');
}
////////////

              if ghargabelieceran='Y' then
              begin
                 if dbg.SelectedField.FieldName = 'ic_plu' then
                 begin
                 cdsd.fieldbyname('ic_plu').asstring:=concat(g_lov_nil[0],'2');
                 cdsd.fieldbyname('TPD_MP_SKU').asstring:=g_lov_nil[0];
                 cdsd.fieldbyname('TPD_EKOR').asstring:='2';

                 end
                 else
                 if dbg.SelectedField.FieldName = 'ic_plu_b' then
                 begin
                 cdsd.fieldbyname('ic_plu_b').asstring:=concat(g_lov_nil[0],'2');
                 cdsd.fieldbyname('TPD_MP_SKU_B').asstring:=g_lov_nil[0];
                 cdsd.fieldbyname('TPD_EKOR').asstring:='2';
                 end;
              end
              else
              if ghargabelieceran='N' then
              begin
                 if dbg.SelectedField.FieldName = 'ic_plu' then
                 begin
                 cdsd.fieldbyname('ic_plu').asstring:=g_lov_nil[0];
                 cdsd.fieldbyname('TPD_MP_SKU').asstring:=g_lov_nil[0];
                 end
                 else
                 if dbg.SelectedField.FieldName = 'ic_plu_b' then
                 begin
                 cdsd.fieldbyname('ic_plu_b').asstring:=concat(g_lov_nil[0]);
                 cdsd.fieldbyname('TPD_MP_SKU_B').asstring:=g_lov_nil[0];
                 end;
              end;


///////////


     end;
     if sender = dbg then dbg.SetFocus;
     if sender = dbedit7 then dbedit7.SetFocus;
  end;
end;

procedure Torder.TekanF6(Sender:TObject);
begin
  if ((Sender = dbg) and (dbg.SelectedField.FieldName = 'ic_plu'))  or
     (sender = dbedit7) then
  begin
  panel15.Show;
  CheckBox1.Checked:=true;
  panel15.BringToFront;

  skunew.setfocus;
  end;
end;



procedure Torder.BatalData;
begin
  if not lib.Batal then exit;
   me_toko.Enabled:= true;
   me_nomor.Enabled:=true;
   dbevendor.Enabled:=true;
   dbe_date_tiba.Enabled:=true;
  Baru;
end;

procedure Torder.SimpanData;
var cari_sku,sno:string;
   dtotal,dnettofak,dtotalppn,dtotalppnbm:double;

   dfakamount,dtotalamount,dtotalnetto:double;
   konter : integer;
   sqlnya : string;
dpersen,dnetto,damount :double;
   vHasilMsg1,
   vHasilMsg: TModalResult;
begin
  { Proses Validasi, sebelum message simpan }
  if Lib.ExpiredProgram then abort;
  if not bolehsimpan then
  begin
    lib.msgbox('Item Dalam PO ada masalah, tidak bisa disimpan, silakan cek ulang, hubungi EDP/IT ');
    abort
  end;
  dbg.SetFocus;
  if not lib.Simpan then exit else x_simpan :=true;



  cdsd.Prior;
  cdsd.Next;

  if (cdsd.state <> dsedit) and (cdsd.state<>dsinsert) then cdsd.edit;
  cdsd.Post;
//  if (cds.state <> dsedit) and (cds.state<>dsinsert) then cds.edit;
//  cds.Post;

  CDSDCalcFields(cdsd);
  cdsCalcFields(cds);




  cds.DisableControls;
  cdsd.DisableControls;
  cdsd.First;
  //lib.msgbox(1);

  if cdsd.IsEmpty then
  begin
      lib.msgbox('Detail Permintaan belum diisi');
      cds.EnableControls;
      cdsd.EnableControls;
      abort;
  end;
 //lib.msgbox(2);
  if cds.FieldByName('C_Faktur').asfloat < dminorv then
  begin
     lib.msgbox('Order ('+formatfloat('###,###,##0.00',cds.FieldByName('C_Faktur').AsFloat)  +') tidak memenuhi Minor ('+formatfloat('###,###,##0.00',dminorv)+') !'+#10#13);
     cds.EnableControls;
     cdsd.EnableControls;
       lib.msgbox(1);

//     dbg.SetFocus;
     bPLUEnd   := true;
       lib.msgbox(2);

     bPLUStart := true;
       lib.msgbox(3);

       bbaru:=false;
         lib.msgbox(4);

//                  cdsd.last;
//     sku_ok:=true; //false;

//                  abort;

   lib.msgbox(5);


  //   dbg.SetFocus;
  lib.msgbox(6);
     abort;
  end;
//  lib.msgbox(7);
{
         lib.msgbox(' C_NET : '+formatfloat('###,###,##0.00',cds.fieldbyname('C_NET').AsFloat)+
                    ' C_ppn : '+formatfloat('###,###,##0.00',cds.fieldbyname('C_PPN').AsFloat)+
                    ' Dis Fak : '+formatfloat('###,###,##0.00',cds.fieldbyname('C_DSC_FAK').AsFloat)+
                    ' aPpn : '+formatfloat('###,###,##0.00',cdsd.fieldbyname('a_ppn').value)+
                    ' a_netto: '+formatfloat('###,###,##0.00',cdsd.fieldbyname('a_netto').value)+
                    ' a_netto2: '+formatfloat('###,###,##0.00',cdsd.fieldbyname('a_netto2').value)+
                    ' C_FAKTUR: '+formatfloat('###,###,##0.00',cds.fieldbyname('C_FAKTUR').value)
                    );

}

{
  konter:=0;
  dtotal:=0;
  dtotalppn:=0;
  dtotalppnbm:=0;
  dfakamount:=0;
  dtotalnetto:=0;
 // lib.msgbox(4);
  cds.fieldbyname('TPH_ITEM').AsInteger := cdsd.RecordCount;
//lib.msgbox(5);

  cds.fieldbyname('TPH_AMOUNT').asfloat:= cds.FieldByName('C_Faktur').asfloat;
//lib.msgbox(6);

  cds.fieldbyname('TPH_VOLUME').asfloat:= 0; //cdsd.FieldByName('a_volume').AsVariant;
//lib.msgbox(7);

  cds.fieldbyname('TPH_BERAT').asfloat:= 0; //cdsd.FieldByName('a_berat').AsVariant;

//lib.msgbox(8);
  cds.fieldbyname('TPH_TPD_AMOUNT').asfloat:= cdsd.FieldByName('a_amount').AsVariant;
//lib.msgbox(9);

  cds.fieldbyname('TPH_TPD_DSC').asfloat:= cdsd.FieldByName('a_dsc_item').AsVariant;
//lib.msgbox(10);
//  cds.fieldbyname('TPH_DSC').AsFloat := cds.fieldbyname('C_DSC_FAK').AsFloat;

//  cds.fieldbyname('TPH_NETTO').AsFloat :=cdsd.fieldbyname('a_netto').AsFloat;
  //cds.fieldbyname('C_NET').AsFloat;

 // lib.msgbox(4);

//lib.msgbox(cds.fieldbyname('C_DSC_FAK').AsFloat);

//lib.msgbox(cds.fieldbyname('C_NET').AsFloat);

//lib.msgbox(6);

   dtotalamount:=cdsd.fieldbyname('a_netto').value;

   if cds.fieldbyname('TPH_DSC_PR1').AsFloat > 0 then
      dtotalnetto := dtotalAmount * ( 1 - (cds.fieldbyname('TPH_DSC_PR1').AsFloat/100) )
   else
      dtotalnetto := dtotalAmount - cds.fieldbyname('TPH_DSC_RP1').AsFloat;

   if cds.fieldbyname('TPH_DSC_PR2').AsFloat > 0 then
      dtotalnetto := dtotalnetto * ( 1 - (cds.fieldbyname('TPH_DSC_PR2').AsFloat/100) )
   else
      dtotalnetto := dtotalnetto - cds.fieldbyname('TPH_DSC_RP2').AsFloat;


  if cdsd.FieldByName('a_netto').Value > 0 then
//  cds.fieldbyname('TPH_NETTO').asfloat:= cdsd.FieldByName('a_netto').asvariant;

//lib.msgbox(4);
  cds.fieldbyname('TPH_PPN').AsFloat := cds.FieldByName('C_PPN').asfloat;
  cds.fieldbyname('TPH_PPN_BM').AsFloat := cds.FieldByName('C_PPN_BM').asfloat;
  cds.fieldbyname('TPH_MT_KODE_TF').AsString := lokasi_ttf;
  cds.fieldbyname('TPH_MT_KODE_TS').AsString := me_toko.Text;//g_uu_code_aktif;
  dtotal:=cds.fieldbyname('TPH_AMOUNT').asfloat-cds.fieldbyname('TPH_PPN').asfloat;
  dfakamount:=0;
 // lib.msgbox(5);
   cdsd.First ;

}

 konter:=0;
  dtotalppn:=0;
  dtotalppnbm:=0;
  dfakamount:=0;
  dtotalnetto:=0;
  cds.fieldbyname('TPH_ITEM').AsInteger := cdsd.RecordCount;
  cds.fieldbyname('TPH_VOLUME').asfloat:= 0; //cdsd.FieldByName('a_volume').AsVariant;
  cds.fieldbyname('TPH_BERAT').asfloat:= 0; //cdsd.FieldByName('a_berat').AsVariant;
  cds.fieldbyname('TPH_TPD_AMOUNT').asfloat:= cdsd.FieldByName('a_amount').AsVariant;
  cds.fieldbyname('TPH_TPD_DSC').asfloat:= cdsd.FieldByName('a_dsc_item').AsVariant;
  cds.fieldbyname('TPH_AMOUNT').asfloat:= cds.FieldByName('C_Faktur').asfloat;

  dtotalamount:=cdsd.fieldbyname('a_netto').value;

   if cds.fieldbyname('TPH_DSC_PR1').AsFloat > 0 then
      dtotalnetto := dtotalAmount * ( 1 - (cds.fieldbyname('TPH_DSC_PR1').AsFloat/100) )
   else
      dtotalnetto := dtotalAmount - cds.fieldbyname('TPH_DSC_RP1').AsFloat;

   if cds.fieldbyname('TPH_DSC_PR2').AsFloat > 0 then
      dtotalnetto := dtotalnetto * ( 1 - (cds.fieldbyname('TPH_DSC_PR2').AsFloat/100) )
   else
      dtotalnetto := dtotalnetto - cds.fieldbyname('TPH_DSC_RP2').AsFloat;


   cds.fieldbyname('TPH_NETTO').asfloat:= dtotalamount; //dtotal+dtotalppn+dtotalppnbm;


  if cdsd.FieldByName('a_netto').Value > 0 then
//  cds.fieldbyname('TPH_NETTO').asfloat:= cdsd.FieldByName('a_netto').asvariant-cds.FieldByName('C_DSC_FAK').asvariant;
//    cds.fieldbyname('TPH_AMOUNT').asfloat:= cds.FieldByName('C_Faktur').asfloat;

     cds.fieldbyname('TPH_PPN').AsFloat := cds.FieldByName('C_PPN').asfloat;

{
if bpkp  and  (cds.fieldbyname('C_PPN').AsVariant<>0)
then
begin
  if  (cds.fieldbyname('C_DSC_FAK').Value<>0) then
  begin
  cds.fieldbyname('TPH_PPN').AsFloat :=  cds.fieldbyname('C_PPN').AsVariant;
//   (cdsd.FieldByName('a_netto').Value-
//   cds.fieldbyname('C_DSC_FAK').Value)* (dppn/ 100);
  end
  else
  cds.fieldbyname('TPH_PPN').AsFloat :=cds.fieldbyname('C_PPN').AsVariant;
end
else
cds.fieldbyname('TPH_PPN').AsFloat :=0;
}
//lib.msgbox(cds.fieldbyname('TPH_PPN').AsFloat);
//lib.msgbox(cds.fieldbyname('C_PPN').AsVariant);
//lib.msgbox(cdsd.fieldbyname('a_ppn').AsVariant);



  cds.fieldbyname('TPH_DSC').AsFloat := cds.fieldbyname('C_DSC_FAK').AsFloat ;
  cds.fieldbyname('TPH_PPN_BM').AsFloat := cds.FieldByName('C_PPN_BM').asfloat;
  cds.fieldbyname('TPH_MT_KODE_TF').AsString := lokasi_ttf;
  cds.fieldbyname('TPH_MT_KODE_TS').AsString := me_toko.Text;//g_uu_code_aktif;
  dtotal:=cds.fieldbyname('TPH_AMOUNT').asfloat-cds.fieldbyname('TPH_PPN').asfloat;
  dfakamount:=0;



  cdsd.First ;
  while not cdsd.eof do
  begin
      konter:=konter+1;   // lib.msgbox('row '+ IntToStr(konter) );

      if (cdsd.FieldByName('TPD_NETTO').AsFloat * (cdsd.FieldByName('TPD_QTY').AsFloat) <=0)  then
      begin
      lib.msgbox('Ada QTY Item / Cost Produk yg bermasalah / nilainya nol');
      cds.EnableControls;
      cdsd.EnableControls;
      dbg.SetFocus;
      abort;
      end;

      if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;

   //   lib.msgbox(6);
       dtotal:=cds.fieldbyname('TPH_AMOUNT').asfloat-cds.fieldbyname('TPH_PPN').asfloat-cds.fieldbyname('TPH_PPN_BM').asfloat;
      dNettoFak   := cdsd.FieldByName('TPD_NETTO').AsFloat * (cdsd.FieldByName('TPD_QTY').AsFloat / cds.FieldByName('TPH_NETTO').AsFloat * dtotal);

      cdsd.FieldByName('TPD_NETTO2').AsFloat := dNettoFak;   //   lib.msgbox(7);

  { 06-04
      if bpkp and (cdsd.FieldByName('ic_ppn').Asstring = '1') then
        cdsd.FieldByName('TPD_PPN').AsFloat := cdsd.FieldByName('TPD_NETTO').AsFloat * (dppn/ 100)
      else
        cdsd.FieldByName('TPD_PPN').AsFloat := 0;
  //    lib.msgbox(8);
  }

       cdsd.FieldByName('TPD_NETTO2').AsFloat := dNettoFak;   //   lib.msgbox(7);

      if cdsd.FieldByName('TPD_QTY').AsFloat > 0 then
         begin
           cdsd.FieldByName('TPD_NETTO2').AsFloat  := dNettoFak / (cdsd.FieldByName('TPD_QTY').AsFloat );

           if bpkp and (cdsd.FieldByName('ic_ppn').Asstring = '1') then
              cdsd.FieldByName('TPD_PPN').AsFloat := cdsd.FieldByName('TPD_NETTO2').AsFloat * (dppn / 100)
           else
              cdsd.FieldByName('TPD_PPN').AsFloat := 0;
         end;

         //       lib.msgbox(9);

      dTotalPPN   := dTotalPPN   + (cdsd.FieldByName('TPD_PPN').AsFloat  * cdsd.FieldByName('TPD_QTY').AsFloat);
      dTotalPPnBM := dTotalPPnBM + (cdsd.FieldByName('TPD_PPN_BM').AsFloat * cdsd.FieldByName('TPD_QTY').AsFloat);
      dtotalnetto:= dtotalnetto + (cdsd.FieldByName('TPD_NETTO').AsFloat * cdsd.FieldByName('TPD_QTY').AsFloat );
      dfakamount := dfakamount +((cdsd.FieldByName('TPD_NETTO').AsFloat - cdsd.FieldByName('TPD_NETTO2').AsFloat )* cdsd.FieldByName('TPD_QTY').AsFloat);
      cdsd.Next;
  end;

 // lib.msgbox(6);

  cds.fieldbyname('TPH_AMOUNT').asfloat:=  //cds.FieldByName('C_Faktur').asfloat;    //
  dtotal+dtotalppn+dtotalppnbm;
  cds.fieldbyname('TPH_PPN').AsFloat := // cds.FieldByName('C_PPN').asfloat; //
  dtotalppn;
//  cds.fieldbyname('TPH_PPN_BM').AsFloat := dtotalppnbm;

  cds.fieldbyname('TPH_NETTO').asfloat:=dtotalnetto-dfakamount;



  //cds.FieldByName('C_faktur').asfloat-cds.FieldByName('C_PPN').asfloat; // -dfakamount;
  //  dtotalnetto-dfakamount;
  cds.fieldbyname('TPH_DSC').AsFloat := dfakamount;

{
  //simpan ganti ini ?
}

//lib.msgbox(cds.fieldbyname('C_DSC_FAK').AsFloat);


cds.fieldbyname('TPH_DSC').AsFloat := cds.fieldbyname('C_DSC_FAK').AsFloat ;



//lib.msgbox(7);

//cds.fieldbyname('TPH_NETTO').asfloat:= cds.fieldbyname('C_NET').AsFloat ;
//cds.fieldbyname('TPH_AMOUNT').asfloat:= cds.fieldbyname('C_FAKTUR').AsFloat ; //+cds.fieldbyname('C_PPN').AsFloat ;

//tutuplagi
//?
cds.fieldbyname('c_net').asfloat:=cds.fieldbyname('TPH_NETTO').asfloat;
//cdsd.FieldByName('a_netto').asvariant-cds.fieldbyname('C_DSC_FAK').AsFloat;

//lib.msgbox(8);



  cds.fieldbyname('TPH_MT_KODE_TF').AsString := lokasi_ttf;
  cds.fieldbyname('TPH_MT_KODE_TS').AsString := me_toko.Text;
//  cds.First;
  if bNewTrans then
  begin                                                                  // KODE_TS                   //me_toko.Text,
      fmain.cari5('select max(TPH_NO) NO from tr.T_PO_HDR where TPH_MT_KODE  = "'+ifthen(b_sts_uu= '1',g_uu_code_aktif,g_uu_code_aktif)+'" '+
                 ' and DATE_FORMAT(TPH_DI,''%Y%m'') = "'+formatdatetime('yyyymm',now)+'" '+
                 ' group by DATE_FORMAT(TPH_DI,''%Y%m'')');
      if trim(fmain.scds_cari5.fieldbyname('NO').asstring) = '' then
         sno:= lib.bulantahun(date)+'.'+'00001'
      else
         sno:=lib.bulantahun(date)+'.'+
              rightstr('00000'+inttostr(strtoint(RightStr(fmain.scds_cari5.fieldbyname('NO').asstring,5))+1),5);

      if (cds.state <> dsedit) and (cds.state<>dsinsert) then cds.edit;
      cds.fieldbyname('TPH_NO').asstring:= sno;
  end;
  sno:= cds.fieldbyname('TPH_NO').asstring ;
  g_uu_code_po_aktif :=cds.fieldbyname('TPH_NO').asstring ;
  sno:=  'PO_'+ifthen(b_sts_uu= '1',me_toko.Text,'')+'_'+cds.fieldbyname('TPH_NO').asstring ;
 {
  cdsd.Next;
  if (cdsd.state <> dsedit) and (cdsd.state<>dsinsert) then cdsd.edit;
  cdsd.Post;
  if (cds.state <> dsedit) and (cds.state<>dsinsert) then cds.edit;
  cds.Post;
 }
  if cds.ApplyUpdates(0) > 0 then
  begin
      lib.msgbox('Gagal simpan header');
      abort;
  end;

  if cdsd.ApplyUpdates(0) > 0 then
  begin
      lib.msgbox('Gagal simpan detail');
       cds.EnableControls;
       cdsd.EnableControls;
      abort;
  end;
  cdsd.DisableControls;
  if not (ghargabelisentral='Y') then
  begin
    {}
    c_db.ExecSQL('SET @G_SKIP_UPDATE="Y";SET @G_SKIP_UPDATE="Y"; ',[null]);

    sqlnya:=  'insert ignore into ms.M_PURCHASE (MPH_MT_KODE, MPH_MV_KODE, MPH_MP_SKU, MPH_AMOUNT,MPH_DSC_PR1,MPH_DSC_RP1,MPH_DSC_PR2,MPH_DSC_RP2,MPH_DSC_PR3,MPH_DSC_RP3,MPH_DI) '+
              ' select '+  quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+
              ',TPH_MV_KODE, TPD_MP_SKU, TPD_AMOUNT/if(TPD_EKOR=0,TPD_CONV2,if(TPD_EKOR=1,TPD_CONV2/TPD_CONV1,1))  TPD_AMOUNT,TPD_DSC_PR1,TPD_DSC_RP1,TPD_DSC_PR2,TPD_DSC_RP2,TPD_DSC_PR3,TPD_DSC_RP3,TPD_DI from tr.T_PO_HDR,tr.T_PO_DTL WHERE TPH_PK=TPD_TPH_PK AND TPH_NO="'+g_uu_code_po_aktif+'"';

    if g_debug then writeln(f,'1: '+ sqlnya);
    if g_debug then flush(f);
    c_db.ExecSQL(sqlnya,[null]);
    sqlnya:=  'update ignore ms.M_PURCHASE,tr.T_PO_HDR,tr.T_PO_DTL set MPH_AMOUNT = TPD_AMOUNT/if(TPD_EKOR=0,TPD_CONV2,if(TPD_EKOR=1,TPD_CONV2/TPD_CONV1,1)),MPH_DSC_PR1=TPD_DSC_PR1,MPH_DSC_RP1=TPD_DSC_RP1,MPH_DSC_PR2=TPD_DSC_PR2,'+
              ' MPH_DSC_RP2=TPD_DSC_RP2,MPH_DSC_PR3=TPD_DSC_PR3,MPH_DSC_RP3=TPD_DSC_RP3,MPH_DU=NOW()'+
              ' where MPH_MT_KODE = '+ quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+
              ' and TPH_PK=TPD_TPH_PK AND TPH_NO="'+g_uu_code_po_aktif+'" and MPH_MP_SKU = TPD_MP_SKU '+
              ' and TPH_MV_KODE=MPH_MV_KODE and TPH_MT_KODE=MPH_MT_KODE';
    if g_debug then writeln(f,'2: '+ sqlnya);
    if g_debug then flush(f);
      c_db.ExecSQL(sqlnya,[null]);
      sqlnya:='update ignore ms.M_PRODUK,tr.T_PO_HDR,tr.T_PO_DTL set MP_MV_KODE= TPH_MV_KODE,MP_DU=NOW()'+
              ' where MP_MT_KODE = '+ quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+
              ' and TPH_PK=TPD_TPH_PK AND TPH_NO="'+g_uu_code_po_aktif+'" and MP_SKU = TPD_MP_SKU '+
              ' and TPH_MT_KODE =MP_MT_KODE;';

    if g_debug then writeln(f,'3: '+ sqlnya);
    if g_debug then flush(f);
     c_db.ExecSQL(sqlnya,[null]);

  end;

  lib.msgbox('Data sudah disimpan dengan nomor '+sno);
if not (boleheditpo) and
   not (cds.fieldbyname('TPH_ST_PRN').AsString='Y') and
  (UpperCase(lib.y_n('1 Apakah P.O ini sdh final siap dikirim, jika sdh final [Y], PO bisa dicetak dan tidak bisa di edit lagi'))='N') then
  begin
    me_toko.Enabled:= true;
    me_nomor.Enabled:=true;
    dbevendor.Enabled:=true;
    dbe_date_tiba.Enabled:=true;
    cds.enableControls;
    cdsd.enableControls;
    Baru;
end
else

if g_opsi_cetak  then
begin
//lib.msgbox(1);
  vHasilMsg := messagedlg('Apakah akan cetak ke printer ? Tekan' + #10 +
                              '[Yes] untuk cetak ke printer Deskjet/Laser,' + #10 +
                              '[No] untuk cetak ke printer biasa,' + #10 +
                              '[Cancel] untuk membatalkan cetak.', mtconfirmation, [mbYes, mbNo, mbCancel], 0, mbYes);

  if vHasilMsg = mrYes then
  begin
 // lib.msgbox(2);
     if b_sts_uu= '1' then g_uu_code_aktif_1:= me_toko.Text  else g_uu_code_aktif_1:= g_uu_code_aktif;
     g_uu_code_ts:= me_toko.Text;
     g_uu_code_ts_text := Edit4.Text;
//lib.msgbox(3);
     cetak_proforma:= false;

     //  if po_proforma then
     //  vHasilMsg1 := messagedlg('Apakah akan cetak PO Proforma ? Tekan' + #10 +
     //                           '[Yes] untuk cetak Proforma ,' + #10 +
     //                           '[No] untuk cetak ke PO Normal ,' + #10 +
     //                           '[Cancel] untuk membatalkan cetak.', mtconfirmation, [mbYes, mbNo, mbCancel], 0, mbYes);
     //
     //  if vHasilMsg1 = mrYes then cetak_proforma:= true;
//     if g_opsi_cetak then
//lib.msgbox(4);
     with TTCetak_RptPO.Create(nil) do
     begin
       RLReport1.Prepare;
       RLReport1.Preview();
       Free;
     end;
 //    lib.msgbox(5);
     c_db.ExecSQL('SET @G_SKIP_UPDATE="Y";SET @G_SKIP_UPDATE="Y";'+
                  'update ignore tr.T_PO_HDR  set TPH_ST_PRN="Y" WHERE TPH_MT_KODE_TS="'+
                  ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'"'+
                  ' and TPH_MT_KODE="'+ g_uu_code_aktif+'" and TPH_NO="'+g_uu_code_po_aktif+'";'+
                  'SET @G_SKIP_UPDATE="N";SET @G_SKIP_UPDATE="N"; ',[null]);
   //  lib.msgbox(6);
     me_toko.Enabled:= true;
     me_nomor.Enabled:=true;
     dbevendor.Enabled:=true;
     dbe_date_tiba.Enabled:=true;
     cds.EnableControls;
     cdsd.EnableControls;
   //  lib.msgbox(7);
  end
  else
  if vHasilMsg = mrNo then
  begin
 // lib.msgbox(8);
    me_toko.Enabled:= true;
    me_nomor.Enabled:=true;
    dbevendor.Enabled:=true;
    dbe_date_tiba.Enabled:=true;
  //  cds.enableControls;
  //  cdsd.enableControls;
   // lib.msgbox('1aa   ');


//lib.msgbox(9);
    cetakpo;
    cds.enableControls;
    cdsd.enableControls;

  //  lib.msgbox(10);
    c_db.ExecSQL('SET @G_SKIP_UPDATE="Y";SET @G_SKIP_UPDATE="Y";'+
                  'update ignore tr.T_PO_HDR  set TPH_ST_PRN="Y" WHERE TPH_MT_KODE_TS="'+
                  ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'"'+
                  ' and TPH_MT_KODE="'+ g_uu_code_aktif+'" and TPH_NO="'+g_uu_code_po_aktif+'";'+
                  'SET @G_SKIP_UPDATE="N";SET @G_SKIP_UPDATE="N"; ',[null]);

  end
  else
  //if vHasilMsg = mbCancel then
  begin
  //lib.msgbox(11);
    //  lib.msgbox('mr cancel');
    me_toko.Enabled:= true;
    me_nomor.Enabled:=true;
    dbevendor.Enabled:=true;
    dbe_date_tiba.Enabled:=true;
    cds.enableControls;
    cdsd.enableControls;
    //lib.msgbox(12);
   baru;
  end;
end
else
begin
//lib.msgbox(13);
    vHasilMsg := messagedlg('Apakah akan cetak ke printer ? Tekan' + #10 +
                              '[Yes] cetak ke printer ,' + #10 +
                              '[No] tidak cetak,' + #10 , mtconfirmation, [mbYes, mbNo], 0, mbYes);
     if vHasilMsg = mrYes then
     begin
        cetak_proforma:= false;
        if po_proforma then
          vHasilMsg1 := messagedlg('Apakah akan cetak PO Proforma ? Tekan' + #10 +
                              '[Yes] untuk cetak Proforma ,' + #10 +
                              '[No] untuk cetak ke PO Normal ,' + #10 +
                              '[Cancel] untuk membatalkan cetak.', mtconfirmation, [mbYes, mbNo, mbCancel], 0, mbYes);

        if vHasilMsg1 = mrYes then cetak_proforma:= true;
        if (cds.state<>dsinsert) and (cds.state<>dsedit) then         cds.edit;
        if CDS.fieldbyname('TPH_ST_REC').AsString = 'N' then
        begin
           //cds.enableControls;
          // cdsd.enableControls;
          // lib.msgbox('3aa');
           cetakpo;
          // lib.msgbox('4aa');
           if cetak_list then
           begin
             cetak_list_checker;
             TRpt_Form.Create(nil).showmodal;
             lib.cetak();
           end;
        end;
        c_db.ExecSQL('SET @G_SKIP_UPDATE="Y";SET @G_SKIP_UPDATE="Y";'+
                  'update ignore tr.T_PO_HDR  set TPH_ST_PRN="Y" WHERE TPH_MT_KODE="'+g_uu_code_aktif+'" and TPH_MT_KODE='+ QuotedStr( me_toko.Text)+'  and TPH_NO="'+g_uu_code_po_aktif+'";'+
                  'SET @G_SKIP_UPDATE="N";SET @G_SKIP_UPDATE="N"; ',[null]);
     end
     else
  //if vHasilMsg = mbCancel then
  begin
//  lib.msgbox(14);
    //  lib.msgbox('mr cancel');
    me_toko.Enabled:= true;
    me_nomor.Enabled:=true;
    dbevendor.Enabled:=true;
    dbe_date_tiba.Enabled:=true;
    cds.enableControls;
    cdsd.enableControls;
  //  lib.msgbox(15);
    baru;
  end;
//  lib.msgbox(16);
  end;
 // lib.msgbox(17);

//end;  // selesai cetak atau buka baru
    me_toko.Enabled:= true;
    me_nomor.Enabled:=true;
    dbevendor.Enabled:=true;
    dbe_date_tiba.Enabled:=true;
    cds.enableControls;
    cdsd.enableControls;
//lib.msgbox(18);
  Baru;
end;

procedure Torder.HapusData;
begin
  { Proses Validasi, sebelum message Hapus }

  if not fmain.Status_Form('D') then
  begin
    lib.msgbox('Anda tidak berhak untuk melakukan penghapusan data transaksi ini');
    exit;
  end;
  if not lib.Hapus then exit;
  cds.delete;
  if cdsd.ApplyUpdates(0) > 0 then
  begin
      lib.msgbox('Gagal hapus data detail!');
      abort;
  end;
  if cds.ApplyUpdates(0) > 0 then
  begin
      lib.msgbox('Gagal hapus data header!');
      abort;
  end;
  Baru;
end;

procedure Torder.KeluarForm(Sender:TObject);
begin
  { Validasi keluar form hanya diperbolehkan posisi Kursor berada di Entry Header }
  if lib.Keluar then
  begin
    c_db.Connected := FALSE;
    close;
  end;
end;

procedure Torder.BeforeInsert(DataSet: TDataSet);
begin
  if not fmain.status_form('I') then
  begin
    lib.msgbox('Anda tidak mempunyai hak untuk menambah data.' );
    abort ;
  end ;
  DBG.SelectedIndex := 0;
end;

procedure Torder.BeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if (UpdateKind = ukModify) and not fmain.status_form('U') then
  begin
    lib.msgbox('Data tidak tersimpan !!!'+chr(10)+
               'Anda tidak mempunyai hak untuk mengupdate data.' );
    abort ;
  end ;
end;

procedure Torder.BeforeDelete(DataSet: TDataSet);
begin
  if not fmain.status_form('D') then
  begin
    lib.msgbox('Anda tidak mempunyai hak untuk menghapus data.' );
    abort ;
  end ;
  { Jika yang di Delete adalah Header, maka Delete dahulu di Detail }
  if dataset = cds then
  begin
      while not cdsd.IsEmpty do cdsd.delete;
  end;
  if dataset = cdsd then
      //fmain.
      if g_debug then writeln(f,'1 cek_constrain : '+
      dataset.fieldbyname('TPD_PK').AsString+ ' '+
      concat(dataset.fieldbyname('TPD_MP_SKU').AsString,
      dataset.fieldbyname('TPD_EKOR').AsString)+' '+
       dataset.fieldbyname('TPD_EKOR').AsString+' '+'H'); // +'  '+inttostr(xbaris));
      if g_debug then flush(f);

if dataset = cdsd then
      fmain.cek_constrain(dataset.fieldbyname('TPD_PK').AsString,
//      dataset.fieldbyname('TPD_MP_SKU').AsString,
       concat(dataset.fieldbyname('TPD_MP_SKU').AsString,
          dataset.fieldbyname('TPD_EKOR').AsString),
       dataset.fieldbyname('TPD_EKOR').AsString,
      'H'); //,xbaris);
//cdsd.Refresh;
end;

procedure Torder.ReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  lib.msgbox(e.Message);
end;

procedure Torder.FormShow(Sender: TObject);
var
  item : TListItem;
  i:integer;
begin
if g_debug then
begin
 g_conf:=ExtractFilePath(Application.ExeName)+'/order.sql'; // /select_harga_beli.sql';
 assignfile(f,g_conf) ;
 rewrite(f);
end;
//panel16.Hide;
if g_code_form='T1_1' then
begin
Panel_atas.Caption:='P e r m i n t a a n    B a r a n g';
panel7.show;

end
else
Panel_atas.Caption:='P e r m i n t a a n    B a r a n g';
  me_toko.Text:=g_uu_code_aktif;
  Panel5.Hide;
  Panel_atas.Color := warnabar;
  Panel1.Color := warnapanel2;
  Panel2.Color := warnapanel2;
  Panel6.Color := warnapanel2;
  Pbonus.Color := warnapanel2;

  Panel7.Color := warnapanel2;
  Panel3.Color := warnapanel2;

  dbg.FixedColor:=warnabar;
  dbg.Color:=warnapanel2;

  dbg2.FixedColor:=warnabar;
  dbg2.Color:=warnapanel2;

  dbg2.hide;


  fmain.setting_koneksi(C_DB,'tr');
  Caption :=lib.lpad( g_reg_key,65)+lib.lpad(fmain.status.Panels.Items[3].Text,75) ;


  stag:= lib.TagProduk('O');

  dppn := 0;

  fmain.cari1('select MS_AMOUNT from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and   MS_KODE = "2001"');
  if fmain.SCDS_Cari1.IsEmpty then
     c_db.ExecSQL('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values("'+g_uu_code_aktif+'","2001","-","TARIF PPN BM","-","10")',[null])
  else
     dppnbm := fmain.scds_cari1.fieldbyname('MS_AMOUNT').asfloat;

  dppn := 10;
  fmain.cari1('select MS_AMOUNT from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and  MS_KODE = "2000"');
  if fmain.SCDS_Cari1.IsEmpty then
     c_db.ExecSQL('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values("'+g_uu_code_aktif+'","2000","10%","PERSENTASE TARIF PPN","-","10")',[null])
  else
     dppn := fmain.scds_cari1.fieldbyname('MS_AMOUNT').asfloat;

  cetak_list :=false;
  fmain.cari1('select MS_SETTING1 from ms.M_SETTING where MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE = "2014"');
  if fmain.SCDS_Cari1.IsEmpty then
     c_db.ExecSQL('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values("'+g_uu_code_aktif+'","2014","FALSE","CETAK CHECKER LIST ITEM","-","0")',[null])
  else
     cetak_list := fmain.scds_cari1.fieldbyname('MS_SETTING1').AsBoolean;

  cetak_footer_po :=false;
  fmain.cari1('select MS_SETTING1 from ms.M_SETTING where MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE = "2015"');
  if fmain.SCDS_Cari1.IsEmpty then
     c_db.ExecSQL('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values("'+g_uu_code_aktif+'","2015","FALSE","CETAK FOOTER PURCHASE ORDER","-","0")',[null])
  else
     cetak_footer_po := fmain.scds_cari1.fieldbyname('MS_SETTING1').AsBoolean;


if (trim(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)='TRUE') or
     (trim(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)='FALSE') then
  begin
    fmain.cari1('select * from ms.M_SETTING where MS_MT_KODE="'+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'" and MS_KODE="2015" ');
    if not fmain.scds_cari1.IsEmpty then
    begin
        if g_debug then writeln(f,'2: update ignore ms.M_SETTING set MS_SETTING2="'+ ifthen(trim(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)='TRUE','Y','N') +'",MS_SETTING1="CETAK FOOTER PURCHASE ORDER",MS_SETTING3="" where MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE="2015"');
        if g_debug then flush(f);
        fmain.C_DB.execsql('update ignore ms.M_SETTING set MS_SETTING1="'+ifthen(trim(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)='TRUE','Y','N') +'",MS_SETTING2="CETAK FOOTER PURCHASE ORDER",MS_SETTING3="" where MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE="2015"',[null]);
    end;
    if fmain.scds_cari1.fieldbyname('MS_SETTING1').asstring = 'Y' then cetak_footer_po:= true else cetak_footer_po:= false;
  end;


    boleheditpo:=false;



  fmain.cari1('select MS_SETTING1 from ms.M_SETTING where MS_MT_KODE="'+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'" and MS_KODE = "2077"');
  if fmain.SCDS_Cari1.IsEmpty then
     c_db.ExecSQL('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values ("'+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'","2077","N","PO BOLEH SUDAH DICETAK BOLEH DIEDIT ","Y Boleh diedit, N TIDAK tidak boleh",0)',[null])
  else
    if fmain.scds_cari1.fieldbyname('MS_SETTING1').asstring = 'Y' then
    boleheditpo:= true
    else
    boleheditpo:= false;

//        lib.msgbox(fmain.scds_cari1.fieldbyname('MS_SETTING1').asstring);



  g_opsi_cetak :=false;

  fmain.cari1('select MS_SETTING1 from ms.M_SETTING where MS_MT_KODE="'+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'" and MS_KODE = "2062"');
  if fmain.SCDS_Cari1.IsEmpty then
     c_db.ExecSQL('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values ("'+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'","2062","N","TRANSAKSI - ADA PILIHAN LASER/DESK-JET VS DOTMATRIK","Y ADA, N TIDAK",0)',[null])
  else
    if fmain.scds_cari1.fieldbyname('MS_SETTING1').asstring = 'Y' then g_opsi_cetak:= true else g_opsi_cetak:= false;

// lib.msgbox('2 select MS_SETTING1 from ms.M_SETTING where MS_MT_KODE="'+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'" and MS_KODE = "2062"  -> '+fmain.scds_cari1.fieldbyname('MS_SETTING1').asstring);

    // g_opsi_cetak := fmain.scds_cari1.fieldbyname('MS_SETTING1').AsBoolean;





 sfkonv:= ':';
 fmain.cari1('select  MS_SETTING1 from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE = "2066"');
  if fmain.SCDS_Cari1.IsEmpty then
     c_db.ExecSQL('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values("'+g_uu_code_aktif+'","2066",":","SISTEM KONVERSI BAGI ATAU KALI","KONVENSIONAL ATAU MODEL SAJA","0")',[null])
  else
     sfkonv:= fmain.scds_cari1.fieldbyname('MS_SETTING1').asstring;

  sku6or8:=8;

  fmain.cari1('select MS_AMOUNT from ms.M_SETTING where MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE = "2067"');
  if fmain.SCDS_Cari1.IsEmpty then
  begin
    fmain.C_DB.execsql('insert ignore into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
              'values("'+g_uu_code_aktif+'","2067","N","PANJANG KODE SKU","",6)',[null]);
    fmain.C_DB.execsql('insert ignore into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
              'values("'+g_uu_group_aktif+'","2067","N","PANJANG KODE SKU","",6)',[null]);
    fmain.cari1('select * from ms.M_SETTING where MS_MT_KODE="'+g_uu_group_aktif+'" and MS_KODE="2067" ');
  end;
  if not fmain.scds_cari1.IsEmpty then
      sku6or8 := fmain.scds_cari1.fieldbyname('MS_AMOUNT').asinteger;
  {
  g_type_print := 'Y';
  fmain.cari1('select * from ms.M_SETTING where MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE="2084" ');
  if fmain.scds_cari1.IsEmpty then
    fmain.C_DB.execsql('insert ignore into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                 'values("'+g_uu_code_aktif+'","1004","Y","Y = Direct ( /dev/lp0 ) N = unDirect ( by CUPS )","",0)',[null])
  else
    g_type_print := fmain.scds_cari1.FieldByName('MS_SETTING1').AsString ;
  }

  g_type_print := 'Y';
  fmain.cari1('select * from ms.M_SETTING where MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE="2084" ');
  if fmain.scds_cari1.IsEmpty then
    fmain.C_DB.execsql('insert ignore into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                 'values("'+g_uu_code_aktif+'","2084","Y","Y = Direct ( /dev/lp0 ) N = unDirect ( by CUPS )","",0)',[null])
  else
    g_type_print := fmain.scds_cari1.FieldByName('MS_SETTING1').AsString ;




// tanpainputuu:=false;
//    fmain.cari1('select MS_SETTING1 from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and   MS_KODE = "2070"');
//    if fmain.SCDS_Cari1.IsEmpty then
//       c_db.ExecSQL('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
//                  'values("'+g_uu_code_aktif+'","2070","N","MODUL TANPA INPUT UU","-","0")',[null])
//    else
//     //tibanhargapo := fmain.scds_cari1.fieldbyname('MS_SETTING1').AsBoolean;
//     if pos('Y',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)) > 0 then tanpainputuu := true;

  ghargabelisentral:='N';
  fmain.cari1('select * from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and   MS_KODE = "2072"');
  if fmain.SCDS_Cari1.IsEmpty then
     fmain.C_DB.execsql('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                 'values("'+g_uu_code_aktif+'","2072","N","HARGA BELI SENTRAL","",0)',[null])
  else
     ghargabelisentral := fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString;


  if pos('YN',ghargabelisentral) <0 then
  begin
  lib.msgbox('Parameter setting harga sentral tidak diset/tidak sesuai ketentuan, hubungi IT');
  abort;
  end;
  ghargabelieceran:='N';
  fmain.cari1('select * from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and   MS_KODE = "2073"');
  if fmain.SCDS_Cari1.IsEmpty then
     fmain.C_DB.execsql('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                 'values("'+g_uu_code_aktif+'","2073","N","PO SELALU DG SATUAN EKOR 2","JIKA Y MAKA P.O. SELALU EKOR 2 - JIKA N P.O. SATUAN BELI DI INPUT",0)',[null])
  else
     ghargabelieceran := fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString;



  Baru;
  //menghilangkan informasi loading di main form
  fmain.status.Panels[0].Visible :=false;
end;

procedure Torder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if g_debug then closefile(f) ;
  c_db.Connected := FALSE;
  action:=cafree;
end;

procedure Torder.KeyDownAll(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key Of
   { Key_Right:
    begin
       if (sender = dbg) then
       begin
       //lib.msgbox(999);
            if ((cdsd.fieldbyname('TPD_MP_SKU').asstring) <>'') and
               // (cdsd.fieldbyname('TPD_QTY').AsFloat<>0) and
               not sku_ok  and
               (length(cdsd.FieldByName('ic_plu').Asstring)< sku6or8+1)
               and
               (cdsd.FieldByName('ic_plu').Asstring<>'0')
            then
            begin
            //   lib.msgbox('sini 1');
               lib.msgbox('Tentukan satuan belinya');

               DBG.SelectedIndex := 0;
               abort;
            end

       end;
    end;
    }
    Key_Enter,Key_Return :
    begin
       if (sender = dbg) then
       begin

          //dancuk
          if dbg.SelectedField.FieldName = 'ic_plu' then
          begin
            //lib.msgbox('sini 1');
            if ((cdsd.fieldbyname('TPD_MP_SKU').asstring) <>'') and
               (cdsd.fieldbyname('TPD_QTY').AsFloat<>0) and sku_ok  and
               (length(cdsd.FieldByName('ic_plu').Asstring)= sku6or8+1)
            then
            begin
                  lib.msgbox('Untuk Ganti SKU hapus dulu baris ini dengan CTRL + DEL');
                //if (cds.state<>dsinsert) and (cds.state<>dsedit) then cds.edit;
                  cdsd.fieldbyname('TPD_MP_SKU').asstring:=cdsd.FieldByName('TPD_MP_SKU').OldValue;
                  sku_ok:=true;
                  bPLUEnd   := true;
                  bPLUStart := false;
                  cdsd.Last;
                  // SelectNext(ActiveControl,true,true);
            end;
            if ((cdsd.fieldbyname('TPD_MP_SKU').asstring) <>'') and
               // (cdsd.fieldbyname('TPD_QTY').AsFloat<>0) and
               not sku_ok  and
               (length(cdsd.FieldByName('ic_plu').Asstring)< sku6or8+1)
            then
            begin
            //   lib.msgbox('sini 2');
              // DBG.SelectedIndex := 0;
            //  abort;
            end;
            //else
            //SelectNext(ActiveControl,true,true);
          end;

          if dbg.SelectedField.FieldName = 'ic_bonus' then
          begin

             if (cdsd.fieldbyname('TPD_MP_SKU').asstring<>'')
                and (cdsd.fieldbyname('TPD_QTY').AsFloat<>0) then
                begin

             pbonus.Visible := true;
             dbedit7.SetFocus;
             dbg.Enabled:= false;
             panel1.Enabled := false;
             panel2.Enabled := false;
             end
          end
          else if dbg.SelectedField.FieldName = 'TPD_DSC' then
          begin

           if (cdsd.fieldbyname('TPD_MP_SKU').asstring<>'')
                and (cdsd.fieldbyname('TPD_QTY').AsFloat<>0) then
                begin
                   //     pdiskon.Realign;

             pdiskon.Top:= 5;
             pdiskon.Realign;

             pdiskon.Visible := true;
             dbedit11.SetFocus;
             panel1.Enabled := false;
             panel2.Enabled := true; //false;
             dbg.Enabled:= false;
          end;
          end
          else if dbg.SelectedField.FieldName = 'TPD_QTY' then
          begin
            fmain.GridSelected(DBG,[0],[3],cdsd);
          end
//          else
//          if (dbg.SelectedField.FieldName = 'ic_plu') and not (sku_ok) then
//        //    (length(cdsd.FieldByName('ic_plu').Asstring)> sku6or8) then
//          begin
//            fmain.GridSelected(DBG,[0],[0],cdsd);
//          end
//          else
//          if (dbg.SelectedField.FieldName = 'ic_plu') and
//              sku_ok
//        //      and
//        //      (length(cdsd.FieldByName('ic_plu').Asstring)= sku6or8+1)
//          then
//          begin
//       //       if (cdsd.state<>dsedit) and (cdsd.state<>dsinsert) then cdsd.Edit;
//       //       cdsd.FieldByName('ic_plu').Asstring  := concat(cdsd.FieldByName('TPD_MP_SKU').Asstring,cdsd.FieldByName('TPD_EKOR').Asstring);
//       //       lib.msgbox('mronoo');
//            fmain.GridSelected(DBG,[0],[3],cdsd);
//          end;

        end
      else
       begin  //        lib.msgbox('dancuk 4');

            SelectNext(ActiveControl,true,true);

      { if (sender = dbg) then
       begin
              // lib.msgbox('dancuk 4');
         if sku_ok then
         begin
           // lib.msgbox('dancuk 5');
            SelectNext(ActiveControl,true,true);
         end
         else
         begin
            lib.msgbox('dancuk 6');

            abort;
         end;
       end
       else
       begin  // lib.msgbox('dancuk 7');

            SelectNext(ActiveControl,true,true);
       end;
       }
       end;
    end;

   Key_Down, key_up :

   begin
     if not(boleheditpo) and
       (cds.fieldbyname('TPH_ST_PRN').AsString='Y') and
       (dbg.SelectedField.FieldName = 'TPD_QTY')  then
       begin //7okt      //  CDSD.Cancel;
          dbg.ReadOnly:=true;
          //  CDSD.ReadOnly:= True;
          lib.msgbox('PO status sudah cetak, QTY PO tidak bisa diedit');
                {2 maret 2021}

     //19012022  end
    // else
    // begin
    // lib.msgbox('readonly false');
    //    dbg.ReadOnly:=false;
    //    // CDSD.ReadOnly:= false;
     end;
   end;


    Key_F2      :
    begin
      //lib.msgbox('sini f2');
      TekanF2(Sender);  // TekanF2(Sender);
    end;
    Key_F3      : TekanF3(Sender);
    Key_F4      : TekanF4(Sender);
    Key_F6      : TekanF6(Sender);

    Key_F5      : SimpanData;
  //  Key_F12      : HapusData;
    Key_F7      : BatalData;
  {
     Key_F8      :
     }
{
         lib.msgbox(' C_NET : '+formatfloat('###,###,##0.00',cds.fieldbyname('C_NET').AsFloat)+
                    ' C_ppn : '+formatfloat('###,###,##0.00',cds.fieldbyname('C_PPN').AsFloat)+
                    ' Dis Fak : '+formatfloat('###,###,##0.00',cds.fieldbyname('C_DSC_FAK').AsFloat)+
                    ' aPpn : '+formatfloat('###,###,##0.00',cdsd.fieldbyname('a_ppn').value)+
                    ' a_netto: '+formatfloat('###,###,##0.00',cdsd.fieldbyname('a_netto').value)+
                    ' a_netto2: '+formatfloat('###,###,##0.00',cdsd.fieldbyname('a_netto2').value)+
                    ' C_FAKTUR: '+formatfloat('###,###,##0.00',cds.fieldbyname('C_FAKTUR').value)
                    );
}


    Key_F9      : KeluarForm(Sender);
    key_f10     :
       begin
           if pbonus.Visible then
           begin
              if (cdsd.fieldbyname('TPD_MP_SKU_B').asstring > '0')
                and
                 ((cdsd.fieldbyname('TPD_QTY_B').AsFloat <= 0) or cdsd.fieldbyname('TPD_QTY_B').isnull) then
              begin
                  lib.msgbox('Qty Bonus masih kosong atau nol');
                  abort;
              end;

              if (cdsd.fieldbyname('TPD_MP_SKU_B').asstring > '0') and (cdsd.fieldbyname('TPD_MP_SKU_B').asstring <> cdsd.fieldbyname('TPD_MP_SKU').asstring) and
                 ((cdsd.fieldbyname('TPD_AMOUNT_B').AsFloat <= 0) or cdsd.fieldbyname('TPD_AMOUNT_B').isnull) then
              begin
                  lib.msgbox('SKU bonus beda dengan SKU utama'+#13#10+'Netto harus diisi !');
                  abort;
              end;
              pbonus.Visible := false;
              dbg.Enabled := true;
              panel1.Enabled := true;
              panel2.Enabled := true;
              dbg.SetFocus;
           end;
           if pdiskon.Visible then
           begin
              if (cdsd.fieldbyname('TPD_AMOUNT').AsFloat - cdsd.fieldbyname('TPD_DSC').AsFloat ) <= 0 then
              begin
                  lib.msgbox('1 Discount tidak boleh lebih besar atau sama dengan Cost'+#10#13);
                  Abort;
              end;
              pdiskon.Visible := false;
              panel1.Enabled := true;
              panel2.Enabled := true;
              dbg.Enabled := true;
              dbg.SetFocus;

           end;
           if panel15.Visible then
           begin
             panel15.Visible:=false;
             bPLUEnd:=false;
             Button6Click(Sender);
           end;
       end;
  end;

  if (key = key_f2) then
  begin
     if Shift = [ssShift] then
     begin
       if dbg.SelectedField.FieldName = 'ic_hb_ppn' then
    //   lib.msgbox('readonly 6' );
        if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
        if (cdsd.FieldByName('ic_hb_ppn').AsFloat <> 0 ) then
        begin
        cdsd.FieldByName('TPD_AMOUNT').Asfloat:=((cdsd.FieldByName('ic_hb_ppn').Asfloat/1.1)/cdsd.FieldByName('TPD_CONV2').Asinteger );
        cdsd.FieldByName('TPD_QTY').Asfloat:=(cdsd.FieldByName('TPD_QTY').Asfloat*cdsd.FieldByName('TPD_CONV2').Asinteger) ;
        end
        else
        begin
        cdsd.FieldByName('TPD_AMOUNT').Asfloat:=((cdsd.FieldByName('ic_hb_ppn').Asfloat/1.1)/cdsd.FieldByName('TPD_CONV2').Asinteger );
        cdsd.FieldByName('TPD_QTY').Asfloat:=(cdsd.FieldByName('TPD_QTY').Asfloat*cdsd.FieldByName('TPD_CONV2').Asinteger);
        end;
     end;
  //      InfoProgram
  //  else
  //  if Shift = [ssCtrl] then
  //     TTextBrowserForm.Create(nil).showmodal
  end;
//  Label61.Caption:= inttostr(CDSD.RecNo);
//  Label58.Caption:= inttostr(CDSD.RecordCount);



end;

procedure Torder.BeforePost(DataSet: TDataSet);
var cx:char;
begin
    if dataset = cds then
    begin
         dataset.fieldbyname('TPH_DU').AsDateTime := now;
         dataset.fieldbyname('TPH_NU').AsString := g_me_nik;
    end;
    if dataset = cdsd then
    begin
         if bbaru or x_simpan then exit;
{}
{
         if ((dataset.fieldbyname('TPD_MP_SKU').isnull) or
             (dataset.fieldbyname('TPD_MP_SKU').Asfloat <= 0) or
         //if
         (dataset.fieldbyname('TPD_MP_SKU').Asstring='0') or
         (length(trim(dataset.fieldbyname('TPD_MP_SKU').Asstring))< sku6or8+1)) then
         begin
            //exit;
            lib.msgbox('sku masih kosong exit wae lah'+#10#13);
            //Abort;
            dbg.Selectedindex :=0;
//            Abort;
         end;
}
{}

{
         if ((dataset.fieldbyname('TPD_MP_SKU').isnull) or
            (dataset.fieldbyname('TPD_MP_SKU').Asfloat <= 0) or
            (dataset.fieldbyname('TPD_MP_SKU').Asstring='')
            or (Length(dataset.fieldbyname('ic_plu').AsString) < sku6or8+1 )
            )  then
         begin
            //exit;
            lib.msgbox('sku masih kosong exit wae lah'+#10#13);
            //Abort;
            dbg.Selectedindex :=0;
            Abort;
         end;
}
         //lib.msgbox('masuk beforepost');

         if ((dataset.fieldbyname('TPD_DESCP').isnull) or
            (dataset.fieldbyname('TPD_DESCP').Asstring='') or
            (dataset.fieldbyname('TPD_DESCP').Asstring='-'))
         //   and
         //   (dataset.fieldbyname('TPD_MP_SKU').Asstring<>dataset.fieldbyname('ic_plu').Asstring)
             then
         begin
        //    lib.msgbox(' : '+dataset.fieldbyname('TPD_MP_SKU').Asstring+' + '+dataset.fieldbyname('ic_plu').Asstring+'  Nama Produk masih kosong'+#10#13);
            dbg.Selectedindex :=0;
            bPLUStart:=false;
            bPLUEnd:=false;
        //    exit;
            Abort;
         end;


         if ((dataset.fieldbyname('TPD_CONV1').isnull) or
            (dataset.fieldbyname('TPD_CONV1').Asfloat <= 0)) and
            (dataset.fieldbyname('TPD_CONV1').Asstring<>'')  then
         begin
            lib.msgbox('Konversi 1 masih kosong atau nol'+#10#13);
            dbg.Selectedindex :=0;
            Abort;
         end;

         if ((dataset.fieldbyname('TPD_CONV2').isnull) or
            (dataset.fieldbyname('TPD_CONV2').Asfloat <= 0)) and
            (dataset.fieldbyname('TPD_CONV2').Asstring<>'')  then
         begin
            lib.msgbox('Konversi 2 masih kosong atau nol'+#10#13);
            dbg.Selectedindex :=0;
            Abort;
         end;

         if ((dataset.fieldbyname('TPD_EKOR').isnull) or
            (dataset.fieldbyname('TPD_EKOR').Asfloat <= 0)) and
            (dataset.fieldbyname('TPD_EKOR').Asstring<>'')  then
         begin
            lib.msgbox('Ekor Beli masih kosong atau nol'+#10#13);
            dbg.Selectedindex :=0;
            Abort;
         end;

         if dataset.State = dsedit then cx:= 'E' else cx:= 'T';
{26022022 tutup
if (dataset.fieldbyname('TPD_MP_SKU').OldValue<> dataset.fieldbyname('TPD_MP_SKU').NewValue)
then
begin
      if g_debug then writeln(f,'2 cek_constrain : '+
      dataset.fieldbyname('TPD_PK').AsString+ ' '+
      concat(dataset.fieldbyname('TPD_MP_SKU').AsString,
      dataset.fieldbyname('TPD_EKOR').AsString)+' '+
       dataset.fieldbyname('TPD_EKOR').AsString+' '+'T'); // +'  '+inttostr(xbaris));
      if g_debug then flush(f);
         if fmain.cek_constrain(dataset.fieldbyname('TPD_PK').AsString,
          concat(dataset.fieldbyname('TPD_MP_SKU').AsString,
          dataset.fieldbyname('TPD_EKOR').AsString),
          dataset.fieldbyname('TPD_EKOR').AsString,
          cx) //,xbaris)
         then
         begin
           lib.msgbox('SKU '+dataset.fieldbyname('TPD_MP_SKU').AsString+' sudah dipakai !!'); // 1dibaris '+formatfloat('##0',xbaris)+#13+#10);
           cds.EnableControls;
           cdsd.EnableControls;
          // send
           abort;
         end;
end;
}

        {}
         if ((dataset.fieldbyname('TPD_QTY').isnull) or
            (dataset.fieldbyname('TPD_QTY').Asfloat <= 0)) and
            (dataset.fieldbyname('TPD_MP_SKU').Asstring<>'')  then
         begin
            //lib.msgbox('QTY masih kosong atau nol'+#10#13);
            dbg.Selectedindex :=3;
            Abort;
         end;
        {}
         if ((dataset.fieldbyname('TPD_QTY').AsFloat<>0) and
            (dataset.fieldbyname('TPD_AMOUNT').AsFloat=0)) and
            (dataset.fieldbyname('TPD_MP_SKU').Asstring<>'')
            then
         begin
            lib.msgbox('Harga masih kosong atau nol'+#10#13);


            dbg.Selectedindex :=4;
            Abort;
         end;

         if ((dataset.fieldbyname('TPD_AMOUNT').AsFloat - dataset.fieldbyname('TPD_DSC').AsFloat ) <= 0)
         and
         ((dataset.fieldbyname('TPD_QTY').isnull) or
            (dataset.fieldbyname('TPD_QTY').Asfloat <= 0)) and
            (dataset.fieldbyname('TPD_MP_SKU').Asstring<>'')  then
         begin
             lib.msgbox('Discount tidak boleh lebih besar atau sama dengan Cost'+#10#13);
             Abort;
         end;


         if (cdsd.fieldbyname('TPD_MP_SKU_B').asstring > '0')
            and ((cdsd.fieldbyname('TPD_QTY_B').AsFloat <= 0) or cdsd.fieldbyname('TPD_QTY_B').isnull) then
         begin
            lib.msgbox('Qty Bonus masih kosong atau nol');
            pbonus.visible:=true;
            cdsd.fieldbyname('ic_plu_b').asstring:=concat(cdsd.fieldbyname('TPD_MP_SKU_B').asstring,cdsd.fieldbyname('TPD_EKOR_B').asstring);
         //     lib.msgbox('keisni 3 '+cdsd.fieldbyname('TPD_MP_SKU_B').asstring);

            dbg.enabled:=false;
            panel1.Enabled := false;
            panel2.Enabled := false;
            dbedit8.SetFocus;
            abort;
         end;
         dataset.fieldbyname('TPD_NU').AsString := g_me_nik;
         if dataset.State = dsedit then cx:= 'E' else cx:= 'T';
         if (dataset.fieldbyname('TPD_MP_SKU').isnull) or
            (dataset.fieldbyname('TPD_BARCODE').isnull) or
            (dataset.fieldbyname('TPD_MP_SKU').AsString ='') then
         begin
           cds.EnableControls;
           cdsd.EnableControls;
           abort;
         end;

         //if dataset.State = dsedit then cx:= 'E' else cx:= 'T';
         //if fmain.cek_constrain(dataset.fieldbyname('TPD_PK').AsString,dataset.fieldbyname('TPD_MP_SKU').AsString,'1',cx) then
         //begin
         //  lib.msgbox('SKU '+dataset.fieldbyname('TPD_MP_SKU').AsString+' sudah dipakai !!); // 2dibaris '+formatfloat('##0',xbaris)+#13+#10);
         {
         if dataset.State = dsedit then cx:= 'E' else cx:= 'T';
         if      //fmain.
         cek_constrain(dataset.fieldbyname('TPD_PK').AsString,dataset.fieldbyname('TPD_MP_SKU').AsString,dataset.fieldbyname('TPD_EKOR').AsString,cx)
         then
         begin
           lib.msgbox('2x SKU '+dataset.fieldbyname('TPD_MP_SKU').AsString+' sudah dipakai !! 3dibaris '+formatfloat('##0',xbaris)+#13+#10);
           cds.EnableControls;
           cdsd.EnableControls;
           abort;
         end;
         }
    end;
end;

procedure Torder.CDSDCalcFields(DataSet: TDataSet);
var pembagi : double;
begin
  if bbaru or  x_simpan    then exit;


  if (not dataset.fieldbyname('TPD_QTY').IsNull) and (not dataset.fieldbyname('TPD_NETTO').isnull) then
     dataset.FieldByName('ic_jumlah').AsFloat := dataset.fieldbyname('TPD_QTY').AsFloat * dataset.fieldbyname('TPD_NETTO').AsFloat;

  if (not dataset.fieldbyname('TPD_QTY').IsNull) and (not dataset.fieldbyname('TPD_NETTO2').isnull) then
     dataset.FieldByName('ic_jumlah2').AsFloat := dataset.fieldbyname('TPD_QTY').AsFloat * dataset.fieldbyname('TPD_NETTO2').AsFloat;

   //  dataset.FieldByName('ic_jumlah2').AsFloat := dataset.fieldbyname('TPD_QTY').AsFloat *( dataset.fieldbyname('TPD_NETTO').AsFloat- dataset.fieldbyname('TPD_NETTO2').AsFloat);


  //lib.msgbox('a');
  if (dataset.fieldbyname('TPD_MP_SKU_B').asstring > '0') and
   (dataset.fieldbyname('TPD_QTY_B').AsFloat > 0 ) then
     dataset.fieldbyname('ic_bonus').asstring:= 'V'
  else
     dataset.fieldbyname('ic_bonus').asstring:= 'X';

//
{
  fmain.cari4('Select a.*,MP_SKU, MP_DESCP, MP_BARCODE, MP_SAT,MP_ST_CURAH from ms.M_PRICE a, ms.M_PRODUK b where MPR_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
     ' MPR_MP_SKU = '+QuotedStr(dataset.fieldbyname('TPD_MP_SKU').asstring)+
     ' AND MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+
     ' AND MP_SKU = '+QuotedStr(dataset.fieldbyname('TPD_MP_SKU').asstring));

  if not (fmain.scds_cari4.IsEmpty) or (fmain.scds_cari4.fieldbyname('MPR_PRICE2').AsInteger>0) then
  begin
    //   lib.msgbox('dancuk 4');

         cdsd.FieldByName('ic_hjual').asfloat := fmain.scds_cari4.fieldbyname('MPR_PRICE2').AsInteger;
  end;
//
}



    //masuksini
{  tutup test  2021-12-09
}
    if not(bpkp) then
    begin

       if (cdsd.FieldByName('TPD_AMOUNT').AsFloat <> 0 ) then
       cdsd.FieldByName('ic_hb_ppn').Asfloat:=0.0; //(cdsd.FieldByName('TPD_AMOUNT').Asfloat*1.1)
    end
    else
    begin
    if (cdsd.FieldByName('TPD_AMOUNT').AsFloat <> 0 ) then
       cdsd.FieldByName('ic_hb_ppn').Asfloat:=(cdsd.FieldByName('TPD_AMOUNT').Asfloat*1.1)
    else
       cdsd.FieldByName('ic_hb_ppn').Asfloat:=(cdsd.FieldByName('TPD_AMOUNT').Asfloat*1.1);
    end;

    if not(bpkp) then
    begin
       if (cdsd.FieldByName('TPD_AMOUNT').AsFloat <> 0 ) then
       cdsd.FieldByName('ic_hb_ppn_qty').Asfloat:=0.0; //(cdsd.FieldByName('TPD_AMOUNT').Asfloat*1.1)
    end
    else
    begin
    if ((cdsd.FieldByName('TPD_AMOUNT').AsFloat <> 0) and (cdsd.FieldByName('TPD_QTY').AsFloat <> 0) ) then
    //   cdsd.FieldByName('ic_hb_ppn_qty').Asfloat:=(cdsd.FieldByName('TPD_QTY').Asfloat*cdsd.FieldByName('TPD_AMOUNT').Asfloat*1.1)
           cdsd.FieldByName('ic_hb_ppn_qty').Asfloat:=(cdsd.FieldByName('TPD_QTY').Asfloat*cdsd.FieldByName('TPD_NETTO').Asfloat*1.1)
    else
    //   cdsd.FieldByName('ic_hb_ppn_qty').Asfloat:=(cdsd.FieldByName('TPD_QTY').Asfloat*cdsd.FieldByName('TPD_AMOUNT').Asfloat*1.1);
           cdsd.FieldByName('ic_hb_ppn_qty').Asfloat:=(cdsd.FieldByName('TPD_QTY').Asfloat*cdsd.FieldByName('TPD_NETTO').Asfloat*1.1);
    end;

  if cdsd.FieldByName('ic_ppn').AsString ='1' then
  begin
    if (cdsd.FieldByName('ic_hjual').AsFloat <> 0 ) then
       cdsd.FieldByName('ic_harga_excl_ppn').Asfloat:=(cdsd.FieldByName('ic_hjual').Asfloat/1.1)
    else
       cdsd.FieldByName('ic_harga_excl_ppn').Asfloat:=(cdsd.FieldByName('ic_hjual').Asfloat);
  end    //-(cdshj.FieldByName('MPR_PRICE2').Asfloat/1.1)* cdshj.FieldByName('MPR_DSC_PR2').Asfloat/100;
  else
  cdsd.FieldByName('ic_harga_excl_ppn').Asfloat:=(cdsd.FieldByName('ic_hjual').Asfloat);


  if (cdsd.FieldByName('ic_harga_excl_ppn').AsFloat > 0) then
  begin
    cdsd.FieldByName('ic_rp_mup_avg').AsFloat  := (cdsd.FieldByName('ic_harga_excl_ppn').AsFloat-cdsd.FieldByName('ic_avg_cost').AsFloat);
    if (cdsd.FieldByName('ic_rp_mup_avg').AsFloat) <> 0 then
        cdsd.FieldByName('ic_mup_avg').AsFloat := (cdsd.FieldByName('ic_rp_mup_avg').AsFloat)/cdsd.FieldByName('ic_harga_excl_ppn').AsFloat*100;

    cdsd.FieldByName('ic_rp_mup_lcost').AsFloat  := (cdsd.FieldByName('ic_harga_excl_ppn').AsFloat-cdsd.FieldByName('ic_last_cost').AsFloat);
    if (cdsd.FieldByName('ic_rp_mup_lcost').AsFloat) <> 0 then
        cdsd.FieldByName('ic_mup_lcost').AsFloat := (cdsd.FieldByName('ic_rp_mup_lcost').AsFloat)/cdsd.FieldByName('ic_harga_excl_ppn').AsFloat*100;

    cdsd.FieldByName('ic_rp_mup_netto').AsFloat  := (cdsd.FieldByName('ic_harga_excl_ppn').AsFloat-cdsd.FieldByName('TPD_NETTO').AsFloat);
    if (cdsd.FieldByName('ic_rp_mup_netto').AsFloat) <> 0 then
        cdsd.FieldByName('ic_mup_netto').AsFloat := (cdsd.FieldByName('ic_rp_mup_netto').AsFloat)/cdsd.FieldByName('ic_harga_excl_ppn').AsFloat*100;
  end;


     cdsCalcFields(cds);

end;

procedure Torder.CDSCalcFields(DataSet: TDataSet);
var rpdf1,rpdf2,dPersen,damount,  //, dd,cc,bb,ddisc,aa,damount,dpersen,
dnetto,dvolume,ddscamount :double;
begin
    if bcetak or beditdisc then exit;
    if cdsd.fieldbyname('a_ppn').Value > 0 then
       dataset.fieldbyname('C_PPN').AsFloat    := cdsd.fieldbyname('a_ppn').Value
    else
       dataset.fieldbyname('C_PPN').AsFloat    := 0;

    if cdsd.fieldbyname('a_netto').Value > 0 then
       dataset.fieldbyname('C_NET').AsFloat := cdsd.fieldbyname('a_netto2').Value
    else
       dataset.fieldbyname('C_NET').AsFloat := 0;

    if cdsd.fieldbyname('a_netto').Value > 0 then
    begin
       dnetto :=cdsd.fieldbyname('a_netto').Value;
    end
    else
    begin
       dnetto :=1;
    end;

    if not bedit then
    begin
    //lib.msgbox('1');
       if (cdsd.fieldbyname('a_netto').Value > 0) and
       (dataset.fieldbyname('TPH_DSC_PR1').AsFloat = 0)
       and
       (dataset.fieldbyname('TPH_DSC_RP1').AsFloat = 0) then
       begin
       //lib.msgbox('2');
          dataset.fieldbyname('C_NET').AsFloat:= cdsd.fieldbyname('a_netto').Value; //+dataset.fieldbyname('C_PPN').AsFloat;
          dataset.fieldbyname('C_FAKTUR').AsFloat :=cdsd.fieldbyname('a_netto').Value+cdsd.fieldbyname('a_ppn').Value;
          dataset.fieldbyname('C_DSC_FAK').AsFloat := 0;

{
         lib.msgbox(' C_NET : '+formatfloat('###,###,##0.00',cds.fieldbyname('C_NET').AsFloat)+
                    ' C_ppn : '+formatfloat('###,###,##0.00',cds.fieldbyname('C_PPN').AsFloat)+
                    ' Dis Fak : '+formatfloat('###,###,##0.00',cds.fieldbyname('C_DSC_FAK').AsFloat)+
                    ' aPpn : '+formatfloat('###,###,##0.00',cdsd.fieldbyname('a_ppn').value)+
                    ' a_netto: '+formatfloat('###,###,##0.00',cdsd.fieldbyname('a_netto').value)+
                    ' a_netto2: '+formatfloat('###,###,##0.00',cdsd.fieldbyname('a_netto2').value)+
                    ' C_FAKTUR: '+formatfloat('###,###,##0.00',cds.fieldbyname('C_FAKTUR').value)
                    );

}
       end
       else
       if (cdsd.fieldbyname('a_netto').Value > 0) and
          (dataset.fieldbyname('TPH_DSC_PR1').AsFloat > 0) then
       begin
       //lib.msgbox('3');
          dnetto:=cdsd.fieldbyname('a_netto').Value;
          rpdf1 := dnetto * ( dataset.fieldbyname('TPH_DSC_PR1').AsFloat/100 );
          dataset.fieldbyname('C_DSC_FAK').AsFloat := rpdf1 ;
          dataset.fieldbyname('C_NET').AsFloat := cdsd.fieldbyname('a_netto').Value-rpdf1;
          dataset.fieldbyname('C_PPN').AsFloat :=  (((cdsd.fieldbyname('a_netto').Value -rpdf1) * 10)/100);
          dataset.fieldbyname('C_FAKTUR').AsFloat :=dataset.fieldbyname('C_NET').AsFloat+dataset.fieldbyname('C_PPN').AsFloat;
       end
       else
       begin
          if (cdsd.fieldbyname('a_netto').Value > 0) and
             (dataset.fieldbyname('TPH_DSC_RP1').AsFloat > 0) then
          begin
          //lib.msgbox('4');
          dnetto:=cdsd.fieldbyname('a_netto').Value;
          rpdf1 :=  dataset.fieldbyname('TPH_DSC_RP1').AsFloat;
          dataset.fieldbyname('C_DSC_FAK').AsFloat := rpdf1 ;
          dataset.fieldbyname('C_NET').AsFloat := cdsd.fieldbyname('a_netto').Value-rpdf1;
          dataset.fieldbyname('C_PPN').AsFloat :=  (((cdsd.fieldbyname('a_netto').Value -rpdf1) * 10)/100);
          dataset.fieldbyname('C_FAKTUR').AsFloat :=dataset.fieldbyname('C_NET').AsFloat+dataset.fieldbyname('C_PPN').AsFloat;

{        lib.msgbox(' C_NET : '+formatfloat('###,###,##0.00',cds.fieldbyname('C_NET').AsFloat)+
                    ' C_ppn : '+formatfloat('###,###,##0.00',cds.fieldbyname('C_PPN').AsFloat)+
                    ' Dis Fak : '+formatfloat('###,###,##0.00',cds.fieldbyname('C_DSC_FAK').AsFloat)+
                    ' aPpn : '+formatfloat('###,###,##0.00',cdsd.fieldbyname('a_ppn').value)+
                    ' a_netto: '+formatfloat('###,###,##0.00',cdsd.fieldbyname('a_netto').value)+
                    ' a_netto2: '+formatfloat('###,###,##0.00',cdsd.fieldbyname('a_netto2').value)+
                    ' C_FAKTUR: '+formatfloat('###,###,##0.00',cds.fieldbyname('C_FAKTUR').value)
                    );
}


          end
       end;
       if (cdsd.fieldbyname('a_netto').Value > 0) and
          (dataset.fieldbyname('TPH_DSC_PR2').AsFloat > 0) then
       begin
          dnetto:=cdsd.fieldbyname('a_netto').Value;
          if (dataset.fieldbyname('TPH_DSC_PR1').AsFloat > 0) then
          begin
              dnetto:=cdsd.fieldbyname('a_netto').Value;
              rpdf1 := dnetto * ( dataset.fieldbyname('TPH_DSC_PR1').AsFloat/100 );
          end
          else
          begin
              dnetto:=cdsd.fieldbyname('a_netto').Value;
              rpdf1 :=  dataset.fieldbyname('TPH_DSC_RP1').AsFloat;
          end;
          ddscamount:=dnetto-rpdf1;
          rpdf2 := ddscamount * ( dataset.fieldbyname('TPH_DSC_PR2').AsFloat/100 );
          dataset.fieldbyname('C_DSC_FAK').AsFloat := rpdf1+rpdf2 ;
          dataset.fieldbyname('C_NET').AsFloat :=  dnetto-rpdf1-rpdf2 ; //   dataset.fieldbyname('C_NET').AsFloat - dataset.fieldbyname('C_DSC_FAK').AsFloat;
          dataset.fieldbyname('C_PPN').AsFloat :=  dataset.fieldbyname('C_PPN').AsFloat * ( 1 - (dataset.fieldbyname('TPH_DSC_PR2').AsFloat/100 ));
          dataset.fieldbyname('C_FAKTUR').AsFloat :=dataset.fieldbyname('C_NET').AsFloat+dataset.fieldbyname('C_PPN').AsFloat;
       end
       else
       if (cdsd.fieldbyname('a_netto').Value > 0) and
             (dataset.fieldbyname('TPH_DSC_RP2').AsFloat > 0) then
       begin
           dnetto:=cdsd.fieldbyname('a_netto').Value;
           if (dataset.fieldbyname('TPH_DSC_PR1').AsFloat > 0) then
           begin
              dnetto:=cdsd.fieldbyname('a_netto').Value;
              rpdf1 := dnetto * ( dataset.fieldbyname('TPH_DSC_PR1').AsFloat/100 );
          end
          else
          begin
              dnetto:=cdsd.fieldbyname('a_netto').Value;
              rpdf1 :=  dataset.fieldbyname('TPH_DSC_RP1').AsFloat;
          end;
          ddscamount:=dnetto-rpdf1;
          rpdf2 :=  dataset.fieldbyname('TPH_DSC_RP2').AsFloat;
          dataset.fieldbyname('C_DSC_FAK').AsFloat := rpdf1+rpdf2 ;
          dataset.fieldbyname('C_NET').AsFloat := cdsd.fieldbyname('a_netto').Value-rpdf1-rpdf2;
          dataset.fieldbyname('C_PPN').AsFloat :=  (((cdsd.fieldbyname('a_netto').Value -rpdf1-rpdf2) * 10)/100);
          dataset.fieldbyname('C_FAKTUR').AsFloat :=dataset.fieldbyname('C_NET').AsFloat+dataset.fieldbyname('C_PPN').AsFloat;
          end;
    end;

    {
    if cdsd.fieldbyname('a_volume').Value > 0 then
       dataset.fieldbyname('TPH_VOLUME').AsFloat    := cdsd.fieldbyname('a_volume').Value
    else
       dataset.fieldbyname('TPH_VOLUME').AsFloat    := 0;
    }
    //    dataset.fieldbyname('ict_volume').asfloat :=dvolume  + (cdsd.fieldbyname('ic_volume').AsFloat*cdsd.fieldbyname('TPD_QTY').AsFloat);
    //    dataset.fieldbyname('ict_volume').asfloat :=dvolume + cdsd.fieldbyname('TPD_VOLUME').AsFloat;
    //    dataset.fieldbyname('TPH_VOLUME').asfloat:=dvolume  cdsd.fieldbyname('a_volume').value;
end;

procedure Torder.CDSDNewRecord(DataSet: TDataSet);
begin
       //    lib.msgbox('CDSDNewRecord');

    if dataset.RecordCount >= strtoint(g_baris_faktur) then abort;
     bbaru:=true;
     dataset.fieldbyname('TPD_PK').AsString := fmain.get_pk;
     dataset.fieldbyname('TPD_TPH_PK').AsString := cds.fieldbyname('TPH_PK').asstring;
     dataset.fieldbyname('TPD_DI').AsDateTime := now;
     dataset.fieldbyname('TPD_NI').AsString := g_me_nik;
     dataset.fieldbyname('TPD_DU').AsDateTime := now;
     dataset.fieldbyname('TPD_NU').AsString := g_me_nik;
     dataset.FieldByName('TPD_DSC').asfloat := 0;
     dataset.FieldByName('TPD_BARCODE').asstring := '';
     dataset.FieldByName('TPD_MP_SKU_REF').asstring := '';
     //     dataset.FieldByName('TPD_EKOR').asstring := '2';

     dataset.FieldByName('TPD_DESCP').asstring := '-';
     dataset.FieldByName('TPD_CONV1').asinteger := 1;
     dataset.FieldByName('TPD_CONV2').asinteger := 1;
     dataset.FieldByName('TPD_MK_KODE').asstring := '0';
     dataset.FieldByName('TPD_MTS_KODE').asstring := 'N';
     dataset.FieldByName('TPD_MP_SKU_B').asstring := '0';
     dataset.FieldByName('TPD_QTY').asfloat := 0;
     dataset.FieldByName('TPD_AMOUNT').asfloat := 0;
     dataset.FieldByName('TPD_NETTO').asfloat := 0;
     dataset.FieldByName('TPD_NETTO2').asfloat := 0;
     //  dataset.FieldByName('TPD_EKOR').asstring := '2';
     dataset.FieldByName('TPD_QTY_B').asfloat := 0;
     dataset.FieldByName('TPD_QTY_QUK').asfloat := 0;
     dataset.FieldByName('TPD_QTY_QFC').asfloat := 0;
     dataset.FieldByName('TPD_EKOR_B').asstring := '0';
     dataset.FieldByName('TPD_DESCP_B').asstring := '-';
     dataset.FieldByName('TPD_AMOUNT_B').asfloat := 0;
     dataset.FieldByName('TPD_KET').asstring := '-';
     dataset.fieldbyname('TPD_PPN_BM').AsFloat  := 0;
     dataset.fieldbyname('TPD_PPN').AsFloat   :=0;
     dataset.fieldbyname('TPD_DSC_PR1').AsFloat   :=0.0;
     dataset.fieldbyname('TPD_DSC_RP1').AsFloat   :=0.0;
     dataset.fieldbyname('TPD_DSC_PR2').AsFloat   :=0.0;
     dataset.fieldbyname('TPD_DSC_RP2').AsFloat   :=0.0;
     dataset.fieldbyname('TPD_DSC_PR3').AsFloat   :=0.0;
     dataset.fieldbyname('TPD_DSC_RP3').AsFloat   :=0.0;
     dataset.FieldByName('ic_minor').AsFloat:=0;
     dataset.FieldByName('ic_hjual').AsFloat:=0;
     dataset.FieldByName('ic_harga_excl_ppn').AsFloat:=0.00;
     dataset.FieldByName('ic_mup_avg').AsFloat:=0.00;
     dataset.FieldByName('ic_mup_lcost').AsFloat:=0.00;
     dataset.FieldByName('ic_mup_netto').AsFloat:=0.00;
     dataset.FieldByName('ic_rp_mup_avg').AsFloat:=0.00;
     dataset.FieldByName('ic_rp_mup_lcost').AsFloat:=0.00;
     dataset.FieldByName('ic_rp_mup_netto').AsFloat:=0.00;

     dataset.FieldByName('TPD_CONV1_B').asinteger := 0;
     dataset.FieldByName('TPD_CONV2_B').asinteger := 0;
     dataset.FieldByName('TPD_MK_KODE_B').asstring := '0';


     dbg.SelectedIndex := 0;
     konter:=konter+1;
     inc(xbaris);



     if konter>= cdsd.RecordCount+1 then konter:= CDSD.RecordCount;


     if xbaris> cdsd.RecordCount+1 then xbaris:= CDSD.RecordCount;
     //konter:=dataset.RecordCount;
     label62.Caption:='#'+inttostr(konter)+'/'+inttostr(xbaris);
     bbaru:=false;
end;

procedure Torder.CDSNewRecord(DataSet: TDataSet);
begin
     bbaru:=true;
     dataset.fieldbyname('TPH_PK').AsString := fmain.get_pk;
     dataset.fieldbyname('TPH_TY').AsString := 'R';
     dataset.fieldbyname('TPH_MT_KODE').AsString := g_uu_code_aktif; //ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif);
     dataset.fieldbyname('TPH_DATE').AsDateTime := date;
     dataset.fieldbyname('TPH_EDIT').AsInteger := 0;
     dataset.fieldbyname('TPH_DI').AsDateTime := now;
     dataset.fieldbyname('TPH_NI').AsString := g_me_nik;
     dataset.fieldbyname('TPH_ST_PRN').AsString := 'N';
     dataset.fieldbyname('TPH_ST_REC').AsString := 'N';
     dataset.fieldbyname('TPH_NO').AsString := '-';
     dataset.fieldbyname('TPH_REF').AsString := '-';
     dataset.fieldbyname('TPH_MV_KODE_REF').AsString := '-';
     dataset.fieldbyname('TPH_NETTO').AsFloat := 0;
     dataset.fieldbyname('TPH_DSC_PR1').AsFloat := 0;
     dataset.fieldbyname('TPH_DSC_PR2').AsFloat := 0;
     dataset.fieldbyname('TPH_DSC_RP1').AsFloat := 0;
     dataset.fieldbyname('TPH_DSC_RP2').AsFloat := 0;

     dataset.fieldbyname('TPH_ST_OTO').AsString := 'N';
     dataset.fieldbyname('TPH_DU_OTO').AsDateTime := now;
     dataset.fieldbyname('TPH_NU_OTO').AsString := '';

     dataset.fieldbyname('TPH_TPD_DSC').AsFloat := 0;
     dataset.fieldbyname('TPH_TPD_AMOUNT').AsFloat := 0;
     dataset.fieldbyname('TPH_DSC').AsFloat := 0;
     bbaru:=false;
end;

procedure Torder.dbgKeyPress(Sender: TObject; var Key: Char);
begin
 key := UpCase(key);

end;

procedure Torder.FormResize(Sender: TObject);
begin
    pdiskon.Top := (Height div 2) - (pdiskon.Height div 2);
    pdiskon.Left:= (Width div 2) - (pdiskon.Width div 2);
    pbonus.Top  := (Height div 4) - (pbonus.Height div 2);
    pbonus.Left := (Width div 2) - (pbonus.Width div 2);
end;

procedure Torder.me_nomorExit(Sender: TObject);
var
   dtotal,dnettofak,dtotalppn,dtotalppnbm:double;
   dtotalamount,dtotalnetto:double;
   dpersen,dnetto,damount :double;
   dTotalNetto2 :double;
cx:char;
xbarispo,xbarispod,
konter: integer;
sqlnya:string;

begin
  xbaris:=0;
  if me_nomor.ReadOnly then exit;
  if stringreplace(me_nomor.Text,' ','',[rfReplaceAll])='.' then
  begin
    if trim(stringreplace(dbevendor.text,'.','',[rfReplaceAll]))='' then
    begin
            dbevendor.SetFocus;
    end
    else
    begin
      bNewTrans := true;
    end;
  end
  else
  begin
    CDS.close;
    if g_uu_set=g_uu_code_aktif then
    begin
        MQ.SQL.Text := 'Select * From tr.T_PO_HDR where TPH_MT_KODE_TS = "'+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'" '+
                   'AND TPH_MT_KODE="'+g_uu_set+'" and TPH_NO = "'+trim(me_nomor.text)+'" ';

    end
    else
    begin
    MQ.SQL.Text := 'Select * From tr.T_PO_HDR where TPH_MT_KODE_TS = "'+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'" '+
                   'AND TPH_MT_KODE="'+g_uu_code_aktif+'" and TPH_NO = "'+trim(me_nomor.text)+'" ';
    end;
    if g_debug then writeln(f,'6xx: '+ MQ.SQL.Text);
    if g_debug then flush(f);

    CDS.open;
    if cds.IsEmpty then
    begin
        lib.msgbox('1 Permintaan Barang dengan nomor '+me_nomor.text + ' tidak terdaftar !');
        me_nomor.setfocus;
        abort;
    end
    else
    begin

//    dppn:= cds.FieldByName('TPH_NETTO').AsFloat/cds.FieldByName('TPH_PPN').AsFloat;


     dbevendor.Text:=cds.FieldByName('TPH_MV_KODE').AsString;
      dppn:= (cds.FieldByName('TPH_PPN').AsFloat/cds.FieldByName('TPH_NETTO').AsFloat)*100; //     label63.Caption:=  FloatToStr(dppn)+'%';
      label63.Caption:=  FloatToStr( round( dppn))   +'%';
      fmain.ldppn:=label63.Caption;   //FloatToStr( round( dppn))   +'%';

    lib.msgbox(dppn);


        bolehsimpan:=true  ;
        bedit:=true;
        dbevendor.Enabled:=false;
        dbe_date_tiba.Enabled:=false;
        if cds.FieldByName('TPH_ST_REC').asstring = 'Y' then
        begin
            lib.msgbox('Permintaan Barang dengan nomor '+me_nomor.Text+', barang sudah diterima.'+#13#10+'Data tidak bisa diedit.' );
            baru;
            abort;
        end;
        if (cds.fieldbyname('TPH_ST_PRN').AsString='Y') then
        begin
           if not(boleheditpo) then
           begin
                //        lib.msgbox('PO status sudah cetak, tidak bisa diedit 2');
                dbg.ReadOnly :=true ;
           end
           else
           begin                //lib.msgbox('79');
                dbg.ReadOnly :=false;
           end;
        end
        else
        begin                //lib.msgbox('80');
                dbg.ReadOnly :=false;
        end;

        bNewTrans := false;
        fmain.cari1('select MV_NAMA, MV_ST_PKP, MV_ST_PRI, MV_MTP_KODE, MV_ALM1, '+
                    ' MV_KOTA,MV_KD_POS,MV_TELP1, MV_FAX, MV_C_NAMA '+
                    ' from ms.M_VENDOR where MV_KODE = "'+trim(cds.FieldByName('TPH_MV_KODE').asstring)+
                    '" and MV_TY = "A"');

        if not (fmain.scds_cari1.IsEmpty) then
        begin
              if fmain.scds_cari1.fieldbyname('MV_ST_PKP').asstring = 'Y' then bpkp:= true else bpkp:= false;
              if bpkp then
                  label24.Caption:='PKP'
              else
                  label24.Caption:='NPKP';
        end;
        dtotalppn:=0;
        dtotalppnbm:=0;
//lib.msgbox(11);
        cds.edit;
        cds.fieldbyname('TPH_EDIT').Asinteger :=cds.fieldbyname('TPH_EDIT').Asinteger+1;
        xbarispo:= cds.fieldbyname('TPH_ITEM').AsInteger;

//lib.msgbox(22);
        dtotal:=cds.fieldbyname('TPH_AMOUNT').asfloat-cds.fieldbyname('TPH_PPN').asfloat; //-cds.fieldbyname('TPH_PPN_BM').asfloat;
//lib.msgbox(33);
        CDSTPH_MV_KODEValidate(CDSTPH_MV_KODE);
        CDSD.close;
        MQD.SQL.Text := 'Select * From tr.T_PO_DTL where TPD_TPH_PK = "'+cds.fieldbyname('TPH_PK').asstring+'"  order by TPD_PK';

        if g_debug then writeln(f,'7xx: '+ MQD.SQL.Text);
        if g_debug then flush(f);


        CDSD.open;
        xbarispod:= cdsd.RecordCount;

        if (xbarispo<>xbarispod) then
        begin
             lib.msgbox('Permintaan Barang dengan nomor '+me_nomor.text + ' header detail tidak sama jumlah record detailnya!');
             abort;
        end;

//lib.msgbox(44);
        bbaru:=true;
        konter:=0;
        cdsd.first;
//lib.msgbox(55);
        dtotal:=cds.fieldbyname('TPH_AMOUNT').asfloat-cds.fieldbyname('TPH_PPN').asfloat;  //-cds.fieldbyname('TPH_PPN_BM').asfloat;
        konter:=0;
        fmain.empty_memory;
        cdsd.first;
        while not cdsd.eof do
        begin
            //konter:=konter+1;
            label62.Caption:='#'+inttostr(konter)+'/'+inttostr(xbarispo);

//            lib.msgbox(cdsd.fieldbyname('TPD_MP_SKU').Asstring);

//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('1');

            if (length(cdsd.fieldbyname('TPD_MP_SKU').Asstring ) <> sku6or8) then
            begin
             if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('2');

                bolehsimpan:=false;
                lib.msgbox('ada sku yang salah tidak sesuai ketentuan, sku '+cdsd.fieldbyname('TPD_MP_SKU').Asstring+'  '+cdsd.fieldbyname('TPD_DESCP').Asstring+', kembalikan ke IT /MD');
            end;
//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('3');

            sqlnya :='Select MP_SKU, MP_BARCODE, MP_DESCP, MP_MK_KODE, MP_MV_KODE,  '+
                        ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                        ' MP_SKU = "'+cdsd.FieldByName('TPD_MP_SKU').asstring+'"'+
                        ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')';


            if g_debug then writeln(f,'2xx: '+ sqlnya);
            if g_debug then flush(f);
//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('4');

            fmain.cari1(sqlnya);
//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('5');

            if (fmain.scds_cari1.IsEmpty) then
            begin
              if pos(';',cdsd.fieldbyname('TPD_DESCP').asstring) > 0 then
                 lib.msgbox('SKU : '+cdsd.FieldByName('TPD_MP_SKU').asstring+'  '+copy(cdsd.fieldbyname('TPD_DESCP').asstring,1,pos(';',cdsd.fieldbyname('TPD_DESCP').asstring)-1)+'  Tidak terdaftar di master produk')
              else
                 lib.msgbox('SKU : '+cdsd.FieldByName('TPD_MP_SKU').asstring+'  '+cdsd.fieldbyname('TPD_DESCP').asstring+'  Tidak terdaftar di master produk');
                bolehsimpan:=false;
            end ;

            a_unik[konter,0] := cdsd.FieldByName('TPD_PK').AsString;
            a_unik[konter,1] := cdsd.FieldByName('TPD_MP_SKU').AsString;
            a_unik[konter,2] := cdsd.FieldByName('TPD_EKOR').AsString;

            if cdsd.State = dsedit then cx:= 'E' else cx:= 'T';


      if g_debug then writeln(f,'3 cek_constrain : '+
      cdsd.fieldbyname('TPD_PK').AsString+ ' '+
      concat(cdsd.fieldbyname('TPD_MP_SKU').AsString,
      cdsd.fieldbyname('TPD_EKOR').AsString)+' '+
       cdsd.fieldbyname('TPD_EKOR').AsString+' '+'T'); // +'  '+inttostr(xbaris));
      if g_debug then flush(f);


            if fmain.cek_constrain(cdsd.fieldbyname('TPD_PK').AsString,
                concat(cdsd.fieldbyname('TPD_MP_SKU').AsString,
                cdsd.fieldbyname('TPD_EKOR').AsString),
                cdsd.fieldbyname('TPD_EKOR').AsString,cx) //,xbaris)
            then
            begin
                lib.msgbox('SKU '+cdsd.fieldbyname('TPD_MP_SKU').AsString+' sudah dipakai !!'); // 4dibaris '+formatfloat('##0',xbaris)+#13+#10);
                cds.EnableControls;
                cdsd.EnableControls;
                abort;
            end;

//            if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('8');

           dtotalamount:=cdsd.fieldbyname('TPD_AMOUNT').AsFloat;
           if cdsd.fieldbyname('TPD_DSC_PR1').AsFloat > 0 then
                dtotalamount := dTotalAmount * ( 1 - (cdsd.fieldbyname('TPD_DSC_PR1').AsFloat/100) )
           else
                dTotalAmount := dTotalAmount - cdsd.fieldbyname('TPD_DSC_RP1').AsFloat;

           if cdsd.fieldbyname('TPD_DSC_PR2').AsFloat > 0 then
                dtotalamount := dTotalAmount * ( 1 - (cdsd.fieldbyname('TPD_DSC_PR2').AsFloat/100) )
           else
                dTotalAmount := dTotalAmount - cdsd.fieldbyname('TPD_DSC_RP2').AsFloat;

           if cdsd.fieldbyname('TPD_DSC_PR3').AsFloat > 0 then
                dtotalamount := dTotalAmount * ( 1 - (cdsd.fieldbyname('TPD_DSC_PR3').AsFloat/100) )
           else
                dTotalAmount := dTotalAmount - cdsd.fieldbyname('TPD_DSC_RP3').AsFloat;

           if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
//lib.msgbox(77);
           cdsd.fieldbyname('TPD_DSC').asfloat:= cdsd.fieldbyname('TPD_AMOUNT').AsFloat- dtotalamount;
//lib.msgbox(88);           cdsd.fieldbyname('TPD_NETTO').asfloat:= dtotalamount;
 //          cdsd.fieldbyname('TPD_NETTO2').asfloat:= dtotalamount;


//lib.msgbox('   06.02.2022 3')  ;
//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('9');

//bikin tampilan kacau?   fmain.GridSelected(DBG,[1],[4],cdsd);
//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('10');


//           cdsd.post;



           //lib.msgbox(cdsd.FieldByName('TPD_MP_SKU').asstring+'  2');
           // cdsCalcFields(cdsd);
           //bypass khusus borma
           //end;
           //
//lib.msgbox(99);
           dNettoFak   := cdsd.FieldByName('TPD_NETTO').AsFloat * (cdsd.FieldByName('TPD_QTY').AsFloat / cds.FieldByName('TPH_NETTO').AsFloat * dtotal);

//lib.msgbox(100);
           if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
           cdsd.FieldByName('TPD_NETTO2').AsFloat := dNettoFak;


//lib.msgbox(111);

           cdsd.FieldByName('ic_plu').Asstring :=  concat(cdsd.FieldByName('TPD_MP_SKU').Asstring,cdsd.FieldByName('TPD_EKOR').Asstring);

           //            cdsd.fieldbyname('ic_plu_b').Asstring :=concat(cdsd.fieldbyname('TPD_MP_SKU_B').Asstring  ,cdsd.fieldbyname('TPD_EKOR_B').asstring);

//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('11');

            sqlnya:='Select * from ms.M_PRICE where MPR_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
             'MPR_MP_SKU = '+QuotedStr(cdsd.fieldbyname('TPD_MP_SKU').asstring);

            if g_debug then writeln(f,'2y: '+ sqlnya);
            if g_debug then flush(f);
            fmain.cari4(sqlnya);
  //   if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('12');


            if not (fmain.scds_cari4.IsEmpty) or (fmain.scds_cari4.fieldbyname('MPR_PRICE2').AsInteger>0) then
            begin
           // if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('13');

               if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
               cdsd.FieldByName('ic_hjual').asfloat := fmain.scds_cari4.fieldbyname('MPR_PRICE2').AsInteger;
            end;
//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('14');

{
            fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP, MP_MK_KODE, MP_MV_KODE,  '+
                        ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                        ' MP_SKU = "'+cdsd.FieldByName('TPD_MP_SKU').asstring+'"'+
                        ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                        );
            if not (fmain.scds_cari1.IsEmpty) then
            begin
                  //    lib.msgbox('readonly 10' );
                  if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
                  cdsd.FieldByName('ic_ppn').asstring := fmain.scds_cari1.fieldbyname('MP_PPN').asstring;
                  cdsd.FieldByName('ic_ppn_bm').asstring := fmain.scds_cari1.fieldbyname('MP_PPN_BM').asstring;
            end;
}
            //lib.msgbox('1 d');
            //   lib.msgbox('readonly 11' );

            if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;

            if bpkp and (cdsd.FieldByName('ic_ppn').Asstring = '1') then
               cdsd.FieldByName('TPD_PPN').AsFloat := cdsd.FieldByName('TPD_NETTO2').AsFloat * (dppn / 100)
            else
               cdsd.FieldByName('TPD_PPN').AsFloat := 0;
            //lib.msgbox('1 e');
//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('15');

            if cdsd.FieldByName('TPD_QTY').AsFloat > 0 then
            begin
                  //        lib.msgbox('readonly 12' );
                  if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
                  cdsd.FieldByName('TPD_NETTO2').AsFloat  := dNettoFak / (cdsd.FieldByName('TPD_QTY').AsFloat );

                  if bpkp and (cdsd.FieldByName('ic_ppn').Asstring = '1') then
                     cdsd.FieldByName('TPD_PPN').AsFloat := cdsd.FieldByName('TPD_NETTO2').AsFloat * (dppn / 100)
                  else
                     cdsd.FieldByName('TPD_PPN').AsFloat := 0;
            end;
            //lib.msgbox('1 f');
            dTotalNetto2:= dTotalNetto2+ (cdsd.FieldByName('TPD_NETTO').AsFloat-cdsd.FieldByName('TPD_NETTO2').AsFloat)  * cdsd.FieldByName('TPD_QTY').AsFloat;
            dTotalPPN   := dTotalPPN   + (cdsd.FieldByName('TPD_PPN').AsFloat  * cdsd.FieldByName('TPD_QTY').AsFloat);
            dTotalPPnBM := dTotalPPnBM + (cdsd.FieldByName('TPD_PPN_BM').AsFloat * cdsd.FieldByName('TPD_QTY').AsFloat);
            cdsd.next;
            konter:=konter+1;
            label62.Caption:='#'+inttostr(konter)+'/'+inttostr(xbarispo);
//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('16');

       end;
//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('17');

       if cds.fieldbyname('TPH_DSC_PR1').AsFloat > 0 then
       begin  //lib.msgbox('1 h');
          cds.fieldbyname('C_PPN').AsFloat := cds.fieldbyname('C_PPN').AsFloat * ( 1 - (cds.fieldbyname('TPH_DSC_PR1').AsFloat/100 ));
          cds.fieldbyname('C_PPN_BM').AsFloat := cds.fieldbyname('C_PPN_BM').AsFloat * ( 1 - (cds.fieldbyname('TPH_DSC_PR1').AsFloat/100 ));
          damount := damount * ( 1 - (cds.fieldbyname('TPH_DSC_PR1').AsFloat/100 ));
       end
       else
       begin
          if cds.fieldbyname('TPH_DSC_RP1').AsFloat > 0 then
          begin //lib.msgbox('1 j '+floattostr(dNettoFak));
          //  dPersen := cds.fieldbyname('TPH_DSC_RP1').AsFloat / dNettoFak;
             cds.fieldbyname('C_PPN').AsFloat := cds.fieldbyname('TPH_PPN').AsFloat * ( 1 - dPersen);
             cds.fieldbyname('C_PPN_BM').AsFloat := cds.fieldbyname('TPH_PPN_BM').AsFloat * ( 1 - dPersen);
             damount := damount - cds.fieldbyname('TPH_DSC_RP1').AsFloat;
          end
       end;
       if cds.fieldbyname('TPH_DSC_PR2').AsFloat > 0 then
       begin
          cds.fieldbyname('C_PPN').AsFloat := cds.fieldbyname('TPH_PPN').AsFloat * ( 1 - (cds.fieldbyname('TPH_DSC_PR2').AsFloat/100 ));
          cds.fieldbyname('C_PPN_BM').AsFloat := cds.fieldbyname('TPH_PPN_BM').AsFloat * ( 1 - (cds.fieldbyname('TPH_DSC_PR2').AsFloat/100 ));
          damount := damount * ( 1 - (cds.fieldbyname('TPH_DSC_PR2').AsFloat/100 ));
       end
       else
       begin
          if cds.fieldbyname('TPH_DSC_RP2').AsFloat > 0 then
          begin
             //dPersen := cds.fieldbyname('TPH_DSC_RP2').AsFloat / dAmount;  // pwk
             cds.fieldbyname('C_PPN').AsFloat := cds.fieldbyname('TPH_PPN').AsFloat * ( 1 - dPersen);
             cds.fieldbyname('C_PPN_BM').AsFloat := cds.fieldbyname('TPH_PPN_BM').AsFloat * ( 1 - dPersen);
             damount := damount - cds.fieldbyname('TPH_DSC_RP2').AsFloat;
          end
       end;
       //         lib.msgbox('1 f');

       cds.fieldbyname('C_PPN').AsFloat :=cds.fieldbyname('TPH_PPN').asfloat;
       cds.fieldbyname('C_FAKTUR').asfloat  :=cds.fieldbyname('TPH_AMOUNT').asfloat;

       cds.fieldbyname('C_DSC_FAK').asfloat := cds.fieldbyname('TPH_DSC').AsFloat ;
//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('18');


       bbaru:=false;

       if bedit then dbg.SetFocus;

    end;
//    if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('19');

  end;
  me_nomor.readonly:=true;
  me_nomor.color:=$00D8D7CA;
  me_nomor.tabstop:=false;
  bproses:=true;

  bedit:= false;
//if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('20');

  if (cds.fieldbyname('TPH_ST_PRN').AsString='Y') then
  begin
     if not( boleheditpo) then
     begin
        lib.msgbox('PO status sudah cetak, QTY PO tidak bisa diedit');
        dbg.ReadOnly :=true ;
     end
     else
        dbg.ReadOnly :=false;
     end
  else
  begin

     dbg.ReadOnly :=false;
  end;
//  if cdsd.fieldbyname('TPD_MP_SKU').Asstring='14390186' then lib.msgbox('21');

end;

procedure Torder.CDSTPH_MV_KODEValidate(Sender: TField);
var kodebank : string;
begin
//lib.msgbox('1x');
if trim(stringreplace(sender.asstring,'.','',[rfReplaceAll]))='' then
  begin
           // lib.msgbox('2x');
            dbevendor.SetFocus;
            abort;
  end;//lib.msgbox('3x');

   fmain.cari1('select MV_NAMA, MV_ST_PKP, MV_ST_PRI, MV_MTP_KODE, MV_ALM1, '+
               ' MV_KOTA,MV_KD_POS,MV_TELP1, MV_FAX, MV_C_NAMA,MV_MB_KODE,MV_MB_SANDI_BI '+
               ' from ms.M_VENDOR where MV_MT_KODE="'+g_uu_group_aktif+'"'+
               ' and MV_KODE = '+quotedstr(sender.asstring)+
               ' and MV_TY = "A"');
   if fmain.scds_cari1.IsEmpty then //and bNewTrans then
   begin
       lib.msgbox('1 Vendor dengan nomor '+sender.asstring+' tidak terdaftar atau tidak aktif !');
       abort;
   end;
   edvendor.Text := fmain.scds_cari1.fieldbyname('MV_NAMA').asstring;
   cds.FieldByName('TPH_MTP_KODE').asstring := fmain.scds_cari1.fieldbyname('MV_MTP_KODE').asstring;
   tampiltop;
   if fmain.scds_cari1.fieldbyname('MV_ST_PKP').asstring = 'Y' then bpkp:= true else bpkp:= false;
   if bpkp then
      label24.Caption:='PKP'
   else
      label24.Caption:='NPKP';

   if fmain.scds_cari1.fieldbyname('MV_ST_PRI').asstring = 'Y' then bprinsipal:= true else bprinsipal:= false;
   alamat_vendor:= trim(fmain.scds_cari1.fieldbyname('MV_ALM1').asstring)+' '+
                   trim(fmain.scds_cari1.fieldbyname('MV_KOTA').asstring)+' '+
                   trim(fmain.scds_cari1.fieldbyname('MV_KD_POS').asstring);
   no_telp :=trim(fmain.scds_cari1.fieldbyname('MV_TELP1').asstring);
   no_fax  :=trim(fmain.scds_cari1.fieldbyname('MV_FAX').asstring);
   mtp     :=trim(fmain.scds_cari1.fieldbyname('MV_MTP_KODE').asstring);
   contact :=trim(fmain.scds_cari1.fieldbyname('MV_C_NAMA').asstring);
   fmain.cari3('select MVT_MINOR, MVT_LT,MVT_MT_KODE_TF from ms.M_VENDOR_TOKO where MVT_KODE = "'+sender.asstring +'" '+
               ' and MVT_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)));
   if fmain.scds_cari3.IsEmpty and bNewTrans then
   begin
       lib.msgbox('Vendor ini tidak mencakupi toko anda !');
       abort;
   end;

   if (trim(fmain.scds_cari1.fieldbyname('MV_MB_KODE').asstring)='1') then
   begin
      kodebank:= fmain.scds_cari1.fieldbyname('MV_MB_SANDI_BI').asstring;
      //lib.msgbox('select MBP_KODE, MBP_NAMA,MBP_NAMA_BI from ms.M_BANK_PAYMENT '+
      //        'where MBP_KODE="'+kodebank+'"');

      fmain.cari2('select MBP_KODE, MBP_NAMA,MBP_NAMA_BI from ms.M_BANK_PAYMENT '+
              'where MBP_KODE="'+kodebank+'"');
      if (fmain.scds_cari2.IsEmpty) or
         (fmain.scds_cari2.fieldbyname('MBP_NAMA').asstring='') then
      begin
        lib.msgbox('Kode dan Bank Vendor tidak terdafter, konfirmasikan ke MD untuk diupdate data vendornya');
      end;
   end;


   dminorv:=0;
   dminorv:=fmain.scds_cari3.fieldbyname('MVT_MINOR').asfloat;
   if (cds.state <> dsedit) and (cds.state <> dsinsert) then cds.edit;
   cds.fieldbyname('ic_leadtime').AsInteger    := fmain.scds_cari3.fieldbyname('MVT_LT').asinteger;fmain.scds_cari3.fieldbyname('MVT_LT').asinteger;
   cds.fieldbyname('TPH_DATE_TIBA').Asdatetime  := date + fmain.scds_cari3.fieldbyname('MVT_LT').asinteger;
   cds.fieldbyname('TPH_MT_KODE_TF').Asstring  := fmain.scds_cari3.fieldbyname('MVT_MT_KODE_TF').Asstring;
end;


procedure Torder.dbgColExit(Sender: TObject);
var iPLU : string;
saveplace : TBookmark;
prevvaue : Variant;
begin
{
if (dbg.SelectedField.FieldName ='TPD_AMOUNT')  then
  begin
    cdsd.append;
  end;
}

{
if (dbg.SelectedField.FieldName ='TPD_AMOUNT')  then
  begin
    cdsd.append;
  end;
}


{
  if (dbg.SelectedField.FieldName ='TPD_QTY')  then
  begin
  fmain.GridSelected(DBG,[3],[5],cdsd);
}
     //lib.msgbox('exit qty');

// tetep error di pakai juga if (cds.state <> dsedit) and (cds.state<>dsinsert) then cds.edit;

//aapa ini 2021-12-09
//if (cds.state = dsedit) then
//cdsd.post;
{
lib.msgbox('apa ini 2');
   if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
   cdsdCalcFields(cdsd);
   cdsCalcFields(cds);
}
//cdsd.Next;

//  cdsd.append; kalau ini diaktifkan.total terhitung dan bikin sku baru..

//fmain.GridSelected(DBG,[3],[5],cdsd);

//     bPLUEnd   := false;
//    bPLUStart   := true;

//  end;


//lib.msgbox('colexit ');


  if (dbg.SelectedField.FieldName ='ic_plu')
//  and (Length(cdsd.FieldByName('ic_plu').Asstring) < sku6or8 )
  and  bPLUStart then
  begin
//lib.msgbox('1 colexit ');

    bPLUStart := FALSE;
    bPLUEnd   := TRUE;
    if (cdsd.state<>dsinsert) and (cdsd.state<>dsedit) then cdsd.edit;
    iPLU := concat(cdsd.FieldByName('TPD_MP_SKU').Asstring,cdsd.FieldByName('TPD_EKOR').Asstring);
    cdsd.FieldByName('ic_plu').Asstring  := iPLU;
 //26022022 tutup   bPLUEnd   := false;
 //26022022 tutup   bPLUStart   := true;


  end;
//lib.msgbox('2 colexit ');

end;

procedure Torder.CDSDTPD_QTYValidate(Sender: TField);
var dqty:double;
        isku : string;
begin
if bbaru // or x_simpan
then exit;
   if sender.AsFloat <= 0 then
   begin
       lib.msgbox('Entry tidak boleh minus atau nol');
       abort;
   end;
  if cdsd.fieldbyname('ic_curah').asstring = 'N' then
  begin
     if pos('.',sender.asstring) > 0 then
     begin
        lib.msgbox('QTY untuk item ini harus bilangan bulat !'+#10#13);
        abort;
     end;
  end;
  dqty:=0;
  case cdsd.fieldbyname('TPD_EKOR').asinteger of
    0 :  dqty := sender.AsFloat  * cdsd.fieldbyname('TPD_CONV2').asinteger;
    1 :  dqty := sender.AsFloat  * (cdsd.fieldbyname('TPD_CONV2').asinteger/cdsd.fieldbyname('TPD_CONV1').asinteger);
    2 :  dqty := sender.AsFloat ;
  end;
  if dqty < cdsd.fieldbyname('ic_minor').AsFloat then
  begin
     lib.msgbox('Qty PO harus lebih besar dari Minor Qty : '+formatfloat('#,##0.##',cdsd.fieldbyname('ic_minor').Asfloat)+'/pcs'+#10#13);
     abort;
  end;

       dqty:=0;
       case cdsd.fieldbyname('TPD_EKOR').asinteger of
          0 :  dqty := cdsd.fieldbyname('TPD_QTY').AsInteger  * cdsd.fieldbyname('TPD_CONV2').asinteger;
          1 :  dqty := cdsd.fieldbyname('TPD_QTY').AsInteger * (cdsd.fieldbyname('TPD_CONV2').asinteger/cdsd.fieldbyname('TPD_CONV1').asinteger);
          2 :  dqty := cdsd.fieldbyname('TPD_QTY').AsInteger;
       end;

 // lib.msgbox('dudul4');

       isku := cdsd.FieldByName('TPD_MP_SKU').asstring;

{
       fmain.cari2('select MPH_AMOUNT, MPH_DSC_PR1, MPH_DSC_PR2, MPH_DSC_PR3, MPH_DSC_RP1, MPH_DSC_RP2, MPH_DSC_RP3, MPH_PPN_BM, MPH_PPPN_BM,'+
                   ' MPH_P_AMOUNT, MPH_P_DSC_PR1, MPH_P_DSC_PR2, MPH_P_DSC_PR3, MPH_P_DSC_RP1, MPH_P_DSC_RP2, MPH_P_DSC_RP3, MPH_D_FIRST, MPH_D_LAST '+
                   ' from ms.M_PURCHASE where MPH_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)) +' and MPH_MV_KODE = '+quotedstr(cds.fieldbyname('TPH_MV_KODE').asstring)+
                   ' and MPH_MP_SKU = '+quotedstr(isku));
       if fmain.SCDS_Cari2.IsEmpty then
       begin
           lib.msgbox('Harga Beli untuk SKU '+ fmain.scds_cari1.fieldbyname('MP_SKU').asstring+ ' pada vendor '+cds.fieldbyname('TPH_MV_KODE').asstring+' belum ada !'+#13#10);
           abort;
       end;
       damount := fmain.scds_cari2.fieldbyname('MPH_AMOUNT').asfloat;
       if bpkp and bprinsipal and (cdsd.fieldbyname('ic_ppn_bm').asstring = '1') then
       cdsd.fieldbyname('TPD_PPN_BM').AsFloat   :=  fmain.scds_cari2.fieldbyname('MPH_PPN_BM').asfloat;
       cdsd.FieldByName('TPD_DSC_PR1').asfloat := fmain.scds_cari2.fieldbyname('MPH_DSC_PR1').asfloat;
       cdsd.FieldByName('TPD_DSC_PR2').asfloat := fmain.scds_cari2.fieldbyname('MPH_DSC_PR2').asfloat;
       cdsd.FieldByName('TPD_DSC_PR3').asfloat := fmain.scds_cari2.fieldbyname('MPH_DSC_PR3').asfloat;
       cdsd.FieldByName('TPD_DSC_RP1').asfloat := fmain.scds_cari2.fieldbyname('MPH_DSC_RP1').asfloat;
       cdsd.FieldByName('TPD_DSC_RP2').asfloat := fmain.scds_cari2.fieldbyname('MPH_DSC_RP2').asfloat;
       cdsd.FieldByName('TPD_DSC_RP3').asfloat := fmain.scds_cari2.fieldbyname('MPH_DSC_RP3').asfloat;


}
//////

       fmain.cari3('Select MPG_HEIGHT, MPG_WIDTH, MPG_DEPTH, MPG_WEIGHT, '+
                  ' MPG_HEIGHT_PER_FIB, MPG_WIDTH_PER_FIB, MPG_DEPTH_PER_FIB, MPG_WEIGHT_PER_FIB '+
                  ' from ms.M_PRODUK_NAS where MPG_MT_KODE = '+quotedstr(g_uu_group_aktif)+ ' AND '+
                  ' MPG_SKU = '+quotedstr(isku));
 //   lib.msgbox('dudul 5');

       if not fmain.scds_cari3.IsEmpty then
       begin
       //lib.msgbox('readonly 20' );
       if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
//          cdsd.FieldByName('ic_volume').AsFloat :=  (fmain.scds_cari3.fieldbyname('MPG_HEIGHT_PER_FIB').AsFloat*fmain.scds_cari3.fieldbyname('MPG_WIDTH_PER_FIB').AsFloat*fmain.scds_cari3.fieldbyname('MPG_DEPTH_PER_FIB').AsFloat)/1000000 ;
//          cdsd.FieldByName('TPD_VOLUME').AsFloat := cdsd.FieldByName('ic_volume').AsFloat * dqty; //cdsd.FieldByName('TPD_QTY').AsFloat ;

//lib.msgbox('dudul 6');

 if (cdsd.FieldByName('TPD_MP_SKU').AsFloat >0) and
  (cdsd.FieldByName('TPD_QTY').AsFloat >0) and
   (cdsd.fieldbyname('TPD_QTY').OldValue=cdsd.fieldbyname('TPD_QTY').NewValue)
then
begin


if g_debug then writeln(f,'cek bonus 1');
if g_debug then flush(f);

//lib.msgbox('dudul 7');
 //06feb2022
 cekbonus;

//end;

        if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;


          cdsd.FieldByName('ic_volume').AsFloat :=  (((fmain.scds_cari3.fieldbyname('MPG_HEIGHT_PER_FIB').AsFloat*fmain.scds_cari3.fieldbyname('MPG_WIDTH_PER_FIB').AsFloat*fmain.scds_cari3.fieldbyname('MPG_DEPTH_PER_FIB').AsFloat) /1000000)/ cdsd.fieldbyname('TPD_CONV2').asinteger * dqty)  ;
          cdsd.FieldByName('TPD_VOLUME').AsFloat := cdsd.FieldByName('ic_volume').AsFloat; // * dqty; //cdsd.FieldByName('TPD_QTY').AsFloat ;

          cdsd.FieldByName('TPD_BIAYA_KUBIKASI').AsFloat := 0; //cdsd.FieldByName('TPD_QTY').AsFloat *fmain.scds_cari3.fieldbyname('MPG_BIAYA_KUBIKASI').AsFloat;

          cdsd.FieldByName('ic_berat').AsFloat :=  fmain.scds_cari3.fieldbyname('MPG_WEIGHT_PER_FIB').AsFloat / cdsd.FieldByName('TPD_CONV2').AsInteger ;
          cdsd.FieldByName('TPD_BERAT').AsFloat := cdsd.FieldByName('ic_berat').AsFloat * dqty;  //cdsd.FieldByName('TPD_QTY').AsFloat ;
//end;
{
       if cdsd.FieldByName('ic_volume').AsFloat=0 then
       begin
          lib.msgbox('SKU tsb belum memiliki data dimensi, silakan lakukan pengisian dimensi ');
          abort;
       end;
}
       end;
//  cdsd.FieldByName('TPD_VOLUME').AsFloat := cdsd.FieldByName('ic_volume').AsFloat * dqty;  //cdsd.FieldByName('TPD_QTY').AsFloat ;
//  cdsd.FieldByName('TPD_BERAT').AsFloat := cdsd.FieldByName('ic_berat').AsFloat * dqty;    //cdsd.FieldByName('TPD_QTY').AsFloat ;
//lib.msgbox('dudul 77');

//06feb2022 cekbonus;
if (cdsd.fieldbyname('TPD_MP_SKU').asstring <> '0') and
   (cdsd.fieldbyname('TPD_QTY').AsFloat <> 0) then
begin
//lib.msgbox('dudul 8');
   // cdsd.Post;
//   if (cdsd.state <> dsedit) or (cdsd.state <> dsinsert) then cdsd.Post;
//     CDSDCalcFields(cdsd);

//06.02-2022   cdsCalcFields(cds);


end;

end;

end;

procedure Torder.CDSDTPD_QTY_BValidate(Sender: TField);
begin
 if bbaru or x_simpan then exit;

 if (cdsd.fieldbyname('TPD_MP_SKU').asstring<>'')
 and (cdsd.fieldbyname('TPD_QTY').AsFloat<>0) then
 begin
  if sender.AsFloat < 0 then
  begin
       lib.msgbox('Entry tidak boleh minus ');
       abort;
  end;

  if (cdsd.fieldbyname('TPD_MP_SKU_B').asstring > '0') and
  (sender.AsFloat = 0) then
  begin
      lib.msgbox('Entry tidak boleh nol ('+cdsd.fieldbyname('TPD_MP_SKU_B').asstring+')  ('+sender.Asstring+')');
      abort;
  end;

  if cdsd.fieldbyname('ic_curah_b').asstring = 'N' then
  begin
     if pos('.',sender.asstring) > 0 then
     begin
        lib.msgbox('QTY untuk item ini harus bilangan bulat !'+#10#13);
        abort;
     end;
  end;
end;
end;

procedure Torder.CDSDTPD_DSC_PR1Change(Sender: TField);
var dtotalamount:double;
begin
   if bbaru or x_simpan then exit;
   dtotalamount:=cdsd.fieldbyname('TPD_AMOUNT').AsFloat;

   if cdsd.fieldbyname('TPD_DSC_PR1').AsFloat > 0 then
      dtotalamount := dTotalAmount * ( 1 - (cdsd.fieldbyname('TPD_DSC_PR1').AsFloat/100) )
   else
      dTotalAmount := dTotalAmount - cdsd.fieldbyname('TPD_DSC_RP1').AsFloat;

   if cdsd.fieldbyname('TPD_DSC_PR2').AsFloat > 0 then
      dtotalamount := dTotalAmount * ( 1 - (cdsd.fieldbyname('TPD_DSC_PR2').AsFloat/100) )
   else
      dTotalAmount := dTotalAmount - cdsd.fieldbyname('TPD_DSC_RP2').AsFloat;

   if cdsd.fieldbyname('TPD_DSC_PR3').AsFloat > 0 then
      dtotalamount := dTotalAmount * ( 1 - (cdsd.fieldbyname('TPD_DSC_PR3').AsFloat/100) )
   else
      dTotalAmount := dTotalAmount - cdsd.fieldbyname('TPD_DSC_RP3').AsFloat;
   cdsd.fieldbyname('TPD_DSC').asfloat:= cdsd.fieldbyname('TPD_AMOUNT').AsFloat- dtotalamount;
   cdsd.fieldbyname('TPD_NETTO').asfloat:= dtotalamount;
   cdsd.fieldbyname('TPD_NETTO2').asfloat:= dtotalamount;
end;

procedure Torder.DBEdit7Exit(Sender: TObject);
begin
  if  bPLUawal then
  begin
    bPLUawal := FALSE;
    bPLUakhir   := TRUE;
    if (cdsd.state<>dsedit) and (cdsd.state<>dsinsert) then cdsd.Edit;
        cdsd.fieldbyname('ic_plu_b').asstring:=concat(cdsd.fieldbyname('TPD_MP_SKU_B').asstring,cdsd.fieldbyname('TPD_EKOR_B').asstring);
  end;
end;

procedure Torder.CDSDic_plu_bValidate(Sender: TField);
var iekor,isku : string;
    sbar:string;
begin
  if bbaru or x_simpan then exit;
  sbar:=''; iekor:='0'; isku:='0';
  bpluakhir:=false;
  if sender.Asstring = '0' then
  begin  //    lib.msgbox('masuk sini 1');
      cdsd.fieldbyname('TPD_MP_SKU_B').Asstring:= '0';
      cdsd.fieldbyname('TPD_EKOR_B').Asstring := '0';
      cdsd.fieldbyname('TPD_QTY_B').AsInteger:= 0;
      cdsd.fieldbyname('TPD_DESCP_B').asstring := '';
      exit;
  end
  else
  if Sender.Asstring > '0' then
  begin    //  lib.msgbox('masuk sini 2');
    if not bpluakhir then
    begin   //       lib.msgbox('masuk sini 3');
        bPLUakhir := FALSE;
        bPLUawal  := TRUE;
        if length(Sender.AsString)= (sku6or8+1) then
        begin //           lib.msgbox('masuk sini 4');
           isku:= leftstr(sender.AsString,length(sender.asstring)-1);
           iekor:=rightstr(sender.AsString,1);
           //     lib.msgbox(' masuk sini 4 isku :'+isku+ ' iekor:'+iekor);
           if not ((iekor ='0') or (iekor='1') or (iekor='2')) then
           begin
                lib.msgbox('Digit terakhir dari SKU adalah ekor, harus diisi dengan angka 0, 1 atau 2 '+#13#10+
                  'isku : '+isku+' iekor '+iekor );
                abort;
           end;
           cdsd.fieldbyname('TPD_MP_SKU_B').Asstring:= isku;
   //        cdsd.fieldbyname('TPD_QTY_B').AsInteger:=1;
        end
        else
        begin
            sbar:= leftstr(sender.asstring,13);
        end;

        if (isku> '0') and
           (cdsd.fieldbyname('TPD_MP_SKU_B').Asstring<>'0')
          //  and
          // (cdsd.fieldbyname('TPD_QTY_B').AsInteger<> 0)
            then
        begin   //       lib.msgbox('masuk sini 6');

          fmain.cari4('Select MP_SKU, MP_DESCP, MP_BARCODE, MP_SAT,MP_CONV1,MP_CONV2,MP_MK_KODE,MP_ST_CURAH from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                  ifthen(length(Sender.AsString) > 9,' MP_BARCODE = '+quotedstr(sbar),' MP_SKU = '+quotedstr(isku))+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U') +')');

          // if g_debug then writeln(f,'bonus validate : '+ 'Select MP_SKU, MP_DESCP, MP_BARCODE, MP_SAT,MP_ST_CURAH from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
          //        ifthen(length(Sender.AsString) > 9,' MP_BARCODE = '+quotedstr(sbar),' MP_SKU = '+quotedstr(isku))+
          //        ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U') +')');
          // if g_debug then flush(f);


          if fmain.scds_cari4.IsEmpty then
          begin
            lib.msgbox('Data Produk dengan '+ifthen(length(Sender.AsString) > 7,'Barcode '+trim(sender.asstring),concat('SKU ',isku))+' tidak terdaftar ');
            if pbonus.visible then
            begin
                dbedit7.setfocus;
                abort;
            end;
          end;          //
        //  lib.msgbox('masuk sini 7');

          cdsd.fieldbyname('TPD_DESCP_B').asstring:=fmain.scds_cari4.fieldbyname('MP_DESCP').asstring;
          cdsd.fieldbyname('TPD_CONV1_B').AsInteger:=fmain.scds_cari4.fieldbyname('MP_CONV1').AsInteger;
          cdsd.fieldbyname('TPD_CONV2_B').AsInteger:=fmain.scds_cari4.fieldbyname('MP_CONV2').AsInteger;
          cdsd.fieldbyname('TPD_MK_KODE_B').AsInteger:=fmain.scds_cari4.fieldbyname('MP_MK_KODE').AsInteger;

          cdsd.fieldbyname('TPD_KET').asstring:='BONUS';


          cdsd.fieldbyname('ic_curah').asstring:= fmain.scds_cari4.fieldbyname('MP_ST_CURAH').asstring;
          cdsd.fieldbyname('ic_barcode_b').asstring:= fmain.scds_cari4.fieldbyname('MP_BARCODE').asstring;

         {}
          if sbar = '' then
          begin
        //  lib.msgbox('masuk sini 8');
           //lib.msgbox('masuk sini 6 bar="'+sbar +'"');
             cdsd.fieldbyname('TPD_MP_SKU_B').asstring:= isku;
             cdsd.fieldbyname('TPD_EKOR_B').asstring := iekor;
          end
          else
          begin
         // lib.msgbox('masuk sini 9');
             //lib.msgbox('masuk sini 7 bar="'+sbar +'"');
             cdsd.fieldbyname('TPD_MP_SKU_B').asstring:= fmain.scds_cari4.fieldbyname('MP_SKU').asstring;
             cdsd.fieldbyname('TPD_EKOR_B').asstring := '2';
          end;
         // lib.msgbox('masuk sini 10 ');
          {}

          if  cdsd.FieldByName('TPD_EKOR_B').asstring='0' then
              cdsd.FieldByName('TPD_DESCP_B').asstring := fmain.scds_cari4.FieldByName('MP_DESCP').asstring+';'+
              ifthen(copy(fmain.scds_cari4.fieldbyname('MP_SAT').asstring,1,3)<>'',copy(fmain.scds_cari4.fieldbyname('MP_SAT').asstring,1,3),'DUS')
          else
          if  cdsd.FieldByName('TPD_EKOR_B').asstring='1' then
              cdsd.FieldByName('TPD_DESCP_B').asstring := fmain.scds_cari4.FieldByName('MP_DESCP').asstring+';'+
              ifthen(copy(fmain.scds_cari4.fieldbyname('MP_SAT').asstring,4,3)<>'',copy(fmain.scds_cari4.fieldbyname('MP_SAT').asstring,4,3),'PAK')
          else
          if  cdsd.FieldByName('TPD_EKOR_B').asstring='2' then
              cdsd.FieldByName('TPD_DESCP_B').asstring := fmain.scds_cari4.FieldByName('MP_DESCP').asstring+';'+
              ifthen(copy(fmain.scds_cari4.fieldbyname('MP_SAT').asstring,7,3)<>'',copy(fmain.scds_cari4.fieldbyname('MP_SAT').asstring,7,3),'PCS');
          //sinicuk
        //  cdsd.fieldbyname('ic_plu_b').asstring:=concat(cdsd.fieldbyname('TPD_MP_SKU_B').asstring,cdsd.fieldbyname('TPD_EKOR_B').asstring);
          //lib.msgbox('keisni cuk '+cdsd.fieldbyname('TPD_MP_SKU_B').asstring);
        end;
         bpluakhir:=true;
         exit;
    end;
  end
  else
  bpluakhir:=false;
end;

procedure Torder.CDSDTPD_AMOUNTValidate(Sender: TField);
begin
if bbaru or x_simpan then exit;
 if (cdsd.fieldbyname('TPD_MP_SKU').asstring<>'')
 and (cdsd.fieldbyname('TPD_QTY').AsFloat<>0) then

   if sender.AsFloat <= 0 then
   begin
       lib.msgbox('Entry tidak boleh minus atau nol');
       abort;
   end;

end;

procedure Torder.DBEdit16Exit(Sender: TObject);
begin
  if pdiskon.Visible then
  begin
    pdiskon.BringToFront;
    pdiskon.Visible:=false;
    dbg.Enabled := true;
    panel1.Enabled := true;
    panel2.Enabled := true;
    dbg.SetFocus;
  end;
end;

procedure Torder.DBEdit9Exit(Sender: TObject);
begin
//  if pdiskon.Visible then dbedit7.SetFocus;

  if pbonus.Visible then // dbedit7.SetFocus;
   begin
      pbonus.Visible:=false;
    dbg.Enabled := true;
    panel1.Enabled := true;
    panel2.Enabled := true;
    dbg.SetFocus;
   end;

end;

procedure Torder.CDSDTPD_NETTOValidate(Sender: TField);
begin
   if sender.AsFloat =0 then exit;
   cdsd.fieldbyname('TPD_PPN').AsFloat   := 0;
   if bpkp and (cdsd.fieldbyname('ic_ppn').asstring = '1') then
      cdsd.fieldbyname('TPD_PPN').AsFloat   := cdsd.fieldbyname('TPD_NETTO').AsFloat * dppn/100;
//lib.msgbox('dudul 777');

//06feb2022 cekbonus;
end;

procedure Torder.cetakpo;
var i,icount,j:integer;
    diskon,disi:double;
    sket:string;
procedure footer(x:char);
begin
   with lib do
   begin
     if x = '1' then
     begin
        tulis(ulang('Í',150+9));
        tulis('Lanjut ke halaman berikutnya ..');
        tulis(' ');tulis(' ');tulis(' ');tulis(' ');
        tulis(' ');tulis(' ');tulis(' ');tulis(' ');
     end
     else
     begin
        tulis(ulang('Í',38)+'Ë'+ulang('Í',51)+'Ë'+ulang('Í',59));
        tulis(cpad('  Dibuat Oleh,',19)+cpad(' Mengetahui,',19)+'º'
             +lpad(' * barcode internal    ',51+9)+'º'
             +lpad(' Total          : ',17)+rpad(format('%17.2n',[CDS.fieldbyname('TPH_NETTO').asfloat+diskon+cds.fieldbyname('TPH_DSC').AsFloat]),17,' ') );
                        //netto
       tulis(cpad(' ',19)+cpad(' ',19)+'º'
             +lpad('  ',51+9)+'º'
             +lpad(' Diskon Item    : ',17)+rpad(format('%17.2n',[diskon]),17,' ') );

            tulis(cpad(' ',19)+cpad(' ',19)+'º'
                 +lpad(' ',51+9)+'º'
                 +lpad(' Netto Pesanan  :',17)+rpad(format('%17.2n',[CDS.fieldbyname('TPH_NETTO').asfloat+cds.fieldbyname('TPH_DSC').AsFloat]),17,' '));

//         +lpad(' Nilai Pesanan  :',17)+rpad(format('%17.2n',[CDS.fieldbyname('TPH_AMOUNT').asfloat-CDS.fieldbyname('TPH_PPN_BM').asfloat-CDS.fieldbyname('TPH_PPN').asfloat-diskon]),17,' '));

        tulis(cpad(' ',19)+cpad(' ',19)+'º'
             +lpad(' Contact Person : '+contact,51+9)+'º'
             +ifthen((cds.fieldbyname('TPH_DSC_PR1').AsFloat>0)or(cds.fieldbyname('TPH_DSC_PR2').AsFloat>0)or
                     (cds.fieldbyname('TPH_DSC_RP1').AsFloat>0)or(cds.fieldbyname('TPH_DSC_RP2').AsFloat>0),
                      lpad(' Discount Faktur: ',18)+
                      rpad(
                      ifthen(cds.fieldbyname('TPH_DSC').AsFloat<>0,formatfloat('####,###,##0.00',cds.fieldbyname('TPH_DSC').AsFloat),' '),16)+'  '
                      +ifthen(cds.fieldbyname('TPH_DSC_PR1').AsFloat>0,formatfloat('####,###,##0.00',cds.fieldbyname('TPH_DSC_PR1').AsFloat)+'%',formatfloat('####,###,##0.00',CDS.fieldbyname('TPH_DSC_RP1').AsFloat))+' & '
                      +ifthen(cds.fieldbyname('TPH_DSC_PR2').AsFloat>0,formatfloat('####,###,##0.00',cds.fieldbyname('TPH_DSC_PR2').AsFloat)+'%',formatfloat('####,###,##0.00',CDS.fieldbyname('TPH_DSC_RP2').AsFloat)),
                      lpad(' Discount Faktur:     0.00 &  0.00',31+3)));

            tulis(cpad(' ',19)+cpad(' ',19)+'º'
                 +lpad(' '+
                 ifthen(cds.fieldbyname('TPH_VOLUME').AsFloat>0,'VOLUME : '+formatfloat('###,###,##0.00',cds.fieldbyname('TPH_VOLUME').AsFloat)+' M3',
                        '                  ')  ,51+9)+'º'
                 +lpad(' Netto Faktur   :',17)+rpad(format('%17.2n',[CDS.fieldbyname('TPH_NETTO').asfloat]),17,' '));

            tulis(cpad(' ',19)+cpad(' ',19)+'º'
                 +lpad(' '+
                 ifthen(cds.fieldbyname('TPH_BERAT').AsFloat>0,'BERAT : '+formatfloat('###,###,##0.00',cds.fieldbyname('TPH_BERAT').AsFloat)+' Kg',
                        '                   ')  ,51+9)+'º'
                 +lpad(' PPn Masukan    :',17)+rpad(format('%17.2n',[CDS.fieldbyname('TPH_PPN').asfloat]),17,' '));



{            tulis(cpad(' ',19)+cpad(' ',19)+'º'
                 +lpad(' '+
                 ifthen(cds.fieldbyname('TPH_VOLUME').AsFloat>0,'VOLUME : '+formatfloat('###,###,##0.00',cds.fieldbyname('TPH_VOLUME').AsFloat)+' M3',
                        ' Volume :..... M3 ')  ,51+9)+'º'
                 +lpad(' PPn BM         :',17)+rpad(format('%17.2n',[CDS.fieldbyname('TPH_PPN_BM').asfloat]),17,' '));

            tulis(cpad(' ',19)+cpad(' ',19)+'º'
                 +lpad(' '+
                 ifthen(cds.fieldbyname('TPH_BERAT').AsFloat>0,'BERAT : '+formatfloat('###,###,##0.00',cds.fieldbyname('TPH_BERAT').AsFloat)+' Kg',
                        ' Berat  : ..... Kg ')  ,51+9)+'º'
                 +lpad(' PPn Masukan    :',17)+rpad(format('%17.2n',[CDS.fieldbyname('TPH_PPN').asfloat]),17,' '));

}


        tulis(cpad('(...............)',19)+cpad('(...............)',19)+'º'
             +lpad(' ',51+9)+'º'
             +lpad(' Total Pesanan  :',17)+rpad(format('%17.2n',[CDS.fieldbyname('TPH_AMOUNT').asfloat]),17,' ') );
        tulis('Dengan Huruf : '+dalam_str(CDS.fieldbyname('TPH_AMOUNT').asfloat));
        tulis(' ');tulis(' ');
        if cetak_footer_po then
        begin
           tulis('Note : Mohon Melakukan konfirmasi ke bagian Receiving sebelum melakukan pengiriman barang.');
           tulis('       Bagian keuangan akan membayar, bilamana supplier membawa PO Asli yg sudah di stempel oleh bagian receiving');
           tulis('       Suplier wajib mengisi nomor PO pada Invoice /Faktur dan Surat Jalan. Pembayaran dilakukan berdasarkan harga terendah antara Faktur dan PO');
           tulis('       Jika PO sudah diterima, harap konfirmasi balik ke No.021-56983045 (up. BUYER)');
           tulis(' ');
        end;

     end;
     i:= 0;
   end;
end;

procedure header;
begin
   with lib do
   begin
      if j = 1 then
            tulis(lpad(g_uu_nama_aktif,150),'Y')
      else
            tulis(lpad(g_uu_nama_aktif,150));
      tulis(lpad(g_uu_alamat_aktif,150));
//    tulis(cBold +   lpad('FORM PERMINTAAN BARANG',100)+cNBold);//+rpad('Hal : '+inttostr(j),50));
      tulis(lpad('FORM PURCHASE ORDER ( P.O )',100));//+rpad('Hal : '+inttostr(j),50));

      tulis(lpad('Nama Vendor    : ',17)+lpad('['+cds.fieldbyname('TPH_MV_KODE').AsString+'] '+trim(edvendor.text),70)+lpad('Nomor PO : ',11)+lpad(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'-'+cds.fieldbyname('TPH_NO').AsString,50));
      tulis(lpad('Alamat         : ',17)+lpad(alamat_vendor,70)+lpad('Tgl PO   : ',11)+ctanggal(cds.fieldbyname('TPH_DATE').AsDateTime ,'L')+'  Tanggal Terima : '+ctanggal(cds.fieldbyname('TPH_DATE_TIBA').AsDateTime ,'L'));
      fmain.cari1('select MTP_NAMA from '+'ms.M_TOP where MTP_KODE = '+quotedstr(mtp));
      tulis(lpad('Telepon  / Fax : ',17)+lpad(ifthen(trim(no_telp) = '','    -         ',no_telp)+' / '+no_fax,70)+lpad('TOP      : ',11)+mtp+'.'+fmain.scds_cari1.fieldbyname('MTP_NAMA').AsString);
      tulis(ulang('Í',150+9));
//    tulis(cBold+' '+rpad('No.',3,' ')+
      tulis(' '+rpad('No.',3,' ')+

            '  '+lpad('SKU',7+2,' ')+
            '  '+lpad('BARCODE *',13,' ')+
            '  '+lpad('NAMA BARANG',35+3,' ')+
            ' '+rpad('QTY',12,' ')+
            ' '+rpad('ISI',5,' ')+
            ' '+rpad('HARGA',14,' ')+
            ' '+rpad('DISKON',11,' ')+
            ' '+rpad('NETTO',16+2,' ')+
            ' '+lpad('KETERANGAN',20-2-2,' '));
//            ' '+lpad('KETERANGAN',20-2,' ')+cNBold);
{
      tulis(cBold+' '+rpad('No.',3,' ')+
            ' '+lpad('SKU',7,' ')+
            ' '+lpad('BARCODE *',13,' ')+
            ' '+lpad('NAMA BARANG',35,' ')+
            ' '+rpad('QTY',12,' ')+
            ' '+rpad('ISI',5,' ')+
            ' '+rpad('HARGA',14,' ')+
            ' '+rpad('DISKON',11,' ')+
            ' '+rpad('NETTO',16,' ')+
            ' '+lpad('KETERANGAN',20,' ')+cNBold);
}
//      tulis(ulang('Í',150+9));
      inc(j);
   end;
end ;

begin
diskon:=0.0;
   bcetak:=true;
   g_nama_rpt:=g_workdir+'/PO_'+cds.fieldbyname('TPH_NO').AsString+'.rpt';
   with lib do
   begin
      i:=0;
      j:= 1;
      cdsd.first;
      while not cdsd.eof do
      begin
         if i = 0 then header;

         disi:= 1;
         if sfkonv=':' then
         begin
         case cdsd.FieldByName('TPD_EKOR').AsInteger of
            0 : disi := cdsd.FieldByName('TPD_CONV2').AsInteger;
            1 : disi := cdsd.FieldByName('TPD_CONV2').AsInteger/cdsd.FieldByName('TPD_CONV1').AsInteger;
         end;
         end
         else
         begin
         case cdsd.FieldByName('TPD_EKOR').AsInteger of
            0 : disi := cdsd.FieldByName('TPD_CONV1').AsInteger*cdsd.FieldByName('TPD_CONV2').AsInteger;
            1 : disi := cdsd.FieldByName('TPD_CONV2').AsInteger;
         end;


         end;



         sket:='';
         if (cdsd.fieldbyname('TPD_DSC_PR1').asfloat)>0 then sket:=sket+trim(cdsd.fieldbyname('TPD_DSC_PR1').AsString)+'%';
         if (cdsd.fieldbyname('TPD_DSC_PR2').asfloat)>0 then sket:=sket+'+'+trim(cdsd.fieldbyname('TPD_DSC_PR2').AsString)+'%';
         if (cdsd.fieldbyname('TPD_DSC_PR3').asfloat)>0 then sket:=sket+'+'+trim(cdsd.fieldbyname('TPD_DSC_PR3').AsString)+'%';

         if (cdsd.fieldbyname('TPD_DSC_RP1').asfloat)>0 then sket:=sket+'+Rp.'+trim(cdsd.fieldbyname('TPD_DSC_RP1').AsString)+' ';
         if (cdsd.fieldbyname('TPD_DSC_RP2').asfloat)>0 then sket:=sket+'+Rp.'+trim(cdsd.fieldbyname('TPD_DSC_RP2').AsString)+' ';
         if (cdsd.fieldbyname('TPD_DSC_RP3').asfloat)>0 then sket:=sket+'+Rp.'+trim(cdsd.fieldbyname('TPD_DSC_RP3').AsString)+' ';

         if (length(trim(sket))>0) then sket:='Pot:'+sket;
         cdsd.edit;
         cdsd.fieldbyname('TPD_KET').AsString:='-'+sket;
         cdsd.post;

         tulis(' '+rpad(inttostr(CDSD.RecNo),3)+
               '  '+lpad(cdsd.fieldbyname('ic_plu').asstring,7+2)+
               '  '+lpad(Check_Digit(cdsd.fieldbyname('TPD_BARCODE').asstring),13)+
               '  '+lpad(cdsd.fieldbyname('TPD_DESCP').asstring,35)+'   '+
               ' '+rpad(formatfloat('#,##0.##',cdsd.fieldbyname('TPD_QTY').asfloat),12)+
               ' '+rpad(formatfloat('#,##0.##',disi),5)+
               ' '+rpad(formatfloat('#,##0.##',cdsd.fieldbyname('TPD_AMOUNT').asfloat),14)+
               ' '+rpad(formatfloat('#,##0.##',cdsd.fieldbyname('TPD_DSC').asfloat),11)+
               ' '+rpad(formatfloat('#,##0.##',cdsd.fieldbyname('TPD_NETTO').asfloat*cdsd.fieldbyname('TPD_QTY').asfloat),16+2)+
               ' '+lpad(cdsd.fieldbyname('TPD_KET').asstring,20-2));
               diskon:=diskon+(cdsd.fieldbyname('TPD_DSC').asfloat*cdsd.fieldbyname('TPD_QTY').asfloat);
         inc(i);
         if cdsd.fieldbyname('TPD_MP_SKU_B').asinteger > 0 then
         begin
             tulis(' '+rpad(' ',3)+
                   '  '+lpad(cdsd.fieldbyname('ic_plu_b').asstring,7+2)+
                   '  '+lpad(Check_Digit(cdsd.fieldbyname('ic_barcode_b').asstring),13)+
                   '  '+lpad(cdsd.fieldbyname('TPD_DESCP_B').asstring,35)+'   '+
                   ' '+rpad(formatfloat('#,##0.##',cdsd.fieldbyname('TPD_QTY_B').asfloat),12)+
                   ' '+rpad(' ',5)+
                   ' '+rpad(formatfloat('#,##0.##',cdsd.fieldbyname('TPD_AMOUNT_B').asfloat),14)+
                   ' '+rpad(' ',11)+
                   ' '+rpad(' ',16)+
                   ' '+lpad('Bonus',20-2));


             inc(i);
         end;
         cdsd.next;
         if ((i mod 45) = 0) and not cdsd.eof
            then footer('1');
      end;
      if (i mod 15) > 0 then
         for icount:= (i mod 15)+1 to 15 do tulis (' ');
      footer('2');
   end;
   TRpt_Form.Create(nil).showmodal;
   lib.cetak();
end;

procedure Torder.cekbonus;
var dqty,damount,bqty:double;
    ibeli: double;
    ibns_ekor : double;
    iqty,iekor,iconv,ibns:variant; //integer;

begin
   iekor:=cdsd.fieldbyname('TPD_EKOR').AsInteger;
   damount:=cdsd.fieldbyname('TPD_QTY').asfloat*cdsd.fieldbyname('TPD_NETTO').AsFloat;
   case iekor of
   0 : dqty :=  cdsd.fieldbyname('TPD_QTY').AsFloat * cdsd.fieldbyname('TPD_CONV2').asinteger;
   1 : dqty :=  cdsd.fieldbyname('TPD_QTY').AsFloat * (cdsd.fieldbyname('TPD_CONV2').asinteger/cdsd.fieldbyname('TPD_CONV1').asinteger);
   2 : dqty :=  cdsd.fieldbyname('TPD_QTY').AsFloat;
   end;
   if (damount = 0) or (dqty = 0)
   // or
   //(cdsd.fieldbyname('TPD_QTY').OldValue=cdsd.fieldbyname('TPD_QTY').NewValue)
     then exit;   // cek ada bonusnye nggak
      if g_debug then
        writeln(f,'4: '+ ' select MPH_MP_SKU_B, MPH_EKOR_B, MPH_QTY_B, MPH_AMOUNT_B, MPH_D_F_B, MPH_D_L_B, MPH_MIN_Q_B, MPH_MIN_RP_B, '+
               'if (( (( MPH_MIN_Q_B > 0) and (MPH_MIN_Q_B <= "'+formatfloat('########0',dqty)+'") ) or ( (MPH_MIN_RP_B > 0) and (MPH_MIN_RP_B <='+formatfloat('########0',damount)+') ) )'+
               ' and (MPH_D_F_B  <= "'+formatdatetime('yyyy-mm-dd',date)+'" and MPH_D_L_B  >= "'+formatdatetime('yyyy-mm-dd',date)+'")<>"","BONUS","") BONUS '+
               ' from ms.M_PURCHASE where MPH_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)) +' and MPH_MV_KODE = '+quotedstr(cds.fieldbyname('TPH_MV_KODE').asstring)+
               ' and MPH_MP_SKU = '+quotedstr(cdsd.fieldbyname('TPD_MP_SKU').asstring) );
        if g_debug then flush(f);


        fmain.cari1('select MPH_MP_SKU_B, MPH_EKOR_B, MPH_QTY_B, MPH_AMOUNT_B, MPH_D_F_B, MPH_D_L_B, MPH_MIN_Q_B, MPH_MIN_RP_B, '+
               'if (( (( MPH_MIN_Q_B > 0) and (MPH_MIN_Q_B <= "'+formatfloat('########0',dqty)+'") ) or ( (MPH_MIN_RP_B > 0) and (MPH_MIN_RP_B <='+formatfloat('########0',damount)+') ) )'+
               ' and (MPH_D_F_B  <= "'+formatdatetime('yyyy-mm-dd',date)+'" and MPH_D_L_B  >= "'+formatdatetime('yyyy-mm-dd',date)+'")<>"","BONUS","") BONUS '+
               ' from ms.M_PURCHASE where MPH_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)) +' and MPH_MV_KODE = '+quotedstr(cds.fieldbyname('TPH_MV_KODE').asstring)+
               ' and MPH_MP_SKU = '+quotedstr(cdsd.fieldbyname('TPD_MP_SKU').asstring) );

   if fmain.scds_cari1.fieldbyname('BONUS').asstring='BONUS' then
   begin
       //lib.msgbox('Ada Bonus');
       if fmain.scds_cari1.fieldbyname('MPH_MP_SKU_B').asinteger > 0 then   { ada sku bonus nya }
       begin
           //lib.msgbox('Ada Bonus 2 :'+fmain.scds_cari1.fieldbyname('MPH_MP_SKU_B').asstring+' '+fmain.scds_cari1.fieldbyname('MPH_EKOR_B').asstring);
           cdsd.FieldByName('TPD_MP_SKU_B').asstring := fmain.scds_cari1.fieldbyname('MPH_MP_SKU_B').asstring;
           cdsd.FieldByName('TPD_EKOR_B').asstring := fmain.scds_cari1.fieldbyname('MPH_EKOR_B').asstring;
           //lib.msgbox('keisni 4 '+cdsd.fieldbyname('TPD_MP_SKU_B').asstring+'  ' +cdsd.FieldByName('TPD_EKOR_B').asstring+' ic_plu_b ' +cdsd.FieldByName('ic_plu_b').asstring);
           iqty:=1;

           if (dqty >= fmain.scds_cari1.fieldbyname('MPH_MIN_Q_B').asfloat) and
              (fmain.scds_cari1.fieldbyname('MPH_MIN_Q_B').asfloat > 0) then
              begin
                 //lib.msgbox('qty memenuhi syarat bonus :'+floattostr(dqty));
                 iqty:= trunc(dqty / fmain.scds_cari1.fieldbyname('MPH_MIN_Q_B').asfloat);   { kelipatan min beli }
                 iconv:=cdsd.fieldbyname('TPD_CONV2').asinteger;
                 ibns :=iqty*fmain.scds_cari1.fieldbyname('MPH_QTY_B').asfloat;
                 //lib.msgbox(' dqty :'+FloatToStr(dqty)+ ' iqty :'+IntToStr(iqty)+ ' ibns :'+IntToStr(ibns) + ' iekor :'+IntToStr(iekor));
                 case iekor of
                 0 : begin
                   // lib.msgbox(ibns mod (cdsd.fieldbyname('TPD_CONV1').asinteger *cdsd.fieldbyname('TPD_CONV2').asinteger));
                       //lib.msgbox('ekor 0 '+ ' ibns :'+IntToStr(ibns) );

                       if (ibns mod (cdsd.fieldbyname('TPD_CONV1').asinteger *cdsd.fieldbyname('TPD_CONV2').asinteger))=0 then
                       begin   //lib.msgbox(' 0 dqty :'+FloatToStr(dqty));
                           cdsd.FieldByName('TPD_MP_SKU_B').asstring := fmain.scds_cari1.fieldbyname('MPH_MP_SKU_B').asstring;
                           cdsd.FieldByName('TPD_EKOR_B').asstring := '0';
                           cdsd.FieldByName('TPD_QTY_B').asinteger :=  round(ibns/cdsd.fieldbyname('TPD_CONV2').asinteger)  ;//1; //round(ibns/(cdsd.fieldbyname('TPD_CONV1').asinteger *cdsd.fieldbyname('TPD_CONV2').asinteger));
                           cdsd.FieldByName('TPD_AMOUNT_B').asfloat := fmain.scds_cari1.fieldbyname('MPH_AMOUNT_B').asfloat*(cdsd.fieldbyname('TPD_CONV1').asinteger *cdsd.fieldbyname('TPD_CONV2').asinteger);
                       end
                       else
                       if (ibns mod (cdsd.fieldbyname('TPD_CONV2').asinteger /cdsd.fieldbyname('TPD_CONV1').asinteger))=0 then
                       begin       //lib.msgbox(' 1 dqty :'+FloatToStr(dqty));
                           cdsd.FieldByName('TPD_MP_SKU_B').asstring := fmain.scds_cari1.fieldbyname('MPH_MP_SKU_B').asstring;
                           cdsd.FieldByName('TPD_EKOR_B').asstring := '1';
                           cdsd.FieldByName('TPD_QTY_B').asinteger :=  round(ibns/(cdsd.fieldbyname('TPD_CONV2').asinteger/cdsd.fieldbyname('TPD_CONV1').asinteger))  ;//1; //round(ibns/(cdsd.fieldbyname('TPD_CONV1').asinteger *cdsd.fieldbyname('TPD_CONV2').asinteger));
                           cdsd.FieldByName('TPD_AMOUNT_B').asfloat := fmain.scds_cari1.fieldbyname('MPH_AMOUNT_B').asfloat*(cdsd.fieldbyname('TPD_CONV1').asinteger *cdsd.fieldbyname('TPD_CONV2').asinteger);
                       end
                       else
                       begin  //lib.msgbox(' 2 dqty :'+FloatToStr(dqty));
                           cdsd.FieldByName('TPD_EKOR_B').asstring := fmain.scds_cari1.fieldbyname('MPH_EKOR_B').asstring;
                           cdsd.FieldByName('TPD_QTY_B').asfloat := iqty*fmain.scds_cari1.fieldbyname('MPH_QTY_B').asfloat;
                           cdsd.FieldByName('TPD_AMOUNT_B').asfloat := fmain.scds_cari1.fieldbyname('MPH_AMOUNT_B').asfloat;
                       end;
                     end;
                 1 : begin //lib.msgbox('ekor 1 ');
                       if (ibns mod (cdsd.fieldbyname('TPD_CONV2').asinteger /cdsd.fieldbyname('TPD_CONV1').asinteger))=0 then
                       begin // lib.msgbox(' 0 dqty :'+FloatToStr(dqty));
                           cdsd.FieldByName('TPD_MP_SKU_B').asstring := fmain.scds_cari1.fieldbyname('MPH_MP_SKU_B').asstring;
                           cdsd.FieldByName('TPD_EKOR_B').asstring := '1';
                           cdsd.FieldByName('TPD_QTY_B').asinteger :=  round(ibns/ (cdsd.fieldbyname('TPD_CONV2').asinteger/cdsd.fieldbyname('TPD_CONV1').asinteger))  ;//1; //round(ibns/(cdsd.fieldbyname('TPD_CONV2').asinteger /cdsd.fieldbyname('TPD_CONV1').asinteger));
                           cdsd.FieldByName('TPD_AMOUNT_B').asfloat := fmain.scds_cari1.fieldbyname('MPH_AMOUNT_B').asfloat*(cdsd.fieldbyname('TPD_CONV1').asinteger *cdsd.fieldbyname('TPD_CONV2').asinteger);
                       //lib.msgbox(cdsd.FieldByName('TPD_QTY_B').asinteger);

                       end
                       else
                       begin
                           cdsd.FieldByName('TPD_EKOR_B').asstring := fmain.scds_cari1.fieldbyname('MPH_EKOR_B').asstring;
                           cdsd.FieldByName('TPD_QTY_B').asfloat := iqty*fmain.scds_cari1.fieldbyname('MPH_QTY_B').asfloat;
                           cdsd.FieldByName('TPD_AMOUNT_B').asfloat := fmain.scds_cari1.fieldbyname('MPH_AMOUNT_B').asfloat;
                       end;
                     end;
                 2 : begin //lib.msgbox('ekor 2 ');
                       cdsd.FieldByName('TPD_QTY_B').asfloat := iqty*fmain.scds_cari1.fieldbyname('MPH_QTY_B').asfloat;
                       cdsd.FieldByName('TPD_AMOUNT_B').asfloat := fmain.scds_cari1.fieldbyname('MPH_AMOUNT_B').asfloat;
                     end;
                 end;
                 if (ibns mod (cdsd.fieldbyname('TPD_CONV2').asinteger))=0 then
                 begin
                //   lib.msgbox('dudul 17');
                //    cdsd.FieldByName('TPD_MP_SKU_B').asstring := fmain.scds_cari1.fieldbyname('MPH_MP_SKU_B').asstring;
                //    cdsd.FieldByName('TPD_EKOR_B').asstring := fmain.scds_cari1.fieldbyname('MPH_EKOR_B').asstring;
                //    cdsd.FieldByName('ic_plu_b').asstring := concat(fmain.scds_cari1.fieldbyname('MPH_MP_SKU_B').asstring,fmain.scds_cari1.fieldbyname('MPH_EKOR_B').asstring);
                //    cdsd.FieldByName('TPD_QTY_B').asfloat := trunc(ibns / cdsd.fieldbyname('TPD_CONV2').asinteger);
                //    cdsd.FieldByName('TPD_AMOUNT_B').asfloat := cdsd.fieldbyname('TPD_CONV2').asinteger*fmain.scds_cari1.fieldbyname('MPH_AMOUNT_B').asfloat;
                 end
                 else
                 if (ibns mod (cdsd.fieldbyname('TPD_CONV2').asinteger/cdsd.fieldbyname('TPD_CONV1').asinteger))=0 then
                 begin
                   //lib.msgbox('ngaco kali ah');
                 end
                 else
                 begin
                    cdsd.FieldByName('TPD_QTY_B').asfloat := iqty*fmain.scds_cari1.fieldbyname('MPH_QTY_B').asfloat;
                    cdsd.FieldByName('TPD_AMOUNT_B').asfloat := fmain.scds_cari1.fieldbyname('MPH_AMOUNT_B').asfloat;
                 end;
              end
           else

           if (damount >= fmain.scds_cari1.fieldbyname('MPH_MIN_RP_B').asfloat) and (fmain.scds_cari1.fieldbyname('MPH_MIN_RP_B').asfloat > 0) then
              begin               //
                 iqty:= trunc(damount / fmain.scds_cari1.fieldbyname('MPH_MIN_RP_B').asfloat);
                 cdsd.FieldByName('TPD_QTY_B').asfloat := iqty*fmain.scds_cari1.fieldbyname('MPH_QTY_B').asfloat;
                 cdsd.FieldByName('TPD_AMOUNT_B').asfloat := iqty*  fmain.scds_cari1.fieldbyname('MPH_AMOUNT_B').asfloat;
              end
       end
       else

       if (dqty >= fmain.scds_cari1.fieldbyname('MPH_MIN_Q_B').asfloat) and
       (fmain.scds_cari1.fieldbyname('MPH_MIN_Q_B').asfloat > 0) then
       begin
          cdsd.FieldByName('TPD_MP_SKU_B').asfloat := 0;
          cdsd.FieldByName('TPD_EKOR_B').asfloat := 0;
          cdsd.FieldByName('TPD_DESCP_B').asstring := '';
          cdsd.FieldByName('TPD_AMOUNT_B').asfloat := 0;
          cdsd.FieldByName('TPD_QTY_B').asfloat := 0;
       end
   end
   else
   begin
       cdsd.FieldByName('TPD_MP_SKU_B').asfloat := 0;
       cdsd.FieldByName('TPD_EKOR_B').asfloat := 0;
       cdsd.FieldByName('TPD_DESCP_B').asstring := '';
       cdsd.FieldByName('TPD_AMOUNT_B').asfloat := 0;
       cdsd.FieldByName('TPD_QTY_B').asfloat := 0;
   end;

if cdsd.FieldByName('TPD_QTY_B').asfloat <> 0 then
begin
        if g_debug then
        writeln(f,'x9: '+'Select MP_SKU, MP_DESCP, MP_BARCODE, MP_SAT,MP_ST_CURAH from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                  'MP_SKU='+quotedstr(cdsd.fieldbyname('TPD_MP_SKU').asstring)+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U') +')');
        if g_debug then flush(f);
        fmain.cari4('Select MP_SKU, MP_DESCP, MP_BARCODE, MP_SAT,MP_ST_CURAH from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                  'MP_SKU='+quotedstr(cdsd.fieldbyname('TPD_MP_SKU').asstring)+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U') +')');
        if fmain.scds_cari4.IsEmpty then
        begin
            lib.msgbox('Data Produk dengan SKU ='+quotedstr(cdsd.fieldbyname('TPD_MP_SKU').asstring)+' tidak terdaftar / status tidak boleh order');
            if pbonus.visible then
            begin
                dbedit7.setfocus;
                abort;
            end;
        end;

    if  cdsd.FieldByName('TPD_EKOR_B').asstring='0' then
        cdsd.FieldByName('TPD_DESCP_B').asstring := fmain.scds_cari4.FieldByName('MP_DESCP').asstring+';'+
        ifthen(copy(fmain.scds_cari4.fieldbyname('MP_SAT').asstring,1,3)<>'',copy(fmain.scds_cari4.fieldbyname('MP_SAT').asstring,1,3),'DUS')
        else
        if  cdsd.FieldByName('TPD_EKOR_B').asstring='1' then
        cdsd.FieldByName('TPD_DESCP_B').asstring := fmain.scds_cari4.FieldByName('MP_DESCP').asstring+';'+
        ifthen(copy(fmain.scds_cari4.fieldbyname('MP_SAT').asstring,4,3)<>'',copy(fmain.scds_cari4.fieldbyname('MP_SAT').asstring,4,3),'PAK')
        else
        if  cdsd.FieldByName('TPD_EKOR_B').asstring='2' then
        cdsd.FieldByName('TPD_DESCP_B').asstring := fmain.scds_cari4.FieldByName('MP_DESCP').asstring+';'+
        ifthen(copy(fmain.scds_cari4.fieldbyname('MP_SAT').asstring,7,3)<>'',copy(fmain.scds_cari4.fieldbyname('MP_SAT').asstring,7,3),'PCS');
end;

end;

procedure Torder.tampiltop;
var stop:string;
begin
   stop:='Tidak terdaftar';
   fmain.cari6('select MTP_NAMA from ms.M_TOP where MTP_KODE = '+quotedstr(cds.FieldByName('TPH_MTP_KODE').asstring));
   if (not fmain.scds_cari6.IsEmpty) and
      (trim(fmain.scds_cari6.fieldbyname('MTP_NAMA').asstring)<>'') then
     stop := fmain.scds_cari6.fieldbyname('MTP_NAMA').asstring;
   edit1.Text := cds.FieldByName('TPH_MTP_KODE').asstring+' - '+stop;
end;

procedure Torder.dbevendorExit(Sender: TObject);
begin
//  if me_nomor.ReadOnly then exit;
  if trim(stringreplace(dbevendor.Text,'.','',[rfReplaceAll]))='' then
  begin
      //lib.msgbox('masuk sini pak eko 1');
      me_nomor.Enabled:=true;
      me_nomor.readonly:=false;

      me_nomor.color:=$00ECFFA7;
      me_nomor.tabstop:=true;
      me_nomor.Clear;

      me_nomor.SetFocus;
      abort;
  end;

  fmain.cari6('select MV_NAMA, MV_ST_PKP, MV_ST_PRI, MV_MTP_KODE, MV_ALM1, '+
               ' MV_KOTA,MV_KD_POS,MV_TELP1, MV_FAX, MV_C_NAMA,MVT_MT_KODE_TF  '+
               ' from ms.M_VENDOR,ms.M_VENDOR_TOKO where  MV_KODE=MVT_KODE  '+
       'and MVT_MT_KODE in (select MTG_UU_KODE from ms.M_TOKO_GROUP where MTG_KODE="'+g_uu_group_aktif+'") '+
       ' and MVT_MT_KODE='+quotedstr(ifthen(b_sts_uu= '1',g_uu_code_aktif,g_uu_code_aktif))+
       ' and MV_KODE = '+quotedstr(dbevendor.Text)+
       ' and MV_TY = "A" and MV_TY_TPO<>"Y"');

   if (fmain.scds_cari6.IsEmpty) then
   begin
       lib.msgbox('2 Vendor '+dbevendor.Text+' belum diisi / tidak terdaftar atau tidak aktif !');
       me_nomor.SetFocus;
       me_nomor.readonly:=false;
       me_nomor.color:=$00ECFFA7;
   end;
       if not (fmain.scds_cari6.IsEmpty) then
        begin
              if fmain.scds_cari6.fieldbyname('MV_ST_PKP').asstring = 'Y' then bpkp:= true else bpkp:= false;
              lokasi_ttf:=fmain.scds_cari6.fieldbyname('MVT_MT_KODE_TF').asstring;
              if bpkp then
                  label24.Caption:='PKP'
              else
                  label24.Caption:='NPKP';
        end;

end;

procedure Torder.me_nomorEnter(Sender: TObject);
begin
  SB_Status.Panels.Items[0].Text:='  F2-LOV  F5-Simpan  F12-Hapus F7-Batal F9-Exit';

  fmain.cari1('select * from ms.M_TOKO where MT_KODE="'+me_toko.Text+'"');
  if not (fmain.scds_cari1.IsEmpty) then
  begin
      edit4.Text:= fmain.scds_cari1.fieldbyname('MT_NAMA').asstring;
  end;

end;


procedure Torder.CDSDAfterDelete(DataSet: TDataSet);
begin
   if cdsd.IsEmpty then
   //begin
   sppn:='9';
   //cds.fieldbyname('C_FAKTUR').asfloat  := 0;end;
   //if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
   //cdsdCalcFields(cdsd);
   //cdsCalcFields(cds);
end;

procedure Torder.cb_prnExit(Sender: TObject);
begin
//lib.msgbox('5aa');
cetakpo;
end;

procedure Torder.CDSTPH_DSC_PR1Validate(Sender: TField);
//var dpersen,dnetto,damount,dtotalppn,dtotalppnbm,dNettoFak,dtotal:double;
// konter :integer;
var ske   : string; dnetto,damount,dpersen,  dtotal,dtotalppn,dNettoFak,dTotalPpnBM : double;
begin
//CDSDCalcFields(cdsd);
//CDSCalcFields(cds);



{
if bbaru then exit;
   beditdisc:= true;
   //   lib.msgbox('sini ');
   // itung ulang detail
  if cdsd.FieldByName('a_netto').Value > 0 then
  cds.fieldbyname('TPH_NETTO').asfloat:= cdsd.FieldByName('a_netto').Value;
  //  cds.DisableControls;
  //  cdsd.DisableControls;
        dtotalppn:=0;
        konter:=0;
        cdsd.first;
  //    lib.msgbox('sini 2  TPH_NETTO:'+ FloatToStr(cds.fieldbyname('TPH_NETTO').asfloat));

        dtotal:=cds.fieldbyname('TPH_AMOUNT').asfloat-cds.fieldbyname('TPH_PPN').asfloat-cds.fieldbyname('TPH_PPN_BM').asfloat;
        while not cdsd.eof do
        begin
            dNettoFak   := cdsd.FieldByName('TPD_NETTO').AsFloat * (cdsd.FieldByName('TPD_QTY').AsFloat / cds.FieldByName('TPH_NETTO').AsFloat * dtotal);
            cdsd.edit; //   lib.msgbox('sini 3  TPD_NETTO:'+ FloatToStr(cdsd.fieldbyname('TPD_NETTO').asfloat));
            cdsd.FieldByName('TPD_NETTO2').AsFloat := dNettoFak;
            //   lib.msgbox('sini 4  TPD_NETTO2:'+ FloatToStr(cdsd.fieldbyname('TPD_NETTO2').asfloat));
            cdsd.fieldbyname('ic_plu').Asstring :=concat(cdsd.fieldbyname('TPD_MP_SKU').Asstring ,cdsd.fieldbyname('TPD_EKOR').asstring);
            //   lib.msgbox('sini 5');
            fmain.cari1('Select MP_SKU,MP_PPN , MP_PPN_BM from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                        ' MP_SKU = "'+cdsd.FieldByName('TPD_MP_SKU').asstring+'"'+
                        ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                        );

            if not (fmain.scds_cari1.IsEmpty) then
               begin
                 cdsd.FieldByName('ic_ppn').asstring := fmain.scds_cari1.fieldbyname('MP_PPN').asstring;
                 cdsd.FieldByName('ic_ppn_bm').asstring := fmain.scds_cari1.fieldbyname('MP_PPN_BM').asstring;
               end; //   lib.msgbox('sini 6');

            if bpkp and (cdsd.FieldByName('ic_ppn').Asstring = '1') then
               cdsd.FieldByName('TPD_PPN').AsFloat := cdsd.FieldByName('TPD_NETTO2').AsFloat * (dppn / 100)
            else
               cdsd.FieldByName('TPD_PPN').AsFloat := 0;
            //lib.msgbox('sini 7  TPD_NETTO:'+ FloatToStr(cdsd.fieldbyname('TPD_PPN').asfloat));
            dTotalPPN   := dTotalPPN   + (cdsd.FieldByName('TPD_PPN').AsFloat  * cdsd.FieldByName('TPD_QTY').AsFloat);
            dTotalPPnBM := dTotalPPnBM + (cdsd.FieldByName('TPD_PPN_BM').AsFloat * cdsd.FieldByName('TPD_QTY').AsFloat);
            lib.msgbox('sini 8  dTotalPPN:'+ FloatToStr(dTotalPPN));
            cdsd.next;
       end;
       lib.msgbox('sini 9');
       cds.fieldbyname('TPH_AMOUNT').asfloat:= dtotal+dtotalppn+dtotalppnbm;
       cds.fieldbyname('TPH_PPN').AsFloat := dtotalppn;
       cds.fieldbyname('TPH_PPN_BM').AsFloat := dtotalppnbm;
       if cds.fieldbyname('TPH_DSC_PR1').AsFloat > 0 then
       begin
          //lib.msgbox('sini 10');
          //lib.msgbox('sini 10a  C_PPN:'+ FloatToStr(cds.fieldbyname('C_PPN').AsFloat));
          //lib.msgbox('sini 10b  C_PPN:'+ FloatToStr(cds.fieldbyname('C_PPN').AsFloat * ( 1 - (cds.fieldbyname('TPH_DSC_PR1').AsFloat/100 ))));
          cds.fieldbyname('C_PPN').AsFloat := cds.fieldbyname('C_PPN').AsFloat * ( 1 - (cds.fieldbyname('TPH_DSC_PR1').AsFloat/100 ));
          //lib.msgbox('sini 10c  C_PPN:'+ FloatToStr(cds.fieldbyname('C_PPN').AsFloat));
          cds.fieldbyname('C_PPN_BM').AsFloat := cds.fieldbyname('C_PPN_BM').AsFloat * ( 1 - (cds.fieldbyname('TPH_DSC_PR1').AsFloat/100 ));
          damount := damount * ( 1 - (cds.fieldbyname('TPH_DSC_PR1').AsFloat/100 ));
          //lib.msgbox('sini 10c  C_PPN:'+ FloatToStr(cds.fieldbyname('C_PPN').AsFloat));
          //lib.msgbox('sini 10d  damount:'+ FloatToStr(damount));
       end
       else
       begin
          //lib.msgbox('sini 11');
          if cds.fieldbyname('TPH_DSC_RP1').AsFloat > 0 then
          begin
             dPersen := cds.fieldbyname('TPH_DSC_RP1').AsFloat / dnetto;
             cds.fieldbyname('C_PPN').AsFloat := cds.fieldbyname('TPH_PPN').AsFloat * ( 1 - dPersen);
             cds.fieldbyname('C_PPN_BM').AsFloat := cds.fieldbyname('TPH_PPN_BM').AsFloat * ( 1 - dPersen);
             damount := damount - cds.fieldbyname('TPH_DSC_RP1').AsFloat;
             //lib.msgbox('sini 11  damount:'+ FloatToStr(damount));
          end
       end;

       lib.msgbox('sini 12  damount:'+ FloatToStr(damount));

       if cds.fieldbyname('TPH_DSC_PR2').AsFloat > 0 then
       begin

          cds.fieldbyname('C_PPN').AsFloat := cds.fieldbyname('TPH_PPN').AsFloat * ( 1 - (cds.fieldbyname('TPH_DSC_PR2').AsFloat/100 ));
          cds.fieldbyname('C_PPN_BM').AsFloat := cds.fieldbyname('TPH_PPN_BM').AsFloat * ( 1 - (cds.fieldbyname('TPH_DSC_PR2').AsFloat/100 ));
          damount := damount * ( 1 - (cds.fieldbyname('TPH_DSC_PR2').AsFloat/100 ));

          //   lib.msgbox('sini 13a  dPersen:'+ FloatToStr(dPersen));
          //   lib.msgbox('sini 13a  C_PPN : '+FloatToStr(cds.fieldbyname('C_PPN').AsFloat+ cds.fieldbyname('C_PPN').AsFloat));

          //lib.msgbox('sini 13  damount:'+ FloatToStr(damount));

       end
       else
       begin
          //lib.msgbox('sini 14');

          if cds.fieldbyname('TPH_DSC_RP2').AsFloat > 0 then
          begin
             dPersen := cds.fieldbyname('TPH_DSC_RP2').AsFloat / dAmount;  // pwk
             cds.fieldbyname('C_PPN').AsFloat := cds.fieldbyname('TPH_PPN').AsFloat * ( 1 - dPersen);
             cds.fieldbyname('C_PPN_BM').AsFloat := cds.fieldbyname('TPH_PPN_BM').AsFloat * ( 1 - dPersen);
             damount := damount - cds.fieldbyname('TPH_DSC_RP2').AsFloat;

             //lib.msgbox('sini 14a  dPersen:'+ FloatToStr(dPersen));
             //lib.msgbox('sini 14a c_PPN '+FloatToStr(cds.fieldbyname('C_PPN').AsFloat));
             //lib.msgbox('sini 14  damount:'+ FloatToStr(damount));

          end
       end;
       //   lib.msgbox('sini 15');
       //   lib.msgbox('sini 15  damount:'+ FloatToStr(damount));
       //



       cds.fieldbyname('C_FAKTUR').asfloat  := damount +  cds.fieldbyname('C_PPN').AsFloat
                                                   +  cds.fieldbyname('C_PPN_BM').AsFloat;

}

//lib.msgbox(dTotalPPN);
//  cds.EnableControls;
//  cdsd.EnableControls;

//   beditdisc:=false;

{
var ske   : string;
begin
    if bambil then exit;
}
    if sender.asfloat > 0 then
    begin
        ske := rightstr(uppercase(Sender.FieldName),1);
        if (Sender.AsFloat<-99.99) or (Sender.AsFloat>100) then
        begin
          lib.msgbox('Diskon Faktur Persen ke '+ske+' yang anda inputkan salah');
          abort;
        end;
        CDS.FieldByName('TPH_DSC_RP'+ske).AsFloat:= 0;
    end;
//end;



end;

procedure Torder.CDSDAfterScroll(DataSet: TDataSet);
var pjgbar : integer;
    iekor,isku : string;  //integer;
    damount,tqty : double;

begin
exit;
if x_Simpan then exit;
//lib.msgbox('sini');
pjgbar:=length(trim(cdsd.fieldbyname('TPD_BARCODE').asstring));
dbe_barcode.Text:= cdsd.fieldbyname('TPD_BARCODE').asstring;
Image1.AutoSize:= false;
Image1.Stretch:=true;
if pjgbar>9 then
begin
  //  lib.msgbox('sini 21aaaa2');

  Image1.Visible:=true;
//  if FileExists('/home/fotos/ORIGINAL/'+trim(leftstr(dbe_barcode.Text,pjgbar-1))+'.jpg') then
//  lib.msgbox('/home/fotos/ORIGINAL/'+trim(leftstr(dbe_barcode.Text,pjgbar-1))+'.jpg ada');
{  if FileExists('/home/fotos/'+trim(leftstr(dbe_barcode.Text,pjgbar-1))+'.jpg')
  then
     Image1.Picture.LoadFromFile('/home/fotos/'+trim(leftstr(dbe_barcode.Text,pjgbar-1))+'.jpg')
  else
  if FileExists('/home/fotos/'+trim(dbe_barcode.Text)+'.jpg')
  then
     Image1.Picture.LoadFromFile('/home/fotos/'+trim(dbe_barcode.Text)+'.jpg')
  else
}
  if FileExists('/home/fotos/'+trim(dbe_barcode.Text)+'.jpg')
  then
     begin
     Image1.Picture.LoadFromFile('/home/fotos/'+trim(dbe_barcode.Text)+'.jpg');
     end
  else
  if FileExists('/home/fotos/'+trim(leftstr(dbe_barcode.Text,pjgbar-1))+'.jpg')
  then
     begin
     Image1.Picture.LoadFromFile('/home/fotos/'+trim(leftstr(dbe_barcode.Text,pjgbar-1))+'.jpg');
     end
  else

  begin
     Image1.Visible:=false;
  end;
end
else
   if x_Simpan then exit;

   //cds.DisableControls;



   // lib.msgbox('sini 12aaaa2');

   Image1.Visible:=false;
   //if x_Simpan then exit;

   isku := cdsd.FieldByName('TPD_MP_SKU').asstring; // integer ;
   fmain.cari3('Select MP_SKU, MP_BARCODE, MP_DESCP, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES,MP_ST_CURAH, MP_REVIEW_CYCLE,'+
                  ' MP_MIN_STOCK,MP_MAX_STOCK,MP_ON_ORDER,MP_GIT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                  ' MP_SKU = '+quotedstr(isku)+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );

     //  if g_debug then writeln(f,'cdsdafscroll: '+ g_lov_stm);
     //  if g_debug then flush(f);

       if not fmain.scds_cari3.IsEmpty then
       begin
//       lib.msgbox('readonly 22' );
       if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
       cdsd.FieldByName('ic_curah').asstring := fmain.scds_cari3.fieldbyname('MP_ST_CURAH').asstring;
       cdsd.FieldByName('ic_minor').asfloat := fmain.scds_cari3.fieldbyname('MP_MINOR').asfloat;
       cdsd.FieldByName('ic_ppn').asstring := fmain.scds_cari3.fieldbyname('MP_PPN').asstring;
       cdsd.FieldByName('ic_ppn_bm').asstring := fmain.scds_cari3.fieldbyname('MP_PPN_BM').asstring;

       cdsd.FieldByName('ic_on_hand').asfloat := fmain.scds_cari3.fieldbyname('MP_STOCK').asfloat;
//     cdsd.FieldByName('ic_last_cost').asfloat := fmain.scds_cari3.fieldbyname('MP_LAST_COST').asfloat;
//     cdsd.FieldByName('ic_avg_cost').asfloat := fmain.scds_cari3.fieldbyname('MP_AVG_COST').asfloat;
       cdsd.FieldByName('ic_avg_sales').asfloat := fmain.scds_cari3.fieldbyname('MP_AVG_SALES').asfloat;
       cdsd.FieldByName('ic_review').asstring := fmain.scds_cari3.fieldbyname('MP_REVIEW_CYCLE').asstring;

       cdsd.FieldByName('ic_min_stock').asfloat := fmain.scds_cari3.fieldbyname('MP_MIN_STOCK').asfloat;
       cdsd.FieldByName('ic_max_stock').asfloat := fmain.scds_cari3.fieldbyname('MP_MAX_STOCK').asfloat;
       cdsd.FieldByName('ic_on_order').asfloat := fmain.scds_cari3.fieldbyname('MP_ON_ORDER').asfloat;
       cdsd.FieldByName('ic_git').asfloat := fmain.scds_cari3.fieldbyname('MP_GIT').asfloat;
       cdsd.FieldByName('ic_promo').asfloat := 0;
       cdsd.FieldByName('ic_service_level').asfloat := 0;
       cdsd.FieldByName('ic_lead_time').asfloat :=cds.fieldbyname('ic_leadtime').AsInteger   ;
       //cds.fieldbyname('TPH_DATE_TIBA').Asdatetime-cds.fieldbyname('TPH_DATE').Asdatetime;

      //     lib.msgbox('sini aaaa212');

       damount := fmain.scds_cari3.fieldbyname('MP_AVG_COST').asfloat;
       case cdsd.FieldByName('TPD_EKOR').asinteger of
           0 : cdsd.fieldbyname('ic_avg_cost').AsFloat    := damount * cdsd.fieldbyname('TPD_CONV2').asinteger;
           1 : cdsd.fieldbyname('ic_avg_cost').AsFloat    := damount * (cdsd.fieldbyname('TPD_CONV2').asinteger/cdsd.fieldbyname('TPD_CONV1').asinteger);
           2 : cdsD.fieldbyname('ic_avg_cost').AsFloat    := damount;
       end;
//    lib.msgbox('sini aaaa213');

       damount := fmain.scds_cari3.fieldbyname('MP_LAST_COST').asfloat;
       case cdsd.FieldByName('TPD_EKOR').asinteger of
           0 : cdsd.fieldbyname('ic_last_cost').AsFloat    := damount * cdsd.fieldbyname('TPD_CONV2').asinteger;
           1 : cdsd.fieldbyname('ic_last_cost').AsFloat    := damount * (cdsd.fieldbyname('TPD_CONV2').asinteger/cdsd.fieldbyname('TPD_CONV1').asinteger);
           2 : cdsD.fieldbyname('ic_last_cost').AsFloat    := damount;
       end;
       end;

       //cds.EnableControls;

//           lib.msgbox('sini aaaa215');


       isku := cdsd.FieldByName('TPD_MP_SKU').asstring; // integer ;
       if isku>'0' then
     begin
//        lib.msgbox(cdsd.FieldByName('TPD_MP_SKU').asinteger );
{
 lib.msgbox('Select MPG_HEIGHT, MPG_WIDTH, MPG_DEPTH, MPG_WEIGHT, '+
                  ' MPG_HEIGHT_PER_FIB, MPG_WIDTH_PER_FIB, MPG_DEPTH_PER_FIB, MPG_WEIGHT_PER_FIB '+
                  ' from ms.M_PRODUK_NAS where MPG_MT_KODE = '+quotedstr(g_uu_group_aktif)+ ' AND '+
                  ' MPG_SKU = '+quotedstr(isku));
}

       fmain.cari3('Select MPG_HEIGHT, MPG_WIDTH, MPG_DEPTH, MPG_WEIGHT, '+
                  ' MPG_HEIGHT_PER_FIB, MPG_WIDTH_PER_FIB, MPG_DEPTH_PER_FIB, MPG_WEIGHT_PER_FIB '+
                  ' from ms.M_PRODUK_NAS where MPG_MT_KODE = '+quotedstr(g_uu_group_aktif)+ ' AND '+
                  ' MPG_SKU = '+quotedstr(isku));

       if not fmain.scds_cari3.IsEmpty then
       begin
       //sinidink
//           lib.msgbox('sini aaaa217');
//      lib.msgbox('readonly 24' );
       if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
//          cdsd.FieldByName('ic_volume').AsFloat :=  ((fmain.scds_cari3.fieldbyname('MPG_HEIGHT_PER_FIB').AsFloat*fmain.scds_cari3.fieldbyname('MPG_WIDTH_PER_FIB').AsFloat*fmain.scds_cari3.fieldbyname('MPG_DEPTH_PER_FIB').AsFloat)/cdsd.FieldByName('TPD_CONV2').AsFloat)   /1000000 ;

//    lib.msgbox('sini aaaa218');

//        lib.msgbox(cdsd.FieldByName('TPD_CONV2').asinteger);
//        lib.msgbox(fmain.scds_cari3.fieldbyname('MPG_WEIGHT_PER_FIB').AsFloat);
//        lib.msgbox(cdsd.FieldByName('ic_berat').AsFloat);


          cdsd.FieldByName('ic_berat').AsFloat :=  (fmain.scds_cari3.fieldbyname('MPG_WEIGHT_PER_FIB').AsFloat/cdsd.FieldByName('TPD_CONV2').asinteger);
//              lib.msgbox('sini aaaa219');
//    lib.msgbox('sini aaaa219');
    end;
          case cdsd.FieldByName('TPD_EKOR').asinteger of
           0 : tqty := cdsd.FieldByName('TPD_QTY').AsFloat * cdsd.fieldbyname('TPD_CONV2').asinteger;
           1 : tqty := cdsd.fieldbyname('TPD_QTY').AsFloat * (cdsd.fieldbyname('TPD_CONV2').asinteger/cdsd.fieldbyname('TPD_CONV1').asinteger);
           2 : tqty := cdsd.fieldbyname('TPD_QTY').AsFloat;
          end;

   if cdsd.FieldByName('TPD_QTY').AsFloat >0 then
   begin

          cdsd.FieldByName('ic_volume').AsFloat :=  (((fmain.scds_cari3.fieldbyname('MPG_HEIGHT_PER_FIB').AsFloat*fmain.scds_cari3.fieldbyname('MPG_WIDTH_PER_FIB').AsFloat*fmain.scds_cari3.fieldbyname('MPG_DEPTH_PER_FIB').AsFloat) /1000000)/ cdsd.fieldbyname('TPD_CONV2').asinteger * tqty)  ;
          cdsd.FieldByName('TPD_VOLUME').AsFloat := cdsd.FieldByName('ic_volume').AsFloat; // * dqty; //cdsd.FieldByName('TPD_QTY').AsFloat ;


//          cdsd.FieldByName('ic_volume').AsFloat :=  (((fmain.scds_cari3.fieldbyname('MPG_HEIGHT_PER_FIB').AsFloat*fmain.scds_cari3.fieldbyname('MPG_WIDTH_PER_FIB').AsFloat*fmain.scds_cari3.fieldbyname('MPG_DEPTH_PER_FIB').AsFloat) /1000000)/ cdsd.fieldbyname('TPD_CONV2').asinteger * dqty)  ;
//          cdsd.FieldByName('TPD_VOLUME').AsFloat := cdsd.FieldByName('ic_volume').AsFloat; // * dqty; //cdsd.FieldByName('TPD_QTY').AsFloat ;

//          cdsd.FieldByName('TPD_VOLUME').AsFloat := cdsd.FieldByName('ic_volume').AsFloat * tqty; //cdsd.FieldByName('TPD_QTY').AsFloat ;
          cdsd.FieldByName('TPD_BERAT').AsFloat := cdsd.FieldByName('ic_berat').AsFloat * tqty; //cdsd.FieldByName('TPD_QTY').AsFloat ;

          cdsd.FieldByName('TPD_BIAYA_KUBIKASI').AsFloat := 0; //cdsd.FieldByName('TPD_QTY').AsFloat *fmain.scds_cari3.fieldbyname('MPG_BIAYA_KUBIKASI').AsFloat;
   end;
       end;


end;

procedure Torder.Image1DblClick(Sender: TObject);
var pjgbar : integer;
begin
panel5.Show;
pjgbar:=length(trim(cdsd.fieldbyname('TPD_BARCODE').asstring));
image2.Visible:=true;
Image2.BringToFront;
Image2.AutoSize:=true;
Image2.Center:=true;
image2.Stretch:=true;
  if FileExists('/home/fotos/ORIGINAL/'+trim(leftstr(dbe_barcode.Text,pjgbar-1))+'.jpg') then
     Image2.Picture.LoadFromFile('/home/fotos/ORIGINAL/'+trim(leftstr(dbe_barcode.Text,pjgbar-1))+'.jpg')
  else
{
     if FileExists('/home/fotos/'+trim(leftstr(dbe_barcode.Text,pjgbar-1))+'.jpg') then
        Image2.Picture.LoadFromFile('/home/fotos/'+trim(leftstr(dbe_barcode.Text,pjgbar-1))+'.jpg')
     else
        if FileExists('/home/fotos/'+trim(dbe_barcode.Text)+'.jpg') then
           Image2.Picture.LoadFromFile('/home/fotos/'+trim(dbe_barcode.Text)+'.jpg')
        else
}
  if FileExists('/home/fotos/'+trim(dbe_barcode.Text)+'.jpg')
  then
     begin
     Image2.Picture.LoadFromFile('/home/fotos/'+trim(dbe_barcode.Text)+'.jpg');
     end
  else
  if FileExists('/home/fotos/'+trim(leftstr(dbe_barcode.Text,pjgbar-1))+'.jpg')
  then
     begin
     Image2.Picture.LoadFromFile('/home/fotos/'+trim(leftstr(dbe_barcode.Text,pjgbar-1))+'.jpg');
     end
  else

           begin
             Image2.Visible:=false;
           end;
end;

procedure Torder.Image2DblClick(Sender: TObject);
begin
  panel5.Hide;
  dbg.SetFocus;
end;

procedure Torder.FormCreate(Sender: TObject);
begin
  Icon.LoadFromFile('/usr/share/icons/bocis.ico');
  xbaris:=1; //0
  boleheditpo:=false;

 g_workdir:='/home/bocis/'+g_uu_code_aktif;
 if not DirectoryExists(g_workdir) then
 LibC.system(PChar('mkdir -p '+g_workdir));

 g_workdir:='/home/bocis/'+g_uu_code_aktif+'/PO';
 if not DirectoryExists(g_workdir) then
 LibC.system(PChar('mkdir -p '+g_workdir));


 Width :=990;
 Height:=600;
  C_db.Close;
  C_db.Server   := g_conn_2;
  C_db.open;


 WindowState := wsNormal;

 if b_sts_uu='1' then
   begin
     if g_code_form='T1' then
     begin
//        Edit2.Text     :=g_initp;
        panel7.Hide;
     end
     else if g_code_form='T1_1' then
     begin
        panel7.show;
     end;
   end
 else
   begin
     Panel7.Hide;
     fmain.setting_koneksi(C_DB,'tr');
     c_db.ExecSQL('CALL ms.P_INIT("'+g_me_nik+'",'+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+') ', [null]) ;
   end ;

  insert_harga_beli:=false;
  fmain.setting_koneksi(C_DB,'tr');
  tibanhargapo:=false;
  fmain.cari1('select MS_SETTING1 from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and   MS_KODE = "2009"');
  if fmain.SCDS_Cari1.IsEmpty then
     c_db.ExecSQL('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values("'+g_uu_code_aktif+'","2009","N","TIBAN HARGA DI PO","-","0")',[null])
  else
     //tibanhargapo := fmain.scds_cari1.fieldbyname('MS_SETTING1').AsBoolean;
     if pos('Y',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)) > 0 then tibanhargapo := true;

  inputhjual:= false;
  fmain.cari1('select * from ms.M_SETTING where MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE="2029" ');
  if fmain.scds_cari1.isempty then
     fmain.C_DB.execsql('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values ("'+g_uu_code_aktif+'","2029","N","MODUL PO ADA PROSES INPUT HARGA JUAL","",0)',[null])
  else
  if pos('Y',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)) > 0 then  inputhjual := true;

  multisku:=false;
  fmain.cari1('select MS_SETTING1 from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and   MS_KODE = "2065"');
  if fmain.SCDS_Cari1.IsEmpty then
     C_DB.execsql('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values ("'+g_uu_code_aktif+'","2065","N","SET SKU PANJANG","N  tidak,   Y  SKU panjang",0)',[null])
  else
  if pos('Y',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)) > 0 then  multisku := true;



  g_multistore:=false;
  fmain.cari1('select MS_SETTING1 from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and   MS_KODE = "2027"');
  if fmain.SCDS_Cari1.IsEmpty then
     C_DB.execsql('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values ("'+g_uu_code_aktif+'","2027","N","SET MULTI STORE","N  tidak,   Y  multi store",0)',[null])
  else

  if pos('Y',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)) > 0 then
    g_multistore := true;





     g_eceran2pak:=false;
     fmain.cari1('select MS_SETTING1 from ms.M_SETTING where MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE="1019" ');
     if fmain.SCDS_Cari1.IsEmpty then
     C_DB.execsql('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                 'values("'+g_uu_code_aktif+'","1019","N","KASIR ADA FUNGSI HARGA ECERAN KE PAK DG QTY > KONVERSI","Y = ya,  N tidak",0)',[null]);

     if not (fmain.SCDS_Cari1.IsEmpty)  then
        if pos('Y',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)) > 0 then

           g_eceran2pak:=true
        Else
           g_eceran2pak:=false;




  tibanproforma:=false;
  fmain.cari1('select MS_SETTING1 from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and   MS_KODE = "2007"');
  if fmain.SCDS_Cari1.IsEmpty then
     c_db.ExecSQL('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values("'+g_uu_code_aktif+'","2007","False","TIBAN HARGA PRO-RETUR","-","0")',[null])
  else
  if pos('T',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)) > 0 then  tibanproforma := true;

  tibanretur :=false;
  fmain.cari1('select MS_SETTING1 from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and   MS_KODE = "2008"');
  if fmain.SCDS_Cari1.IsEmpty then
     c_db.ExecSQL('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values("'+g_uu_code_aktif+'","2008","False","TIBAN HARGA RETUR","-","0")',[null])
  else
  if pos('T',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)) > 0 then tibanretur := true;

  expired_po:=7;
  fmain.cari1('select * from ms.M_SETTING where MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE="2006" ');
  if fmain.scds_cari1.IsEmpty then
    fmain.C_DB.execsql('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                 '       values("'+g_uu_code_aktif+'","2006","10","EXPIRED PO AFTER LITE TIME IN DAYS","",0)',[null])
  else
  expired_po:=fmain.scds_cari1.fieldbyname('MS_SETTING1').AsInteger;

  sethargajualdipo:=false;
 // lib.msgbox(sethargajualdipo);
  fmain.cari1('select MS_SETTING1 from ms.M_SETTING where MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE="2029" ');
  if fmain.scds_cari1.isempty then
  fmain.C_DB.execsql('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
       'values ("'+g_uu_code_aktif+'","2029","N","MODUL PO ADA PROSES INPUT HARGA JUAL","",0)',[null])
  else
  begin
  //lib.msgbox(pos('Y',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)));
  if  pos('Y',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)) <> 0 then sethargajualdipo := true;
  end;

//
  po_proforma:=false;
  fmain.cari1('select MS_SETTING1 from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and   MS_KODE = "2026"');
  if fmain.SCDS_Cari1.IsEmpty then
     C_DB.execsql('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values ("'+g_uu_code_aktif+'","2026","N","ADA FUNGSI PO PROFORMA (PO TANPA HARGA) ","Y / N",0)',[null])
  else
  if pos('Y',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)) > 0 then  po_proforma := true;

  // lib.msgbox(tibanhargapo);

   IF (tibanhargapo) then
   begin
   dbg.Columns[4].ReadOnly:=false;
   dbg.Columns[5].ReadOnly:=false;
   end
   else
   begin
   dbg.Columns[4].ReadOnly:=true;
   dbg.Columns[5].ReadOnly:=true;
   end;
   dbg.Refresh;

   {}
              dbedit11.ReadOnly:=false;
              dbedit12.ReadOnly:=false;
              dbedit13.ReadOnly:=false;
              dbedit14.ReadOnly:=false;
              dbedit15.ReadOnly:=false;
              dbedit16.ReadOnly:=false;
   {}
   //end;


   if not g_debug then
   begin
      dbg.Columns[19].Visible:=false;
      dbg.Columns[20].Visible:=false;
      dbg.Columns[21].Visible:=false;
      dbg.Columns[22].Visible:=false;
      dbg.Columns[23].Visible:=false;
      dbg.Columns[24].Visible:=false;

   end;

  pomultirec :=false;
  fmain.cari1('select * from ms.M_SETTING where MS_MT_KODE="'+g_uu_code_aktif+'" and MS_KODE="2064" ');
  if fmain.scds_cari1.IsEmpty then
    fmain.C_DB.execsql('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                 'values("'+g_uu_code_aktif+'","2064","N","ENABLE PO MULTI REC","Y=ENABLE N=DISABLE",0)',[null])
  else
  if pos('Y',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)) > 0 then pomultirec := true;

  IF  not(pomultirec)  then
  begin
  dbcb_multirec.Checked:=false;
  dbcb_multirec.hide;
  end
  else
  begin
  dbcb_multirec.Checked:=true;
  dbcb_multirec.show;

  end;
     Panel15.Hide;


  tanpainputuu:=false;
  fmain.cari1('select MS_SETTING1 from ms.M_SETTING where  MS_MT_KODE="'+g_uu_code_aktif+'" and   MS_KODE = "2070"');
  if fmain.SCDS_Cari1.IsEmpty then
     c_db.ExecSQL('insert into ms.M_SETTING(MS_MT_KODE,MS_KODE,MS_SETTING1,MS_SETTING2,MS_SETTING3,MS_AMOUNT) '+
                  'values("'+g_uu_code_aktif+'","2070","N","MODUL TANPA INPUT UU","-","0")',[null])
  else
     if pos('Y',UpperCase(fmain.scds_cari1.fieldbyname('MS_SETTING1').AsString)) > 0 then tanpainputuu := true;


//fmain.init_view_tree_hirarki;
x_simpan :=false;
end;


procedure Torder.cetak_list_checker;
var
  ibaris,iCounter : integer;
  procedure cetak_hdr;
  begin
    lib.tulis(lib.cpad(g_uu_nama_aktif,120));
    lib.tulis(lib.cpad(g_uu_alamat_aktif,120));
    lib.tulis('');
    //lib.tulis(cBold+lib.cpad('CHECKER LIST ITEM  ',120)+cNBold);
    lib.tulis(lib.cpad('CHECKER LIST ITEM  ',120));

    lib.tulis('');
    lib.tulis(lib.lpad('Nama Vendor  : ['+cds.fieldbyname('TPH_MV_KODE').AsString+'] '+trim(edvendor.text),75)+
    lib.lpad('Nomor PO : ',11)+lib.lpad(cds.fieldbyname('TPH_MT_KODE').asstring+'-'+cds.fieldbyname('TPH_NO').AsString,23)+formatdatetime('dd-mm-yyyy',g_sysdate_t));
    lib.tulis(lib.lpad('Alamat       : '+alamat_vendor,75));
 //
 //   lib.lpad('No. FPB  : ',11)+lib.lpad(cds.fieldbyname('TPH_NO').AsString,23)+formatdatetime('hh:nn:zz',g_sysdatetime_t));
 //
    lib.tulis(lib.ulang('Í',120));
    lib.tulis(' No.    '+
    lib.lpad('SKU',10)+
              lib.lpad('BARCODE',15)+' '+
              lib.lpad('NAMA BARANG',40)+
              lib.lpad('KONVERSI',10)+' '+
              lib.rpad('QTY TERIMA',12)+' '+
              lib.rpad('NOTE/CATATAN',20)
              );
    lib.tulis(lib.ulang('Í',120));
  end;
  procedure cetak_footer;
  begin
    if ((iCounter mod 45) = 0) and (not cdsd.Eof) then
      cetak_hdr;
    if cdsd.Eof then
    begin
    lib.tulis(lib.ulang('Í',120));
    lib.tulis(lib.cpad('  CHECKER,',19)+lib.cpad(' PENGIRIM/SALES,',19)+lib.cpad(' MENGETAHUI,',19));
    lib.tulis(lib.cpad(' ',19)+lib.cpad(' ',19));
    lib.tulis(lib.cpad(' ',19)+lib.cpad(' ',19));
    lib.tulis(lib.cpad(' ',19)+lib.cpad(' ',19));
    lib.tulis(lib.cpad(' ',19)+lib.cpad(' ',19));
    lib.tulis(lib.cpad('(...............)',19)+lib.cpad('(...............)',19)+lib.cpad('(...............)',19));
    lib.tulis(' ');
    lib.tulis(' ');
    lib.tulis(#12);
    end;
  end;
begin
  g_nama_rpt:=g_workdir+'/LPB_LIST_PO_'+cds.fieldbyname('TPH_NO').AsString+'.rpt';
  lib.tulis('','Y');
  iCounter := 1;
  ibaris:=1;
  cetak_hdr;
  cdsd.First;
  while not cdsd.Eof do
  begin
    lib.tulis(lib.rpad(FormatFloat('###',ibaris),3)+'. '+
              lib.rpad(cdsd.FieldbyName('TPD_MP_SKU').AsString+cdsd.FieldbyName('TPD_EKOR').AsString,10)+'   '+
              lib.lpad(lib.Check_Digit(cdsd.fieldbyname('TPD_BARCODE').asstring),15)+' '+
              lib.lpad(cdsd.FieldbyName('TPD_DESCP').AsString,40)+' '+
              lib.lpad(cdsd.FieldbyName('TPD_CONV1').AsString,3)+'x'+
              lib.cpad(cdsd.FieldbyName('TPD_CONV2').AsString,5));
    inc(ibaris);
    cdsd.Next;
    inc(iCounter);
    cetak_footer;
  end;
end;


procedure Torder.me_tokoExit(Sender: TObject);
begin
  fmain.cari1('select * from ms.M_TOKO where MT_KODE="'+me_toko.Text+'"');
//      edit4.Text:= fmain.scds_cari1.fieldbyname('MT_NAMA').asstring;
//  lib.msgbox('1');
  if not (fmain.scds_cari1.IsEmpty) then
  begin
//  lib.msgbox('2');
      edit4.Text:= fmain.scds_cari1.fieldbyname('MT_NAMA').asstring;

      if fmain.scds_cari1.fieldbyname('MT_MG_KODE').asstring<>g_uu_group_aktif then
      begin
        lib.msgbox('Kode Toko yg anda masukkan bukan cakupan group toko '+g_uu_group_aktif );
        me_toko.SetFocus;
        abort;
      end
      else
      begin
      edit4.Text:= fmain.scds_cari1.fieldbyname('MT_NAMA').asstring;
      c_db.ExecSQL('CALL ms.P_INIT("'+g_me_nik+'",'+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+') ', [null]) ;

      ME_NOMOR.SetFocus;
      end
  end
  else
  begin
//  lib.msgbox('3');
    edit4.Text:='';
    me_toko.SetFocus;
  end;

end;
{
procedure Torder.Button3Click(Sender: TObject);
begin
 if lib.y_n('Pilih Nomor BPB ingin diteruskan ?') <> 'Y' then exit ;
 bpb;
  P_form.visible := true;
  dbg.Enabled := false;
  dbg_form.setfocus;
end;
}
{
procedure Torder.bpb;
var sData:string;
begin
  cds_form.active := false;
  scds_form.sql.Text:= 'select TPOH_NO, TPOH_DATE from tr.T_PTO_HDR where TPOH_CID="'+cid +'" and TPOH_PID="'+pid  +'" ORDER BY TPOH_NO';

//  lib.msgbox('select MF_KODE, MF_NAMA from ms.M_FORM where MF_TY>"1" ORDER BY MF_KODE' );

  cds_form.active := true;
  cds_form.first;
  while not cds_form.eof do
  begin

    cds_form.edit;
    if sData='ALL' then
       cds_form.fieldbyname('IC_CEK').asstring:='V'
    else if pos('('+trim(cds_form.fieldbyname('TPOH_NO').asstring)+')',sData)>0 then
       cds_form.fieldbyname('IC_CEK').asstring:='V'
    else cds_form.fieldbyname('IC_CEK').asstring:='X';
    cds_form.Next;
  end;
  cds_form.first;
end;
}
{
procedure Torder.B_OkClick(Sender: TObject);
var isi_bpb,cari_no : string;
begin
   with cds_form do
   begin
   DisableControls;
   First;
   isi_bpb :='';
   cari_no :='';
       while not eof do
       begin
           if cds_form.FieldByName('ic_cek').AsString = 'V' then
           begin
           isi_bpb := concat(isi_bpb,':'+cds_form.FieldByName('TPOH_NO').AsString);
           end;
           next;
       end;
       isi_bpb := concat(isi_bpb,':');
       cari_no := midstr(isi_bpb,2,length(isi_bpb)-2);

//       lib.msgbox( isi_bpb);
//       lib.msgbox( cari_no);
   EnableControls;
   end;

//   if (pid<>'') and (cid<>'') then
 //  begin
 //  if (cds.state<>dsinsert) and (cds.state<>dsedit) then cds.edit;
 //  cds.fieldbyname('TPH_BPB_NO').asstring := trim(isi_bpb);
 //  label36.Caption:= trim(isi_bpb);
 //  end;

   dbg.Enabled := true;
   dbg.SetFocus;
   P_Form.visible := false;
end;
}
procedure Torder.B_CancelClick(Sender: TObject);
begin
  dbg.Enabled := true;
  P_Form.visible := false;
end;

//procedure Torder.DBG_FormKeyDown(Sender: TObject; var Key: Word;
//  Shift: TShiftState);
//begin
//  if (sender = dbg_form) and (key = key_space) then
//  begin
//  //  cds_form.edit;
//  //  if cds_form.fieldbyname('IC_CEK').asstring = 'V' then cds_form.fieldbyname('IC_CEK').asstring := 'X' else cds_form.fieldbyname('IC_CEK').asstring := 'V';
//  end;

//end;


procedure Torder.TekanF4(Sender:TObject);
var carino : string;
    isi_bpb,cari_no : string;
begin
  if ((Sender = dbg) and (dbg.SelectedField.FieldName = 'ic_plu'))  or
     (sender = dbedit7) then
  begin

   //  g_lov_stm := 'Select distinct(MP_SKU), MP_BARCODE, MP_DESCP,MP_QM_SOLD,MP_QM_REC,(MP_QM_REC-MP_QM_SOLD-MP_STOCK),MP_STOCK, MP_CONV1, MP_CONV2, MP_AVG_COST, MP_MK_KODE, MP_ST_CURAH, MP_MV_KODE  from ms.M_PRODUK,ms.M_PRODUK_NAS where MP_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+') and MP_SKU=MPG_SKU and length(MP_SKU)=6 ';

     g_lov_stm := 'Select MP_SKU, MP_BARCODE, MP_DESCP,MP_QM_SOLD,MP_QM_REC,(MP_QM_REC-MP_QM_SOLD-MP_STOCK),MP_STOCK, MP_CONV1, MP_CONV2, MP_AVG_COST, MP_MK_KODE, MP_ST_CURAH, MP_MV_KODE  from ms.M_PRODUK where MP_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+') ';

     g_lov_hdr := 'Data Produk;SKU;60;L;Barcode;100;L;Nama Produk;200;L;Sales;50;R;Receip;50;R;Koreksi;50;R;Stock;50;R;Conv 1;50;R;Conv 2;50;R;Avg. Cost;100;R;Kelompok;75;L;Curah;50;C;Vendor;80;C;';
//    end;

     tlov_all.Create(nil).ShowModal ;
     if (g_lov_nil[0] <> null) then
     begin
  //   lib.msgbox('readonly 27' );
         if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
         if dbg.SelectedField.FieldName = 'ic_plu' then
         begin
//         lib.msgbox('iki 2sc ');
            cdsd.fieldbyname('ic_plu').asstring:=g_lov_nil[0]; //concat(g_lov_nil[0],'2');
{        if (pid<>'') and (cid<>'') then
//
               cdsd.fieldbyname('TPD_QTY').asstring:=g_lov_nil[2];
               cdsd.fieldbyname('TPD_QTY_QUK').asstring:=g_lov_nil[2];
         end
         else
}
            cdsd.fieldbyname('ic_plu_b').asstring:=g_lov_nil[0];  //concat(g_lov_nil[0],'2');
     end;
          end;
     if sender = dbg then dbg.SetFocus;
     if sender = dbedit7 then dbedit7.SetFocus;
  end;
end;

procedure Torder.dbe_date_tibaExit(Sender: TObject);
begin
      SB_Status.Panels.Items[0].Text:='F2-LOV SKU dari Vendor    F3-LOV SKU Master Produk    F5-Simpan  F12-Hapus F7-Batal F9-Exit  Ctrl-Del-Hapus Rec.';
//      dbg.SetFocus;
//    end;

if ((stringreplace(me_nomor.Text,'.','',[rfReplaceAll])='')
         or (stringreplace(me_nomor.Text,' ','',[rfReplaceAll])='')) or
   ((stringreplace(dbevendor.Text,'.','',[rfReplaceAll])='')
         or (stringreplace(dbevendor.Text,' ','',[rfReplaceAll])='')) then
begin
//lib.msgbox('A');
   me_toko.Enabled:= true;
   me_nomor.Enabled:=true;
   dbevendor.Enabled:=true;
   dbe_date_tiba.Enabled:=true;
   edit4.Text:='';
   me_toko.SetFocus;

end
else
  begin
//  lib.msgbox('B');
   me_toko.Enabled:= false;
   me_nomor.Enabled:=false;
   dbevendor.Enabled:=false;
   dbe_date_tiba.Enabled:=false;
   dbg.SetFocus;
end;
end;


procedure Torder.ed_subExit(Sender: TObject);
begin
{
    if (pid<>'') and (cid<>'') then
    begin
       Button3.SetFocus;
    end
    else
    begin
}
      SB_Status.Panels.Items[0].Text:='F2-LOV SKU dari Vendor    F3-LOV SKU Master Produk    F5-Simpan  F12-Hapus F7-Batal F9-Exit  Ctrl-Del-Hapus Rec.';
      dbg.SetFocus;
//    end;
end;


{
 select
  `MCBQH_KODE`,
  `MCBQH_MT_KODE`,
  `MCBQH_MC_KODE`,
  `MCBQH_PK`,
  `MCBQH_MCP_PK`,
  `MCBQH_NO` ,
  `MCBQD_KODE` ,
  `MCBQD_MT_KODE` ,
  `MCBQD_PK` ,
  `MCBQD_MCBQH_PK` ,
  `MCBQD_TYPE` ,
  `MCBQD_NO`,
  MCBQD_MP_SKU,MCBQD_MP_DESCP,MCBQD_QTY_BOQ ,MCBQD_QTY_BPB
from ms.M_CUSTOMER_PROJECT_BOQ_HDR,ms.M_CUSTOMER_PROJECT_BOQ_DTL
where
MCBQD_MCBQH_PK=MCBQH_PK
}



procedure Torder.skunewExit(Sender: TObject);
begin
if (skunew.Text <> '0') and not (sender=Button5) then
begin
  fmain.cari1('select MK_KODE, MK_NAMA from ms.M_KELOMPOK where MK_KODE='+copy(skunew.Text,1,5));
  if (fmain.SCDS_Cari1.IsEmpty) then
  begin
    lib.msgbox('Data Sub-Kategori '+trim(copy(skunew.Text,1,5))+' tidak terdaftar ');
    abort;
  end;
    fmain.cari2('select MD_KODE, MD_NAMA from ms.M_DIVISI where MD_MT_KODE="'+g_uu_group_aktif+'" and  MD_KODE='+copy(skunew.text,1,1));
    if not (fmain.SCDS_Cari2.IsEmpty) then
    begin
      Edndiv.Text:=copy(skunew.text,1,1);
      Eddiv.Text:= fmain.scds_cari2.fieldbyname('MD_NAMA').asstring;
    end;
    fmain.cari2('select MDP_KODE, MDP_NAMA from ms.M_DEPT where MDP_MT_KODE="'+g_uu_group_aktif+'" and MDP_KODE='+copy(skunew.text,1,2));
    if not (fmain.SCDS_Cari2.IsEmpty) then
    begin
      Edndept.Text:=copy(skunew.text,1,2);
      Eddept.Text:= fmain.scds_cari2.fieldbyname('MDP_NAMA').asstring;
    end;
    fmain.cari2('select MSD_KODE, MSD_NAMA from ms.M_SUBDEPT where MSD_MT_KODE="'+g_uu_group_aktif+'" and MSD_KODE='+copy(skunew.text,1,3));
    if not (fmain.SCDS_Cari2.IsEmpty) then
    begin
      Ednsdept.Text:=copy(skunew.text,1,3);
      Edsdept.Text:= fmain.scds_cari2.fieldbyname('MSD_NAMA').asstring;
    end;
    fmain.cari2('select MKT_KODE, MKT_NAMA from ms.M_KATEGORI where MKT_MT_KODE="'+g_uu_group_aktif+'" and MKT_KODE='+copy(skunew.text,1,4));
    if not (fmain.SCDS_Cari2.IsEmpty) then
    begin
      Ednktgr.Text:=copy(skunew.text,1,4);
      Edktgr.Text:= fmain.scds_cari2.fieldbyname('MKT_NAMA').asstring;
    end;
    fmain.cari2('select MK_KODE, MK_NAMA from ms.M_KELOMPOK where MK_MT_KODE="'+g_uu_group_aktif+'" and MK_KODE='+copy(skunew.text,1,5));
    if not (fmain.SCDS_Cari2.IsEmpty) then
    begin
      Ednsubktgr.Text:=copy(skunew.text,1,5);
      Edsubktgr.Text:= fmain.scds_cari2.fieldbyname('MK_NAMA').asstring;
    end;
//    lib.msgbox('sini 1xxx');
//  lib.msgbox('masuk sini cink 7');

      lib.msgbox('select MPK_SKU MAX_SKU from ms.M_SKU_KOSONG  where MPK_MTG_KODE='+
               QuotedStr( g_uu_group_aktif ) + ' and MPK_SKU like "'+ copy(skunew.text,1,2)+ '%" and MPK_SKU not in '+
               '(select MPG_SKU from ms.M_PRODUK_NAS where MPG_MT_KODE='+QuotedStr(g_uu_group_aktif) +' ) AND '+
                'MPK_SKU not in (select MP_SKU from ms.M_PRODUK where MP_MT_KODE= '+QuotedStr(g_uu_code_aktif)+
                ' ) AND RIGHT(MPK_SKU,4)<>"0000" '+
                'and FLOOR(MPK_SKU/10000)='+ quotedstr(trim(copy(skunew.text,1,2)))+' order by MPK_SKU LIMIT 1');


    fmain.cari5('select MPK_SKU MAX_SKU from ms.M_SKU_KOSONG  where MPK_MTG_KODE='+
               QuotedStr( g_uu_group_aktif ) + ' and MPK_SKU like "'+ copy(skunew.text,1,2)+ '%" and MPK_SKU not in '+
               '(select MPG_SKU from ms.M_PRODUK_NAS where MPG_MT_KODE='+QuotedStr(g_uu_group_aktif) +' ) AND '+
                'MPK_SKU not in (select MP_SKU from ms.M_PRODUK where MP_MT_KODE= '+QuotedStr(g_uu_code_aktif)+
                ' ) AND RIGHT(MPK_SKU,4)<>"0000" '+
                'and FLOOR(MPK_SKU/10000)='+ quotedstr(trim(copy(skunew.text,1,2)))+' order by MPK_SKU LIMIT 1');


    if not (fmain.scds_cari5.IsEmpty) then
    begin
        //lib.msgbox(fmain.scds_cari5.FieldValues['MAX_SKU']);
        //lib.msgbox(round(fmain.scds_cari5.FieldValues['MAX_SKU']/ 10000));
        //lib.msgbox(strtoint(copy(edsku.text,1,2)));

        if round(fmain.scds_cari5.FieldValues['MAX_SKU']/ 10000)<>strtoint(copy(skunew.text,1,2)) then
        begin
          lib.msgbox('kuota sku penuh / overlap : '+inttostr(round(fmain.scds_cari5.FieldByname('MAX_SKU').asfloat+1)) );
          close ;
        end
        else
        begin
            lib.msgbox('SKU baru` Dept ['+copy(edsku.text,1,5)+'] nya => '+inttostr(fmain.scds_cari5.FieldValues['MAX_SKU']));
        end;
        Edcsku.Text:=   fmain.scds_cari5.FieldValues['MAX_SKU'];

        CheckBox1.Checked:=true;

        edcsku.ReadOnly:=true;
        edcsku.color :=$00D8D7CA;
        edit5.Text:='DUS';
        edit6.Text:='PAK';
        edit7.Text:='BH ';
        edc_a.Text:='V';
        edc_b.Text:='V';
        edc_c.Text:='V';
        edc_d.Text:='V';
    end;
//    lib.msgbox('sini 1x1');
//  lib.msgbox('masuk sini cink 8');end;

end;
end;


procedure Torder.Button4Click(Sender: TObject);
begin
  SimpanData2;
  edcsku.Clear;
  edcsku.Text:='0';
  edsbarcode.Text:='0';
  edmerk.Clear;
  edisi.Clear ;
  edsatuan.Clear ;
  edkemasan.Clear ;
  edvarian.Clear ;
  eddescp.Clear ;
  edconv1.Clear ;
  edconv2.Clear ;
  edjenis.Clear;
  edndiv.Clear ;
  ednktgr.Clear ;
  ednsdept.Clear ;
  ednsubktgr.Clear ;
  edndept.Clear ;
  eddiv.Clear ;
  edktgr.Clear ;
  edsdept.Clear ;
  edsubktgr.Clear ;
  eddept.Clear ;
  edit4.Clear;
  edit5.Clear;
  edit6.Clear;
  skunew.SetFocus;
  x_simpan :=false;
  bPLUEnd:=false;
  panel15.Hide;
end;

procedure Torder.Button5Click(Sender: TObject);
begin
  if skunew.Text <> '0' then
  begin
  bataldata;
  edcsku.Text:='0';
  edcsku.Text:='0';
  edsbarcode.Text:='0';
  edmerk.Clear;
  edisi.Clear ;
  edsatuan.Clear ;
  edkemasan.Clear ;
  edvarian.Clear ;
  eddescp.Clear ;
  edconv1.Clear ;
  edconv2.Clear ;
  edjenis.Clear;
  skunew.Text:='0'  ;

  edndiv.Clear ;
  ednktgr.Clear ;
  ednsdept.Clear ;
  ednsubktgr.Clear ;
  edndept.Clear ;
  eddiv.Clear ;
  edktgr.Clear ;
  edsdept.Clear ;
  edsubktgr.Clear ;
  eddept.Clear ;
  edit4.Clear;
  edit5.Clear;
  edit6.Clear;
  dbg.SetFocus;
  panel15.Hide;
  x_simpan :=false;
  bPLUEnd:=false;
  end;
end;

procedure Torder.Button6Click(Sender: TObject);
begin
  edcsku.Text:='0';
  edcsku.Text:='0';
  edsbarcode.Text:='0';
  edmerk.Clear;
  edisi.Clear ;
  edsatuan.Clear ;
  edkemasan.Clear ;
  edvarian.Clear ;
  eddescp.Clear ;
  edconv1.Clear ;
  edconv2.Clear ;
  edjenis.Clear;
  skunew.Text:='0'  ;
  edndiv.Clear ;
  ednktgr.Clear ;
  ednsdept.Clear ;
  ednsubktgr.Clear ;
  edndept.Clear ;
  eddiv.Clear ;
  edktgr.Clear ;
  edsdept.Clear ;
  edsubktgr.Clear ;
  eddept.Clear ;
  edit4.Clear;
  edit5.Clear;
  edit6.Clear;
  edc_a.Clear;
  edc_b.Clear;
  edc_c.Clear;
  edc_d.Clear;
  dbg.SetFocus;
  panel15.Hide;
  panel15.SendToBack;
  dbg.SetFocus;
  bPLUEnd:=true;
end;

procedure Torder.SimpanData2;
begin
if skunew.Text <> '0' then
begin
  if not lib.Simpan then exit;
  c_db.ExecSQL('insert ignore into ms.M_PRODUK_NAS(MPG_MT_KODE,MPG_SKU,'+
  'MPG_BARCODE,MPG_MERK,MPG_ISI,MPG_UKURAN,MPG_KEMASAN,MPG_VARIAN,'+
  'MPG_DESCP,MPG_CONV1,MPG_CONV2,MPG_MK_KODE,MPG_PPN,MPG_KETERANGAN,MPG_DESCP2,MPG_SAT) values ('+
  quotedstr(g_uu_group_aktif)+','+quotedstr(edcsku.text)+','+
  quotedstr(edsbarcode.text)+','+
  quotedstr(edmerk.text)+','+quotedstr(edisi.text)+','+
  quotedstr(edsatuan.text)+','+quotedstr(edkemasan.text)+','+
  quotedstr(edvarian.text)+','+quotedstr(eddescp.text)+','+
  quotedstr(edconv1.text)+','+quotedstr(edconv2.text)+','+
  quotedstr(edsku.text)+','+quotedstr('1')+','+quotedstr(edjenis.text)+','+
  quotedstr(leftstr(eddescp.text,20))+','+quotedstr('DUSPAKBH')+')'  , [null]) ;

  if CheckBox1.Checked then
  begin
  c_db.ExecSQL('insert ignore into ms.M_PRODUK(MP_MT_KODE,MP_SKU,'+
  'MP_BARCODE,MP_DESCP,MP_CONV1,MP_CONV2,MP_MK_KODE,MP_PPN,MP_DESCP2,MP_SAT) values ('+
  quotedstr(g_uu_code_aktif)+','+quotedstr(edcsku.text)+','+
  quotedstr(edsbarcode.text)+','+
  quotedstr(eddescp.text)+','+
  quotedstr(edconv1.text)+','+quotedstr(edconv2.text)+','+
  quotedstr(edsku.text)+','+
  quotedstr('1')+','+quotedstr(leftstr(eddescp.text,20))+','+quotedstr('DUSPAKBH')+')'
  , [null]) ;

  c_db.ExecSQL('insert ignore into ms.M_PRODUK_STORE(MPS_MT_KODE,MPS_MP_SKU,'+
  'MPS_STS) values ('+
  quotedstr(g_uu_code_aktif)+','+quotedstr(edcsku.text)+','+
  quotedstr('V')+')'
  , [null]) ;

  end;
  cdsp.close;
  mqp.SQL.Text := 'select * from ms.M_PRODUK_NAS where MPG_MT_KODE ="'+g_uu_group_aktif+'"';
  cdsp.open;
end;
END;





procedure Torder.skunewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var dbar:double;
      pjg : integer;
begin
  Case Key Of
    Key_F5      : SimpanData2;
    Key_F9      : panel15.Hide;

    Key_F7      : BatalData;
    Key_F2      : TekanF22(Sender);
        key_space   :
        begin
           if sender = edc_a then
           begin
              if edc_a.Text = 'V' then
                 edc_a.Text := 'X'
              else
                 edc_a.Text := 'V';
           end;

           if sender = edc_b then
           begin
              if edc_b.Text = 'V' then
                 edc_b.Text := 'X'
              else
                 edc_b.Text := 'V';
           end;

           if sender = edc_c then
              if edc_c.Text = 'V' then
                 edc_c.Text := 'X'
              else
                 edc_c.Text := 'V';

           if sender = edc_d then
              if edc_d.Text = 'V' then
                 edc_d.Text := 'X'
              else
                 edc_d.Text := 'V';



         end;


    Key_Enter,Key_Return :
       begin
         if (sender = CheckBox1) then
            SelectNext(ActiveControl,true,true)     ;
         if (sender = Button6) then panel15.Hide;
         if (sender = skunew) and (length(skunew.Text)=5) and (skunew.Text<> '0') then
            SelectNext(ActiveControl,true,true);

         if (sender = edsbarcode) then
         begin
           if (length(trim(edsbarcode.Text))>8) and (length(edsbarcode.Text)<=14) then
           begin
//           lib.msgbox('sini 1xx');
              fmain.cari6('select MPG_SKU,MPG_BARCODE,MPG_MERK,MPG_DESCP,MPG_SAT,MPG_CONV1,MPG_CONV2, MPG_MK_KODE,MPG_PPN '+
                          'from ms.M_PRODUK_NAS where MPG_MT_KODE = "'+g_uu_group_aktif+'" and  MPG_BARCODE= '+ quotedstr(trim(edsbarcode.text)));
              if not (fmain.scds_cari6.IsEmpty) then
              begin
                 lib.msgbox('Barcode '+quotedstr(trim(edsbarcode.text))+' sudah dipakai untuk produk '+fmain.scds_cari6.FieldValues['MPG_DESCP']);
              end
              else
              begin
              pjg := length(trim(edsbarcode.text));
//              lib.msgbox('sini 1x');
              fmain.cari6('select MPG_SKU,MPG_BARCODE,MPG_MERK,MPG_DESCP,MPG_SAT,MPG_CONV1,MPG_CONV2, MPG_MK_KODE,MPG_PPN '+
                          'from ms.M_PRODUK_NAS where MPG_MT_KODE = "'+g_uu_group_aktif+'" and  left(MPG_BARCODE,'+inttostr(pjg)+')= '+ quotedstr(trim(edsbarcode.text)));
              if not (fmain.scds_cari6.IsEmpty) then
              begin
                 edsbarcode.SetFocus;
              end;
              end;
           end;

           if ((length(edsbarcode.Text)<8) or (length(edsbarcode.Text)>14))
              and (edsbarcode.Text<>'0')  then
              lib.msgbox('Panjang Barcode '+inttostr(length(edsbarcode.text))+' tidak sesuai standard retail')
           else
              SelectNext(ActiveControl,true,true);
         end;


         if (sender = edcsku) then
         begin
           if (length(edcsku.Text)= 6)  then
           begin
              fmain.cari2('select MPG_SKU,MPG_BARCODE,MPG_MERK,MPG_DESCP,MPG_SAT,MPG_CONV1,MPG_CONV2, MPG_MK_KODE,MPG_PPN '+
                          'from ms.M_PRODUK_NAS where MPG_MT_KODE = "'+g_uu_group_aktif+'" and  MPG_SKU= '+ quotedstr(trim(edcsku.text)));
              if not (fmain.scds_cari2.IsEmpty) then
              begin
                 lib.msgbox('SKU '+quotedstr(trim(edcsku.text))+' sudah dipakai untuk produk '+fmain.scds_cari2.FieldValues['MPG_DESCP']);
                 edcsku.SetFocus;
              end;
           end;
           if (length(edcsku.Text)<>6) then
           begin
              lib.msgbox('Panjang SKU '+inttostr(length(edcsku.text))+' tidak sesuai standard');
              edcsku.SetFocus;
           end
           else
              SelectNext(ActiveControl,true,true);
         end;

         if (sender = edconv1) then
         begin
           if (edconv1.Text=' ') or (edconv1.Text='0') then
              lib.msgbox('Konversi 1 masih kosong')
           else
            if not TryStrToFloat(trim(edconv1.Text),dbar) then
            begin
              lib.msgbox('Yang anda masukkan bukan angka');
              edconv1.SetFocus;
            end
            else
              SelectNext(ActiveControl,true,true);
         end;

         if (sender = edconv2) then
         begin
           if (edconv2.Text=' ') or (edconv2.Text='0') then
              lib.msgbox('Konversi 2 masih kosong')
           else
            if not TryStrToFloat(trim(edconv2.Text),dbar) then
            begin
              lib.msgbox('Yang anda masukkan bukan angka');
              edconv2.SetFocus;
              abort;
            end
            else
            if edconv1.Text > edconv2.Text then
               begin
               lib.msgbox('Konversi 2 < Konversi 1');
               edconv2.SetFocus;
               abort;
               end
            else
            SelectNext(ActiveControl,true,true);
         end;

         if (sender = edmerk) then
            SelectNext(ActiveControl,true,true)
         else
         if (sender = edjenis) then
            SelectNext(ActiveControl,true,true)
         else
         if (sender = edvarian) then
            SelectNext(ActiveControl,true,true)
         else
         if (sender = edisi) then
            SelectNext(ActiveControl,true,true)
         else
         if (sender = edsatuan) then
            SelectNext(ActiveControl,true,true)
         else
         if (sender = edkemasan) then
            begin
              EdDescp.Text:=trim(edmerk.Text)+' '+trim(edjenis.Text)+' '+trim(edisi.Text)+' '+trim(edsatuan.Text)+' '+trim(edvarian.Text)+' '+trim(edkemasan.Text);
              SelectNext(ActiveControl,true,true);
            end

         else
         if (sender = EdDescp) then
            SelectNext(ActiveControl,true,true)     ;

//         if (sender = Edit2) then
//            SelectNext(ActiveControl,true,true)     ;

{         if (sender = Edit3) then
            SelectNext(ActiveControl,true,true)     ;
         if (sender = Edit4) then
            SelectNext(ActiveControl,true,true)     ;
}



       end;
  end;
end;


procedure Torder.TekanF22(Sender:TObject);
var kRes : integer;

  function get_lov(i:integer) : integer;
  begin
      case i of
          0 : begin
                   g_lov_stm := 'select MD_KODE, MD_NAMA from ms.M_DIVISI where MD_MT_KODE="'+g_uu_group_aktif+'" and MD_AKTIF="T" and MD_NPO="N"';
                   g_lov_hdr := 'DIVISI;Kode;45;L;DIVISI;150;L;';
              end;
          1 : begin
                   g_lov_stm := 'select MDP_KODE, MDP_NAMA from ms.M_DEPT WHERE MDP_MT_KODE="'+g_uu_group_aktif+'"  and MDP_NPO="N" and FLOOR(MDP_KODE/10)='+ quotedstr(inttostr(kkey[i-1])) +' and MDP_AKTIF="T"';
                   g_lov_hdr := 'DEPARTEMEN;Kode;45;L;DEPARTEMEN;150;L;';
              end;
          2 : begin
                   g_lov_stm := 'select MSD_KODE, MSD_NAMA from ms.M_SUBDEPT WHERE  MSD_MT_KODE="'+g_uu_group_aktif+'"  and MSD_NPO="N" and FLOOR(MSD_KODE/10)='+ quotedstr(inttostr(kkey[i-1]))+' and MSD_AKTIF="T"';
                   g_lov_hdr := 'SUB-DEPT;Kode;45;L;SUB-DEPARTEMEN;150;L;';
              end;
          3 : begin
                   g_lov_stm := 'select MKT_KODE, MKT_NAMA from ms.M_KATEGORI WHERE  MKT_MT_KODE="'+g_uu_group_aktif+'"  and MKT_NPO="N" and FLOOR(MKT_KODE/10)='+ quotedstr(inttostr(kkey[i-1]))+' and MKT_AKTIF="T"';
                   g_lov_hdr := 'KATAGORI;Kode;45;L;Katagori;150;L;';
              end;
          4 : begin
                   g_lov_stm := 'select MK_KODE, MK_NAMA from ms.M_KELOMPOK WHERE  MK_MT_KODE="'+g_uu_group_aktif+'"  and MK_NPO="N" and FLOOR(MK_KODE/10)='+ quotedstr(inttostr(kkey[i-1]))+' and MK_AKTIF="T"';
                   g_lov_hdr := 'SUB-KATAGORI;Kode;45;L;Sub-Katagori;150;L;';
              end;
      end;
      //      ShowMessage('group aktif '+g_uu_group_aktif);
      tlov_all.Create(nil).ShowModal ;
      if (g_lov_nil[0] > 0)  then
      begin
         kkey[i] :=g_lov_nil[0];
         result := g_lov_nil[0];
      end
      else
         result := 0;
  end;

begin


  if (Sender = skunew) and (not skunew.ReadOnly)then
  begin
  kres:=0;
   g_lov_state := 0;
   while (g_lov_state < 5) and (g_lov_state > - 1) do
   begin
       kRes := get_lov(g_lov_state);
       if kRes > 0 then
          g_lov_state:=g_lov_state + 1
       else
          g_lov_state:=g_lov_state - 1
   end;
   if g_lov_state > 0 then skunew.Text:=inttostr(kRes);
   if kRes>0 then
   begin
    fmain.cari2('select MD_KODE, MD_NAMA from ms.M_DIVISI where MD_MT_KODE="'+g_uu_group_aktif+'" and  MD_KODE='+copy(skunew.text,1,1) +' and MD_AKTIF="T"') ;
    if not (fmain.SCDS_Cari2.IsEmpty) then
    begin
      Edndiv.Text:=copy(skunew.text,1,1);
      Eddiv.Text:= fmain.scds_cari2.fieldbyname('MD_NAMA').asstring;
    end;
    fmain.cari2('select MDP_KODE, MDP_NAMA from ms.M_DEPT where MDP_MT_KODE="'+g_uu_group_aktif+'" and MDP_KODE='+copy(skunew.text,1,2)+' and MDP_AKTIF="T"');
    if not (fmain.SCDS_Cari2.IsEmpty) then
    begin
      Edndept.Text:=copy(skunew.text,1,2);
      Eddept.Text:= fmain.scds_cari2.fieldbyname('MDP_NAMA').asstring;
    end;
    fmain.cari2('select MSD_KODE, MSD_NAMA from ms.M_SUBDEPT where MSD_MT_KODE="'+g_uu_group_aktif+'" and MSD_KODE='+copy(skunew.text,1,3)+' and MSD_AKTIF="T"');
    if not (fmain.SCDS_Cari2.IsEmpty) then
    begin
      Ednsdept.Text:=copy(skunew.text,1,3);
      Edsdept.Text:= fmain.scds_cari2.fieldbyname('MSD_NAMA').asstring;
    end;
    fmain.cari2('select MKT_KODE, MKT_NAMA from ms.M_KATEGORI where MKT_MT_KODE="'+g_uu_group_aktif+'" and MKT_KODE='+copy(skunew.text,1,4)+' and MKT_AKTIF="T"');
    if not (fmain.SCDS_Cari2.IsEmpty) then
    begin
      Ednktgr.Text:=copy(skunew.text,1,4);
      Edktgr.Text:= fmain.scds_cari2.fieldbyname('MKT_NAMA').asstring;
    end;
    fmain.cari2('select MK_KODE, MK_NAMA from ms.M_KELOMPOK where MK_MT_KODE="'+g_uu_group_aktif+'" and MK_KODE='+copy(skunew.text,1,5)+' and MK_AKTIF="T"');
    if not (fmain.SCDS_Cari2.IsEmpty) then
    begin
      Ednsubktgr.Text:=copy(skunew.text,1,5);
      Edsubktgr.Text:= fmain.scds_cari2.fieldbyname('MK_NAMA').asstring;
    end;
   end;

    skunew.SetFocus;
  end;
end;



procedure Torder.EdcskuExit(Sender: TObject);
begin
       if (length(Edcsku.Text) <= 7)
       or  (length(Edcsku.Text) = 15)
       or ((length(Edcsku.Text) = 15)  and  //not
       (g_multistore)) then
        begin
               fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                  ' MP_SKU = '+quotedstr(Edcsku.Text)+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
        end
        else
        begin
                fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP, MP_MK_KODE,MP_VARIAN,MP_MERK, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
//                  ifthen(length(trim(Edcsku.Text)) = 13   ,' MP_BARCODE = '+quotedstr(Edcsku.Text), ' MP_SKU = '+quotedstr(Edcsku.Text))+
                  ' if((length(trim('+Edcsku.Text+'))) in (10,11,12,13,14), MP_BARCODE = '+quotedstr(Edcsku.Text)+ ', MP_SKU = '+quotedstr(Edcsku.Text)+') ' +

                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
        end;

       if not fmain.scds_cari1.IsEmpty then
       begin
            lib.msgbox('Data Produk dengan '+ifthen(length(trim(Edcsku.Text)) > 7,'Barcode '+trim(Edcsku.Text),'SKU '+trim(Edcsku.Text))+' sudah terdaftar');
            Edcsku.SetFocus;
            abort;
       end;
end;



procedure Torder.dbgEnter(Sender: TObject);
begin
 if trim(stringreplace(dbevendor.Text,'.','',[rfReplaceAll]))='' then
  begin
      me_nomor.Enabled:=true;
      me_nomor.readonly:=false;
      me_nomor.SetFocus;
      abort;
  end;

// if boleheditpo then dbg.ReadOnly:=false else
//      dbg.ReadOnly:=true;

end;

procedure Torder.dbgColEnter(Sender: TObject);
begin
{  if ((Sender = dbg) and (dbg.SelectedField.FieldName = 'ic_plu'))   then
  begin
  lib.msgbox('masuk kolom');
  end;
}
//   me_toko.Enabled:= false;
//   me_nomor.Enabled:=false;
//   dbevendor.Enabled:=false;
//   dbe_date_tiba.Enabled:=false;

{
if (sender = dbg) then
begin
  if ((dbg.SelectedField.FieldName = 'ic_plu') or
  (dbg.SelectedField.FieldName = 'TPD_QTY' ))  and
  not(boleheditpo) and (cds.fieldbyname('TPH_ST_PRN').AsString='Y') then
  begin
         //CDSD.Cancel;
///         dbg.ReadOnly:=true;
   //      CDSD.ReadOnly:= True;
       //  lib.msgbox('PO status sudah cetak, tidak bisa diedit');
}
{  end
  else
  begin
       dbg.ReadOnly:=false;
       CDSD.ReadOnly:= false;
}
//  end;

//end;
end;

procedure Torder.me_tokoEnter(Sender: TObject);
begin
//lib.msgbox('D');
   me_toko.Enabled:= true;
   me_nomor.Enabled:=true;
   dbevendor.Enabled:=true;
   dbe_date_tiba.Enabled:=true;
end;

procedure Torder.dbe_pot1_persenEnter(Sender: TObject);
begin
{
   cdsd.Next;
//harkop tutup dulu
if boleheditpo then dbe_pot1_persen.ReadOnly:= false else dbe_pot1_persen.ReadOnly:= true;

  // dbe_pot1_persen.Text:= formatfloat('###,###,##0.#0',round(CDS.FieldByName('TPH_DSC_PR1').AsFloat));
  // sjumlah :=dbedit3.Text;   //   while pos(',',sjumlah)>0 do delete(sjumlah,pos(',',sjumlah),1);
  // while pos('.',sjumlah)>0 do delete(sjumlah,pos('.',sjumlah),1);
  // dbe_pot1_persen.Text:= sjumlah;
}
end;

procedure Torder.dbe_pot2_persenEnter(Sender: TObject);
begin
{
   cdsd.Next;
//harkop tutup dulu
if boleheditpo then dbe_pot2_persen.ReadOnly:= false else dbe_pot2_persen.ReadOnly:= true;

 //  dbe_pot2_persen.Text:= formatfloat('###,###,##0.#0',round(CDS.FieldByName('TPH_DSC_PR1').AsFloat));
 //  sjumlah :=dbedit3.Text;   //   while pos(',',sjumlah)>0 do delete(sjumlah,pos(',',sjumlah),1);
 //  while pos('.',sjumlah)>0 do delete(sjumlah,pos('.',sjumlah),1);
 //  dbe_pot2_persen.Text:= sjumlah;
}
end;

procedure Torder.dbe_pot1_amountEnter(Sender: TObject);
var sjumlah:string;
begin
{
   cdsd.Next;
//harkop tutup dulu
//if boleheditpo then dbe_pot1_amount.ReadOnly:= false else dbe_pot1_amount.ReadOnly:= true;

   dbe_pot1_amount.Text:= formatfloat('###,###,##0',round(CDS.FieldByName('TPH_DSC_RP1').AsFloat));
   sjumlah :=dbe_pot1_amount.Text;   //   while pos(',',sjumlah)>0 do delete(sjumlah,pos(',',sjumlah),1);
   while pos('.',sjumlah)>0 do delete(sjumlah,pos('.',sjumlah),1);
   dbe_pot1_amount.Text:= sjumlah;
}
end;

procedure Torder.dbe_pot2_amountEnter(Sender: TObject);
var sjumlah:string;
begin
{
   cdsd.Next;
//harkop tutup dulu
if boleheditpo then dbe_pot2_amount.ReadOnly:= false else dbe_pot2_amount.ReadOnly:= true;

   dbe_pot2_amount.Text:= formatfloat('###,###,##0',round(CDS.FieldByName('TPH_DSC_RP2').AsFloat));
   sjumlah :=dbe_pot2_amount.Text;   //   while pos(',',sjumlah)>0 do delete(sjumlah,pos(',',sjumlah),1);
   while pos('.',sjumlah)>0 do delete(sjumlah,pos('.',sjumlah),1);
   dbe_pot2_amount.Text:= sjumlah;

}
end;

procedure Torder.CDSDTPD_DSCValidate(Sender: TField);
var dqty:double;
    isku : string;
begin
end;

procedure Torder.CDSDTPD_DSC_PR1Validate(Sender: TField);
var dqty:double;
    isku : string;
begin

 if (cdsd.fieldbyname('TPD_MP_SKU').asstring<>'')
 and (cdsd.fieldbyname('TPD_QTY').AsFloat<>0) then
 begin
   if sender.AsFloat < 0 then
   begin
       lib.msgbox('Entry tidak boleh minus atau nol');
       abort;
   end;

   if sender = cdsd.FieldByName('TPD_DSC_PR1') then
   begin
    if cdsd.FieldByName('TPD_DSC_RP1').AsFloat<>0 then
    begin
      lib.msgbox('1 Diskon 1 hanya bisa pilihan Persen atau Rupiah, Tekan Esc untuk batal');
      abort;
    end;
   end
   else
   if (sender = cdsd.FieldByName('TPD_DSC_RP1'))
   and (cdsd.FieldByName('TPD_DSC_RP1').AsFloat<>0)
   then
   begin
    if cdsd.FieldByName('TPD_DSC_PR1').AsFloat<>0 then
    begin
      lib.msgbox('2 Diskon 1 hanya bisa pilihan Persen atau Rupiah, Tekan Esc untuk batal');
      abort;
    end;
   end
   else
   if sender = cdsd.FieldByName('TPD_DSC_PR2') then
   begin
    if cdsd.FieldByName('TPD_DSC_RP2').AsFloat<>0 then
    begin
      lib.msgbox('1 Diskon 2 hanya bisa pilihan Persen atau Rupiah, Tekan Esc untuk batal');
      abort;
    end;
   end
   else
   if (sender = cdsd.FieldByName('TPD_DSC_RP2'))
   and (cdsd.FieldByName('TPD_DSC_RP2').AsFloat<>0)
   then
   begin
    if cdsd.FieldByName('TPD_DSC_PR2').AsFloat<>0 then
    begin
      lib.msgbox('2 Diskon 2 hanya bisa pilihan Persen atau Rupiah, Tekan Esc untuk batal');
      abort;
    end;
   end
   else
   if sender = cdsd.FieldByName('TPD_DSC_PR3') then
   begin
    if cdsd.FieldByName('TPD_DSC_RP3').AsFloat<>0 then
    begin
      lib.msgbox('Diskon 3 hanya bisa pilihan Persen atau Rupiah, Tekan Esc untuk batal');
      abort;
    end;
   end
   else
   if sender = cdsd.FieldByName('TPD_DSC_RP3') then
   begin
    if cdsd.FieldByName('TPD_DSC_PR3').AsFloat<>0 then
    begin
      lib.msgbox('Diskon 3 hanya bisa pilihan Persen atau Rupiah, Tekan Esc untuk batal');
      abort;
    end;
   end;



  dqty:=0;
  case cdsd.fieldbyname('TPD_EKOR').asinteger of
    0 :  dqty := sender.AsFloat  * cdsd.fieldbyname('TPD_CONV2').asinteger;
    1 :  dqty := sender.AsFloat  * (cdsd.fieldbyname('TPD_CONV2').asinteger/cdsd.fieldbyname('TPD_CONV1').asinteger);
    2 :  dqty := sender.AsFloat ;
  end;

//harkop tutup dulu

if (Sender = cdsd.FieldByName('TPD_QTY')) or
   (Sender = cdsd.FieldByName('TPD_MP_SKU'))then
begin
       isku := cdsd.FieldByName('TPD_MP_SKU').asstring;
       fmain.cari3('select MPH_AMOUNT, MPH_DSC_PR1, MPH_DSC_PR2, MPH_DSC_PR3, MPH_DSC_RP1, MPH_DSC_RP2, MPH_DSC_RP3, MPH_PPN_BM, MPH_PPPN_BM,'+
                   ' MPH_P_AMOUNT, MPH_P_DSC_PR1, MPH_P_DSC_PR2, MPH_P_DSC_PR3, MPH_P_DSC_RP1, MPH_P_DSC_RP2, MPH_P_DSC_RP3, MPH_D_FIRST, MPH_D_LAST '+
                   ' from ms.M_PURCHASE where MPH_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)) +' and MPH_MV_KODE = '+quotedstr(cds.fieldbyname('TPH_MV_KODE').asstring)+
                   ' and MPH_MP_SKU = '+quotedstr(isku));
       if (fmain.SCDS_Cari3.IsEmpty) then
       begin
           lib.msgbox('Harga Beli untuk SKU '+ isku+ ' pada vendor '+cds.fieldbyname('TPH_MV_KODE').asstring+' belum ada !'+#13#10);

           abort;
       end;
        if g_debug then
        writeln(f,' 3 - '+ghargabelisentral+' - '+' select MPH_AMOUNT, MPH_DSC_PR1, MPH_DSC_PR2, MPH_DSC_PR3, MPH_DSC_RP1, MPH_DSC_RP2, MPH_DSC_RP3, MPH_PPN_BM, MPH_PPPN_BM,'+
                   ' MPH_P_AMOUNT, MPH_P_DSC_PR1, MPH_P_DSC_PR2, MPH_P_DSC_PR3, MPH_P_DSC_RP1, MPH_P_DSC_RP2, MPH_P_DSC_RP3, MPH_D_FIRST, MPH_D_LAST '+
                   ' from ms.M_PURCHASE where MPH_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)) +' and MPH_MV_KODE = '+quotedstr(cds.fieldbyname('TPH_MV_KODE').asstring)+
                   ' and MPH_MP_SKU = '+quotedstr(isku));
       if g_debug then flush(f);

       if (cdsd.FieldByName('TPD_DSC_PR1').asfloat < fmain.scds_cari3.fieldbyname('MPH_DSC_PR1').asfloat) or
       (cdsd.FieldByName('TPD_DSC_PR2').asfloat < fmain.scds_cari3.fieldbyname('MPH_DSC_PR2').asfloat) or
       (cdsd.FieldByName('TPD_DSC_PR3').asfloat < fmain.scds_cari3.fieldbyname('MPH_DSC_PR3').asfloat) or
       (cdsd.FieldByName('TPD_DSC_RP1').asfloat < fmain.scds_cari3.fieldbyname('MPH_DSC_RP1').asfloat) or
       (cdsd.FieldByName('TPD_DSC_RP2').asfloat < fmain.scds_cari3.fieldbyname('MPH_DSC_RP2').asfloat) or
       (cdsd.FieldByName('TPD_DSC_RP3').asfloat < fmain.scds_cari3.fieldbyname('MPH_DSC_RP3').asfloat)
       then
       begin
           lib.msgbox('Diskon Tidak boleh lebih kecil dari Harga Beli yang telah di tentukan !'+#13#10);
           abort;
       end;
     end;
end; //bbaru
end;


procedure Torder.CDSTPH_DSC_RP1Validate(Sender: TField);
var ske : string;
begin
  if sender.asfloat > 0 then
  begin
    ske := rightstr(uppercase(Sender.FieldName),1);
    if (Sender.AsFloat < 0) then
    begin
      lib.msgbox('Diskon Faktur Rupiah ke '+ske+' yang anda inputkan salah');
      abort;
    end;
    CDS.FieldByName('TPH_DSC_PR'+ske).AsFloat := 0;
  end;
end;



procedure Torder.dbe_pot1_amountExit(Sender: TObject);
begin
  dbe_pot1_amount.Text  := formatfloat('###,###,##0',CDS.FieldByName('TPH_DSC_RP1').AsFloat);
//lib.msgbox('apa ini 4');
//26022022 tutup  cdsCalcFields(cds);
end;

procedure Torder.dbe_pot2_amountExit(Sender: TObject);
begin
//  dbe_pot2_amount.Text  := formatfloat('###,###,##0',CDS.FieldByName('TPH_DSC_RP2').AsFloat);
//lib.msgbox('apaini 5');
//26022022 tutup  cdsCalcFields(cds);
//  lib.msgbox('exit yo');
end;

procedure Torder.dbe_pot1_persenExit(Sender: TObject);
var damount,ddisc : double;
begin
{
  dbe_pot1_persen.Text  := formatfloat('##0.#0',CDS.FieldByName('TPH_DSC_PR1').AsFloat);
  damount:=cdsd.fieldbyname('a_netto').AsVariant;
  ddisc  :=cdsd.fieldbyname('a_netto').AsVariant;

  ddisc   := ddisc * (cds.fieldbyname('TPH_DSC_PR1').AsFloat/100 ) ;
  damount := damount * ( 1 - (cds.fieldbyname('TPH_DSC_PR1').AsFloat/100 ));
  cds.fieldbyname('TPH_NETTO').AsFloat := damount ;

  cds.fieldbyname('TPH_DSC').AsFloat := ddisc ;
}
 // cdsCalcFields(cds);
end;

procedure Torder.dbe_pot2_persenExit(Sender: TObject);
begin
  dbe_pot2_persen.Text  := formatfloat('##0.#0',CDS.FieldByName('TPH_DSC_PR2').AsFloat);
//lib.msgbox('apaini 7');
//26022022 tutup  cdsCalcFields(cds);
end;

procedure Torder.DBEdit11Enter(Sender: TObject);
begin
  if boleheditpo then DBEdit11.ReadOnly:= false else DBEdit11.ReadOnly:= true;

end;

procedure Torder.DBEdit12Enter(Sender: TObject);
begin
  if boleheditpo then DBEdit12.ReadOnly:= false else DBEdit12.ReadOnly:= true;
//lib.msgbox('apaini 8');

//26022022 tutup  cdsCalcFields(cds);
end;

procedure Torder.DBEdit13Enter(Sender: TObject);
begin
  if boleheditpo then DBEdit13.ReadOnly:= false else DBEdit13.ReadOnly:= true;

end;

procedure Torder.DBEdit14Enter(Sender: TObject);
begin
  if boleheditpo then DBEdit14.ReadOnly:= false else DBEdit14.ReadOnly:= true;

end;

procedure Torder.DBEdit15Enter(Sender: TObject);
begin
  if boleheditpo then DBEdit15.ReadOnly:= false else DBEdit15.ReadOnly:= true;

end;

procedure Torder.DBEdit16Enter(Sender: TObject);
begin
  if boleheditpo then DBEdit16.ReadOnly:= false else DBEdit16.ReadOnly:= true;

end;

procedure Torder.CDSDTPD_EKORValidate(Sender: TField);
//var dqty:double;
//        isku : string;
begin
{
if bbaru // or x_simpan
then exit;
   if sender.AsFloat <= 0 then
   begin
       lib.msgbox('Entry tidak boleh minus atau nol');
       abort;
   end;
}
  {
  if cdsd.fieldbyname('ic_curah').asstring = 'N' then
  begin
     if pos('.',sender.asstring) > 0 then
     begin
        lib.msgbox('QTY untuk item ini harus bilangan bulat !'+#10#13);
        abort;
     end;
  end;
  }
end;

{
function Torder.cek_constrain(pk, plu, init : string; event: char; var xbaris:integer): boolean;
var icount: integer;
begin
  icount:=0;
  result := false;
  UpCase(event);
  case event of
  'T' :begin     //tambah Low(A_unik) to High(A_Unik)do
            for icount:= Low(A_unik) to High(A_Unik)do
            begin
                 xbaris:=icount;
                 if ((a_unik[icount,0] <> pk)  and (a_unik[icount,1] = plu) and (a_unik[icount,2] = init)) then
                 begin
                     xbaris:=icount;
                     result:= true;
                     exit;
                 end;

            end;

            for icount:= Low(A_unik) to High(A_Unik) do
            begin
                 xbaris:=icount;
                 if a_unik[icount,0] = '' then
                 begin
                    a_unik[icount,0] := pk;
                    a_unik[icount,1] := plu;
                    a_unik[icount,2] := init;
                    exit;
                 end;
            end;
        end;
  //edit
  'E' :begin
            for icount:= Low(A_unik) to High(A_Unik) do
            begin
                 xbaris:=icount;
                 if (A_unik[icount,0] <> pk) and (A_unik[icount,1] = plu) and (a_unik[icount,2] = init) then
                 begin
                     result:= true;
                     exit;
                 end;
            end;
            for icount:= Low(A_unik) to High(A_Unik) do
            begin
                 xbaris:=icount;
                 if A_unik[icount,0] = pk then
                 begin
                    A_unik[icount,0] := pk;
                    A_unik[icount,1] := plu;
                    A_unik[icount,2] := init;
                    exit;
                 end;
            end;
        end;
  //hapus
  'H' :begin
            for icount:= 0 to High(A_Unik) do
            begin
                 xbaris:=icount;
                 if A_unik[icount,0] = pk then
                 begin
                    A_unik[icount,0] := '';
                    A_unik[icount,1] := '';
                    A_unik[icount,2] := '';
                    exit;
                 end;
            end;
        end;
  end;
end;
}
{
procedure Torder.empty_memory;
var icount:integer;
begin
  for icount:= low(A_Unik) to high(A_Unik) do
  begin
      A_unik[icount,0] := '';
      A_unik[icount,1] := '';
      A_unik[icount,2] := '';
  end;
end;
}

procedure Torder.DBEdit7Enter(Sender: TObject);
begin
     cdsd.fieldbyname('ic_plu_b').Asstring:= cdsd.fieldbyname('TPD_MP_SKU_B').Asstring;
end;



procedure Torder.dbevendorEnter(Sender: TObject);
begin
label62.Caption:='#';
end;

procedure Torder.TekanF2(Sender:TObject);
var    cari_no,carino,g_lov_stm2,cari : string;
       typepo,kounter,icount: integer;
       saverec : TBookmark;
begin
  if ((Sender = dbg) and (dbg.SelectedField.FieldName = 'ic_plu'))  or
     (sender = dbedit7) then
  begin
     //lib.msgbox('1 masuk sini');
    if not (boleheditpo) and (cds.fieldbyname('TPH_ST_PRN').AsString='Y') then
       begin //7okt
     //lib.msgbox('2 masuk sini');
       dbg.ReadOnly:=true;
     end
     else
begin
  //lib.msgbox('3 masuk sini');
     if ((cdsd.fieldbyname('TPD_MP_SKU').isnull) or
         (cdsd.fieldbyname('TPD_MP_SKU').Asfloat <= 0) or
         (cdsd.fieldbyname('TPD_MP_SKU').Asstring='')) or
//26022022 tutup         (cdsd.fieldbyname('TPD_MP_SKU').OldValue<>cdsd.fieldbyname('TPD_MP_SKU').NewValue) or
         (cdsd.fieldbyname('TPD_MP_SKU_B').isnull)
          then
     begin
     //lib.msgbox('4 masuk sini');
       if (cds.fieldbyname('TPH_ST_PRN').AsString='Y')
       then
       begin
      // lib.msgbox('5 masuk sini');
          if not( boleheditpo) and (dbg.SelectedField.FieldName = 'TPD_QTY')
         then
          begin
             //lib.msgbox('778');
             lib.msgbox('PO status sudah cetak, QTY tidak bisa diedit');
             dbg.ReadOnly :=true ;
          end
          else
          begin
         //   lib.msgbox('6 masuk sini');
            dbg.ReadOnly :=false;
          end;
{}      end
    else
    begin
      //  lib.msgbox('7 masuk sini');
        dbg.ReadOnly :=false;
{}
    end;

       if sfkonv=':' then
       begin
      // lib.msgbox('8 masuk sini');
         if ghargabelisentral='N' then
         begin
            cari:='';
            saverec := cdsd.GetBookmark;
            cdsd.DisableControls;
            cdsd.First;

            kounter:=cdsd.RecordCount ;
            for icount:= 1 to kounter  do
            begin
               cari:=concat(cari, cdsd.fieldbyname('TPD_MP_SKU').asstring,',');
               CDSD.Next;
            end;
            cdsd.EnableControls;
            CDSD.GotoBookmark(saverec);
            CDSD.Append;
            cari:= leftstr(cari,length(cari)-1);

            g_lov_stm := 'Select  MPH_MP_SKU,MP_BARCODE,MP_DESCP, concat(REPLACE(FORMAT(MPH_AMOUNT,0),'','',''.''))  MPH_AMOUNT, MP_PPN,MP_MTS_KODE,MP_MINOR,MP_MIN_STOCK,MP_MAX_STOCK '+
                '  from ms.M_PRODUK '+
                ' left join ms.M_PURCHASE a on (MPH_MV_KODE="'+cds.fieldbyname('TPH_MV_KODE').asstring+'" and MPH_MP_SKU=MP_SKU and MPH_MT_KODE='''+
                  ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif) +''')' +
                ifthen(me_toko.Text= g_uu_group_aktif,'',
            ' left join ms.M_PRODUK_STORE b on (MPS_MP_SKU=MP_SKU and MPS_MT_KODE='''+
                  ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif) +''')' ) +
                ' where MPH_MP_SKU=MP_SKU and MPH_MT_KODE=MP_MT_KODE '+
                ' and trim(MPH_MV_KODE)='''+cds.fieldbyname('TPH_MV_KODE').asstring+''' '+
            ifthen(me_toko.Text= g_uu_group_aktif,'',
                ' and MPS_MT_KODE='''+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'''' )+
            ifthen(cari<>'',' and MP_SKU not in  ('+cari+') ','')+
             ' and MPH_MP_SKU>0 group by MPH_MP_SKU order by MP_DESCP'; //MPH_MP_SKU';



            g_lov_hdr := 'DATA HARGA BELI PRODUK '+edvendor.Text+';SKU;60;C;BARCODE;100;C;Nama Produk;280;L;Cost;60;R;BKP;30;C;TAG;30;C;MINOR;45;C;MIN.STOCK;60;C;MAX.STOCK;60;C;';

            if g_debug then writeln(f,'xx99: '+ g_lov_stm);
            if g_debug then flush(f);
         end;

         if (ghargabelisentral='Y') then //   coba sini
         begin  //         lib.msgbox('kesini Y');
            g_lov_stm := 'Select  MPH_MP_SKU,MP_BARCODE,MP_DESCP,ifnull(MPH_AMOUNT,0) MPH_AMOUNT '+
                ',MP_PPN,MP_MTS_KODE,MP_MINOR,MP_MIN_STOCK,MP_MAX_STOCK from ms.M_PRODUK '+
                ' left join ms.M_PURCHASE a on (MPH_MV_KODE='+
                  quotedstr(cds.fieldbyname('TPH_MV_KODE').asstring)+
                ' and MPH_MP_SKU=MP_SKU and MPH_MT_KODE='+ QuotedStr(g_uu_group_aktif)+')' +
                ' where MPH_MP_SKU=MP_SKU and MPH_MT_KODE=MP_MT_KODE '+
                ' and MPH_MV_KODE="'+cds.fieldbyname('TPH_MV_KODE').asstring+'"'+
                ' group by MPH_MP_SKU order by MPH_MP_SKU';
              g_lov_hdr := 'DATA HARGA BELI PRODUK '+edvendor.Text+';SKU;100;C;BARCODE;100;C;Nama Produk;280;L;Cost;80;BKP;30;C;TAG;30;C;MINOR;45;C;MIN.STOCK;60;C;MAX.STOCK;60;C;';
              if g_debug then writeln(f,'xx98: '+ g_lov_stm);
              if g_debug then flush(f);
         end;
       end
       else
       if sfkonv='X' then
       begin
         if ghargabelisentral='N' then
         begin
  //       lib.msgbox('kesitu 1');
            g_lov_stm := 'Select  MPH_MP_SKU,MP_DESCP,ifnull(MPH_AMOUNT,0) MPH_AMOUNT,DUS,PAK,BH '+
                ' from ms.V_PRODUK_TRACER '+
                ' where '+
                ' MPH_MV_KODE="'+dbevendor.text+'" group by MPH_MP_SKU ';
            g_lov_hdr := '3 DATA HARGA BELI PRODUK '+edvendor.Text+';SKU;60;C;Nama Produk;250;L;Cost;70;C;DUS;55;R;PAK;55;R;BH;55;R;';

            if g_debug then writeln(f,'xx97: '+ g_lov_stm);
            if g_debug then flush(f);
         end;
         if ghargabelisentral='Y' then
         begin
    //        lib.msgbox('kesitu 2');
            g_lov_stm := 'Select  MPH_MP_SKU,MP_DESCP,ifnull(MPH_AMOUNT,0) MPH_AMOUNT,DUS,PAK,BH '+
                ' from ms.V_PRODUK_TRACER '+
                ' where '+
                ' MPH_MV_KODE="'+dbevendor.text+'" group by MPH_MP_SKU ';
            g_lov_hdr := '4 DATA HARGA BELI PRODUK '+edvendor.Text+';SKU;60;C;Nama Produk;250;L;Cost;70;C;DUS;55;R;PAK;55;R;BH;55;R;';
            if g_debug then writeln(f,'xx96: '+ g_lov_stm);
            if g_debug then flush(f);
         end;
       end;

       g_lov_stm2:= stringreplace(g_lov_stm,',MPH_FLAG','',[rfReplaceAll]) ;

//lib.msgbox('sampai 1');

    fmain.cari5(g_lov_stm2);
    if (fmain.scds_cari5.RecordCount>=1) then
    begin
  //    lib.msgbox('sampai 2');

       tlov_all.Create(nil).ShowModal ;
       if (g_lov_nil[0] <> null) then
       begin
    //     lib.msgbox('sampai 3');

         sku_ok:=false;
         // bPLUEnd := true;
         if not g_eceran2pak then
         begin
      //     lib.msgbox('sampai 4');

//           tanpaekor:=true;
        //   if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert)  then cdsd.edit;
           if dbg.SelectedField.FieldName = 'ic_plu' then
           begin
            //  lib.msgbox('sampai 5');

         //     bPLUEnd   := true;  //false; //TRUE;
         //     if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
              if ghargabelieceran='Y' then
              begin
              //  lib.msgbox('sampai 6');
             //   cdsd.append;
                if (cdsd.state<>dsinsert) and (cdsd.state<>dsedit) then cdsd.edit;

                 cdsd.fieldbyname('TPD_MP_SKU').asstring:=g_lov_nil[0];
                 cdsd.fieldbyname('TPD_EKOR').asstring:='2';

               //  lib.msgbox('minor '+ inttostr(g_lov_nil[6]));

                 if g_lov_nil[6]<>0 then
                 cdsd.fieldbyname('TPD_QTY').AsFloat:=g_lov_nil[6];


                 cdsd.fieldbyname('ic_plu').asstring:=concat(g_lov_nil[0],'2');
                 bPLUEnd := false;
//                 dbg.SetFocus;
//                 exit;
           //       bPLUEnd := true;
              end
              else
              begin
            //  lib.msgbox('sampai 7');
            if (cdsd.state<>dsinsert) and (cdsd.state<>dsedit) then cdsd.edit;

                cdsd.fieldbyname('ic_plu').asstring:=g_lov_nil[0];
                cdsd.fieldbyname('TPD_MP_SKU').asstring:=g_lov_nil[0];
                if g_lov_nil[6]<>0 then
                cdsd.fieldbyname('TPD_QTY').AsFloat:=g_lov_nil[6];

                bPLUEnd := false;
                bPLUStart:=true;
                exit; //true;
              end;
           end
           else
           begin
              if ghargabelieceran='Y' then
              begin
            //  lib.msgbox('sampai 8');

                 //if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;

                 cdsd.fieldbyname('ic_plu_b').asstring:=concat(g_lov_nil[0],'2');
                 cdsd.fieldbyname('TPD_MP_SKU_B').asstring:=g_lov_nil[0];
               //   bPLUEnd := true;
              end
              else
              begin
            //  lib.msgbox('sampai 9');
                 //if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;

                 cdsd.fieldbyname('ic_plu_b').asstring:=concat(g_lov_nil[0]);
                 cdsd.fieldbyname('TPD_MP_SKU_B').asstring:=concat(g_lov_nil[0]);
                 //    bPLUEnd := true;
              end;
           end;
         end
         else
         begin
        // lib.msgbox('sampai 10');
           //if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
           if dbg.SelectedField.FieldName = 'ic_plu' then
           begin
          // lib.msgbox('sampai 11');
              cdsd.fieldbyname('ic_plu').asstring:=g_lov_nil[0];  //concat(g_lov_nil[0],'2')
              cdsd.fieldbyname('TPD_MP_SKU').asstring:=g_lov_nil[0];

                 if g_lov_nil[6]<>0 then
                 cdsd.fieldbyname('TPD_QTY').AsFloat:=g_lov_nil[6];

              //bPLUEnd := true;
           end
           else
           begin
          // lib.msgbox('sampai 12');
              cdsd.fieldbyname('ic_plu_b').asstring:=g_lov_nil[0]; // concat(g_lov_nil[0],'2');
              cdsd.fieldbyname('TPD_MP_SKU_B').asstring:=g_lov_nil[0];
                //  bPLUEnd := true;
           end;
         //    lib.msgbox('a11');

         end;
       //    lib.msgbox('a111');

       end;

     // lib.msgbox('a1111');

      end  // if not null
      else
       begin
         lib.msgbox('Tidak ada harga beli dan atau produk di toko tujuan');
       end ;
       //  lib.msgbox('a11111');

     end;

  //   lib.msgbox('a111111');

    bPLUEnd :=true; //;
//     exit;
    // bPLUEnd := false; //true;
    // bPLUStart := true; //false;

      ////////
{
      if sfkonv=':' then
       begin
    //   lib.msgbox('kesitu 0');
         if ghargabelisentral='N' then
         begin
         //   lib.msgbox('kesini N');

            g_lov_stm := 'Select  MPH_MP_SKU,MP_BARCODE,MP_DESCP,ifnull(MPH_AMOUNT,0) MPH_AMOUNT, MP_PPN,MP_MTS_KODE '+
                '  from ms.M_PRODUK '+
                ' left join ms.M_PURCHASE a on (MPH_MV_KODE="'+cds.fieldbyname('TPH_MV_KODE').asstring+'" and MPH_MP_SKU=MP_SKU and MPH_MT_KODE='''+
                  ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif) +''')' +
                ifthen(me_toko.Text= g_uu_group_aktif,'',
            ' left join ms.M_PRODUK_STORE b on (MPS_MP_SKU=MP_SKU and MPS_MT_KODE='''+
                  ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif) +''')' ) +
                ' where MPH_MP_SKU=MP_SKU and MPH_MT_KODE=MP_MT_KODE '+
                ' and trim(MPH_MV_KODE)='''+cds.fieldbyname('TPH_MV_KODE').asstring+''' '+
            ifthen(me_toko.Text= g_uu_group_aktif,'',
                ' and MPS_MT_KODE='''+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'''' )+
                ' group by MPH_MP_SKU order by MP_DESCP'; //MPH_MP_SKU';


//            g_lov_hdr := 'DATA HARGA BELI PRODUK '+edvendor.Text+';PILIH;40;C;SKU;100;C;BARCODE;100;C;Nama Produk;280;L;Cost;80;C;BKP;40;C;TAG;40;C;';

            g_lov_hdr := 'DATA HARGA BELI PRODUK '+edvendor.Text+';SKU;100;C;BARCODE;100;C;Nama Produk;280;L;Cost;80;C;BKP;40;C;TAG;40;C;';

            if g_debug then writeln(f,'xx999: '+ g_lov_stm);
            if g_debug then flush(f);
         end;

         if (ghargabelisentral='Y') then //   coba sini
         begin
    //     lib.msgbox('kesini Y');
            g_lov_stm := 'Select  MPH_MP_SKU,MP_BARCODE,MP_DESCP,ifnull(MPH_AMOUNT,0) MPH_AMOUNT '+
                ' ,MP_MTS_KODE from ms.M_PRODUK '+
                ' left join ms.M_PURCHASE a on (MPH_MV_KODE='+
                  quotedstr(cds.fieldbyname('TPH_MV_KODE').asstring)+
                ' and MPH_MP_SKU=MP_SKU and MPH_MT_KODE='+ QuotedStr(g_uu_group_aktif)+')' +
                ' where MPH_MP_SKU=MP_SKU and MPH_MT_KODE=MP_MT_KODE '+
                ' and MPH_MV_KODE="'+cds.fieldbyname('TPH_MV_KODE').asstring+'"'+
                ' group by MPH_MP_SKU order by MPH_MP_SKU';
              g_lov_hdr := 'DATA HARGA BELI PRODUK '+edvendor.Text+';SKU;100;C;BARCODE;100;C;Nama Produk;280;L;Cost;80;C;TAG;40;C;';
              if g_debug then writeln(f,'xx98: '+ g_lov_stm);
              if g_debug then flush(f);
         end;
       end ;
}
////////

{
      g_lov_stm2:= stringreplace(g_lov_stm,',MPH_FLAG','',[rfReplaceAll]) ;

    lib.msgbox('2 sampai kesini out la yao');
    fmain.cari5(g_lov_stm2);
    if (fmain.scds_cari5.RecordCount>=1) then
    begin
       tlov_all.Create(nil).ShowModal ;
       if (g_lov_nil[0] <> null) then
       begin
         sku_ok:=false;
         if not g_eceran2pak then
         begin
           tanpaekor:=true;
           //if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert)  then cdsd.edit;
           if dbg.SelectedField.FieldName = 'ic_plu' then
           begin
              bPLUEnd   := true; //false; //TRUE;
//              if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
              if ghargabelieceran='Y' then
              begin
                 cdsd.fieldbyname('ic_plu').asstring:=concat(g_lov_nil[0],'2');
                 cdsd.fieldbyname('TPD_MP_SKU').asstring:=g_lov_nil[0];
              end
              else
              begin
                cdsd.fieldbyname('ic_plu').asstring:=g_lov_nil[0];
                cdsd.fieldbyname('TPD_MP_SKU').asstring:=g_lov_nil[0];
              end;
           end
           else
           begin
              if ghargabelieceran='Y' then
              begin
             //    if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;

                 cdsd.fieldbyname('ic_plu_b').asstring:=concat(g_lov_nil[0],'2');
                 cdsd.fieldbyname('TPD_MP_SKU_B').asstring:=g_lov_nil[0];
                 cdsd.fieldbyname('TPD_EKOR_B').asstring:='2'; //concat(g_lov_nil[0],'2');

              end
              else
              begin
               //  if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;

                 cdsd.fieldbyname('ic_plu_b').asstring:=concat(g_lov_nil[0]);
                 cdsd.fieldbyname('TPD_MP_SKU_B').asstring:=concat(g_lov_nil[0]);
                 cdsd.fieldbyname('TPD_EKOR_B').asstring:='2'; //concat(g_lov_nil[0],'2');

              end;
           end;
         end;
         end;
         end;
}
      ///////
     //   lib.msgbox('11xx');

   end;
  //   lib.msgbox('11xxx');

    bPLUEnd :=false; //;
//     exit;
    // bPLUEnd := false; //true;
    // bPLUStart := true; //false;



  end;
   //  lib.msgbox('11xxxx');

  if sender = dbg then
  begin
//  lib.msgbox('11xxxxx');
    dbg.SetFocus;
  end;

  if sender = dbedit7 then dbedit7.SetFocus;

{
    if (sender = me_nomor) and (not me_nomor.readonly) then
    begin
       g_lov_stm := 'select TPH_NO,TPH_DATE,TPH_MV_KODE,MV_NAMA, concat(REPLACE(FORMAT(TPH_AMOUNT,0),'','',''.'')) TPH_AMOUNT,TPH_ITEM,TPH_REF from tr.T_PO_HDR '+
                    ' left join ms.M_VENDOR on MV_MT_KODE='+QuotedStr(g_uu_group_aktif)+' and MV_KODE=TPH_MV_KODE '+
                    ' where TPH_MT_KODE_TS = "'+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'" and TPH_ST_REC = "N" '+
                    ' order by TPH_DATE DESC,TPH_NO DESC';
       g_lov_hdr := 'Data Permintaan Barang;Nomor PO;80;L;Tanggal;80;L;Kode Vendor;80;L;Nama;120;L; Nilai PO (Rp.);90;R;Item;40;C;#PO REF;90;L;';
       if g_debug then writeln(f,'xx94: '+ g_lov_stm);
       if g_debug then flush(f);
 }
   if (sender = me_nomor) and (not me_nomor.readonly) then
    begin
      g_lov_stm := 'select TPH_NO,TPH_MT_KODE,TPH_DATE,TPH_MV_KODE,MV_NAMA, concat(REPLACE(FORMAT(TPH_AMOUNT,0),'','',''.'')) TPH_AMOUNT, concat(REPLACE(FORMAT(TPH_PPN,0),'','',''.'')) TPH_PPN,TPH_ITEM,TPH_REF from tr.T_PO_HDR '+
                    ' left join ms.M_VENDOR on MV_MT_KODE='+QuotedStr(g_uu_group_aktif)+' and MV_KODE=TPH_MV_KODE '+
                    ' where TPH_MT_KODE_TS = "'+ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)+'" and TPH_ST_REC = "N" '+
                    ' order by TPH_DATE DESC,TPH_NO DESC';
       g_lov_hdr := 'Data Permintaan Barang;Nomor PO;70;L;Asal;40;L;Tanggal;75;L;Vendor;65;L;Nama;120;L;Nilai PO (Rp.);85;R;Ppn-M (Rp.);75;R;Item;40;C;#PO REF;90;L;';
       if g_debug then writeln(f,'xx94: '+ g_lov_stm);
       if g_debug then flush(f);

       tlov_all.Create(nil).ShowModal ;
       if (g_lov_nil[0] <> null) then
       begin
         me_nomor.text := g_lov_nil[0];
       end;
    end;

    if (sender = dbevendor) and (not dbevendor.readonly)   then
    begin
       g_lov_stm := 'select MV_KODE, MV_NAMA, MV_MTP_KODE,MV_ST_PKP, MV_KET,MVT_MT_KODE_TF from ms.M_VENDOR,ms.M_VENDOR_TOKO where  MV_KODE=MVT_KODE and MV_TY = "A" and MV_TY_TPO<>"Y" '+
       'and MVT_MT_KODE in (select MTG_UU_KODE from ms.M_TOKO_GROUP where MTG_KODE="'+g_uu_group_aktif+'") '+
       ' and MV_MT_KODE=' +quotedstr(g_uu_group_aktif)+
       ' and MVT_MT_KODE='+quotedstr(me_toko.text)+' order by MV_KODE' ;

       g_lov_hdr := 'Data Vendor;Kode;100;L;Nama Vendor;250;L;TOP;50;L;PKP;50;L;Div;75;L;';
       if g_debug then  writeln(f,'xx93: '+ g_lov_stm);
       if g_debug then flush(f);

       tlov_all.Create(nil).ShowModal ;
       if (g_lov_nil[0] <> null) then
       begin
         dbevendor.Text:= g_lov_nil[0];
       end;
    end;
   if (sender = dbe_date_tiba) and (not dbe_date_tiba.readonly) then
   begin
     g_lov_hdr:=datetostr(date+1);
     tkalender.Create(nil).ShowModal;
     if g_lov_sts then
     begin
         if (cds.state<>dsinsert) and (cds.state<>dsedit) then cds.edit;
         cds.fieldbyname('TPH_DATE_TIBA').asstring := g_lov_nil[0];
     end;
     dbe_date_tiba.setfocus ;
   end;
   if (sender = me_toko) and (not me_toko.readonly) then
    begin
     g_lov_stm := 'Select MT_KODE, MT_NAMA  from ms.M_TOKO  where MT_MG_KODE ='+QuotedStr(g_uu_group_aktif);
     g_lov_hdr := 'Master Toko;Kode;75;L;Nama Toko;180;L;';
     tlov_all.Create(nil).ShowModal ;
     if (g_lov_nil[0] <> null) then
     begin
       me_toko.Text := g_lov_nil[0];
       Edit4.Text:= g_lov_nil[1];
     end;
    end;
 // lib.msgbox('x11xxxx');
end;



procedure Torder.CDSDic_pluValidate(Sender: TField);
var iekor: string;  //double; // integer;
    isku,isku2 : string;  //Int64;
    sbar:string;
    damount,dqty:double;
begin
//lib.msgbox('ic_pluValidate ');

   if bbaru or x_simpan or (isku='0') then
   begin
   //lib.msgbox('isku=0 ?');
   exit;
   end;
//lib.msgbox('0');
 isku:= sender.asstring;
// lib.msgbox('1 : '+isku);

 if (cdsd.fieldbyname('ic_plu').AsString > '0') and (isku<>'0')
    and  not  bPLUEnd  then
  begin
//   lib.msgbox('2 : '+isku);
//     isku:= sender.asstring;

 //  if isku='0' then begin
 //sku_ok:=false; bPLUEnd   := false;bPLUStart := false;abort;
 //end;

   sbar:= sender.asstring;

//lib.msgbox('3 : '+sbar);

//   lib.msgbox('1');


   //if not bPLUEnd  then
//   begin
//      lib.msgbox('2');

        isku:=sender.asstring;
        sbar:= sender.asstring;
        bPLUEnd   := FALSE;
        bPLUStart := TRUE;
        if (length(Sender.AsString) < sku6or8)
            and  (g_multistore) then
        begin
//            lib.msgbox('3 mrene yo');

           sku_ok:=false;
           isku:= leftstr(sender.AsString,length(sender.asstring)); //-1);
           iekor:='';
           fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                  ' MP_KODE = '+quotedstr(isku)+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
          if g_debug then
          writeln(f,'xx90: '+ 'Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                  ' MP_KODE = '+quotedstr(isku)+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')');
          if g_debug then flush(f);
          if not(fmain.scds_cari1.IsEmpty) then
          begin
  //           lib.msgbox('4 mrene yo');

             isku:= concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
             sku_ok:=true;       //corona1      iekor:='2';
             bPLUEnd   := true;
           end;
        end
        else
        {
        if (length(Sender.AsString) = sku6or8)  and
           (g_multistore) then
        begin      //lib.msgbox('(length(Sender.AsString) = sku6or8)  and  (g_multistore)');
                   lib.msgbox('5 mrene yo');

           sku_ok:=false;            //lib.msgbox('mrene yo');
           //lib.msgbox('E');
           isku := leftstr(sender.AsString,length(sender.asstring)); //-1);
           isku2:= leftstr(sender.AsString,length(sender.asstring));
           iekor:= rightstr(sender.AsString,1);

           // lib.msgbox('mrene yoyo '+Sender.AsString);

           fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                ifthen(length(trim(sender.asstring)) >= sku6or8,' MP_SKU = '+quotedstr(isku2), 'MP_KODE = '+quotedstr(isku))+
                ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
            if g_debug then
            writeln(f,'xx89-1: '+'Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                  ifthen(length(trim(sender.asstring)) >= sku6or8,' MP_SKU = '+quotedstr(isku2), 'MP_KODE = '+quotedstr(isku))+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
           if g_debug then flush(f);

          if not(fmain.scds_cari1.IsEmpty) then
          begin

                     lib.msgbox('6 mrene yo');

             sku_ok:=false;
             isku:= concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
         //    lib.msgbox('readonly 13' );
             if (cdsd.state<>dsedit) and (cdsd.state<>dsinsert) then cdsd.Edit;        //     lib.msgbox('alamak2 Sku '+isku+' '+fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
             //      cdsd.fieldbyname('ic_plu').asstring:=concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring,'2');

             cdsd.FieldByName('TPD_MP_SKU').asstring := fmain.scds_cari1.fieldbyname('MP_SKU').asstring;
             iekor:='';
             exit;

          end

          else
          begin
             //        lib.msgbox('7 mrene yo');

             fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                ifthen(length(trim(sender.asstring)) > sku6or8,' MP_BARCODE = '+quotedstr(sender.asstring), 'MP_SKU = '+quotedstr(isku2))+
                ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
              if g_debug then
                writeln(f,'737 - '+'Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                ifthen(length(trim(sender.asstring)) >sku6or8,' MP_BARCODE = '+quotedstr(sender.asstring), 'MP_SKU = '+quotedstr(isku2))+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
              if g_debug then flush(f);
             if not(fmain.scds_cari1.IsEmpty) then
             begin
               lib.msgbox('2 Tentukan satuan belinya');
               isku:= isku2;       //corona2            iekor:='2';
               sku_ok:=false;
               exit;
             end
             else
             if fmain.scds_cari1.IsEmpty then
             begin
                        lib.msgbox('9 mrene yo');

                sku_ok:=false;
                abort;
            end
          end;
//inikah
      end
}
    //    else
//-----------------

if (length(Sender.AsString) = sku6or8)  and  not (g_multistore) then
        begin      //lib.msgbox('(length(Sender.AsString) = sku6or8)  and  (g_multistore)');
           sku_ok:=false;            //
    //       lib.msgbox('10 mrene yo');
           isku := leftstr(sender.AsString,length(sender.asstring)); //-1);
           isku2:= leftstr(sender.AsString,length(sender.asstring));
           iekor:= rightstr(sender.AsString,1);

           // lib.msgbox('mrene yoyo '+Sender.AsString);

           fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                ifthen(length(trim(sender.asstring)) >= sku6or8,' MP_SKU = '+quotedstr(isku2), 'MP_KODE = '+quotedstr(isku))+
                ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
            if g_debug then
            writeln(f,'xx89-2: '+'Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                  ifthen(length(trim(sender.asstring)) >= sku6or8,' MP_SKU = '+quotedstr(isku2), 'MP_KODE = '+quotedstr(isku))+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
             if g_debug then flush(f);
          if not(fmain.scds_cari1.IsEmpty) then
          begin
      //               lib.msgbox('11 mrene yo');

             sku_ok:=false;
             isku:= concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
        //     lib.msgbox('readonly 14' );
             if (cdsd.state<>dsedit) and (cdsd.state<>dsinsert) then cdsd.Edit;        //     lib.msgbox('alamak2 Sku '+isku+' '+fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
                //      cdsd.fieldbyname('ic_plu').asstring:=concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring,'2');
             cdsd.FieldByName('TPD_MP_SKU').asstring := fmain.scds_cari1.fieldbyname('MP_SKU').asstring;
             iekor:='';
             exit;
          end
          else
          begin
        //             lib.msgbox('12 mrene yo');

             fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                ifthen(length(trim(sender.asstring)) > sku6or8,' MP_BARCODE = '+quotedstr(sender.asstring), 'MP_SKU = '+quotedstr(isku2))+
                ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
              if g_debug then
                writeln(f,'737 - '+'Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                ifthen(length(trim(sender.asstring)) >sku6or8,' MP_BARCODE = '+quotedstr(sender.asstring), 'MP_SKU = '+quotedstr(isku2))+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
             if g_debug then flush(f);
             if not(fmain.scds_cari1.IsEmpty) then
             begin
               lib.msgbox('3 Tentukan satuan belinya');
               isku:= isku2;       //corona2            iekor:='2';
               sku_ok:=false;
               exit;
             end
             else
             if fmain.scds_cari1.IsEmpty then
             begin
                 //       lib.msgbox('14 mrene yo');

                sku_ok:=false;
                abort;
            end
          end;
        end


//----------------


        else
        if (length(Sender.AsString) > sku6or8)  then        //and  (g_multistore) then
        begin   //    //   lib.msgbox('15 mrene yo');

           isku := leftstr(sender.AsString,length(sender.asstring)-1);
           iekor:= rightstr(sender.AsString,1);
//        iekor:= ''; //'2';
           //mrene cuk  lib.msgbox('(length(Sender.AsString) > sku6or8)');
           if length(sender.asstring)> sku6or8+1 then
           begin     //            lib.msgbox('Aa');
               fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                ifthen(length(trim(sender.asstring)) > sku6or8,' MP_BARCODE = '+quotedstr(sender.asstring), 'MP_SKU = '+quotedstr(isku))+
                ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );

                if g_debug then
                writeln(f,'7387 - '+'Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                ifthen(length(trim(sender.asstring)) > sku6or8,' MP_BARCODE = '+quotedstr(sender.asstring), 'MP_SKU = '+quotedstr(isku))+
                ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
                if g_debug then flush(f);

                if not(fmain.scds_cari1.IsEmpty) then
                begin
                     //      lib.msgbox('16 mrene yo');

                 if g_debug then
                 writeln(f,'not empty - '+concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring));
                 if g_debug then flush(f);
                   isku:= concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
//                   lib.msgbox('1. ini ketemu ya '+cdsd.FieldByName('TPD_MP_SKU').asstring+'  isku : '+isku+' mp_sku: '+fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
//lib.msgbox('Ab1');
//                 iekor:='';
//                   sku_ok:=true;
//             sku_ok:=false;
//lib.msgbox('Ab2');
//             isku:= concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
             iekor:='';
             sku_ok:=false;
//lib.msgbox('Ab3');
//             if (cdsd.state<>dsedit) and (cdsd.state<>dsinsert) then cdsd.Edit;
//             cdsd.FieldByName('ic_plu').Asstring  := concat(cdsd.FieldByName('TPD_MP_SKU').Asstring,''); //iekor); //cdsd.FieldByName('TPD_EKOR').Asstring);

//             cdsd.FieldByName('TPD_MP_SKU').asstring := fmain.scds_cari1.fieldbyname('MP_SKU').asstring;
//             cdsd.FieldByName('TPD_EKOR').asstring := '0'; //fmain.scds_cari1.fieldbyname('MP_SKU').asstring;
//lib.msgbox('Ab4');
//             iekor:='';
 //            sku_ok:= false;
//             bPLUEnd := false;
//lib.msgbox('Ab5');
//lib.msgbox('readonly 15' );
             if (cdsd.state<>dsedit) and (cdsd.state<>dsinsert) then cdsd.Edit;

             //if g_debug then   writeln(f,'edit cdsd- '+concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring));
             //if g_debug then flush(f);
             cdsd.FieldByName('ic_plu').Asstring  :=  concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
             cdsd.FieldByName('TPD_MP_SKU').asstring :=  concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
//             cdsd.FieldByName('ic_plu').Asstring  := concat(cdsd.FieldByName('TPD_MP_SKU').Asstring,''); //iekor); //cdsd.FieldByName('TPD_EKOR').Asstring);
//             cdsd.FieldByName('TPD_MP_SKU').asstring := fmain.scds_cari1.fieldbyname('MP_SKU').asstring;
             cdsd.FieldByName('TPD_EKOR').asstring := '0'; //fmain.scds_cari1.fieldbyname('MP_SKU').asstring;
             cdsd.FieldByName('ic_plu').Asstring  := concat(cdsd.FieldByName('TPD_MP_SKU').Asstring,'2'); //iekor); //cdsd.FieldByName('TPD_EKOR').Asstring);

//

//lib.msgbox('   06.02.2022 1');
             cdsd.post;
//             lib.msgbox('alamak2 Sku '+isku+' '+fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
//                              sku_ok:=false; //true;

             bPLUEnd := false;
//                         cdsd.FieldByName('ic_plu').Asstring  := concat(cdsd.FieldByName('TPD_MP_SKU').Asstring,'2'); //iekor); //cdsd.FieldByName('TPD_EKOR').Asstring);
                DBG.SelectedIndex := 0;
                sku_ok:=false;
            abort;
              // exit;
            end
            else
            begin
                     //  lib.msgbox('18 mrene yo');

  //            lib.msgbox('Ac');  //B');

       {
       sku_ok:=false;            //lib.msgbox('mrene yo');
           lib.msgbox('E');
           isku := leftstr(sender.AsString,length(sender.asstring)); //-1);
           isku2:= leftstr(sender.AsString,length(sender.asstring));
           iekor:= rightstr(sender.AsString,1);

            lib.msgbox('mrene yoyo '+iekor);

           fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                ifthen(length(trim(sender.asstring)) >= sku6or8,' MP_SKU = '+quotedstr(isku2), 'MP_KODE = '+quotedstr(isku))+
                ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
            if g_debug then
            writeln(f,'xx89-3: '+'Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                  ifthen(length(trim(sender.asstring)) >= sku6or8,' MP_SKU = '+quotedstr(isku2), 'MP_KODE = '+quotedstr(isku))+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
            if g_debug then flush(f);
          if not(fmain.scds_cari1.IsEmpty) then
          begin
              lib.msgbox('1a');

             sku_ok:=false;
             isku:= concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
             if (cdsd.state<>dsedit) and (cdsd.state<>dsinsert) then cdsd.Edit;        //     lib.msgbox('alamak2 Sku '+isku+' '+fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
             cdsd.FieldByName('TPD_MP_SKU').asstring := fmain.scds_cari1.fieldbyname('MP_SKU').asstring;
             iekor:='';
          end;



 bPLUEnd := FALSE;
//                    abort;
        }
                end;
                       //    lib.msgbox('19 mrene yo');

              //        lib.msgbox('C');
               // iekor:= '2';
                iekor:='';
                // isku:= sender.asstring;



          end
        //    end
           else
           begin
                   //   lib.msgbox('20 mrene yo');

              //   lib.msgbox('D');
              isku:= leftstr(sender.AsString,length(sender.asstring)-1);
              iekor:= rightstr(sender.AsString,1);
              //         lib.msgbox('iekor mblo : '+iekor);

           end;


        if (ghargabelisentral='Y') then
        begin
                 //  lib.msgbox('21 mrene yo');

           if g_debug then writeln(f,'97 - '+'ghargabelisentral = y');
           if g_debug then flush(f);
           // lib.msgbox('b');
           fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT,MP_MT_KODE '+
                  ' from ms.M_PRODUK '+
                ifthen(ghargabelisentral='Y','',' left join ms.M_PRODUK_STORE on MPS_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' And MPS_MP_SKU=MP_SKU ')+
                  ' where MP_MT_KODE = '+ ifthen(ghargabelisentral='Y',quotedstr(g_uu_group_aktif),quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)))+
                ifthen(ghargabelisentral='Y','',' AND MPS_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' '+
                  ' AND MPS_MP_SKU=MP_SKU  ')+
                  ' AND MP_SKU = '+quotedstr(isku)+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
                if g_debug then
                writeln(f,'97 - '+
                  'Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT,MP_MT_KODE '+
                  ' from ms.M_PRODUK '+
                ifthen(ghargabelisentral='Y','',' left join ms.M_PRODUK_STORE on MPS_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' And MPS_MP_SKU=MP_SKU ')+
                  ' where MP_MT_KODE = '+ ifthen(ghargabelisentral='Y',quotedstr(g_uu_group_aktif),quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)))+
                ifthen(ghargabelisentral='Y','',' AND MPS_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' '+
                  ' AND MPS_MP_SKU=MP_SKU  ')+
                  ' AND MP_SKU = '+quotedstr(isku)+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
                if g_debug then flush(f);
        end
        else
        begin

//if (cdsd.fieldbyname('TPD_MP_SKU').OldValue<> cdsd.fieldbyname('TPD_MP_SKU').NewValue)
//then
//begin   // aneh

                //   lib.msgbox('22 mrene yo');

            if g_debug then writeln(f,'98 - '+'ghargabelisentral <> y');
            if g_debug then flush(f);
           //  lib.msgbox('c');
           fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP, MP_MK_KODE,MP_VARIAN,MP_MERK, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                ifthen(length(trim(sender.asstring)) >sku6or8+1,' MP_BARCODE = '+quotedstr(sender.asstring), 'MP_SKU = '+quotedstr(isku))+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );

           if g_debug then
           writeln(f,'98 - '+
           'Select MP_SKU, MP_BARCODE, MP_DESCP, MP_MK_KODE,MP_VARIAN,MP_MERK, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                ifthen(length(trim(sender.asstring)) > sku6or8+1,' MP_BARCODE = '+quotedstr(sender.asstring), 'MP_SKU = '+quotedstr(isku))+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
           if g_debug then flush(f);
        end;
        if fmain.scds_cari1.IsEmpty then
        begin
          sku_ok:=false;
          lib.msgbox('Sku '+isku+' tidak ditemukan / tidak dijual di toko ini ');
          abort;
        end;

           if not(fmain.scds_cari1.IsEmpty) then
           begin
                    // lib.msgbox('24 mrene yo');

              isku:= leftstr(sender.AsString,length(sender.asstring)-1);
              iekor:= rightstr(sender.AsString,1);


  //          //   isku:= concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
               sku_ok:=true;
             {  if (cdsd.state<>dsedit) and (cdsd.state<>dsinsert) then cdsd.Edit;
               cdsd.FieldByName('TPD_MP_SKU').asstring := fmain.scds_cari1.fieldbyname('MP_SKU').asstring;
             }
               fmain.cari1('Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                   ifthen((length(trim(sender.asstring))) > sku6or8+1,
                   ' MP_BARCODE = '+quotedstr(sender.asstring),
                   ' MP_SKU = '+quotedstr(isku))+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
if g_debug then
           writeln(f,'98mana - '+
'Select MP_SKU, MP_BARCODE, MP_DESCP,MP_VARIAN,MP_MERK, MP_MK_KODE, MP_MV_KODE, MP_MTS_KODE, '+
                  ' MP_CONV1, MP_CONV2, MP_MINOR, MP_MTS_KODE , MP_ST_CURAH, MP_PPN , MP_PPN_BM, '+
                  ' MP_STOCK, MP_LAST_COST, MP_AVG_COST, MP_AVG_SALES, MP_REVIEW_CYCLE, '+
                  ' MP_MIN_STOCK, MP_MAX_STOCK, MP_ON_ORDER,MP_GIT,MP_SAT '+
                  ' from ms.M_PRODUK where MP_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                  ifthen((length(trim(sender.asstring))) >  sku6or8+1 ,
                  ' MP_BARCODE = '+quotedstr(sender.asstring),
                  ' MP_SKU = '+quotedstr(isku))+
                  ' And MP_MTS_KODE not in ('+QuotedStr('D') +','+QuotedStr('U')+')'
                  );
if g_debug then flush(f);
                 sku_ok:=true;
                     bPLUEnd := false;
                 {}
             end
             else
             if fmain.scds_cari1.IsEmpty then
             begin
                  //      lib.msgbox('25 mrene yo');

        //     lib.msgbox('2 :'+trim(isku));

                  sku_ok:=false;
             end;
                   //     lib.msgbox('25b mrene yo');
                        //not
                        bPLUEnd:=false;

        end;
                    //    lib.msgbox('25c mrene yo');

//end;  buka bentar 8feb2022

        // lib.msgbox('sku ok gak neek');


if sku_ok then
begin
        //   lib.msgbox('sku ok mrene yo ,  26 mrene yo');

       if (ghargabelisentral='Y') then
       begin
          //        lib.msgbox('27 mrene yo');



       if g_debug then
       writeln(f,'1a - '+
         'select MPH_AMOUNT, MPH_DSC_PR1, MPH_DSC_PR2, MPH_DSC_PR3, MPH_DSC_RP1, MPH_DSC_RP2, MPH_DSC_RP3, MPH_PPN_BM, MPH_PPPN_BM,'+
                   ' MPH_P_AMOUNT, MPH_P_DSC_PR1, MPH_P_DSC_PR2, MPH_P_DSC_PR3, MPH_P_DSC_RP1, MPH_P_DSC_RP2, MPH_P_DSC_RP3, MPH_D_FIRST, MPH_D_LAST '+
                   ' from ms.M_PURCHASE  '+
                  ifthen(ghargabelisentral='Y','',' left join ms.M_PRODUK_STORE on MPS_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' And MPS_MP_SKU=MPH_MP_SKU ')+
                   ' where MPH_MT_KODE = '+
                    ifthen(ghargabelisentral='Y',quotedstr(g_uu_group_aktif),
                   quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))) +
                   ' and MPH_MV_KODE = '+quotedstr(cds.fieldbyname('TPH_MV_KODE').asstring)+
                   ' and MPH_MP_SKU = '+quotedstr(isku)+
                 //         ' and MPH_MP_SKU = '+quotedstr(fmain.scds_cari1.fieldbyname('MP_SKU').asstring)+
                  ifthen(ghargabelisentral='Y','',' and MPS_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' And MPS_MP_SKU=MPH_MP_SKU ')
                   );
        if g_debug then flush(f);
          fmain.cari2('select MPH_AMOUNT, MPH_DSC_PR1, MPH_DSC_PR2, MPH_DSC_PR3, MPH_DSC_RP1, MPH_DSC_RP2, MPH_DSC_RP3, MPH_PPN_BM, MPH_PPPN_BM,'+
                   ' MPH_P_AMOUNT, MPH_P_DSC_PR1, MPH_P_DSC_PR2, MPH_P_DSC_PR3, MPH_P_DSC_RP1, MPH_P_DSC_RP2, MPH_P_DSC_RP3, MPH_D_FIRST, MPH_D_LAST '+
                   ' from ms.M_PURCHASE  '+
                  ifthen(ghargabelisentral='Y','',' left join ms.M_PRODUK_STORE on MPS_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' And MPS_MP_SKU=MPH_MP_SKU ')+
                   ' where MPH_MT_KODE = '+
                    ifthen(ghargabelisentral='Y',quotedstr(g_uu_group_aktif),
                   quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))) +
                   ' and MPH_MV_KODE = '+quotedstr(cds.fieldbyname('TPH_MV_KODE').asstring)+
                   ' and MPH_MP_SKU = '+quotedstr(isku)+
                 //         ' and MPH_MP_SKU = '+quotedstr(fmain.scds_cari1.fieldbyname('MP_SKU').asstring)+
                  ifthen(ghargabelisentral='Y','',' and MPS_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' And MPS_MP_SKU=MPH_MP_SKU ')
                   );
              end
        else
        begin
            //       lib.msgbox('28 mrene yo');

           if g_debug then
           writeln(f,'2a - '+
                    'select MPH_AMOUNT, MPH_DSC_PR1, MPH_DSC_PR2, MPH_DSC_PR3, MPH_DSC_RP1, MPH_DSC_RP2, MPH_DSC_RP3, MPH_PPN_BM, MPH_PPPN_BM,'+
                   ' MPH_P_AMOUNT, MPH_P_DSC_PR1, MPH_P_DSC_PR2, MPH_P_DSC_PR3, MPH_P_DSC_RP1, MPH_P_DSC_RP2, MPH_P_DSC_RP3, MPH_D_FIRST, MPH_D_LAST '+
                   ' from ms.M_PURCHASE  '+
                  ifthen(me_toko.Text= g_uu_group_aktif,'',' left join ms.M_PRODUK_STORE on MPS_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' And MPS_MP_SKU=MPH_MP_SKU ')+
                   ' where  MPH_MT_KODE ='+ quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)) +
                   ' and MPH_MV_KODE = '+quotedstr(cds.fieldbyname('TPH_MV_KODE').asstring)+
                   ' and MPH_MP_SKU = '+quotedstr(isku)+
//                   ' and MPH_MP_SKU = '+quotedstr(fmain.scds_cari1.fieldbyname('MP_SKU').asstring)+
                  ifthen(me_toko.Text=g_uu_group_aktif,'',' and MPS_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' And MPS_MP_SKU=MPH_MP_SKU ')
                   );
        if g_debug then flush(f);



       fmain.cari2('select MPH_AMOUNT, MPH_DSC_PR1, MPH_DSC_PR2, MPH_DSC_PR3, MPH_DSC_RP1, MPH_DSC_RP2, MPH_DSC_RP3, MPH_PPN_BM, MPH_PPPN_BM,'+
                   ' MPH_P_AMOUNT, MPH_P_DSC_PR1, MPH_P_DSC_PR2, MPH_P_DSC_PR3, MPH_P_DSC_RP1, MPH_P_DSC_RP2, MPH_P_DSC_RP3, MPH_D_FIRST, MPH_D_LAST '+
                   ' from ms.M_PURCHASE  '+
                  ifthen(me_toko.Text= g_uu_group_aktif,'',' left join ms.M_PRODUK_STORE on MPS_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' And MPS_MP_SKU=MPH_MP_SKU ')+
                   ' where  MPH_MT_KODE ='+ quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif)) +
                   ' and MPH_MV_KODE = '+quotedstr(cds.fieldbyname('TPH_MV_KODE').asstring)+
                   ' and MPH_MP_SKU = '+quotedstr(isku)+
//                   ' and MPH_MP_SKU = '+quotedstr(fmain.scds_cari1.fieldbyname('MP_SKU').asstring)+
                  ifthen(me_toko.Text=g_uu_group_aktif,'',' and MPS_MT_KODE ='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' And MPS_MP_SKU=MPH_MP_SKU ')
                   );

       end;
             //     lib.msgbox('29 mrene yo');


// lib.msgbox('AA');
            bPLUEnd:=false;




if  (fmain.SCDS_Cari2.IsEmpty ) and (isku <>'0') then
begin
//lib.msgbox(trim(isku));
        //   lib.msgbox('30 mrene yo   '+ isku);


       if not (ghargabelisentral='Y') and (trim(isku) <>'0') then
       begin
           lib.msgbox('1 Harga Beli untuk SKU '+ fmain.scds_cari1.fieldbyname('MP_SKU').asstring+'('+iekor +') pada vendor '+cds.fieldbyname('TPH_MV_KODE').asstring+' belum ada !'+#13#10);
           IF (tibanhargapo) then
           begin
               if (cdsd.state<>dsedit) and (cdsd.state<>dsinsert) then cdsd.Edit;        // 12345    lib.msgbox('alamak2 Sku '+isku+' '+fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
               cdsd.FieldByName('TPD_MP_SKU').asstring := fmain.scds_cari1.fieldbyname('MP_SKU').asstring;
                if (length(cdsd.FieldByName('ic_plu').asstring) = sku6or8)
                or ((iekor<>'2')
                and (fmain.scds_cari1.fieldbyname('MP_CONV1').asinteger =1)
                and (fmain.scds_cari1.fieldbyname('MP_CONV2').asinteger =1)) then
                begin
                        lib.msgbox('a. Konversi 1 dan 2 tidak bisa digunakan untuk ekor beli tersebut');
                        sku_ok:=false;
                        abort;
                end;

                //////////                lib.msgbox('F :'+' ekor '+cdsd.FieldByName('TPD_EKOR').Asstring);
                cdsd.FieldByName('TPD_EKOR').asstring := iekor;
                //DBG.SelectedIndex := 3;
                dbg.Columns[4].ReadOnly:=false;
                dbg.Columns[5].ReadOnly:=false;

                fmain.GridSelected(DBG,[0],[3],cdsd) ;

                DBG.SelectedIndex := 2;


                sku_ok:=true;
           end
           else
           begin
                //////////
      //     lib.msgbox('F :'+' ekor '+cdsd.FieldByName('TPD_EKOR').Asstring);
           if (cdsd.state<>dsedit) and (cdsd.state<>dsinsert) then cdsd.Edit;
                   cdsd.FieldByName('TPD_MP_SKU').asstring := isku;
           sku_ok:=false;
           //exit;
           //abort;
           end;
       end
       else
       if (length(sender.asstring)= sku6or8) and
       not(fmain.scds_cari2.IsEmpty) then
       begin
              lib.msgbox('Tentukan SKU Ekor beli-nya');
             // lib.msgbox('readonly 18' );
               if (cdsd.state<>dsedit) and (cdsd.state<>dsinsert) then cdsd.Edit;
           //    cdsd.FieldByName('TPD_MP_SKU').asstring := isku;
           //    cdsd.FieldByName('TPD_EKOR').asstring := iekor;
           //    cdsd.FieldByName('ic_plu').asstring := concat(isku,iekor);
           //    isku:= isku2; // concat(fmain.scds_cari1.fieldbyname('MP_SKU').asstring);
               //iekor:='2';
               sku_ok:=false;
               bPLUEnd := false;
               exit;
       end;

        if (iekor < '0') or (iekor>'2') then
        begin
          sku_ok:=false;
          lib.msgbox('SKU Ekor beli-nya salah');
          abort;
        end
//
end;
          // lib.msgbox('31 mrene yo');


{
else
}
if (length(cdsd.FieldByName('ic_plu').asstring) = sku6or8)
or ((iekor<>'2')
and (fmain.scds_cari1.fieldbyname('MP_CONV1').asinteger =1)
and (fmain.scds_cari1.fieldbyname('MP_CONV2').asinteger =1)) then
begin
    lib.msgbox('Konversi 1 dan Konversi 2 tidak bisa digunakan untuk ekor beli tersebut');
    sku_ok:=false;
    abort;
    cdsd.FieldByName('ic_plu').asstring := '';
    cdsd.FieldByName('TPD_MP_SKU').asstring := '';
    cdsd.FieldByName('TPD_EKOR').asstring := '';
    cdsd.FieldByName('TPD_DESCP').asstring := '';
    cdsd.FieldByName('TPD_BARCODE').asstring := '';
    cdsd.FieldByName('TPD_DESCP').asstring := '';
    abort;
end;
{}
         //  lib.msgbox('33 mrene yo');


//kalang ini untuk yg bukan marcit
       if pos(fmain.scds_cari1.fieldbyname('MP_MTS_KODE').asstring,stag) = 0 then
       begin
            sku_ok:=false;
            lib.msgbox('SKU ini tidak bisa order');
            abort;
       end;
           //       lib.msgbox('34 mrene yo');

{}

       if sppn ='9' then sppn := fmain.scds_cari1.fieldbyname('MP_PPN').AsString;

       if (sppn <>'9') and (sppn <> fmain.scds_cari1.fieldbyname('MP_PPN').AsString) then
       begin
         lib.msgbox('barang BKP dan non BKP, PO harus dipisah');
         abort;
       end;

       cdsd.FieldByName('ic_hjual').asfloat := 0;
       fmain.cari3('Select * from ms.M_PRICE where MPR_MT_KODE = '+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+ ' AND '+
                   'MPR_MP_SKU = '+QuotedStr(isku));

       { }
       if (fmain.scds_cari3.IsEmpty) or
          (fmain.scds_cari3.fieldbyname('MPR_PRICE0').AsInteger+
           fmain.scds_cari3.fieldbyname('MPR_PRICE1').AsInteger+
           fmain.scds_cari3.fieldbyname('MPR_PRICE2').AsInteger
           <=0) then
       begin
            lib.msgbox('Produk ini belum disetting harga jualnya');
            //abort;
       end;
                //  lib.msgbox('35 mrene yo');

       cdsd.FieldByName('TPD_MP_SKU').asstring := fmain.scds_cari1.fieldbyname('MP_SKU').asstring;
//lib.msgbox('G :'+iekor+' ekor '+cdsd.FieldByName('TPD_EKOR').Asstring);
       cdsd.FieldByName('TPD_EKOR').asstring := iekor;
       cdsd.FieldByName('TPD_BARCODE').asstring := fmain.scds_cari1.fieldbyname('MP_BARCODE').asstring;
       cdsd.FieldByName('TPD_DESCP').asstring := fmain.scds_cari1.fieldbyname('MP_DESCP').asstring;
       cdsd.FieldByName('TPD_CONV1').asinteger := fmain.scds_cari1.fieldbyname('MP_CONV1').asinteger;
       cdsd.FieldByName('TPD_CONV2').asinteger := fmain.scds_cari1.fieldbyname('MP_CONV2').asinteger;
       cdsd.FieldByName('TPD_MK_KODE').asstring := fmain.scds_cari1.fieldbyname('MP_MK_KODE').asstring;
       cdsd.FieldByName('TPD_MTS_KODE').asstring := fmain.scds_cari1.fieldbyname('MP_MTS_KODE').asstring;

       cdsd.FieldByName('ic_bonus').asstring := 'X';
       cdsd.FieldByName('ic_curah').asstring := fmain.scds_cari1.fieldbyname('MP_ST_CURAH').asstring;
       cdsd.FieldByName('ic_minor').asfloat := fmain.scds_cari1.fieldbyname('MP_MINOR').asfloat;
       cdsd.FieldByName('ic_ppn').asstring := fmain.scds_cari1.fieldbyname('MP_PPN').asstring;
       cdsd.FieldByName('ic_ppn_bm').asstring := fmain.scds_cari1.fieldbyname('MP_PPN_BM').asstring;

       cdsd.FieldByName('ic_on_hand').asfloat := fmain.scds_cari1.fieldbyname('MP_STOCK').asfloat;
       cdsd.FieldByName('ic_last_cost').asfloat := fmain.scds_cari1.fieldbyname('MP_LAST_COST').asfloat;
       cdsd.FieldByName('ic_avg_cost').asfloat := fmain.scds_cari1.fieldbyname('MP_AVG_COST').asfloat;
       cdsd.FieldByName('ic_avg_sales').asfloat := fmain.scds_cari1.fieldbyname('MP_AVG_SALES').asfloat;

       cdsd.FieldByName('ic_min_stock').asfloat := fmain.scds_cari1.fieldbyname('MP_MIN_STOCK').asfloat;
       cdsd.FieldByName('ic_max_stock').asfloat := fmain.scds_cari1.fieldbyname('MP_MAX_STOCK').asfloat;
       cdsd.FieldByName('ic_on_order').asfloat := fmain.scds_cari1.fieldbyname('MP_ON_ORDER').asfloat;
       cdsd.FieldByName('ic_git').asfloat := fmain.scds_cari1.fieldbyname('MP_GIT').asfloat;
       cdsd.FieldByName('ic_promo').asfloat := 0;
       cdsd.FieldByName('ic_service_level').asfloat := 0;
       cdsd.FieldByName('ic_lead_time').asfloat :=cds.fieldbyname('ic_leadtime').AsInteger   ;

       cdsd.FieldByName('ic_hjual').asfloat := fmain.scds_cari3.fieldbyname('MPR_PRICE2').AsInteger;
        //   lib.msgbox('36 mrene yo');

  if cdsd.FieldByName('ic_ppn').AsString ='1' then
  begin
    if (cdsd.FieldByName('ic_hjual').AsFloat <> 0 ) then
       cdsd.FieldByName('ic_harga_excl_ppn').Asfloat:=(cdsd.FieldByName('ic_hjual').Asfloat/1.1)
    else
       cdsd.FieldByName('ic_harga_excl_ppn').Asfloat:=(cdsd.FieldByName('ic_hjual').Asfloat);
  end    //-(cdshj.FieldByName('MPR_PRICE2').Asfloat/1.1)* cdshj.FieldByName('MPR_DSC_PR2').Asfloat/100;
  else
  cdsd.FieldByName('ic_harga_excl_ppn').Asfloat:=(cdsd.FieldByName('ic_hjual').Asfloat);


  if (cdsd.FieldByName('ic_harga_excl_ppn').AsFloat > 0) then
  begin
    cdsd.FieldByName('ic_rp_mup_avg').AsFloat  := (cdsd.FieldByName('ic_harga_excl_ppn').AsFloat-cdsd.FieldByName('ic_avg_cost').AsFloat);
    if (cdsd.FieldByName('ic_rp_mup_avg').AsFloat) <> 0 then
        cdsd.FieldByName('ic_mup_avg').AsFloat := (cdsd.FieldByName('ic_rp_mup_avg').AsFloat)/cdsd.FieldByName('ic_harga_excl_ppn').AsFloat*100;
    cdsd.FieldByName('ic_rp_mup_lcost').AsFloat  := (cdsd.FieldByName('ic_harga_excl_ppn').AsFloat-cdsd.FieldByName('ic_last_cost').AsFloat);
    if (cdsd.FieldByName('ic_rp_mup_lcost').AsFloat) <> 0 then
        cdsd.FieldByName('ic_mup_lcost').AsFloat := (cdsd.FieldByName('ic_rp_mup_lcost').AsFloat)/cdsd.FieldByName('ic_harga_excl_ppn').AsFloat*100;
    cdsd.FieldByName('ic_rp_mup_netto').AsFloat  := (cdsd.FieldByName('ic_harga_excl_ppn').AsFloat-cdsd.FieldByName('TPD_NETTO').AsFloat);
    if (cdsd.FieldByName('ic_rp_mup_netto').AsFloat) <> 0 then
        cdsd.FieldByName('ic_mup_netto').AsFloat := (cdsd.FieldByName('ic_rp_mup_netto').AsFloat)/cdsd.FieldByName('ic_harga_excl_ppn').AsFloat*100;
  end;

// lib.msgbox('x :'+iekor+' ekor '+cdsd.FieldByName('TPD_EKOR').Asstring);


      if (sbar<>'') then
        if g_eceran2pak then
        begin
                //   lib.msgbox('37 mrene yo');

//        lib.msgbox('H :'+iekor+' ekor '+cdsd.FieldByName('TPD_EKOR').Asstring);
  //           cdsd.FieldByName('TPD_EKOR').asstring := '2';
          //   lib.msgbox('geblek kok di set jadi 2');
        end
        else
        begin
                 //  lib.msgbox('38 mrene yo');

//          lib.msgbox('I :'+iekor+' ekor '+cdsd.FieldByName('TPD_EKOR').Asstring);
  //        cdsd.FieldByName('TPD_EKOR').asstring :=  iekor;
        end;

    //    lib.msgbox('J :'+iekor+' ekor '+cdsd.FieldByName('TPD_EKOR').Asstring);

      if  cdsd.FieldByName('TPD_EKOR').asstring='0' then
            cdsd.FieldByName('TPD_DESCP').asstring := cdsd.FieldByName('TPD_DESCP').asstring+';'+
            ifthen(copy(fmain.scds_cari1.fieldbyname('MP_SAT').asstring,1,3)<>'',copy(fmain.scds_cari1.fieldbyname('MP_SAT').asstring,1,3),'DUS')
       else
       if  cdsd.FieldByName('TPD_EKOR').asstring='1' then
            cdsd.FieldByName('TPD_DESCP').asstring := cdsd.FieldByName('TPD_DESCP').asstring+';'+
            ifthen(copy(fmain.scds_cari1.fieldbyname('MP_SAT').asstring,4,3)<>'',copy(fmain.scds_cari1.fieldbyname('MP_SAT').asstring,4,3),'PAK')
       else
       if  cdsd.FieldByName('TPD_EKOR').asstring='2' then
            cdsd.FieldByName('TPD_DESCP').asstring := cdsd.FieldByName('TPD_DESCP').asstring+';'+
            ifthen(copy(fmain.scds_cari1.fieldbyname('MP_SAT').asstring,7,3)<>'',copy(fmain.scds_cari1.fieldbyname('MP_SAT').asstring,7,3),'PCS');

  //    lib.msgbox('K :'+iekor+' ekor '+cdsd.FieldByName('TPD_EKOR').Asstring);
       if sku_ok AND  not (fmain.SCDS_Cari2.IsEmpty) then
       begin
       damount := fmain.scds_cari2.fieldbyname('MPH_AMOUNT').asfloat;
       if bpkp and bprinsipal and (cdsd.fieldbyname('ic_ppn_bm').asstring = '1') then
       cdsd.fieldbyname('TPD_PPN_BM').AsFloat   :=  fmain.scds_cari2.fieldbyname('MPH_PPN_BM').asfloat;
       cdsd.FieldByName('TPD_DSC_PR1').asfloat := fmain.scds_cari2.fieldbyname('MPH_DSC_PR1').asfloat;
       cdsd.FieldByName('TPD_DSC_PR2').asfloat := fmain.scds_cari2.fieldbyname('MPH_DSC_PR2').asfloat;
       cdsd.FieldByName('TPD_DSC_PR3').asfloat := fmain.scds_cari2.fieldbyname('MPH_DSC_PR3').asfloat;
       cdsd.FieldByName('TPD_DSC_RP1').asfloat := fmain.scds_cari2.fieldbyname('MPH_DSC_RP1').asfloat;
       cdsd.FieldByName('TPD_DSC_RP2').asfloat := fmain.scds_cari2.fieldbyname('MPH_DSC_RP2').asfloat;
       cdsd.FieldByName('TPD_DSC_RP3').asfloat := fmain.scds_cari2.fieldbyname('MPH_DSC_RP3').asfloat;
       if (fmain.scds_cari2.fieldbyname('MPH_D_FIRST').AsDateTime <= date) and (fmain.scds_cari2.fieldbyname('MPH_D_LAST').AsDateTime >= date) and
          (fmain.scds_cari2.fieldbyname('MPH_P_AMOUNT').Asfloat > 0)then
       begin
           damount:= fmain.scds_cari2.fieldbyname('MPH_P_AMOUNT').asfloat;
           if bprinsipal then
           cdsd.fieldbyname('TPD_PPN_BM').AsFloat   :=  fmain.scds_cari2.fieldbyname('MPH_PPN_BM').asfloat;
           cdsd.FieldByName('TPD_DSC_PR1').asfloat := fmain.scds_cari2.fieldbyname('MPH_P_DSC_PR1').asfloat;
           cdsd.FieldByName('TPD_DSC_PR2').asfloat := fmain.scds_cari2.fieldbyname('MPH_P_DSC_PR2').asfloat;
           cdsd.FieldByName('TPD_DSC_PR3').asfloat := fmain.scds_cari2.fieldbyname('MPH_P_DSC_PR3').asfloat;
           cdsd.FieldByName('TPD_DSC_RP1').asfloat := fmain.scds_cari2.fieldbyname('MPH_P_DSC_RP1').asfloat;
           cdsd.FieldByName('TPD_DSC_RP2').asfloat := fmain.scds_cari2.fieldbyname('MPH_P_DSC_RP2').asfloat;
           cdsd.FieldByName('TPD_DSC_RP3').asfloat := fmain.scds_cari2.fieldbyname('MPH_P_DSC_RP3').asfloat;
       end;

//         lib.msgbox('L :'+iekor+' ekor '+cdsd.FieldByName('TPD_EKOR').Asstring);
       case cdsd.FieldByName('TPD_EKOR').asinteger of
           0 : cdsd.fieldbyname('TPD_AMOUNT').AsFloat    := damount * cdsd.fieldbyname('TPD_CONV2').asinteger;
           1 : cdsd.fieldbyname('TPD_AMOUNT').AsFloat    := damount * (cdsd.fieldbyname('TPD_CONV2').asinteger/cdsd.fieldbyname('TPD_CONV1').asinteger);
           2 : cdsD.fieldbyname('TPD_AMOUNT').AsFloat    := damount;
       end;
       dqty:=0;
       case cdsd.fieldbyname('TPD_EKOR').asinteger of
          0 :  dqty := cdsd.fieldbyname('TPD_QTY').AsInteger  * cdsd.fieldbyname('TPD_CONV2').asinteger;
          1 :  dqty := cdsd.fieldbyname('TPD_QTY').AsInteger * (cdsd.fieldbyname('TPD_CONV2').asinteger/cdsd.fieldbyname('TPD_CONV1').asinteger);
          2 :  dqty := cdsd.fieldbyname('TPD_QTY').AsInteger;
       end;
       end;
//  lib.msgbox('M :'+iekor+' ekor '+cdsd.FieldByName('TPD_EKOR').Asstring);
{
       isku := cdsd.FieldByName('TPD_MP_SKU').asstring ;
       fmain.cari3('Select MPG_HEIGHT, MPG_WIDTH, MPG_DEPTH, MPG_WEIGHT, '+
                  ' MPG_HEIGHT_PER_FIB, MPG_WIDTH_PER_FIB, MPG_DEPTH_PER_FIB, MPG_WEIGHT_PER_FIB'+
                  ' from ms.M_PRODUK_NAS where MPG_MT_KODE = '+quotedstr(g_uu_group_aktif)+ ' AND '+
                  ' MPG_SKU = '+quotedstr(inttostr(isku)));

       if not fmain.scds_cari3.IsEmpty then
       begin
       if (cdsd.state <> dsedit) and (cdsd.state <> dsinsert) then cdsd.edit;
       if cdsd.FieldByName('TPD_QTY').AsFloat >0 then
       begin
          cdsd.FieldByName('ic_volume').AsFloat :=  (((fmain.scds_cari3.fieldbyname('MPG_HEIGHT_PER_FIB').AsFloat*fmain.scds_cari3.fieldbyname('MPG_WIDTH_PER_FIB').AsFloat*fmain.scds_cari3.fieldbyname('MPG_DEPTH_PER_FIB').AsFloat) /1000000)/ cdsd.fieldbyname('TPD_CONV2').asinteger * dqty)  ;
          cdsd.FieldByName('TPD_VOLUME').AsFloat := cdsd.FieldByName('ic_volume').AsFloat; // * dqty; //cdsd.FieldByName('TPD_QTY').AsFloat ;
          cdsd.FieldByName('TPD_BIAYA_KUBIKASI').AsFloat :=  0 ; //cdsd.FieldByName('TPD_QTY').AsFloat *fmain.scds_cari3.fieldbyname('MPG_BIAYA_KUBIKASI').AsFloat;


////
//            fmain.cari1('select MM_UU_ORG,MM_UU_DEST,MM_MK_KODE,MM_LOCKER,MO_JLOCKER,MO_FARE_M3 from ms.M_MAP_ONGKIR,ms.M_ONGKIR '+
//                        ' where MO_KODE=MM_LOCKER and MM_MK_KODE='+quotedstr(inttostr( isku))+
//                        ' and MM_UU_ORG='+quotedstr(ifthen(b_sts_uu= '1',me_toko.Text,g_uu_code_aktif))+' and MM_UU_DEST='+quotedstr(dbe_toko.Text) );
//            if not (fmain.scds_cari1.IsEmpty) then
//            begin
//               cdsd.FieldByName('TTOD_FARE').AsVariant := fmain.scds_cari1.fieldbyname('MO_FARE_M3').AsVariant;
 //           end
//            else
//            begin
//               cdsd.FieldByName('TTOD_FARE').AsVariant := 1;
//            end;
///


          cdsd.FieldByName('ic_berat').AsFloat :=  fmain.scds_cari3.fieldbyname('MPG_WEIGHT_PER_FIB').AsFloat / cdsd.FieldByName('TPD_CONV2').AsInteger ;
          cdsd.FieldByName('TPD_BERAT').AsFloat := cdsd.FieldByName('ic_berat').AsFloat * dqty;  //cdsd.FieldByName('TPD_QTY').AsFloat ;
       end;

if cdsd.FieldByName('TPD_QTY').AsFloat >0 then
begin

       if cdsd.FieldByName('ic_volume').AsFloat=0 then
       begin
          lib.msgbox('SKU tsb belum memiliki data dimensi, silakan lakukan pengisian dimensi ');
          abort;
       end;
       end;
end;
}
//lib.msgbox('06.02.2022 2');
//if sku_ok and
//      bPLUEnd := true;
//if      (cdsd.state=dsinsert)
//and  not bPLUEnd
//      then

//lib.msgbox('38a mrene yo');

if cdsd.FieldByName('TPD_QTY').AsFloat =0 then
fmain.GridSelected(DBG,[0],[3],cdsd)
else
fmain.GridSelected(DBG,[0],[3],cdsd);

inc(xbaris);
inc(konter);

if konter> cdsd.RecordCount+1 then konter:= CDSD.RecordCount+1;

if xbaris>= cdsd.RecordCount then xbaris:= CDSD.RecordCount;
//
label62.Caption:='#'+inttostr(konter)+'/'+inttostr(xbaris);



     bPLUEnd := false; //true; //false;
//exit;
//      cdsd.post;
  //         lib.msgbox('39 mrene yo');
//       bPLUEnd := true; //false;
      bbaru := false;
   end
   else
   begin
  //         lib.msgbox('40 mrene yo');

     bPLUEnd := FALSE;

    //tambahan
     bPLUawal:=TRUE;
   end;
//     lib.msgbox('1z');
end  ;
    //         lib.msgbox('z1x');
              bPLUEnd := FALSE;
              // bPLUawal:=TRUE;
{
   else
   begin
     //
      //       lib.msgbox('1x');
     bPLUEnd := FALSE;
   end;
 }
//end; //if nor readonly
end;


end.

