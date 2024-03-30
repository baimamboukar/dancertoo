package echo;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    template 'index' => { 'title' => 'echo' };
};

get '/stats' => sub {
    my $first = "Chenxhenor 🥷🏾";
    return template 'leaderboard' => { 'first' => $first };
 
};

post '/save' => sub {
    my $first = "Chenxhenor 🥷🏾";
    my $message = "The `save` route has been invocked...";
    return {"message" =>  $message};
 
};

get('/hello',  sub {"Hello World"});


true;
