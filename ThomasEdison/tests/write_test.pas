program Bai108;
const C:array['A'..'Z']of string=('.-','-...','-.-.','-..','.','..-.','--.','....','..','.---','-.-','.-..','--','-.','---','.--.','--.-','.-.','...','-','..-','...-','.--','-..-','-.--','--..');
var n,m,k,i,j,v,t:longint;
    ch:char;
    a:array[1..10000]of char;
    anfabet:array[1..26]of char;
    f:text;

BEGIN
     randomize;
     assign(f,'6.inp');
     rewrite(f);
     writeln(f,20);
     i:=0;
     for ch:='A' to 'Z' do
         begin
              inc(i);
              anfabet[i]:=ch;
         end;
     for i:=1 to 20 do
         begin
              n:=2500;
              m:=10000;
              for j:=1 to n do
                  begin
                       v:=random(26)+1;
                       a[j]:=anfabet[v];
                       write(f,C[a[j]]);
                  end;
              writeln(f);
              writeln(f,m);
              j:=1;
              for v:=1 to m do
                  begin
                       t:=n-j+1;
                       k:=random(t)+1;
                       if k>20 then k:=20;
                       for t:=j to j+k-1 do write(f,a[t]);
                       writeln(f);
                       j:=j+k-1;
                       inc(j);
                       if j>n then j:=1;
                  end;
         end;
     close(f);
END.
