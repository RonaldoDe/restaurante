<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mesa extends Model
{
    protected $table = "mesas";

    protected $fillable = [
        'num_mesa', 'tipo_mesa'
    ];
}
