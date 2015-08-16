function [ imgCn, rows, cols ] = checkAndConvertToGrayImage( img )
    
    [rows, cols, dim]= size(img);
    if( dim>1)
           img = rgb2gray(img);
    end
    imgCn=img;
end

