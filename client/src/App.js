import React, { useState, useEffect } from 'react';
import './App.css';
import FamousPersonsList from './components/FamousPersonsList';
import ArticleList from './components/ArticleList';


function App() {

  const [selectedPerson, setSelectedPerson] = useState('Famous Person')

  return (
    <div className="App">
      <div class="articles-container">
        <header><h1 contenteditable>Famous People</h1></header>
        <div class="left-sidebar" contenteditable>
          <FamousPersonsList setSelectedPerson={setSelectedPerson}/>
        </div>
        <main contenteditable>Wikipedia Articles for {selectedPerson.first_name} {selectedPerson.second_name}
          {
          selectedPerson &&
          <ArticleList articles={selectedPerson.articles}/>
          }
        </main>
        <footer contenteditable>Filter by Country: United States, Mexico, Canada</footer>
      </div>
    </div>
  );
}

export default App;