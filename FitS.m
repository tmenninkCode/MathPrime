clear all;
load Psum.mat;

k = length(S);
S = S(1:end);
xp0 = 2;
X = (1:k);

kr0 =0.365;

%width = x - 0.5
%gaps = 0+1+2+3+4+5+6+7
%rever= 7+6+5+4+3+2+1+0

%i: 1...n sum(i-1) < (x-0.5)/2 - 0.25
%i*(i-1) < x-1
%i^2 - i -x + 1 <0
%a = 1
%b = -1
%c = -(x-1)
i = floor(1/2 + sqrt(1 + 4*(X-1))/2);

%X = X-i;
expo = pi/4*0.9;
S_est = X.^sqrt(expo)*exp(-exp(kr0));

S_est = (X.^2/2)./log(X.^2/2);
%log(sum(S_est)) = log(k1/(k2+1)) + (k2+1)*log(X)


%S_est = k1*X^k2
%log(S) = log(k1)+k2*log(X);
%semilogx(log(cumsum(S)));
%hold on;
plot(cumsum(S));
hold on;
plot(S_est);



