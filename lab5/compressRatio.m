% This function takes filepaths of a compressed and an uncompressed
%images and returns compression ratio equal to their size relation
function cr = compressRatio(compressed_img_path, og_img_path)
  og_size = imfinfo(og_img_path).FileSize;
  compressed_size = imfinfo(compressed_img_path).FileSize;
  cr = og_size/compressed_size;
endfunction
