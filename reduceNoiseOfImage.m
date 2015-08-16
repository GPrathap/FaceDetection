function [ SN ] = reduceNoiseOfImage( S, H, W)
    SN=zeros(H,W);
    for i=1:H-5
        for j=1:W-5
            localSum=sum(sum(S(i:i+4, j:j+4)));
            SN(i:i+5, j:j+5)=(localSum>12);
        end
    end

end

