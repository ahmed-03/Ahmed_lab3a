class counter;

int count;
int max;
int min;

function new(int count = 0, int minValue = 0, int maxValue = 10);
    this.count=count;
    this.max = maxValue;
    this.min = minValue;
endfunction

function void load(input bit count);
    this.count=count;
endfunction

function int getcount();
    return  count;    
endfunction

// #8
function void check_limit(input int value1,input int value2);
    if(value1 > value2) begin
    max  = value1;
    min  = value2;
    end else begin
    min  = value1;
    max  = value2;
    end
endfunction

// #9
function void check_set(input int value3);
    if (value3 < min || value3 > max) begin
        count = min;
        $display("Warning: %d is min or max limit set the count to %d", value3, min);
    end else begin
        count = value3;
    end
endfunction


endclass