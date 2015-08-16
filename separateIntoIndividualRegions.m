function [ SN ] = separateIntoIndividualRegions( SN, segmentSize)
    [l,n]=bwlabel(SN);
    for i=1:n
        [rows,cols]=find(l==i);
        [c,v]=size(rows);
        if (c<segmentSize)
            for k=1:c
               SN(rows(k,1),cols(k,1))=0; 
            end
        end
    end
end

