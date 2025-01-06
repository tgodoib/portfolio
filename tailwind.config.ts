import type { Config } from 'tailwindcss';

export default {
	content: ['./src/**/*.{html,js,svelte,ts}'],

	theme: {
		extend: {
			fontFamily: {
				quantico: ['Quantico', 'monospace'],
				'space-mono': ['Space Mono', { fontFeatureSettings: '"case" 1' }]
			}
		}
	},

	plugins: []
} satisfies Config;
