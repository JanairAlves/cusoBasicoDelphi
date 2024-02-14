inherited FormCadastroCliente: TFormCadastroCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 311
  ClientWidth = 855
  OnShow = FormShow
  ExplicitWidth = 867
  ExplicitHeight = 349
  TextHeight = 15
  object Label2: TLabel [0]
    Left = 85
    Top = 56
    Width = 84
    Height = 15
    Caption = 'RAZAO_SOCIAL'
  end
  object Label3: TLabel [1]
    Left = 383
    Top = 56
    Width = 61
    Height = 15
    Caption = 'FANTANSIA'
  end
  object Label4: TLabel [2]
    Left = 657
    Top = 56
    Width = 53
    Height = 15
    Caption = 'CPF_CNPJ'
  end
  object Label5: TLabel [3]
    Left = 8
    Top = 120
    Width = 40
    Height = 15
    Caption = 'TIPO_FJ'
  end
  object Label6: TLabel [4]
    Left = 85
    Top = 120
    Width = 35
    Height = 15
    Caption = 'NOME'
  end
  object Label7: TLabel [5]
    Left = 383
    Top = 120
    Width = 34
    Height = 15
    Caption = 'EMAIL'
  end
  object Label8: TLabel [6]
    Left = 8
    Top = 184
    Width = 21
    Height = 15
    Caption = 'SITE'
  end
  object Label9: TLabel [7]
    Left = 303
    Top = 184
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
  end
  object Label10: TLabel [8]
    Left = 8
    Top = 248
    Width = 41
    Height = 15
    Caption = 'BAIRRO'
  end
  object Label11: TLabel [9]
    Left = 303
    Top = 248
    Width = 9
    Height = 15
    Caption = 'IE'
  end
  object Label12: TLabel [10]
    Left = 567
    Top = 248
    Width = 14
    Height = 15
    Caption = 'IM'
  end
  object Label1: TLabel [11]
    Left = 8
    Top = 56
    Width = 60
    Height = 15
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label14: TLabel [12]
    Left = 788
    Top = 243
    Width = 35
    Height = 15
    Caption = 'Estado'
  end
  object Label13: TLabel [13]
    Left = 622
    Top = 184
    Width = 37
    Height = 15
    Caption = 'Cidade'
  end
  inherited pnCabecalho: TPanel
    Width = 855
    TabOrder = 12
    ExplicitWidth = 851
    inherited btnSair: TBitBtn
      Left = 780
      ExplicitLeft = 780
    end
  end
  object edtTipoFJ: TDBComboBox [15]
    Left = 8
    Top = 136
    Width = 67
    Height = 23
    DataField = 'TIPO_FJ'
    DataSource = dsCadastro
    Items.Strings = (
      'Fisica'
      'Juridica')
    TabOrder = 4
  end
  object DBEdit1: TDBEdit [16]
    Left = 8
    Top = 72
    Width = 71
    Height = 23
    DataField = 'ID_CLIENTE'
    DataSource = dsCadastro
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit12: TDBEdit [17]
    Left = 85
    Top = 72
    Width = 292
    Height = 23
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [18]
    Left = 383
    Top = 72
    Width = 268
    Height = 23
    DataField = 'FANTANSIA'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [19]
    Left = 657
    Top = 72
    Width = 190
    Height = 23
    DataField = 'CPF_CNPJ'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [20]
    Left = 85
    Top = 136
    Width = 292
    Height = 23
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [21]
    Left = 383
    Top = 136
    Width = 464
    Height = 23
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [22]
    Left = 8
    Top = 200
    Width = 289
    Height = 23
    DataField = 'SITE'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [23]
    Left = 303
    Top = 200
    Width = 313
    Height = 23
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [24]
    Left = 8
    Top = 264
    Width = 289
    Height = 23
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [25]
    Left = 303
    Top = 264
    Width = 258
    Height = 23
    DataField = 'IE'
    DataSource = dsCadastro
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [26]
    Left = 567
    Top = 264
    Width = 215
    Height = 23
    DataField = 'IM'
    DataSource = dsCadastro
    TabOrder = 11
  end
  object DBLookupComboBox1: TDBLookupComboBox [27]
    Left = 622
    Top = 205
    Width = 225
    Height = 23
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.dsCidades
    TabOrder = 13
  end
  object DBLookupComboBox2: TDBLookupComboBox [28]
    Left = 788
    Top = 264
    Width = 59
    Height = 23
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListSource = Lookup.dsEstados
    TabOrder = 14
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    Left = 528
    Top = 8
    object fdQryCadastroID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryCadastroFANTANSIA: TWideStringField
      FieldName = 'FANTANSIA'
      Origin = 'FANTANSIA'
      Size = 80
    end
    object fdQryCadastroCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdQryCadastroTIPO_FJ: TWideStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryCadastroSITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryCadastroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object fdQryCadastroNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroIE: TWideStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object fdQryCadastroIM: TWideStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object fdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 616
    Top = 8
  end
  inherited fdTransaction: TFDTransaction
    Left = 696
    Top = 8
  end
  inherited dsCadastro: TDataSource
    Left = 456
    Top = 8
  end
end
