<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Videos;

class VideoController extends Controller
{
    public $API_Url = 'https://www.googleapis.com/youtube/v3/';
    public function insertYouTubeVideos(){
        try{
            $parameter = [
            'order'=>'date',
            'chart'=>'mostPopular',
            'channelID'=> env("CHANNEL_ID"),
            'part'=> 'snippet',
            'maxResults'=> '10',
            'key'=> env("YOUTUBE_API_KEY")
        ];
            $channel_URL = $this->API_Url . 'search?' . http_build_query($parameter);
            $videos = json_decode(file_get_contents($channel_URL), true);
            foreach($videos['items'] as $video){
                $videoData[] = ['video_type'=>1, 'video_id'=> $video['id']['videoId'],'title'=>$video['snippet']['title'],'thumbnail_url'=>$video['snippet']['thumbnails']['high']['url'],'published_at'=>$video['snippet']['publishedAt']];
            }
            $activity = Videos::insert($videoData);
            if($activity){
                $data = ["message" => "Record created sucessfully"
                ,"status"=>200];
            }else{
            $data = ["message" => "Record not created sucessfully"
            ,"status"=>400];
            }
            return response()->json($data, $data['status']);
        }catch(\Exception $e){
            return response($e->getMessage(),201);
        }
    }

    public function fetchYouTubeVideos(){
        $videos = Videos::paginate(5);
        return response($videos, 200);
    }

    public function fetchStatistics($id=null){     
        try{   
            $url = "https://www.googleapis.com/youtube/v3/videos/";

            $parameter = [
                'part'=>'statistics',
                'id'=> $id,
                'key'=> env("YOUTUBE_API_KEY")
            ];
            $channel_URL = $url . '?' . http_build_query($parameter);
            $video_statistics = json_decode(file_get_contents($channel_URL), true);
            return response($video_statistics, 200);
        }catch(\Exception $e){
            return response($e->getMessage(),201);
        }
    }
    
}
