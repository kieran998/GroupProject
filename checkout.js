document.querySelector('#checkoutForm').addEventListener('submit', async (event) => {
  event.preventDefault();

  const urlParams = new URLSearchParams(window.location.search);
  const id = urlParams.get('id');

  const response = await fetch(`marketplace.php?id=${id}`, {
    method: 'DELETE'
  });

  if (!response.ok) {
    alert('Failed to submit. Please try again.');
    return;
  }

  alert('Item purchased successfully!');
});
