use Rack::Static,
<<<<<<< HEAD


:urls => ["/img", "/js", "/css", "/test"],
:root => "."

run lambda { |env|
  [
      200,
      {
          #'Content-Type'  => 'text/html',
          'Cache-Control' => '., max-age=86400'
      },
      File.open('index.html', File::RDONLY)
=======
:urls => ["/images", "/js", "/css"],
:root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
File.open('public/index.html', File::RDONLY)
>>>>>>> b80b44088af59ed35df1ef1bb1da8d3d896eeac2
  ]
}
