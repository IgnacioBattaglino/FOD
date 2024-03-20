program ej3;

type
empleado=record
    num:integer;
    ape:string[20];
    nom:string[15];
    edad:shortint;
    dni: longint;
end;

fempleados = file of empleado;

var

empleados:fempleados;
auxS:string;
auxI:longint;
r:empleado;

begin
    assign (empleados, 'archivo_empleados');
    writeln ('Ingrese 1 para crear un archivo de empleados', #13+#10 ,'Ingrese 2 para abrir el archivo generado y leerlo ')
    readln (auxI);
    if (auxI=1) then begin 
        rewrite (empleados);
        writeln ('Ingrese ')
        r.ape:='xx';
        while (r.ape<>'fin') do begin
            writeln ('Ingrese el apellido del empleado');
            readln (r.ape);
            if (r.ape<>'fin')
                writeln ('Ingrese el nombre del empleado');
                readln (r.nom);
                writeln ('Ingrese el num de empleado');
                readln (r.num);
                writeln ('Ingrese la edad del empleado');
                readln (r.edad);
                writeln ('Ingrese el dni del empleado');
                readln (r.dni); 
                write (empleados,r);
            end;
    end
    else begin
        reset (empleados);
        writeln ('Escriba 1 para listar en pantalla los datos de los empleadaos que tengan un nombre y apellido determinado',#13+#10, )

    end; 

end.
