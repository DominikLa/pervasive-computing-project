function [mat] = getImagesToCsv(number, target, fileName)
    mat = [];
    vid=videoinput('winvideo');
    vid.TriggerRepeat = 100;
    %%vid.FramesPerTrigger = 1;
    vid_src = getselectedsource(vid);
    set(vid,'Timeout',500);
    start(vid);
    
    for i = 1:number
        img = getsnapshot(vid);
        mat = convertToVector(img, target, mat);
    end
    
    writematrix(mat, strcat('./csvData/', fileName));
    stop(vid);
    delete(vid);
    clear vid;
end
 
    
    
 