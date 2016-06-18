function write_dims_array_bin(A, filename)

fid = fopen(filename, 'w+');
if fid < 0
    error ('error opening file %s\n', filename);
end
dims = size(A);
fwrite(fid, length(dims), 'double');
fwrite(fid, dims, 'double');
fwrite(fid, A, 'double');
fclose(fid);
