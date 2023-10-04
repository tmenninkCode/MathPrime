clear all;
P = primes(1000000000);


i = 1;
x =[];
y = [];

k=0;
path_length = 0;%b/2*(theta*sqrt(1 + theta^2) + log(theta + sqrt(1+theta^2)));

k_last = floor(sqrt(P(end)*2));
S = zeros(1,k_last);
for(k=1:k_last)
    new_path_length = k^2/2;
    S(k)=sum( P<=new_path_length & P>path_length);
    path_length = new_path_length;
end
