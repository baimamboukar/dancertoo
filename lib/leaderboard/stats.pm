use Dancer2;

get '/' => sub {
    my $stats_data = "leaderboard";
    template 'stats' => { 'data' => $stats_data };
};