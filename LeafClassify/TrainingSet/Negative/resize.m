clear;
close all;
%�ܹ���20��ѵ��������ȫ�����300 ��400�Ĵ�С
for i = 1 : 20
    filename = sprintf('%s%d%s', 'neg (', i, ').jpg');
    img = imread(filename);
    [width, length, depth] = size(img); %600 * 800
    img_rotate = img;
    if width > length %��Ҫ��ת 
        img_rotate = imrotate(img, 90);
    end
    img_resize = imresize(img_rotate, [300, 400]);
    imwrite(img_resize, filename);
end