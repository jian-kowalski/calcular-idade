object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calcula Idade'
  ClientHeight = 302
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbNome: TLabel
    Left = 24
    Top = 18
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lbData: TLabel
    Left = 24
    Top = 53
    Width = 49
    Height = 13
    Caption = 'Data Nasc'
  end
  object EB_NOME: TEdit
    Left = 80
    Top = 18
    Width = 433
    Height = 21
    TabOrder = 0
  end
  object mmDatas: TMemo
    Left = 38
    Top = 96
    Width = 489
    Height = 198
    Enabled = False
    TabOrder = 1
  end
  object EB_DATANASCIMENTO: TDateTimePicker
    Left = 79
    Top = 45
    Width = 145
    Height = 21
    Date = 44237.000000000000000000
    Time = 0.593265706018428300
    TabOrder = 2
  end
  object btCalcularIdade: TButton
    Left = 438
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Calcular '
    TabOrder = 3
    OnClick = btCalcularIdadeClick
  end
end
