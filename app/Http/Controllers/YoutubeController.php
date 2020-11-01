<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Videos;

class YoutubeController extends Controller
{

    public function index(){
        try{
            
            $channel_URL = \URL::to('/api/fetchYouTubeVideos');
            $json_details = json_decode(file_get_contents($channel_URL), true);
            return view('display', ['videoData'=>$json_details]);
        }catch(\Exception $e){
            return $e->getMessage();
        }
        
    }

    public function fetchVideoStatistics($id=null){
        try{
            $channel_URL = \URL::to('/api/fetchStatistics/'.$id);
            $json_details = json_decode(file_get_contents($channel_URL), true);
            return view('displayStatistics', ['videoData'=>$json_details]);
        }catch(\Exception $e){
            return $e->getMessage();
        }
        
    }

    
}
