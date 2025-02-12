`include "counter.sv"
`include "upcounter.sv"
`include "downcounter.sv"

module testbench;

    upcounter upcount;
    downcounter downcount;

    initial begin
        // Initial count = 0 Min = -2  Max = 3
      upcount = new(0, -2, 3);

        // Initial count = 0 Min = -2  Max = 3
      downcount = new(0, -2, 3);

      $display("\n Upcounter ");
        $display("Initial Value: %0d", upcount.getcount());

        upcount.next(); #1; 
        upcount.next(); #1;
        upcount.next(); #1;
        upcount.next(); #1;
      $display("roll over: %0d", upcount.getcount());

      $display("\n Downcounter");
        $display("Initial Value: %0d", downcount.getcount());

        downcount.next(); #1;
        downcount.next(); #1;
        downcount.next(); #1;
        downcount.next(); #1;
        $display("After next() (roll over): %0d", downcount.getcount());
    end

endmodule
