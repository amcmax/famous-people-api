import React, { useState, useEffect } from 'react';
import axios from 'axios';

const ArticleList = ({articles}) => {

  return (
      articles ? 
      <div><ul>
      { articles.map((article) =>
      <li><a href={article.url}>{article.language.name}</a> |    Word Count: {article.word_count}</li> 
    ) } </ul></div>
    :
    <p>No articles available</p>
  )
};
export default ArticleList;