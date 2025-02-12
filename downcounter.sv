class downcounter extends counter;

// #10
function new(int count=0,int minValue = 0, int maxValue = 10);
    super.new(count,minValue,maxValue);
endfunction

function next();
    count--;
    $display("down_count = %d",count);
endfunction

endclass