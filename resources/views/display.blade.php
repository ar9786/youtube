<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="container">
  <h2>Videos</h2>                                                                    
  <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>SNo</th>
        <th>Title</th>
        <th>Thumbnail</th>
        <th>Published Date</th>
        <td>View</td>
      </tr>
    </thead>
    <tbody>
    @php $cnt=1; @endphp
    @foreach ($videoData['data'] as $video)
      <tr>
        <td>{{ $cnt }}</td>
        <td>{{ $video['title'] }}</td>
        <td><img src="{{ $video['thumbnail_url'] }}" height3=0px; width=40px; /></td>
        <td>{{ $video['published_at'] }}</td>
        <td><a href="{{ url('/fetchVideoStatistics/'.$video['video_id']) }}" target="_blank"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
      </tr>
    @php $cnt++; @endphp
    @endforeach
    </tbody>
  </table>
  </div>
</div>

</body>
</html>
