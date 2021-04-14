<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    use HasFactory;
   
    protected $table = "users1";
    public $timestamps = false;
    protected $filltable=[
        'id',
        'name',
        'email',
        'password',
        'Phone',
    ];
}
