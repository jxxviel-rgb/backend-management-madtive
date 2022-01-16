<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ProjectCost extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = ['tax', 'profit_team', 'profit_company'];
}
