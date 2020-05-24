import pygpu
print(str(pygpu.gpuarray.count_platforms("cuda")))
pygpu.test()