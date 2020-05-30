% Problem 1

f = 2*logspace(0,4,1000);

wc = 1000;
n = 4;
K = [0, .8, 3, 3.9];


for k = K
  H = (wc^n)./((i*f + wc).^4 + k*wc^4);
  actual_dc = abs(H(1))
  expected = 1/(1+k)
  plot(f, 20*log10(abs(H)))
  hold on 
end
set(gca, 'XScale', 'log')
xlim([2, 20000])
ylabel('Magnitude (dB)')
xlabel('Frequency (Hz)')
hold off


%Problem 3
k = -.1;
zplane([], [1, 2, 1+k]);
k = 0;
zplane([], [1, 2, 1+k]);
k = .5;
zplane([], [1, 2, 1+k]);
