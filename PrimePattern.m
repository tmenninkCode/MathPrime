clear all;
P = primes(10000000);

b = 1/pi^2;
theta = pi;

i = 1;
x =[];
y = [];

k=0;
path_length = 0;%b/2*(theta*sqrt(1 + theta^2) + log(theta + sqrt(1+theta^2)));
for(k=1:4000)

    %new_path_length = b/2*(theta*sqrt(1 + theta^2) + 0*log(theta + sqrt(1+theta^2)));
    new_path_length = k^2/2;%b/2*(theta^2);%*sqrt(1 + theta^2) + 0*log(theta + sqrt(1+theta^2)));
    
    d_pl = k-1/2;
    %d_pl = new_path_length - path_length;
    %plot([-d_pl/2 d_pl/2],[k k],'blue');
    %hold on;
    while(P(i)<new_path_length)
        x = [x d_pl/2-(P(i)-path_length)];
        y = [y k];
        i=i+1;
    end
    S(k) = sum(y==k);
        %subplot(2,1,1);
     %   hold on;
    path_length = new_path_length;
end
plot(x,y,'.','color','red');
set(gca,'Color','k');
hold on;
plot([0 d_pl/2],[0 y(end)]);

P2 = P(x==2.25);
