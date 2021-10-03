<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Project extends Model
{
    use SoftDeletes;
    use HasFactory;

    protected $fillable = ['client_id', 'name', 'deadline', 'project_value', 'estimation', 'accomodation', 'profit_team', 'profit_company', 'tax', 'progres', 'status'];

    public function client()
    {
        return $this->belongsTo(Client::class);
    }

    public function teams()
    {
        return $this->hasMany(ProjectTeam::class);
    }
}
