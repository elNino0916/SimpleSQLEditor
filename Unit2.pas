unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, Vcl.Menus, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    sqlcmd: TMemo;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    Beenden: TAction;
    Action11: TMenuItem;
    Beenden1: TMenuItem;
    ActionList2: TActionList;
    Action1: TAction;
    Action12: TMenuItem;
    Action13: TMenuItem;
    FileSaveDialog1: TFileSaveDialog;
    saveasfile: TButton;
    Button1: TButton;
    FileOpenDialog1: TFileOpenDialog;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure BeendenExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure saveasfileClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Action1Execute(Sender: TObject);
begin
try
      ADOQuery1.Close;
finally
end;
try
ADOQuery1.SQL.Text := sqlcmd.Lines.Text;
ADOQuery1.Open;
finally
end;
end;

procedure TForm2.BeendenExecute(Sender: TObject);
begin
Close;
end;
procedure TForm2.Button1Click(Sender: TObject);
var
  FileStream: TFileStream;
  FileContent: string;
begin
    if FileOpenDialog1.Execute then
    begin
      FileStream := TFileStream.Create(FileOpenDialog1.FileName, fmOpenRead);
      try
        SetLength(FileContent, FileStream.Size div SizeOf(Char));
        FileStream.Read(Pointer(FileContent)^, FileStream.Size);

        sqlcmd.Lines.Text := FileContent;
      finally
        FileStream.Free;
      end;
    end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
try
      ADOQuery1.Close;
finally
end;
try
ADOQuery1.SQL.Text := sqlcmd.Lines.Text;
ADOQuery1.Open;
finally
end;
end;

procedure TForm2.saveasfileClick(Sender: TObject);
var
  MemoContent: string;
  FileStream: TFileStream;
begin
 if FileSaveDialog1.Execute then
    begin
      MemoContent := sqlcmd.Lines.Text;
      FileStream := TFileStream.Create(FileSaveDialog1.FileName, fmCreate);
      try
        FileStream.Write(Pointer(MemoContent)^, Length(MemoContent) * SizeOf(Char));
      finally
        FileStream.Free;
      end;
    end;
end;

end.
