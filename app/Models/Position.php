<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Position extends Model
{
    use SoftDeletes;
    use HasFactory;

    protected $fillable = ['position_name'];


    public function employee()
    {
        return $this->hasOne(Employee::class);
    }
}
