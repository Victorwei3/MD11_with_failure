clear all;
clc;
w = 1;
lambda = 1;
A = 1;
p = 0.5;
rt1 = w;
index = 0;
aoi = 0;
cnt = 0;
amount = 0;
cnt2 = 0;
st = 0;
 for ind=1:1*10^6

 rt1 = w;  
    while index == 0
        r = rand;
        cnt2 = cnt2 + 1;
        if r > p 
            index = 1;
        elseif r < p
            index = 0;
            rt1 = rt1 + A;
            cnt = cnt + 1;
        end
    end
    
a = exprnd(1/lambda);   
 if a < rt1
    rt1 = rt1 - a;
    st = st + a;
 elseif a >= rt1
    st = st + a;
    index = 0;
    aoi = aoi + 0.5 * st^2;
    amount = amount + st;
    st = 0;
 end
 end
 a_aoi = aoi/amount;
 pro = cnt/cnt2;
 check = pro - p;