<script lang="ts">
	import * as Card from '$lib/components/ui/card';
	import memoji from '$lib/assets/memoji.png';
	import { Button } from '$lib/components/ui/button';
	import { Mail, Github, Moon, BookHeart, Link } from 'lucide-svelte';
	import { onMount } from 'svelte';

	let lightMode = false;

	function toggleLightMode() {
		const elemHtmlClasses = document.documentElement.classList;
		const classDark = `dark`;
		lightMode === true ? elemHtmlClasses.remove(classDark) : elemHtmlClasses.add(classDark);
		lightMode = !lightMode;
	}

	onMount(() => {
		toggleLightMode();
	});
</script>

<Button variant="outline" size="icon" on:click={toggleLightMode} class="absolute top-4 right-4">
	<Moon class="h-5 w-5" />
</Button>

<div class="min-h-full flex justify-center items-center">
	<div class="flex gap-4 flex-col h-[200vh] items-stretch md:h-fit md:flex-row">
		<Card.Root class="w-[90vw] md:max-w-sm flex flex-col items-center">
			<Card.Header>
				<Card.Title class="text-2xl tracking-wide">Oie, sou o Tiago 😄</Card.Title>
				<Card.Description>
					<p>
						Estudante de <span class="text-accent-foreground">Engenharia de Computação</span>
						<br />na <span class="text-accent-foreground">Unicamp</span> – Turma de 2021
					</p>
				</Card.Description>
			</Card.Header>
			<Card.Content>
				<div class="w-72 h-72 rounded-full overflow-hidden flex justify-end items-end bg-primary">
					<img src={memoji} alt="Memoji of Tiago" class="w-64 h-64 -mb-1" />
				</div>
			</Card.Content>
			<Card.Footer class="gap-2">
				<Button variant="secondary" size="default" href="mailto:t215386@dac.unicamp.br">
					Entrar em contato
					<Mail class="ml-2 h-4 w-4" />
				</Button>
				<Button variant="secondary" size="default" href="https://github.com/tgodoib" target="_blank">
					<Github class="h-4 w-4" />
				</Button>
			</Card.Footer>
		</Card.Root>

		<Card.Root class="w-[90vw] md:max-w-sm flex flex-col items-center">
			<Card.Header class="flex-grow">
				<Card.Title class="text-2xl tracking-wide flex items-center gap-2">
					<BookHeart />
					Projetos Pessoais
				</Card.Title>
				<Card.Description>
					<p>Desenvolvidos através dos anos usando diversas tecnologias diferentes</p>
				</Card.Description>
			</Card.Header>
			<Card.Content class="flex flex-col gap-2">
				<a href="https://termohelper.tiagogb.dev.br" class="flex items-center gap-2 rounded-sm bg-muted py-2 px-4">
					<div class="flex-grow">
						<p class="text-accent-foreground">Term.ooo Helper</p>
						<p class="text-muted-foreground text-sm">Web app que te ajuda a descobrir a palavra do dia</p>
					</div>
					<Link class="flex-shrink-0" />
				</a>
				<a href="https://img2txt.tiagogb.dev.br" class="flex items-center gap-2 rounded-sm bg-muted py-2 px-4">
					<div class="flex-grow">
						<p class="text-accent-foreground">Img2ASCII</p>
						<p class="text-muted-foreground text-sm">Transforme qualquer imagem em caractéries ASCII</p>
					</div>
					<Link class="flex-shrink-0" />
				</a>
				<a href="https://github.com/tgodoib/WCL-2" class="flex items-center gap-2 rounded-sm bg-muted py-2 px-4">
					<div class="flex-grow">
						<p class="text-accent-foreground">Wifi Controlled LED v2</p>
						<p class="text-muted-foreground text-sm">Contróle uma fita de LED endereçavel pela Alexa usando ESP8266</p>
					</div>
					<Link class="flex-shrink-0" />
				</a>
				<a href="https://github.com/tgodoib/Web-RayTracing" class="flex items-center gap-2 rounded-sm bg-muted py-2 px-4">
					<div class="flex-grow">
						<p class="text-accent-foreground">Raytracing no navegador</p>
						<p class="text-muted-foreground text-sm">Gere imagens em 3D com THREE.js e WebGL no seu próprio navegador</p>
					</div>
					<Link class="flex-shrink-0" />
				</a>
			</Card.Content>
		</Card.Root>
	</div>
</div>
