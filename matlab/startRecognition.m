function [target] = startRecognition(net)
    device = serialport("COM5",9600);
    vid=videoinput('winvideo');
    vid.TriggerRepeat = 100;
    %%vid.FramesPerTrigger = 1;
    vid_src = getselectedsource(vid);
    set(vid,'Timeout',500);
    start(vid);
    
    while true
        
        img = getsnapshot(vid);
        img = imcrop(img,[276,214,635,505]);
        img = imresize(img, 0.1,'nearest');

        grayImg=rgb2gray(im2);
        level=graythresh(grayImg);
        img=im2bw(grayImg,level);

        vec = img(:);
        target = net(vec);
        [maxValue, maxValueIndex]=max(target);
        command = "";
        switch maxValueIndex
            case 1
                command = "S";
            case 2
                command = "F";
            case 3
                command = "R";
            case 4
                command = "L";
        end
        command
        write(device,command,"uint8");
        pause(0.2);

        
        
    end
     write(device,"S","uint8");
    
   
    stop(vid);
    delete(vid);
    clear vid;
end
 
    
    
 