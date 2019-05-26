object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 68
  Width = 100
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Password=123456;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=Manager;Data Source=LEGEND1949\EXPRES' +
      'S_2017;Use Procedure for Prepare=1;Auto Translate=True;Packet Si' +
      'ze=4096;Workstation ID=LEGEND1949;Initial File Name="";Use Encry' +
      'ption for Data=False;Tag with column collation when possible=Fal' +
      'se;MARS Connection=False;DataTypeCompatibility=0;Trust Server Ce' +
      'rtificate=False;Server SPN="";Application Intent=READWRITE'
    DefaultDatabase = 'Manager'
    Mode = cmReadWrite
    Provider = 'SQLNCLI11.1'
    Left = 32
    Top = 16
  end
end
