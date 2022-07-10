const container = document.querySelector('.seat-container');
const seats = document.querySelectorAll('.seat-row .seat:not(.occupied)');
const count = document.getElementById('seat-count');
const total = document.getElementById('price-total');
const movieSelect = document.getElementById('movietitle');

populateUI();
let ticketPrice = 1000;

// Save selected movie index and price
function setMovieData(movieIndex, moviePrice) {
  localStorage.setItem('selectedMovieIndex', movieIndex);
  localStorage.setItem('selectedMoviePrice', moviePrice);
}

// update total and count
function updateSelectedCount() {
  const selectedSeats = document.querySelectorAll('.seat-row .seat.selected');

  const seatsIndex = [...selectedSeats].map((seat) => [...seats].indexOf(seat));

  localStorage.setItem('selectedSeats', JSON.stringify(seatsIndex));

  //copy selected seats into arr
  // map through array
  //return new array of indexes

  const selectedSeatsCount = selectedSeats.length;

//  count.innerText = selectedSeatsCount;
//  total.innerText = selectedSeatsCount * ticketPrice;
}

// get data from localstorage and populate ui
function populateUI() {
  const selectedSeats = JSON.parse(localStorage.getItem('selectedSeats'));
  if (selectedSeats !== null && selectedSeats.length > 0) {
    seats.forEach((seat, index) => {
      if (selectedSeats.indexOf(index) > -1) {
        seat.classList.add('selected');
      }
    });
  }

//  const selectedMovieIndex = localStorage.getItem('selectedMovieIndex');
//
//  if (selectedMovieIndex !== null) {
//    movieSelect.selectedIndex = selectedMovieIndex;
//  }
}

// Movie select event
//movieSelect.addEventListener('change', (e) => {
//  ticketPrice = +e.target.value;
//  setMovieData(e.target.selectedIndex, e.target.value);
//  updateSelectedCount();
//});

// Seat click event
container.addEventListener('click', (e) => {
  if (e.target.classList.contains('seat') && !e.target.classList.contains('occupied')) {
    e.target.classList.toggle('selected');

    updateSelectedCount();
  }
});

// intial count and total
updateSelectedCount();