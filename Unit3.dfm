object About2_0: TAbout2_0
  Left = 276
  Top = 206
  Width = 738
  Height = 451
  Caption = 'About2_0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 208
    Top = 8
    Width = 481
    Height = 33
    AutoSize = False
    Caption = 'lsanote version history        v_2.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RichEdit1: TRichEdit
    Left = 8
    Top = 56
    Width = 705
    Height = 337
    Font.Charset = GB2312_CHARSET
    Font.Color = clGreen
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'v1.0: '
      'Achieved some easy function about notebook,such as '
      'new,open,save,copy,cut,patse,font etc.'
      '-------'
      'v2.0:'
      '1.Add some new function,such as color,CMD.'
      '2.Add hotkey,shotcuts.'
      '3.Add toolbar.'
      '4.Add Help memu.'
      '5.Aptimize the interface')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
  end
end
