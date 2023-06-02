document.querySelector('#sellForm').addEventListener('submit', async (event) => {
  event.preventDefault();

  const formData = new FormData(event.target);
  
  const response = await fetch('marketplace.php', {
    method: 'POST',
    body: formData
  });

  const messageDiv = document.querySelector('#message');

  if (!response.ok) {
    const errorText = document.createTextNode('Failed to submit. Please try again.');
    messageDiv.appendChild(errorText);
    return;
  }

  const data = await response.json();
  const successText = document.createTextNode(`Item listed successfully with id ${data.id}`);
  messageDiv.appendChild(successText);
});
