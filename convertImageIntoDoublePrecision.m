function [ img, rows,cols ] = convertImageIntoDoublePrecision( img )
    img=imread(img);
    [rows, cols, dim]= size(img);
    if( dim<3)
          disp('This is not a valid image');
    end
    img = double(img);
end

