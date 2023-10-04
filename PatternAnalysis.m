clear all;
load xydata.mat;

idx = find(y<400001);
plot(x(idx),y(idx),'.','color','red');

for(i=1:399)
    %hold on;
    %plot([(i-0.5)/2 -(i-0.5)/2],[i i],'color','black')
end
hold off;
i = max(y);
axis([-i/2 i/2 0 i+1]);
%set(gca,'Color','k');
     % n: sum(i-1) < x^2/4-(x-1)^2/4
cnt = 0;

for(i=min(x):max(x))
    cnt = cnt+1;
    K(cnt) = length(find(x==i & y>00));
    X(cnt)=i;
end
     plot(X,K);
     
     return    

     i < x/2-1/2
     
     
     %(x^2/2 - (x-1)^2/2)/2- (P-(x-1)^2/2)=0.25-47
for(x=1:1)
     
    %0.25*x^2 - 0.25*x^2 +0.5*x-0.25 - P + 0.5*x^2 -x +0.5 = 0.25+47
    %0.5*x^2  - 0.5*x +0.25 - P = 0.25+47
    %c_8 = 0 +1 +2 +3 +4 +5 +6 +7
    %    = 7 +6 +5 +4 +3 +2 +1 +1
    
%     2s =(n-1)*n < (x^2/2 - (x-1)^2/2)/2 - 0.25
%     (n-1)*n < x -1
%     n^2-n -x + 1 < 0
% 
%     -1/2 + sqrt(1 - 4*
%     n - 0.5 = sqrt(x-0.75)
%     n^2 - n +1
%     (n-0.5)^2 + 0.75 = x    
    n = floor(sqrt(x-0.75)+0.5);
    i = 1:n;
    c = cumsum(i-1);
    
    nP= 0.5*x^2 - 0.5*x - c
    
    %a = 0.5
    %b = -0.5
    %c = -c;  
    s1 = 0.5 - sqrt(0.25 + 2*c);
    s2 = 0.5 + sqrt(0.25 + 2*c);
    nPrim = (x-s1).*(x-s2);
    hold on;
    plot(0.25+c,x,'.','color','red');
    %P = (x+0)*(x-1)
    %P = (x+1)*(x-2)..
    %etc
end
    
    
    
    
    
    