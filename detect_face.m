
%function []=detect_face(img)
    img ='./images/img1.jpg';
    %cr max and min bound can change
    mixBound_Cr=12;maxBound_Cr=29,segmentSize=220;
    [ I,H, W ]=convertImageIntoDoublePrecision( img );
    [ R,G,B ] = getRGBVector(I);
    [ S ] = selectSkinColor( I, mixBound_Cr, maxBound_Cr, H, W);
    %figure,imshow(S);
    [ SN ] = reduceNoiseOfImage( S, H, W);
    %figure,imshow(SN);
    [ SN ]=separateIntoIndividualRegions(SN,segmentSize);
    figure,imshow(SN);
    
%end
