`include "counter.sv"
`include "upcounter.sv"
`include "downcounter.sv"

module testbench;

counter counter1;
downcounter downcount;
upcounter upcount;

initial begin
    counter1 = new;
    upcount = new;
    downcount = new;
    // counter1.load(4'b0001);
    // $display("2 # counter= %d",counter1.getcount());
    // $display("4 # counter = %d",counter1.getcount());

    $display("6 #%s %s",upcount.next(),downcount.next());
end

endmodule