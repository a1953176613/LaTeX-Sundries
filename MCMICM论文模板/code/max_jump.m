function number = max_jump( f, alpha )
% f is frequency
x = 100;
ff = 1;

h = 110;
s = 2 * h ./ sin(alpha./180*pi);

%%%%%%%%
loss1 = 32.44 + 20*log10(f) + 20*log10(s);
loss1_r = 10^(loss1./10);
n = 0;

%%%%%%%%%
epsilon = 80.2;
%gamma = (epsilon*cos(alpha/180*pi) - sqrt(epsilon - (sin(alpha/180*pi))^2))./(epsilon*cos(alpha/180*pi) + sqrt(epsilon - (sin(alpha/180*pi))^2));
epsilon = 80.2;
Rh = (cos(alpha./180*pi) - sqrt(epsilon - (sin(alpha./180*pi))^2)) ./ (cos(alpha./180*pi) + sqrt(epsilon - (sin(alpha./180*pi))^2));
Rv = (epsilon*cos(alpha./180*pi) - sqrt(epsilon - (sin(alpha./180*pi))^2)) ./ (epsilon*cos(alpha./180*pi) + sqrt(epsilon - (sin(alpha./180*pi))^2));

Lg =10*log10((Rv^2 + Rh^2) ./ 2)
%loss2_r = gamma^2;
loss2_r = 10^(Lg./10)

%%%%%%%%%%%
Le = (677.2*1*sec((90 - alpha)/180*pi)) ./ ((3 + 1.5)^1.98 + 10.2) * (1 + 0.0037 * 1)*(cos(0.881 * 1.7829))^1.3
loss3_r = 10^(Le./10)

while 20*log10(x./ff) >10
    %x = x./loss1_r;
    x = x * loss2_r;
    x = x ./ loss3_r;
    n = n + 1;
end

n



end

