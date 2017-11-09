%读取视频帧
OpenedFileInfo='videos/1109withUAV.avi';
k=1;
%定义储存图片目录
strtmp='pics/';

MyVideoFrames = VideoReader(OpenedFileInfo);
nFrames = MyVideoFrames.NumberOfFrames;
vidHeight = MyVideoFrames.Height;
vidWidth = MyVideoFrames.Width;

Iroi=zeros(vidHeight, vidWidth,'uint8');

for index=1:nFrames
    %hasFrame(OpenedFileInfo)
    imgdata = read(MyVideoFrames,index);
    str=sprintf('%s%d',strtmp,index);
    str=strcat(str,'.jpg');
    imwrite(imgdata,str,'jpg');
    graydata=rgb2gray(imgdata);
    Iroi(:,:,index)=graydata;
    %k=k+1;
end

vid_type='rexp';
save_path='/Users/zmz/Desktop/BUPT/code/videos/mat';
video_number='48';
%name='test1.mat';

save('/Users/zmz/Desktop/BUPT/code/code_cvpr15/work/mat/1109with10frame.mat','Iroi','video_number','vid_type');
