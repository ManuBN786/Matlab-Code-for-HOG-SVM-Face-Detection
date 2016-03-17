function HOGv = HOG(I)

orientation_bins = 9;
cell_size = 8;
block_size = 2;
oriented_gradients = 1; % 0 otherwise
clipping_L2norm = 0.2;

HOGv = HoG(I,[orientation_bins, cell_size, block_size, oriented_gradients, clipping_L2norm]);

end