<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class NotificationBill extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $fillable = ['project_id', 'client_id', 'pic_id', 'start_date', 'before_due', 'due_date', 'message'];
    protected $table = 'bills';


    public function client()
    {
        return $this->belongsTo(Client::class);
    }
    public function pic()
    {
        return $this->belongsTo(Pic::class);
    }
    public function project()
    {
        return $this->belongsTo(Project::class);
    }
}
