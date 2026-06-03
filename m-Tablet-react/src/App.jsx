export default function App() {
  const jobsExample = "allowed = { 'police', 'lsppd' }"

  return (
    <main className="template-shell">
      <div className="template-glow template-glow-a" />
      <div className="template-glow template-glow-b" />

      <section className="template-card">
        <div className="template-badge">React Custom App</div>
        <h1>Template App</h1>
        <p className="template-lead">
          Minimal React example for m-Tablet. Use this as the starting point for a custom app,
          then change the metadata in the Lua client and the UI here.
        </p>

        <div className="template-grid">
          <article>
            <h2>Public app</h2>
            <p>Leave the app open to everyone with:</p>
            <code>allowed = {'{'} 'all' {'}'}</code>
          </article>

          <article>
            <h2>Job restricted</h2>
            <p>Restrict the app to specific jobs with:</p>
            <code>{jobsExample}</code>
          </article>
        </div>

        <div className="template-note">
          <span>App config lives in</span>
          <strong>client/main.lua</strong>
        </div>
      </section>
    </main>
  )
}
