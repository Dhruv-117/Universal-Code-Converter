always @(*)
begin
    case (sel)
    4'b0000:begin out=in[3:0];
    output_=out[4:0];
    input_=in[4:0];
    errors=0;
    end

    4'b0001:begin out=out_btog[3:0];
    output_=out[4:0];
    input_=in[4:0];
    errors=0;
    end

    4'b0010:begin out=out_btobcd;
    output_=out[4:0];
    input_=in[4:0];
    errors=0;
    end

    4'b0011:begin out=out_btoex[3:0];
    output_=out[4:0];
    input_=in[4:0];
    errors=error[0];
    end

    4'b0100:begin out=out_gtob[3:0];
    output_=out[4:0];
    input_=in[4:0];
    errors=0;
    end

    4'b0101:begin out=in[3:0];
    output_=out[4:0];
    input_=in[4:0];
    errors=0;
    end

    4'b0110:begin out=out_gtobcd;
    output_=out[4:0];
    input_=in[4:0];
    errors=0;
    end

    4'b0111:begin out=out_gtoex[3:0];
    output_=out[4:0];
    input_=in[4:0];
    errors=error[1];
    end

    4'b1000:begin out=out_bcdtob[3:0];
    output_=out[4:0];
    input_=in[4:0];
    errors=error[2];
    end

    4'b1001:begin out=out_bcdtog[3:0];
    output_=out[4:0];
    input_=in[4:0];
    errors=error[3];
    end

    4'b1010:begin out=in;
        if(in>4'b1001 && in<5'b10000)
        begin
            errors=1;
            output_=5'b00000;
            input_=in[4:0];
        end
        else begin
            errors=0;
            output_=out[4:0];
            input_=in[4:0];
        end
    end

    4'b1011:begin out=out_bcdtoex[3:0];
    output_=out[4:0];
    input_=in[4:0];
    errors=error[4];
    end

    4'b1100:begin out=out_extob[3:0];
    output_=out[4:0];
    input_=in[4:0];
    errors=error[5];
    end

    4'b1101:begin out=out_extog[3:0];
    output_=out[4:0];
    input_=in[4:0];
    errors=error[6];
    end

    4'b1110:begin out=out_extobcd;
    output_=out[4:0];
    input_=in[4:0];
    errors=error[7];
    end

    4'b1111:begin out=in[3:0];
        if(in>4'b1001)
        begin
            errors=1;
            output_=5'b00000;
            input_=in[4:0];
        end
        else begin
            errors=0;
            output_=out[4:0];
            input_=in[4:0];
        end
    end

    default: 
    begin
        out     = 8'b00000000;
        output_ = 5'b00000;
        input_  = 5'b00000;
        errors  = 1'b0;
    end
    endcase
end
