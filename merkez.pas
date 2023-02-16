unit merkez;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.ScrollBox, FMX.Memo, FMX.ListBox, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Edit,math, FMX.Ani, FireDAC.UI.Intf, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Comp.UI;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    ToolBar1: TToolBar;
    Button1: TButton;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    Text1: TText;
    Text2: TText;
    Button2: TButton;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    Text3: TText;
    FloatAnimation3: TFloatAnimation;
    FloatAnimation4: TFloatAnimation;
    StyleBook1: TStyleBook;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure level1;
    procedure level10;
    procedure level2;
    procedure level3;
procedure level4;
procedure level5;
procedure level6;
procedure level7;
procedure level8;
procedure level9;

    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure FloatAnimation3Finish(Sender: TObject);
    procedure FloatAnimation4Finish(Sender: TObject);
    procedure Memo1Change(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    a, b, c,d: single; // a sayý1, b sayý2, c zaman, d puan, e iþlem, f sonuç
    e1: integer;
    e2:  array[0..3] of integer;
    f: string;
  end;


var
  Form1: TForm1;

implementation

{$R *.fmx}


procedure TForm1.Button1Click(Sender: TObject);
begin
 case e1 of
 0: f:= (a*b).ToString;
 1: f:= (a+b).ToString;
 2: f:= (a-b).ToString;
 3: f:= (a/b).ToString;
  end;
   if f = edit1.Text then
  begin
    text2.Text:= 'Doðru!' ;
    floatanimation1.StartFromCurrent:= false;
    floatanimation1.StartValue:= Screen.Height;
    floatanimation1.StopValue:= screen.Height/2-text2.Height/2;
    floatanimation1.Enabled:= true;
    floatanimation2.startvalue:= 0;
    floatanimation2.StopValue:= 1;
    floatanimation2.Enabled:= true;
    d:= d+ (combobox1.ItemIndex+1) ;
    text3.Text:= '+'+(combobox1.ItemIndex+1).ToString+' puan';
    floatanimation3.StartFromCurrent:= false;
    floatanimation3.StartValue:= text1.Height+text1.Position.Y+75;
    floatanimation3.StopValue:= text1.Position.Y;
    floatanimation3.Enabled:= true;
    floatanimation4.startvalue:= 0;
    floatanimation4.StopValue:= 1;
    floatanimation4.Enabled:= true;
    end else
  begin
    text2.Text:= 'Yanlýþ!'+ linefeed+ 'Doðrusu, '+ f + ' olmalýydý.' ;
    floatanimation1.StartFromCurrent:= false;
    floatanimation1.StartValue:= Screen.Height;
    floatanimation1.StopValue:= screen.Height/2-text2.Height/2;
    floatanimation1.Enabled:= true;
    floatanimation2.startvalue:= 0;
    floatanimation2.StopValue:= 1;
    floatanimation2.Enabled:= true;
  end;


  case combobox1.ItemIndex of
  0: level1;
  1: level2;
  2: level3;
  3: level4;
  4: level5;
  5: level6;
  6: level7;
  7: level8;
  8: level9;
  9: level10;
  end;
  edit1.Text:= '';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
button2.Enabled:= false;
button1.Enabled:= true;
button2.Visible:= false;
button2.default:= false;
button1.Default:= true;
  case combobox1.ItemIndex of
  0: level1;
  1: level2;
  2: level3;
  3: level4;
  4: level5;
  5: level6;
  6: level7;
  7: level8;
  8: level9;
  9: level10;
  end;

 text2.Text:= 'baþlýyor';
 floatanimation1.StartFromCurrent:= true;
 floatanimation1.StopValue:= screen.Height;
 floatanimation1.Enabled:= true;
 floatanimation2.StartValue:= 1;
 floatanimation2.StopValue:= 0;
 floatanimation2.Enabled:= true;


end;

procedure TForm1.FloatAnimation1Finish(Sender: TObject);
begin
floatanimation1.Enabled:= false;
end;

procedure TForm1.FloatAnimation2Finish(Sender: TObject);
begin
floatanimation2.Enabled:= false;
end;

procedure TForm1.FloatAnimation3Finish(Sender: TObject);
begin
 FloatAnimation3.Enabled:= false;
end;

procedure TForm1.FloatAnimation4Finish(Sender: TObject);
begin
FloatAnimation4.Enabled:= false;
text1.Text:= 'Puan: '+ d.ToString;
text3.Text:= '';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
e2[0]:= 42;
e2[1]:= 43;
e2[2]:= 45;
e2[3]:= 47;
 d:= 0;

end;

procedure TForm1.level1;

begin

a:= random(9);
b:= random(9);
e1:= random(3);

memo1.Lines.Add((a).ToString+' '+chr(e2[e1]) +' '+(b).ToString);

end;

procedure TForm1.level10;
begin
a:= random(9999999999);
b:= random(9999999999);
e1:= random(3);

memo1.Lines.Add((a).ToString+' '+chr(e2[e1]) +' '+(b).ToString);

end;

procedure TForm1.level2;
begin
 a:= random(99);
b:= random(99);
e1:= random(3);

memo1.Lines.Add((a).ToString+' '+chr(e2[e1]) +' '+(b).ToString);
end;

procedure TForm1.level3;
begin
  a:= random(999);
b:= random(999);
e1:= random(3);

memo1.Lines.Add((a).ToString+' '+chr(e2[e1]) +' '+(b).ToString);
end;

procedure TForm1.level4;
begin
   a:= random(9999);
b:= random(9999);
e1:= random(3);

memo1.Lines.Add((a).ToString+' '+chr(e2[e1]) +' '+(b).ToString);
end;

procedure TForm1.level5;
begin
    a:= random(99999);
b:= random(99999);
e1:= random(3);

memo1.Lines.Add((a).ToString+' '+chr(e2[e1]) +' '+(b).ToString);
end;

procedure TForm1.level6;
begin
   a:= random(999999);
b:= random(999999);
e1:= random(3);

memo1.Lines.Add((a).ToString+' '+chr(e2[e1]) +' '+(b).ToString);
end;

procedure TForm1.level7;
begin
  a:= random(9999999);
b:= random(9999999);
e1:= random(3);

memo1.Lines.Add((a).ToString+' '+chr(e2[e1]) +' '+(b).ToString);
end;

procedure TForm1.level8;
begin
  a:= random(99999999);
b:= random(99999999);
e1:= random(3);

memo1.Lines.Add((a).ToString+' '+chr(e2[e1]) +' '+(b).ToString);
end;

procedure TForm1.level9;
begin
 a:= random(999999999);
b:= random(99999999);
e1:= random(3);

memo1.Lines.Add((a).ToString+' '+chr(e2[e1]) +' '+(b).ToString);
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
memo1.GoToTextEnd;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
memo1.GoToTextEnd;
end;

end.
