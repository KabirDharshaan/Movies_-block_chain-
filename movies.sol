// SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract Practise{
 /* struct */
  struct Films{
   string filmName;
   string author;
  }


  struct Movie{
    Films films;
  }
   
   Movie[] public  movie;

  function addValue(string memory _filmName,string memory _author)public{
     movie.push(
       Movie({
           films: Films({
              filmName:_filmName,
              author:_author
           })
       })
     );
  } 
}