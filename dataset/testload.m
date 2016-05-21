datasets = {  'iaprtc12' };
%sets     = { 'test', 'train' };
sets     = {  'train' };
impaths  = {  'C:\Users\user\Downloads\iaprtc12' };

sifttrain = (vec_read([ 'iaprtc12' '_' 'train' '_HarrisSift.hvecs']));
sifttest = (vec_read([ 'iaprtc12' '_' 'test' '_HarrisSift.hvecs']));
labeltrain = (vec_read([ 'iaprtc12' '_' 'train' '_annot.hvecs']));
labeltest = (vec_read([ 'iaprtc12' '_' 'test' '_annot.hvecs']));
%sift1train = (vec_read([ 'iaprtc12' '_' 'train' '_HarrisSiftV3H1.hvecs']));
%sift1test = (vec_read([ 'iaprtc12' '_' 'test' '_HarrisSiftV3H1.hvecs']));

dlmwrite('X_tr',sifttrain)
dlmwrite('X_tt',sifttest)
dlmwrite('Y_tr',labeltrain)
dlmwrite('Y_tt',labeltest)