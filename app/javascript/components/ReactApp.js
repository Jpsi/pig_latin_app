import React from 'react';
import logo from 'images/pig.png';
import Form from 'components/Form.js';

class ReactApp extends React.Component {
  render() {
    return (
      <div className="ReactApp">
        <header className="ReactApp-header">
          <img src={logo} className="ReactApp-logo" alt="logo" />
        </header>
        <Form />
      </div>
    );
  }
}

export default ReactApp;


