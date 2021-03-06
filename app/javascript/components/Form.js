import React, { useState } from 'react';
import Rails from '@rails/ujs'

function Form() {

  const [translation, setTranslation] = useState()

  function handleInput(event) {
    event.preventDefault();
    Rails.ajax({
      url: "/translations",
      type: "POST",
      data: `original_text=${event.target[0].value}`,
      success: (response) => {setTranslation(response); }
    }); 
  }

  return(
      <section className="Form">
        <p>
          Welcome!
          <br/>This is an English to <a href="https://en.wikipedia.org/wiki/Pig_Latin">Pig Latin</a> translator.
          <br/>To translate, enter a word or a sentence in the box below and press Enter on your keyboard.
        </p>
        <form onSubmit= {handleInput} >
          <input type="text" name="user_input" />
        </form>
        <p className="Form-paragraph">
          Input:<br/>
          <b>{ translation && translation.original_text }</b>
        </p>
        <p className="Form-paragraph">
          Translation:<br/>
          <b>{ translation && translation.translated_text }</b>
        </p>
      </section>
    )
}

export default Form;