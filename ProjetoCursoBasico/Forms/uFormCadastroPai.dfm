object FormCadastroPai: TFormCadastroPai
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FormCadastroPai'
  ClientHeight = 402
  ClientWidth = 821
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pnCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 821
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 817
    object btnNovo: TBitBtn
      Left = 0
      Top = 1
      Width = 75
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnGravar: TBitBtn
      Left = 80
      Top = 1
      Width = 75
      Height = 41
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 160
      Top = 1
      Width = 75
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TBitBtn
      Left = 240
      Top = 1
      Width = 75
      Height = 41
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSair: TBitBtn
      Left = 745
      Top = 1
      Width = 75
      Height = 41
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object fdQryCadastro: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateObject = fdUpdCadastro
    SQL.Strings = (
      'SELECT * FROM cliente')
    Left = 760
    Top = 224
  end
  object fdUpdCadastro: TFDUpdateSQL
    Connection = dmDados.fdCon
    Left = 760
    Top = 288
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 760
    Top = 352
  end
  object dsCadastro: TDataSource
    DataSet = fdQryCadastro
    Left = 760
    Top = 168
  end
end
