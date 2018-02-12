function cleanQuote(data)
{
    var matches=data.match(/(?<=").*(?=")/g);
    var matchString="";
    for (var x=0;x<matches.length;x++)
    {
        matchString+=matches[x]+"\n";
    }

    return matchString;
}