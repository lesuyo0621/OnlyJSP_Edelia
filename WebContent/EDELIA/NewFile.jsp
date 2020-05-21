<!DOCTYPE html>
<head>
<title>Bootstrap Example</title>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">

<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#DemoModal">Click to Launch Demo Modal</button>
<div class="modal fade" id="DemoModal">
   <div class="modal-dailog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">My Modal</h4>
         </div>
         <div class="modal-body">
            <p>Are you sure you want to delete this item?</p>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal">Yes</button>
            <button type="button" class="btn btn-success" data-dismiss="modal">No</button>
         </div>
      </div>
   </div>
</div>
</div>
</body>
</html>