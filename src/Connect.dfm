object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 68
  Width = 188
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=Manager;Data Source=LEGEND1' +
      '949\EXPRESS_2017;Use Procedure for Prepare=1;Auto Translate=True' +
      ';Packet Size=4096;Workstation ID=LEGEND1949;Initial File Name=""' +
      ';Use Encryption for Data=False;Tag with column collation when po' +
      'ssible=False;MARS Connection=False;DataTypeCompatibility=0;Trust' +
      ' Server Certificate=False;Server SPN="";Application Intent=READW' +
      'RITE'
    DefaultDatabase = 'Manager'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'SQLNCLI11.1'
    Left = 32
    Top = 16
  end
end
