program ListviewKeDb;

uses
  Forms,
  Unit1 in 'Unit1.pas' {futama};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfutama, futama);
  Application.Run;
end.
