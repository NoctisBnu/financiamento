object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gerador de Proposta'
  ClientHeight = 272
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 2
    Top = -1
    Width = 489
    Height = 272
    TabOrder = 1
    object Label8: TLabel
      Left = 32
      Top = 32
      Width = 78
      Height = 13
      Caption = 'Nome do Cliente'
    end
    object Label9: TLabel
      Left = 91
      Top = 88
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object Label10: TLabel
      Left = 43
      Top = 144
      Width = 67
      Height = 13
      Caption = 'Renda Mensal'
    end
    object Label11: TLabel
      Left = 224
      Top = 144
      Width = 78
      Height = 13
      Caption = 'Score do Serasa'
    end
    object MaskEdit5: TMaskEdit
      Left = 116
      Top = 29
      Width = 260
      Height = 21
      Alignment = taCenter
      TabOrder = 0
      Text = ''
    end
    object MaskEdit6: TMaskEdit
      Left = 116
      Top = 85
      Width = 85
      Height = 21
      Alignment = taRightJustify
      EditMask = '999\.999\.999\-99;1;_'
      MaxLength = 14
      TabOrder = 1
      Text = '   .   .   -  '
    end
    object Edit1: TEdit
      Left = 308
      Top = 141
      Width = 68
      Height = 21
      Alignment = taRightJustify
      NumbersOnly = True
      TabOrder = 3
      OnClick = Edit2Enter
      OnEnter = Edit2Enter
      OnExit = Edit2Exit
    end
    object Button4: TButton
      Left = 301
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Propostas'
      TabOrder = 4
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 72
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Configura'#231#245'es'
      TabOrder = 5
      OnClick = Button5Click
    end
    object Edit2: TEdit
      Left = 116
      Top = 141
      Width = 85
      Height = 21
      Alignment = taRightJustify
      TabOrder = 2
      OnClick = Edit2Enter
      OnEnter = Edit2Enter
      OnExit = Edit2Exit
    end
  end
  object Panel3: TPanel
    Left = 2
    Top = -1
    Width = 489
    Height = 272
    Enabled = False
    TabOrder = 2
    Visible = False
    object Label12: TLabel
      Left = 24
      Top = 8
      Width = 79
      Height = 13
      Caption = 'Valor Pretendido'
    end
    object RadioGroup1: TRadioGroup
      Left = 16
      Top = 56
      Width = 129
      Height = 201
      Caption = 'Quantidade de Parcelas'
      Enabled = False
      Items.Strings = (
        '06 Parcelas Mensais'
        '12 Parcelas Mensais'
        '18 Parcelas Mensais'
        '24 Parcelas Mensais'
        '36 Parcelas Mensais'
        '48 Parcelas Mensais'
        '60 Parcelas Mensais')
      TabOrder = 3
      OnClick = RadioGroup1Click
    end
    object Edit7: TEdit
      Left = 16
      Top = 24
      Width = 105
      Height = 21
      Alignment = taRightJustify
      TabOrder = 0
      OnClick = Edit2Enter
      OnDblClick = Edit2Enter
      OnExit = Edit2Exit
    end
    object GroupBox1: TGroupBox
      Left = 151
      Top = 56
      Width = 321
      Height = 201
      Caption = 'Resumo da Proposta'
      TabOrder = 2
      object Label7: TLabel
        Left = 24
        Top = 53
        Width = 37
        Height = 13
        Caption = 'Cliente:'
      end
      object Label13: TLabel
        Left = 24
        Top = 96
        Width = 23
        Height = 13
        Caption = 'CPF:'
      end
      object Label14: TLabel
        Left = 141
        Top = 96
        Width = 94
        Height = 13
        Caption = 'Valor solicitado:  R$'
      end
      object Label15: TLabel
        Left = 24
        Top = 144
        Width = 73
        Height = 13
        Caption = 'A ser pago em:'
      end
      object Label16: TLabel
        Left = 197
        Top = 144
        Width = 38
        Height = 13
        Caption = ' de:  R$'
      end
      object Label17: TLabel
        Left = 67
        Top = 53
        Width = 3
        Height = 13
      end
      object Label18: TLabel
        Left = 50
        Top = 96
        Width = 3
        Height = 13
      end
      object Label19: TLabel
        Left = 241
        Top = 96
        Width = 3
        Height = 13
      end
      object Label20: TLabel
        Left = 100
        Top = 144
        Width = 3
        Height = 13
      end
      object Label21: TLabel
        Left = 241
        Top = 144
        Width = 3
        Height = 13
      end
    end
    object Button6: TButton
      Left = 384
      Top = 17
      Width = 88
      Height = 33
      Caption = 'Enviar Proposta'
      Enabled = False
      TabOrder = 4
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 274
      Top = 17
      Width = 88
      Height = 33
      Caption = 'Voltar'
      TabOrder = 5
      OnClick = Button7Click
    end
    object Button3: TButton
      Left = 127
      Top = 17
      Width = 106
      Height = 33
      Caption = 'Calcular Parcelas'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object Panel1: TPanel
    Left = 2
    Top = -1
    Width = 489
    Height = 272
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 25
      Top = 76
      Width = 34
      Height = 13
      Caption = '0 - 300'
    end
    object Label2: TLabel
      Left = 89
      Top = 76
      Width = 46
      Height = 13
      Caption = '301 - 700'
    end
    object Label3: TLabel
      Left = 154
      Top = 76
      Width = 46
      Height = 13
      Caption = '701 - 999'
    end
    object Label4: TLabel
      Left = 25
      Top = 155
      Width = 98
      Height = 26
      Caption = 'Percentual de Juros Padr'#227'o ao M'#234's'
      WordWrap = True
    end
    object Label5: TLabel
      Left = 25
      Top = 12
      Width = 171
      Height = 39
      Caption = 
        'Percentual Permitido da Parcela em Rela'#231#227'o a Renda Mensal Regula' +
        'da pelo Score do Serasa'
      WordWrap = True
    end
    object Label6: TLabel
      Left = 237
      Top = 12
      Width = 183
      Height = 13
      Caption = 'Modelo de Contrato para Contrata'#231#227'o'
    end
    object Memo1: TMemo
      Left = 237
      Top = 31
      Width = 236
      Height = 226
      Lines.Strings = (
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.'
        'Linha contrato modelo.')
      ScrollBars = ssVertical
      TabOrder = 5
    end
    object Button1: TButton
      Left = 25
      Top = 224
      Width = 92
      Height = 33
      Caption = 'Cancelar'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 123
      Top = 224
      Width = 92
      Height = 33
      Caption = 'Gravar'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 25
      Top = 95
      Width = 48
      Height = 21
      Alignment = taRightJustify
      MaxLength = 2
      NumbersOnly = True
      TabOrder = 0
      Text = '5'
      OnClick = Edit2Enter
      OnEnter = Edit2Enter
      OnExit = Edit3Exit
    end
    object Edit4: TEdit
      Left = 89
      Top = 95
      Width = 46
      Height = 21
      Alignment = taRightJustify
      MaxLength = 2
      NumbersOnly = True
      TabOrder = 1
      Text = '15'
      OnClick = Edit2Enter
      OnEnter = Edit2Enter
      OnExit = Edit3Exit
    end
    object Edit5: TEdit
      Left = 153
      Top = 95
      Width = 47
      Height = 21
      Alignment = taRightJustify
      MaxLength = 2
      NumbersOnly = True
      TabOrder = 2
      Text = '30'
      OnClick = Edit2Enter
      OnEnter = Edit2Enter
      OnExit = Edit3Exit
    end
    object Edit6: TEdit
      Left = 153
      Top = 159
      Width = 47
      Height = 21
      Alignment = taRightJustify
      MaxLength = 5
      TabOrder = 3
      Text = '1,5'
      OnClick = Edit2Enter
      OnEnter = Edit2Enter
      OnExit = Edit2Exit
    end
  end
  object Panel4: TPanel
    Left = 2
    Top = -1
    Width = 489
    Height = 272
    TabOrder = 3
    Visible = False
    object Button8: TButton
      Left = 400
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Concluir envio'
      Enabled = False
      TabOrder = 3
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 304
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Voltar'
      TabOrder = 1
      OnClick = Button9Click
    end
    object CheckBox1: TCheckBox
      Left = 0
      Top = 244
      Width = 278
      Height = 17
      Caption = 'Declaro que li todo o conteudo do contrato e concordo'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object Memo2: TMemo
      Left = 0
      Top = 0
      Width = 489
      Height = 234
      Lines.Strings = (
        'Memo2'
        '1'
        '2'
        '2'
        '2'
        '2'
        '2'
        '2'
        '2'
        '2'
        '2'
        '22'
        '2'
        '2'
        '2'
        '2'
        '2'
        '2'
        ''
        '2'
        '2'
        '2'
        '2')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
end
