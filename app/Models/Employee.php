<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Employee extends Model
{
    use SoftDeletes;
    use HasFactory;

    protected $fillable = ['position_id', 'name', 'phone_number', 'address', 'salary'];
    protected $with = ['position'];
    public function position()
    {
        return $this->belongsTo(Position::class);
    }
    // public function user()
    // {
    //     return $this->belongsTo(User::class);
    // }
    public function employee()
    {
        return $this->hasOne(User::class);
    }
    public function team()
    {
        return $this->hasMany(ProjectTeam::class);
    }
}
