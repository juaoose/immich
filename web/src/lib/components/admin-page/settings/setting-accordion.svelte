<script lang="ts">
	import { slide } from 'svelte/transition';
	export let title: string;
	export let subtitle = '';

	export let isOpen = false;
	const toggle = () => (isOpen = !isOpen);
</script>

<div class="border-b-[1px] border-gray-200 dark:border-gray-700 py-4">
	<div class="flex justify-between place-items-center">
		<div>
			<h2 class="font-medium text-immich-primary dark:text-immich-dark-primary">
				{title}
			</h2>

			<p class="text-sm dark:text-immich-dark-fg">{subtitle}</p>
		</div>

		<button
			on:click={toggle}
			aria-expanded={isOpen}
			class="immich-circle-icon-button hover:bg-immich-primary/10 dark:text-immich-dark-fg hover:dark:bg-immich-dark-primary/20 rounded-full p-3 flex place-items-center place-content-center transition-all"
		>
			<svg
				style="tran"
				width="20"
				height="20"
				fill="none"
				stroke-linecap="round"
				stroke-linejoin="round"
				stroke-width="2"
				viewBox="0 0 24 24"
				stroke="currentColor"
			>
				<path d="M19 9l-7 7-7-7" />
			</svg>
		</button>
	</div>

	{#if isOpen}
		<ul transition:slide={{ duration: 250 }} class="mb-2 ml-4">
			<slot />
		</ul>
	{/if}
</div>

<style>
	svg {
		transition: transform 0.2s ease-in;
	}

	[aria-expanded='true'] svg {
		transform: rotate(0.5turn);
	}
</style>
