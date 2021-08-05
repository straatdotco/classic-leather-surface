defmodule Leather.Components.Catalogue do
  use Surface.Catalogue

  load_asset "../../../static/css/material.css", as: :material_css
  load_asset "../../../static/css/app.css", as: :app_css
  load_asset "../../../static/js/material.js", as: :app_js

  @impl true
  def config() do
    [
      head_css: """
      <style>#{@material_css}</style>
      <style>#{@app_css}</style>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      """,
      head_js: """
      <script async>
        WebFontConfig = {
          google: { families: [ 'Roboto:300,400,500&display=swap' ] }
        };
        (function() {
          var wf = document.createElement('script');
          wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
          wf.type = 'text/javascript';
          wf.async = 'true';
          var s = document.getElementsByTagName('script')[0];
          s.parentNode.insertBefore(wf, s);
        })();
      </script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
      <script>
        #{@app_js}
      </script>
      """
    ]
  end
end
