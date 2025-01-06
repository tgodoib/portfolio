<script lang="ts">
	import { LinkIcon, MailIcon } from 'lucide-svelte';
</script>

{#snippet personalProject(name: string, desc: string, link: string, git: string)}
	<div class="flex gap-6">
		<div class="grow">
			<p class="text-sm">-> {name}</p>
			<p class="text-xs text-gray-500">{desc}</p>
		</div>
		<div class="flex min-w-12 items-center justify-end gap-3">
			{#if link}
				<a href={link}><LinkIcon size="18" color="#22c55e" /></a>
			{/if}
			<a href={git} class="w-[18px]"><img src="github.svg" alt="Github" /></a>
		</div>
	</div>
{/snippet}

<div class="card:border block h-fit min-w-[380px] max-w-[400px] border-black pt-5">
	<div class="flex w-full items-center justify-between gap-5 border-b border-black px-5 pb-4">
		<img src="et.svg" alt="A green alien" />
		<h1 class="grow font-quantico text-[20px] font-bold">TIAGO GODOI BANNWART</h1>
		<a href="mailto:t215386@dac.unicamp.br" class="w-6"><MailIcon size="24px" /></a>
	</div>
	<div class="font-space-mono flex flex-col gap-3 border-b border-black px-5 py-3 text-sm">
		<p>
			-> Estudante de <span class="text-green-500">Engenharia de Computação</span> <br />
			na <span class="text-green-500">Unicamp</span> - Turma de 2021
		</p>
		<p>
			-> Me interesso por
			<br />&nbsp; Redes de Computadores
			<br />&nbsp; Internet das Coisas
			<br />&nbsp; Sistemas Embarcados
			<br />&nbsp; Design & Web
		</p>
	</div>
	<div class="font-space-mono flex flex-col gap-3 px-5 pb-5 pt-3">
		<p class="-mb-[6px] font-bold">&#42; PROJETOS PESSOAIS</p>
		{@render personalProject(
			'Term.ooo Helper',
			'Web app que te ajuda a descobrir a palavra do dia',
			'https://termo.tiagogb.dev.br',
			'https://github.com/tgodoib/Term.ooo-Helper'
		)}

		{@render personalProject(
			'Img2ASCII',
			'Transforme qualquer imagem em caractéries ASCII',
			'https://img2txt.tiagogb.dev.br',
			'https://github.com/tgodoib/ImageToASCII'
		)}

		{@render personalProject(
			'Wifi Controlled LED v2',
			'Controle uma fita de LED endereçável pela Alexa usando ESP8266',
			'',
			'https://github.com/tgodoib/WCL-2'
		)}

		{@render personalProject(
			'Raytracing no navegador',
			'Gere imagens em 3D com THREE.js e WebGL no seu próprio navegador',
			'',
			'https://github.com/tgodoib/Web-RayTracing'
		)}

		<!--{@render personalProject(-->
		<!--	'Open Orbits',-->
		<!--	'Visualizador de órbitas geocêntricas em tempo real',-->
		<!--	'',-->
		<!--	'#'-->
		<!--)}-->

		{@render personalProject(
			'tgb.li',
			'Encurtador de URL minimalista com SvelteKit e SQLite',
			'https://tgb.li',
			'https://github.com/tgodoib/tgb.li'
		)}
	</div>
</div>
