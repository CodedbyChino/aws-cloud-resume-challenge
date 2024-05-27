// JavaScript Document

const counter = document.querySelector(".counter-number");
async function updateCounter() {
	try {
	  let response = await fetch("https://6bcq55hh7ezmlpth5zqx3krx4e0lqqoo.lambda-url.us-east-1.on.aws/");
	  if (!response.ok) {
		throw new Error('Network response was not ok');
	  }
	  let data = await response.json();
	  counter.innerHTML = `Views: ${data.views}`;
	} catch (error) {
	  console.error('There was a problem with the fetch operation:', error);
	}
  }
  
  updateCounter();
  