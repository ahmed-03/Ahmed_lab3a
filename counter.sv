class counter;

int count;
int max;
int min;

function new(int count = 0, int minValue = 0, int maxValue = 10);
//   #11
 	this.check_limit(minValue, maxValue);
  	this.check_set(count); 	
endfunction

  function void load(input int count);
//   #12	
    this.check_set(count); 
endfunction

function int getcount();
    return  count;    
endfunction

// #8
function void check_limit(input int value1,input int value2);
    if(value1 > value2) begin
    this.max  = value1;
    this.min  = value2;
    end else begin
    this.min  = value1;
    this.max  = value2;
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