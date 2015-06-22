class UnnamedApp < Sinatra::Base
get '/' do
    apiSantiago = RestClient.get 'http://api.openweathermap.org/data/2.5/weather?q=santiago'
    hSant = JSON.parse(apiSantiago)
    tempSant = hSant['main']['temp']

    apiBuenos = RestClient.get 'http://api.openweathermap.org/data/2.5/weather?q=buenos,aires'
    hBuenos = JSON.parse(apiBuenos)
    tempBuenos = hBuenos['main']['temp']

    apiLima = RestClient.get 'http://api.openweathermap.org/data/2.5/weather?q=lima'
    hLima = JSON.parse(apiLima)
    tempLima = hLima['main']['temp']

    apiToronto = RestClient.get 'http://api.openweathermap.org/data/2.5/weather?q=toronto'
    hToronto = JSON.parse(apiToronto)
    tempToronto = hToronto['main']['temp']

    apiNW = RestClient.get 'http://api.openweathermap.org/data/2.5/weather?q=newyork'
    hNW = JSON.parse(apiNW)
    tempNW = hNW['main']['temp']

    output = ''

    output << "<tr>
    <h3>El tiempo en varias ciudades, utilizando unidades Kelvin</h3>
    <tr><td>Temperatura Actual en Santiago = #{tempSant}<td></tr>
    <tr><td>Temperatura Actual en Buenos Aires = #{tempBuenos}<td></tr>
    <tr><td>Temperatura Actual en Lima = #{tempLima}<td></tr>
    <tr><td>Temperatura Actual en Toronto = #{tempToronto}<td></tr>
    <tr><td>Temperatura Actual en New York = #{tempNW}<td></tr>
    </tr>"

    
  erb :index, :locals => {results: output }
end
end
