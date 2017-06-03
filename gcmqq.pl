use Mojo::Webqq;
my $client = Mojo::Webqq->new(log_encoding=>"utf-8");
$client->load("ShowMsg");
$client->load("GCM",data=>{
    api_url => 'https://gcm-http.googleapis.com/gcm/send',
    api_key=>'AIzaSyB18io0hduB_3uHxKD3XaebPCecug27ht8',
    registration_ids=>[],
    allow_group=>[],
    ban_group=>[],
    allow_discuss=>[],
    ban_discuss=>[],
});
$client->load("Openqq",data=>{
    listen => [{host=>"0.0.0.0",port=>5000}, ] ,
});
$client->run(); 
