import React, { useState, useEffect } from 'react';
import axios from 'axios';

const FamousPersonsList = ({setSelectedPerson}) => {

  useEffect(() => {
    axios.get('/api/v1/persons.json')
        .then(res => setPersons(res.data))
      }, []);

  const [persons, setPersons] = useState([]);
  
  function handleClick(person) {
    setSelectedPerson(person)
  }

  return (
      <div>
        {persons.map((person, index) => (
              <div className="person" onClick={() => handleClick(person)}>
                <button>{person.first_name + " " + person.second_name}</button>
              </div>
            ))}
      </div>
  )
};
export default FamousPersonsList;