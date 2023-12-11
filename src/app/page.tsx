export default function Home() {
	return (
		<header className="flex justify-between min-w-screen w-screen">
			<span className="cursor-pointer">EventOps</span>
			<div className="[&>span]:cursor-pointer">
				<span className="mr-2">finalizar dia</span>
				<span>finalizar evento</span>
			</div>
		</header>
	);
}
