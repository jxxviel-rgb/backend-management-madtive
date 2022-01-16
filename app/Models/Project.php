<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Project extends Model
{
    use SoftDeletes;
    use HasFactory;

    protected $fillable = ['client_id', 'pic_id', 'name', 'type', 'start_project', 'deadline', 'document', 'point', 'support_link', 'project_value', 'monthly_fee', 'estimation', 'accomodation', 'profit_team', 'profit_company', 'tax', 'progres', 'status'];

    public function client()
    {
        return $this->belongsTo(Client::class);
    }
    public function pic()
    {
        return $this->belongsTo(Pic::class);
    }

    public function teams()
    {
        return $this->hasMany(ProjectTeam::class);
    }
    public function cost()
    {
        return $this->hasMany(AdditionalCost::class);
    }
}
