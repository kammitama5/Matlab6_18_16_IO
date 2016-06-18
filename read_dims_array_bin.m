function A = read_dims_array_bin(filename)

fid = fopen(filename, 'r');
if fid < 0
    error('error opening file %s\n',filename);
end
n = fread(fid, 1, 'double');
dims = fread(fid, n, 'double');
A = fread(fid, 'double');
A = reshape(A, dims');
fclose(fid);