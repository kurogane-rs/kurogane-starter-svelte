<script{% if language == "typescript" %} lang="ts"{% endif %}>
  let message{% if language == "typescript" %}: string{% endif %} = "Hello from Kurogane + Svelte";
</script>

<h1>{message}</h1>
