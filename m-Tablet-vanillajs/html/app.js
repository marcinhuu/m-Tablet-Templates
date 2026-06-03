const params = new URLSearchParams(window.location.search);
const isEmbed = params.get('embed') === '1';

if (isEmbed) {
  document.body.classList.add('embed-mode');
}

window.addEventListener('message', (event) => {
  // Example hook for data sent from Lua with SendToApp.
  if (event.data?.type === 'customAppData') {
    // eslint-disable-next-line no-console
    console.log('[Template App] Data received:', event.data.data);
  }
});
