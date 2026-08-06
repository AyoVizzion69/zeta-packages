return {
	name = "ctwm",
	verstion = "4.1.0",
	summary = "Window manager based on TWM (with virtual workspaces)",
	url = "https://www.ctwm.org/dist/ctwm-4.1.0.tar.gz",
	sha256 = "89f6f21e269c641195e6b39fe804537fce79eb0df821b1a696939aeab7444caa",
	deps = {"libX11", "libXext", "libXmu", "libXt", "libSM", "libICE", "libXpm", "libXrandr"}, --missing libjpeg and m4
	build = function (p)
		p:run("make")
		p:run("make install")
	end
}
