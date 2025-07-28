%Name: Jay Kotwal
% Roll_No: 32137
clc;
clear;
close all;
Name=input("Enter the Name: ",'s');
Roll_No=input("Enter the Roll Number: ");  
pkg load communications
symbols = 1:5;
p=[0.40 0.20 0.20 0.10 0.10];
disp("\nSymbols are");
disp(symbols);
disp("length of symbols=");
disp(length(symbols));
disp("\nRespective probabilities are");
disp(p);
dict = huffmandict(symbols,p);
disp("\nHuffman dictionary is");
disp(dict);
inputSig = randsrc(10,1,[symbols;p]);
%inputSig =[1 1 1 1 2 2 2 3 3 4];
%disp("\nRandom generated input symbols are");
disp("\ninput symbols are");
disp(inputSig);
code = huffmanenco(inputSig,dict);
disp("\nEncoded message is");
disp(code);
decode = huffmandeco(code,dict);
disp("\nDecoded symbols are");
disp(decode);

avg_code_len=0;
for i=1:length(symbols)
  %disp(p(i));
  %disp(length(dict(1:i)));
  %disp(total_code_len=p(i)*length(dict(1:i)));
  total_code_len=p(i)*length(dict(1:i));
  avg_code_len=avg_code_len+total_code_len;
end
disp("avg_code_len=");
disp(avg_code_len);

H = -sum(p .* log2(p));
disp("Entropy=");
disp(H);

efficiency=H/avg_code_len;
disp("Efficiency=");
disp(efficiency);

redundancy = 1 - efficiency;
disp("Redundancy=")
disp(redundancy);