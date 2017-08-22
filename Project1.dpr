program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {HTUT},
  Unit3 in 'Unit3.pas' {About2_0},
  Unit4 in 'Unit4.pas' {FB};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(THTUT, HTUT);
  Application.CreateForm(TAbout2_0, About2_0);
  Application.CreateForm(TFB, FB);
  Application.Run;
end.
