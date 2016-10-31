import Html exposing (Html, text, button, div, section, article, h1, p, a, header, hr, h5, 
                      ol, li, h2, h3, h4, text, form, input, label, fieldset, img, span, h6, footer, button)
import Html.App as App
import Html.Events exposing (onClick, on, onInput)
import Html.Attributes exposing ( id, type', for, value, class, href, class, required, src, disabled, style)
import String


main : Program Never
main = App.beginnerProgram
  { model = model
  , view = view
  , update = update
  }


type Msg =
    AMessage


type alias Model =
  { version : String
  , contributors : List String
  }

model : Model
model =
  { version = "1.0.0"
  , contributors = [ "Pietro Grandi", "Andrei Toma"]
  }


update : Msg -> Model -> Model
update msg model =
  model


view : Model -> Html Msg
view model =
  div [ class "container" ]
    [ header [ class "row" ]
      [ div [ class "col-xs-12 col-sm-12 col-md-12 menu" ]
        [ h1 [] [ text "Elm Quickstart" ] ]
      ]
    , section [ class "row" ]
      [ div [ class "col-xs-12 col-sm-10 col-md-8 col-lg-6" ]
        [ h2 [] [ text "Elm with Gulp and SASS configured" ]
        , h3 [] [ text ( "Version " ++ model.version ) ]
        , p []
          [ text "Have a look at the "
          , a [ href "https://github.com/pietro909/elm-quickstart/blob/master/README.md" ] [ text "readme" ]
          , text " for more information."
          ]
        ]
      ]
    ]
