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


type alias Model = String

model : Model
model = "Quickstart version 1.0.0"


update : Msg -> Model -> Model
update msg model =
  case msg of
    _ -> model


view : Model -> Html Msg
view model =
    h1 [] [ text model ]
