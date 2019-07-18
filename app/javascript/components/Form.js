import React, { useState } from 'react';

function Form() {

  const [userInput, setUserInput] = useState()

  function handleInput(event) {
    event.preventDefault();
    setUserInput(event.target[0].value)
  }

  return(
      <section className="Form">
        <p>
          Enter word in English to translate into Pig Latin:
        </p>
        <form onSubmit= {handleInput} >
          <input type="text" name="inputtext" />
        </form>
        <p>
          You entered:
        </p>
        { userInput }
      </section>
    )
}

export default Form;