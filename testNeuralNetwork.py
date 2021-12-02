import numpy as np
import matplotlib.pyplot as plt
import h5py
import os
pp = os.getcwd()

filename = pp + '\img-entrenadas.h5py'
print('fasfasfasfasfa')
print(filename)
with h5py.File(filename, "r") as f:
    # List all groups
    print("Keys: %s" % f.keys())
    a_group_key = list(f.keys())[0]

    # Get the data
    data = list(f[a_group_key])

images=[]
deportes=[]
# AQUI ESPECIFICAMOS UNAS IMAGENES
filenames = ['test/newdog.jpg']



for filepath in filenames:
    image = plt.imread(filepath,0)
    images.append(image)

X = np.array(images, dtype=np.uint8) 
test_X = X.astype('float32')
test_X = test_X / 255.

predicted_classes = data.predict(test_X)

for i, img_tagged in enumerate(predicted_classes):
    print('aca va')
    print(filenames[i], deportes[img_tagged.tolist().index(max(img_tagged))])
