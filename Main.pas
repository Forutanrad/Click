unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, ZylTimer,
  Data.DB, MemDS, DBAccess, Uni, UniProvider, MySQLUniProvider, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFrmMain = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ZylTimer1: TZylTimer;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Label6: TLabel;
    ZylTimer2: TZylTimer;
    UniConnection1: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    TblClick: TUniTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure ZylTimer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ZylTimer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}



procedure TFrmMain.FormCreate(Sender: TObject);
var r : TRect;
begin
    //it would be a good idea to move the
    //mouse inside the form before restriction
   r := BoundsRect;
   ClipCursor(@R) ;
end;

procedure TFrmMain.ZylTimer1Timer(Sender: TObject);
begin


IF  TblClick.EOF = FALSE THEN
   BEGIN
     // ShowMessage('Q');
      SetCursorPos(TblClick.Fields.Fields[0].Value, TblClick.Fields.Fields[1].Value); //set cursor to Start menu coordinates
      mouse_event(MOUSEEVENTF_LEFTDOWN,0, 0, 0, 0); //press left button
      mouse_event(MOUSEEVENTF_LEFTUP,0, 0, 0, 0); //release left button
   TblClick.Next;
   END
ELSE
   TblClick.First;
   //SetCursorPos(20, 35) ;
   //Application.ProcessMessages;
   //SetCursorPos(20, 35) ;
   //Screen.Cursor := crArrow

end;

procedure TFrmMain.ZylTimer2Timer(Sender: TObject);
var pt : TPoint;
begin
   Application.ProcessMessages;
   Screen.Cursor := crHourglass;
   GetCursorPos(pt) ;
   Edit1.Text := inttostr(pt.x );
   Edit2.Text := inttostr(pt.y );
end;

procedure TFrmMain.Button1Click(Sender: TObject);
begin
  ZylTimer1.Interval := ZylTimer1.Interval + 100;
  if ZylTimer1.Interval = 0 then
   ZylTimer1.Interval := 10;

end;

procedure TFrmMain.Button2Click(Sender: TObject);
begin
  ZylTimer1.Interval := ZylTimer1.Interval - 100;
end;

procedure TFrmMain.FormClick(Sender: TObject);
begin
   ClipCursor(nil) ;
end;




end.
