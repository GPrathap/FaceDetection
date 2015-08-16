function [ S ] = selectSkinColor( C, mixBound_Cr, maxBound_Cr, H, W)
    YCbCr=rgb2ycbcr(C);
    Cr=YCbCr(:,:,3);
    S=zeros(H,W);
    [SkinIndexRow,SkinIndexCol] =find(mixBound_Cr<Cr & Cr<maxBound_Cr);
    for i=1:length(SkinIndexRow)
        S(SkinIndexRow(i),SkinIndexCol(i))=1;
    end
end

