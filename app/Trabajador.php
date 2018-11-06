<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Trabajador extends Model
{
    protected $table = "trabajadores";
    protected $primaryKey = 'id_trabajador';

    protected $fillable = [
        'nombre', 'apellido_paterno', 'apellido_materno', 'cedula', 'sexo', 'correo', 'telefono'
    ];

}
