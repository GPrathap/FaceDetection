function [ C ] = normalizeImageIllumination( I,H,W, R,G,B )
    YCbCr=rgb2ycbcr(I);
    Y=YCbCr(:,:,1);
    minY=min(min(Y));
    maxY=max(max(Y));
    Y=255.0*(Y-minY)./(maxY-minY);
    Yavg=sum(sum(Y))/(W*H);

    T=1;
    if (Yavg<64)
        T=1.4;
    elseif (Yavg>192)
        T=0.6;
    end

    if (T~=1)
        RI=R.^T;
        GI=G.^T;
    else
        RI=R;
        GI=G;
    end

    C=zeros(H,W,3);
    C(:,:,1)=RI;
    C(:,:,2)=GI;
    C(:,:,3)=B;
end

