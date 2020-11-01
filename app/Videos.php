<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Videos extends Model
{
    protected $fillable = [ 'video_type', 'video_id','title','thumbnail_url','published_at'];
}
