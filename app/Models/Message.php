<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Message extends Model
{
    protected $fillable = ['code', 'message', 'isUsed'];
    use HasFactory;
    use SoftDeletes;
}
