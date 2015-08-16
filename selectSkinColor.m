function [ S,Cr ] = selectSkinColor( C, mixBound_Cr, maxBound_Cr, H, W,grayImg)
    YCbCr=rgb2ycbcr(C);
    Cr=YCbCr(:,:,3);
    S=zeros(H,W);
    [ Cr ]=imadd(Cr,grayImg);
    [SkinIndexRow,SkinIndexCol] =find(mixBound_Cr<Cr & Cr<maxBound_Cr);
    for i=1:length(SkinIndexRow)
        S(SkinIndexRow(i),SkinIndexCol(i))=1;
    end
end

