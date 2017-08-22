unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, ToolWin, ImgList, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save2: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Format1: TMenuItem;
    Font1: TMenuItem;
    Color1: TMenuItem;
    Alignment1: TMenuItem;
    Center1: TMenuItem;
    Left1: TMenuItem;
    Right1: TMenuItem;
    About1: TMenuItem;
    Edit1: TMenuItem;
    Save1: TMenuItem;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    Patse1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ImageList1: TImageList;
    Howtouseme1: TMenuItem;
    About2: TMenuItem;
    Feedback1: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    Clean1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Copy2: TMenuItem;
    Cut2: TMenuItem;
    Patse2: TMenuItem;
    Clean2: TMenuItem;
    Undo1: TMenuItem;
    Undo2: TMenuItem;
    Memo1: TMemo;
    procedure Timer1Timer(Sender: TObject);
    procedure New1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Patse1Click(Sender: TObject);
    procedure Font1Click(Sender: TObject);
    procedure Color1Click(Sender: TObject);
    procedure Center1Click(Sender: TObject);
    procedure Left1Click(Sender: TObject);
    procedure Right1Click(Sender: TObject);
    procedure Howtouseme1Click(Sender: TObject);
    procedure About2Click(Sender: TObject);
    procedure Feedback1Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure Clean1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Undo1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Memo1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels[0].Text:='  Time: '+datetimetostr(now);
end;

procedure TForm1.New1Click(Sender: TObject);
var i:integer;
begin
if Memo1.Modified = true then
begin
i:=messagedlg('The file has been modified,do you want to save it?',mtwarning,mbyesnocancel,0);   //mtconfirmation含有绿色问号的确认对话框,第三个参数是出现在消息框上的组合按钮,第四个参数是帮助ID
case i of
6:   //idYes按是按钮
begin
if savedialog1.Execute then
Memo1.Lines.SaveToFile(savedialog1.FileName);
form1.Caption:='No title--lsanote';
Memo1.Lines.Clear;
Memo1.Modified:=false;
end;
7:   //idNo按否按钮
begin
form1.Caption:='No title--lsanote';
Memo1.Lines.Clear;
Memo1.Modified:=false;
end;
2:   //idCancel按取消按钮
exit;
end;
end else   //如果文件没被修改过
begin
form1.Caption:='No title--lsanote';
Memo1.Lines.Clear;
Memo1.Modified:=false;
end;
end;

procedure TForm1.Open1Click(Sender: TObject);
var k:integer;
begin
if Memo1.Modified=false then   //文件没被修改过，则直接可以打开
begin
if opendialog1.Execute then
begin
form1.Caption:=opendialog1.FileName;
Memo1.Lines.LoadFromFile(opendialog1.FileName);
Memo1.ReadOnly:=ofreadonly in opendialog1.Options;
end;
end   //以上部分无bug------------------------------------------------
else   //文件被修改过，要出现提示
if form1.Caption='No title--lsanote' then   //这是一个新建的文件，用另存为
begin
k:=messagedlg('The file has been modified,do you want to save it?',mtwarning,mbyesnocancel,0);
if k=6 then
begin
if savedialog1.Execute then
begin
if fileexists(savedialog1.FileName) then
if messagedlg(format('The file %s exists,do you want to cover it?',[savedialog1.FileName]),mtconfirmation,mbyesnocancel,0)<>idyes then
exit;   //点是则覆盖，否则退出
Memo1.Lines.SaveToFile(savedialog1.FileName);
form1.Caption:=savedialog1.FileName;
Memo1.Modified:=false;
end;
end;   //以上代码按是
if k=7 then
begin  //按否，即不保存直接打开别的文件
if opendialog1.Execute then
begin
form1.Caption:=opendialog1.FileName;
Memo1.Lines.LoadFromFile(opendialog1.FileName);
Memo1.ReadOnly:=ofreadonly in opendialog1.Options;
end;
end   //以上代码按否
else   //按cancel
exit;
end
else   //文件是存在的
begin
k:=messagedlg('The file has been modified,do you want to save it?',mtwarning,mbyesnocancel,0);
if k=6 then //直接保存
Memo1.Lines.SaveToFile(form1.Caption);
Memo1.Modified:=false;
if k=7 then   //不保存
begin
if opendialog1.Execute then
begin
form1.Caption:=opendialog1.FileName;
Memo1.Lines.LoadFromFile(opendialog1.FileName);
Memo1.ReadOnly:=ofreadonly in opendialog1.Options;
end;
end
else
exit;
end;
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
if Form1.Caption='No title--lsanote' then
begin
if savedialog1.Execute then
begin
if fileexists(savedialog1.FileName) then
if messagedlg(format('The file %s exists,do you want to cover it?',[savedialog1.FileName]),mtconfirmation,mbyesnocancel,0)<>idyes then
exit;   //点是则覆盖，否则退出
Memo1.Lines.SaveToFile(savedialog1.FileName);
form1.Caption:=savedialog1.FileName;
Memo1.Modified:=false;
end;
end
else if fileexists(form1.Caption) then
begin
Memo1.Lines.SaveToFile(form1.Caption);
Memo1.Modified:=false;
end
else
begin
Memo1.Lines.SaveToFile(savedialog1.filename);
Memo1.Modified:=false;
end;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Copy1Click(Sender: TObject);
begin
form1.Memo1.CopyToClipboard;
end;

procedure TForm1.Cut1Click(Sender: TObject);
begin
form1.Memo1.CutToClipboard;
end;

procedure TForm1.Patse1Click(Sender: TObject);
begin
form1.Memo1.PasteFromClipboard;
end;

procedure TForm1.Font1Click(Sender: TObject);
begin
if form1.FontDialog1.Execute then
form1.Memo1.Font:=fontdialog1.Font;
end;

procedure TForm1.Color1Click(Sender: TObject);
begin
if form1.ColorDialog1.Execute then
form1.Memo1.font.color:=colordialog1.color;
end;

procedure TForm1.Center1Click(Sender: TObject);
begin
Memo1.Alignment:=tacenter;
end;

procedure TForm1.Left1Click(Sender: TObject);
begin
Memo1.Alignment:=taleftjustify;
end;

procedure TForm1.Right1Click(Sender: TObject);
begin
Memo1.Alignment:=tarightjustify;
end;

procedure TForm1.Howtouseme1Click(Sender: TObject);
begin
HTUT.show;
end;

procedure TForm1.About2Click(Sender: TObject);
begin
About2_0.show;
end;

procedure TForm1.Feedback1Click(Sender: TObject);
begin
FB.show;
end;

procedure TForm1.Save2Click(Sender: TObject);
begin
if savedialog1.Execute then
begin
if fileexists(savedialog1.FileName) then
if messagedlg(format('The file %s exists,do you want to cover it?',[savedialog1.FileName]),mtconfirmation,mbyesnocancel,0)<>idyes then
exit;   //点是则覆盖，否则退出
Memo1.Lines.SaveToFile(savedialog1.FileName);
form1.Caption:=savedialog1.FileName;
Memo1.Modified:=false;
end;
end;

procedure TForm1.ToolButton9Click(Sender: TObject);
begin
winexec('cmd.exe',sw_show);
end;

procedure TForm1.Clean1Click(Sender: TObject);
begin
form1.Memo1.Lines.Clear;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var j,i:integer;
begin
if Memo1.Modified = false then
begin
i:=MessageDlg('Really close?',mtconfirmation,[mbYes,mbNo],0);
if i=6 then
CanClose:=True
else
CanClose:=False;
end
else
begin
j:=MessageDlg('The file has been modified,do you want to save it?',mtwarning,[mbYes,mbNo],0);
if j=6 then
CanClose:=False
else
CanClose:=True;
end;
end;



procedure TForm1.Undo1Click(Sender: TObject);
begin
Memo1.Undo;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
statusbar1.Panels[1].Text:='  Word: '+inttostr(length(Memo1.Text));
end;

procedure TForm1.Memo1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
statusbar1.Panels[2].Text:='  Mouse: '+inttostr(x)+','+inttostr(y)+'  ***Created by LSA***';
end;

end.
