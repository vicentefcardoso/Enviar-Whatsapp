object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Enviar Whatsapp sem Add N'#250'mero na agenda'
  ClientHeight = 448
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 21
  object PnlCliente: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 41
    Align = alTop
    BevelOuter = bvSpace
    Caption = 
      'Informe  o n'#250'mero do whatsapp com o prefixo, exemplo: 67 99999-9' +
      '999'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 453
  end
  object GrpDados: TGroupBox
    Left = 0
    Top = 41
    Width = 464
    Height = 105
    Align = alTop
    Caption = 'Dados'
    TabOrder = 1
    ExplicitLeft = 56
    ExplicitTop = 96
    ExplicitWidth = 185
    object Label1: TLabel
      Left = 16
      Top = 31
      Width = 158
      Height = 19
      Caption = 'WhatsApp de Destino:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EdtNumero: TEdit
      Left = 16
      Top = 56
      Width = 244
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744448
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RdApp: TRadioButton
      Left = 288
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Whats App'
      TabOrder = 1
    end
    object RdWeb: TRadioButton
      Left = 288
      Top = 14
      Width = 113
      Height = 17
      Caption = 'Whats Web'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object BtnEnviar: TButton
      Left = 288
      Top = 55
      Width = 153
      Height = 28
      Caption = 'Enviar'
      TabOrder = 3
      OnClick = BtnEnviarClick
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 149
    Width = 458
    Height = 296
    Align = alClient
    Caption = 'Mensagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitTop = 143
    ExplicitWidth = 447
    ExplicitHeight = 294
    object MemoMsg: TMemo
      AlignWithMargins = True
      Left = 5
      Top = 24
      Width = 448
      Height = 267
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744448
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      WordWrap = False
      ExplicitWidth = 437
      ExplicitHeight = 265
    end
  end
end
