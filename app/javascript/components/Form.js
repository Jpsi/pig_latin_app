import React from 'react';

function Form() {
  function handleInput(event) {
    event.preventDefault();
  }
  return(
      <section className="Form">
        <p>
          Enter word in English to translate into Pig Latin:
        </p>
        <form onSubmit= {handleInput} >
          <input type="text" name="inputtext" />
        </form>
      </section>
    )
}

export default Form;