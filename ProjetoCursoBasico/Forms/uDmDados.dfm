object dmDados: TdmDados
  OnCreate = DataModuleCreate
  Height = 148
  Width = 438
  object fdCon: TFDConnection
    Params.Strings = (
      
        'Database=D:\Delphi\Projetos\Curso Softplan\ProjetoCursoBasico\Ba' +
        'nco de dados\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=UTF8'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 280
    Top = 40
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    DriverID = 'FireBird'
    VendorLib = 'C:\Windows\System32\gds32.dll'
    Left = 112
    Top = 40
  end
end
