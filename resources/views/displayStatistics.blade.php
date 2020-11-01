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
  <h2>Stastics</h2>
  <div class="row">
    <div class="col-sm-4">      
      <h5>View Count</h5>
      <h5>Like Count</h5>
      <h5>Dislike Count</h5>
      <h5>Favorite Count</h5>
      <h5>Comment Count</h5>
    </div>
    <div class="col-sm-4">
      <p>{{ $videoData['items'][0]["statistics"]["viewCount"] }}</p>
      <p>{{ $videoData['items'][0]["statistics"]["likeCount"] }}</p>
      <p>{{ $videoData['items'][0]["statistics"]["dislikeCount"] }}</p>
      <p>{{ $videoData['items'][0]["statistics"]["favoriteCount"] }}</p>
      <p>{{ $videoData['items'][0]["statistics"]["commentCount"] }}</p>
    </div>
  </div>
</div>

</body>
</html>
