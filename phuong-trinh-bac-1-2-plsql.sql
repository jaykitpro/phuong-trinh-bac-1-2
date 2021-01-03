--Phuong trinh bac 1 ax + b = 0
DECLARE
    a number;
    b number;
BEGIN

    a := &a;
    b := &b;

    if a = 0 then
        if b = 0 then
            dbms_output.put_line('Phuong trinh vo so nghiem');
            return;
        else
            dbms_output.put_line('Phuong trinh vo nghiem');
            return;
        end if;
    else
        dbms_output.put_line('Phuong trinh co nghiem x = ' || round(-b/a, 2));
    end if;
END;
/

--Phuong trinh bac 2 ax^2 + bx + c = 0
DECLARE
    a integer;
    b integer;
    c integer;
    x1 number;
    x2 number;
    delta number;
BEGIN

    a := &a;
    b := &b;
    c := &c;
    
    if a = 0 then
        if b = 0 then
            dbms_output.put_line('Phuong trinh vo nghiem');
            return;
        else
            dbms_output.put_line('Phuong trinh co 1 nghiem: x = ' || round(-c/b, 2));
            return;
        end if;
    end if;
    
    delta := b * b - (4 * a * c);
    
    if delta > 0 then
        x1 := (-b + sqrt(delta)) / (2 * a);
        x2 := (-b - sqrt(delta)) / (2 * a);
        dbms_output.put_line('Phuong trinh co 2 nghiem la: ');
        dbms_output.put_line('x1 = ' || round(x1, 2));
        dbms_output.put_line('x2 = ' || round(x2, 2));
    else
        if delta = 0 then
            x1 := (-b / (2 * a));
            dbms_output.put_line('Phuong trinh co nghiem kep: x1 = x2 = ' || round(x1, 2));
        else
            dbms_output.put_line('Phuong trinh vo nghiem');
        end if;
    end if;
END;
/
