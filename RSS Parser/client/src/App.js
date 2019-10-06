import React from 'react';
import './App.css';

class App extends React.Component {

  constructor(props){
    super(props);
    this.state = {
      items: []
    }
    this.getAll = this.getAll.bind(this);
  }

  componentWillMount(){
    console.log("willMount")
  }

  componentDidMount(){
    console.log("didMount")
    this.getAll();
  }

  getAll=()=>{
    fetch('http://localhost:5000/')
      .then(data => data.json())
      .then((data) => { this.setState({ items: data }) 
      console.log("your data", data)
    });
  }

  render(){
    return (
      <div className="App">
        <table>
          <thead>
            <tr>
              <th>Title</th>
              <th>Location</th>
            </tr>
          </thead>
          <tbody>
            {this.state.items.map(item => {
              return (
                <tr>
                  <td> {item.title}</td>
                  <td> {item.location}</td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>
    );
  }
}

export default App;
