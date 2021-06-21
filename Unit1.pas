unit Unit1;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.DockTabSet, Vcl.Tabs, Vcl.StdCtrls, Vcl.Mask, Vcl.Samples.Spin;
type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Label5: TLabel;
    Button1: TButton;
    Label6: TLabel;
    Button2: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Button4: TButton;
    Button5: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    RadioGroup1: TRadioGroup;
    Edit7: TEdit;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Button6: TButton;
    Button7: TButton;
    Button3: TButton;
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Panel4: TPanel;
    Button8: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    Memo2: TMemo;
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
  public
  end;
var

  Form1 : TForm1;
  verificador, juros, limite: Float64;
  mini, medi, maxi, indice: Integer;
  contrato, parcela: string;
  parcelas: array[1..7] of Integer;


implementation
{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit6.Text:=FloatToStr(juros);Edit3.Text:=FloatToStr(mini);Edit4.Text:=FloatToStr(medi);
  Edit5.Text:=FloatToStr(maxi);Memo1.Text:=contrato;
  Panel1.Enabled:=false; Panel1.Visible:=false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
juros:=StrToFloat(Edit6.Text);mini:=StrToInt(Edit3.Text);
medi:=StrToInt(Edit4.Text);maxi:=StrToInt(Edit5.Text);contrato:=Memo1.Text;
Panel1.Enabled:=false; Panel1.Visible:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
var i:Integer;
if Edit7.Text <> '' then
begin
  limite:=StrToFloat(Edit2.Text)*(indice/100);RadioGroup1.Enabled:=true;
  for i := 1 to 7 do
    begin
      parcela:=FormatFloat('0.00',(((juros/100)/(1-exp(-(parcelas[i])*ln(1+(juros/100)))))*StrToFloat(Edit7.Text)));
      if StrToFloat(parcela) > limite then
        RadioGroup1.Buttons[i-1].Enabled := false
      else
        RadioGroup1.Buttons[i-1].Enabled := true;
    end;
  Label17.Caption:= MaskEdit5.Text;Label18.Caption:= MaskEdit6.Text;
  Label19.Caption:= Edit7.Text; Button6.Enabled:=true;
end else
ShowMessage('Preencha corretamente o valor desejado!');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if (MaskEdit5.Text<>'') and (MaskEdit6.Text<>'') and (Edit1.Text<>'') and (Edit2.Text<>'') then
  begin
    Panel3.Enabled:=true; Panel3.Visible:=true;
  if StrToInt(Edit1.Text) < 301 then indice := mini;
  if (StrToInt(Edit1.Text) > 300) and (StrToInt(Edit1.Text) < 701) then indice := medi;
  if StrToInt(Edit1.Text) > 700 then indice := maxi;
  Edit7.SelectAll;
  end else ShowMessage('Todos os campos são de preenchimento obrigatório!');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Panel1.Visible:=true;Panel1.Enabled:=true;
Edit3.SelectAll;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin

if RadioGroup1.ItemIndex > -1 then
begin
  Memo2.Text := 'Eu '+ MaskEdit5.Text +', inscrito sob o CPF nº '+MaskEdit6.Text +#13+
  ' Contrato por meio desde, um emprestimo pessoal com a empresa '+#13+' Dinheiro Sobrando SA, no valor total de R$ '
  +Edit7.Text+', a ser quitado por meio de '+RadioGroup1.Items[RadioGroup1.ItemIndex]+' no '+#13+
  'valor fixo de R$'+parcela+' e subsequentes, com termo de contratação seguindo '+#13+
  'as clausulas e regras por seguinte descritas:'+#13+Memo1.Text;
  Panel4.Enabled:=true; Panel4.Visible:=true; CheckBox1.SetFocus;
end else
begin
  ShowMessage('Selecione uma Quantidade de parcelas.');
end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Panel3.Enabled:=false; Panel3.Visible:=false; Button6.Enabled:=false;
Edit7.Text:=''; RadioGroup1.Enabled:=false;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
var proposta: TextFile;
var nomearquivo: string;

if CheckBox1.Checked = true then
Begin
nomearquivo:= DateToStr(date)+' - '+TimeToStr(time);
nomearquivo:= StringReplace(nomearquivo,'/','-',[rfReplaceAll,rfIgnoreCase]);
nomearquivo:= StringReplace(nomearquivo,':','-',[rfReplaceAll,rfIgnoreCase]);
AssignFile(proposta,nomearquivo+'.txt');Rewrite(proposta);
Writeln(proposta , Memo2.Text); CloseFile(proposta);
ShowMessage('Arquivos da Proposta gerado com sucesso.');
Button9.Click; Button7.Click; Button1.Click;
end else
ShowMessage('É necessario concordar com os termos do contrato para envio da proposta.');
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
Panel4.Enabled:=false; Panel4.Visible:=false;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = true then
Button8.Enabled:=true
else
Button8.Enabled:=false;
end;

procedure TForm1.Edit2Enter(Sender: TObject);
begin
  TEdit(Sender).SelectAll;
end;
procedure TForm1.Edit2Exit(Sender: TObject);
begin
  if not TryStrToFloat(TEdit(Sender).Text,verificador) then
  begin
    ShowMessage((TEdit(Sender).Text)+' Não é um conteudo válido para esse campo!');
    TEdit(Sender).SetFocus;
  end
end;
procedure TForm1.Edit3Exit(Sender: TObject);
begin
  if (StrToInt(Edit3.Text)>StrToInt(Edit4.Text))or(StrToInt(Edit4.Text)>StrToInt(Edit5.Text)) then
  begin
    ShowMessage('Errado');
    TEdit(Sender).SetFocus;
  end
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
Button2.Click;parcelas[1]:=6;parcelas[2]:=12;parcelas[3]:=18;
parcelas[4]:=24;parcelas[5]:=36;parcelas[6]:=48;parcelas[7]:=60;
ShowMessage('Carregado valores padrão. Favor entrar nas configurações para alterar caso seja necessario.');
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
parcela:=FormatFloat('0.00',(((juros/100)/(1-exp(-(parcelas[(RadioGroup1.ItemIndex-1)])*ln(1+(juros/100)))))*StrToFloat(Edit7.Text)));
Label20.Caption:=RadioGroup1.Items[RadioGroup1.ItemIndex];
Label21.Caption:=parcela;
end;

end.


