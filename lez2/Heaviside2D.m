% The implementation follow exactly the definition and is straightforward
function [out] = Heaviside2D(x,y)
    if x<0 || y<0
        out=0;
    elseif x==0 || y==0
        out=1/2;
    else
        out=1;
    end
end
        