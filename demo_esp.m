
HLbr = zeros(1, 14);
HLplst = zeros(1, 14);
HLcplst = zeros(1, 14);
HLFaIE  = zeros(1,14);
HLCSSP  = zeros(1,14);

for M=13:13:65
  disp(['M=', num2str(M)])
  %[~, HLbr(M)]    = LSpaceTrans('espgame', M, 'br');
  [~, HLplst(M)]  = LSpaceTrans('espgame', M, 'plst');
  [~, HLcplst(M)] = LSpaceTrans('espgame', M, 'cplst');
  %[~, HLFaIE(M)]  = LSpaceTrans('espgame',M,'faie');
  [~, HLFaIE(M)]  = LSpaceTrans('espgame',M,'faie1000');
  [~, HLFaIE(M)]  = LSpaceTrans('espgame',M,'faie10000');
  %[~, HLCSSP(M)]  = LSpaceTrans('espgame',M,'cssp');
end

plot(1:M, HLbr,    'r',...
     1:M, HLplst,  'g',...
     1:M, HLcplst, 'b',...
     1:M, HLFaIE,  'c',...
     1:M, HLCSSP,  'm');

xlabel('M, number of reduced sub-problems');
ylabel('test hamming loss');
legend('Binary Relevance', 'PLST', 'CPLST','FaIE','CSSP');

