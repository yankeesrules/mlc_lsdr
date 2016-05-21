
HLbr = zeros(1, 14);
HLplst = zeros(1, 14);
HLcplst = zeros(1, 14);
HLFaIE  = zeros(1,14);
HLCSSP  = zeros(1,14);

for M=13:13:65
  disp(['M=', num2str(M)])
  %[~, HLbr(M)]    = LSpaceTrans('iaprtc12', M, 'br');
  [~, HLplst(M)]  = LSpaceTrans('iaprtc12', M, 'plst');
  [~, HLcplst(M)] = LSpaceTrans('iaprtc12', M, 'cplst');
  %[~, HLFaIE(M)]  = LSpaceTrans('iaprtc12',M,'faie');
  [~, HLFaIE(M)]  = LSpaceTrans('iaprtc12',M,'faie1000');
  [~, HLFaIE(M)]  = LSpaceTrans('iaprtc12',M,'faie10000');
  %[~, HLCSSP(M)]  = LSpaceTrans('iaprtc12',M,'cssp');
end

plot(1:M, HLbr,    'r',...
     1:M, HLplst,  'g',...
     1:M, HLcplst, 'b',...
     1:M, HLFaIE,  'c',...
     1:M, HLCSSP,  'm');

xlabel('M, number of reduced sub-problems');
ylabel('test hamming loss');
legend('Binary Relevance', 'PLST', 'CPLST','FaIE','CSSP');

