class upcounter extends counter;

function new(int count=0,int minValue = 0, int maxValue = 10);
    super.new(count,minValue,maxValue);
endfunction

function next();
    count++;
    $display("up_count = %d",count);
endfunction


endclass