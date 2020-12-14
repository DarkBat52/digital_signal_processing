i = imread("batman_jl.jpg");
s = qtdecomp(i, 0.3);
blocks = repmat(uint8(0), size(s));

for dim = [512 256 128 64 32 16 8 4 2 1];    
  numblocks = length(find(s==dim));    
  if (numblocks > 0)        
    values = repmat(uint8(1),[dim dim numblocks]);
    values(2:dim,2:dim,:) = 0;
    blocks = qtsetblk(blocks,s,dim,values);
  end
end

blocks(end,1:end) = 1;
blocks(1:end,end) = 1;

imshow(i), figure, imshow(blocks,[]);


