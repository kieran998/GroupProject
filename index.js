const form = document.querySelector('form');
const searchTermInput = document.querySelector('#searchTerm');
const searchResultsDiv = document.querySelector('#searchResults');

form.addEventListener('submit', async (event) => {
  event.preventDefault();

  const searchTerm = searchTermInput.value.trim();

  if (!searchTerm) {
    searchResultsDiv.innerHTML = '<p>Please enter a search term.</p>';
    return;
  }

  const apiUrl = `marketplace.php?searchTerm=${searchTerm}`;

  try {
    const response = await fetch(apiUrl);
    const data = await response.json();

    searchResultsDiv.innerHTML = '';

    if (data.results.length === 0) {
      searchResultsDiv.innerHTML = '<p>No items found.</p>';
      return;
    }

    data.results.forEach((item) => {
      const imageUrl = item.pic_name || '';
      const name = item.name || '';
      const description = item.description || '';
      const price = item.price || '';
      const seller = item.seller || '';
      const date = item.date || '';

      const searchResultDiv = document.createElement('div');

      const image = document.createElement('img');
      image.src = imageUrl;
      image.alt = name;
      searchResultDiv.appendChild(image);

      const nameHeading = document.createElement('h2');
      nameHeading.textContent = name;
      searchResultDiv.appendChild(nameHeading);

      const descriptionParagraph = document.createElement('p');
      descriptionParagraph.textContent = description.length > 500 ? `${description.slice(0, 500)}...` : description;
      searchResultDiv.appendChild(descriptionParagraph);

      const priceParagraph = document.createElement('p');
      priceParagraph.textContent = `Price: $${price}`;
      searchResultDiv.appendChild(priceParagraph);

      const sellerParagraph = document.createElement('p');
      sellerParagraph.textContent = `Seller: ${seller}`;
      searchResultDiv.appendChild(sellerParagraph);

      const dateParagraph = document.createElement('p');
      dateParagraph.textContent = `Date Listed: ${date}`;
      searchResultDiv.appendChild(dateParagraph);

      // Added Buy Button
      const buyButton = document.createElement('button');
      buyButton.textContent = 'Buy';
      buyButton.addEventListener('click', () => {
        window.location.href = `checkout.html?id=${item.id}`;  // changed 'itemId' to 'id'
      });
      searchResultDiv.appendChild(buyButton);

      searchResultsDiv.appendChild(searchResultDiv);
    });
  } catch (error) {
    console.error(error);
  }
});
