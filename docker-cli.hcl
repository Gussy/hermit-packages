repository = "https://github.com/docker/cli"
description = "Docker CLI"
binaries = ["docker/docker"]
test = "docker -v"

platform "darwin" {
  source = "https://download.docker.com/mac/static/stable/${xarch}/docker-${version}.tgz"
}

platform "linux" {
  source = "https://download.docker.com/linux/static/stable/${xarch}/docker-${version}.tgz"
}

version "20.10.24" "23.0.6" "24.0.9" "25.0.5" "26.0.0" "26.0.1" "26.0.2" "26.1.0"
        "26.1.1" {
  auto-version {
    version-pattern = "docker-([^\\s]+).tgz"

    html {
      // Use darwin/arm64 versions here. This should then support every OS/ARCH combination starting from 20.10.x
      url = "https://download.docker.com/mac/static/stable/aarch64/"
      xpath = "//a[starts-with(@href, 'docker-')]/text()"
    }
  }
}

sha256sums = {
  "https://download.docker.com/linux/static/stable/x86_64/docker-20.10.10.tgz": "1719446f99cd56e87d0c67019996af4ea859f11891bfd89de2252d6c916ccaaa",
  "https://download.docker.com/mac/static/stable/x86_64/docker-20.10.10.tgz": "ae643bab679d2c19ceb0dd1c12422762f829e3d9f4135945b1eb50b7a1ad47da",
  "https://download.docker.com/mac/static/stable/aarch64/docker-20.10.10.tgz": "b4278c35cd2098a0c46280df2bead7f7ea06f2579f624a701b8575879fc132b2",
  "https://download.docker.com/linux/static/stable/x86_64/docker-26.0.0.tgz": "d69e8eedc72d6d219933ab53b8e7f2dbd9e64695d5db68a2df17333db433c456",
  "https://download.docker.com/mac/static/stable/x86_64/docker-26.0.0.tgz": "01412c39306d83366638270c6e17ad7850c3ec832ba2666bbb009287f53fcf33",
  "https://download.docker.com/mac/static/stable/aarch64/docker-26.0.0.tgz": "d9ab2aeaa0a91eeb84d8fd18bf1e48381d774fc7c2b40e22992966efbe9b1e04",
  "https://download.docker.com/linux/static/stable/x86_64/docker-20.10.24.tgz": "ab91092320a87691a1eaf0225b48585db9c69cff0ed4b0f569f744ff765515e3",
  "https://download.docker.com/mac/static/stable/aarch64/docker-20.10.24.tgz": "7daea3a7645ba97956cafffd7f8f854f4ef82adf595182d6e9aecbd23061ba68",
  "https://download.docker.com/mac/static/stable/x86_64/docker-20.10.24.tgz": "97d22adbf25f9f37cd9d6a63b6e382f63ca2e7614f19d48d46c5569213f0b462",
  "https://download.docker.com/linux/static/stable/x86_64/docker-23.0.6.tgz": "544262f4a3621222afb79960bfad4d486935dab80893478b5cc9cf8ebaf409ae",
  "https://download.docker.com/mac/static/stable/x86_64/docker-23.0.6.tgz": "3b32793c3a8f059091536f535a1f580f5f85e16c1bff0172c736b3aa6243cc98",
  "https://download.docker.com/mac/static/stable/aarch64/docker-23.0.6.tgz": "ff1ce3da092a3ec80b1cb60eee0923ccdfe7088cc66003992b894587e8521075",
  "https://download.docker.com/mac/static/stable/x86_64/docker-24.0.9.tgz": "219ba5ceb8865907b55741e0ad6d9759058ce9f909e5e414ae0d8e77a17da1dc",
  "https://download.docker.com/linux/static/stable/x86_64/docker-24.0.9.tgz": "692ecfc28333485d184f628b74c25b2894cee9495a51a5418ba60ef95bf733ca",
  "https://download.docker.com/mac/static/stable/aarch64/docker-24.0.9.tgz": "9b2e86b7603c9b3d958ad1f6bd74a8608b6207550b8694719338fff62d9ee615",
  "https://download.docker.com/mac/static/stable/aarch64/docker-25.0.5.tgz": "860d0261173f0b883d0d0def323ae7e8edae8203def92cca0b9689fb0de1739a",
  "https://download.docker.com/mac/static/stable/x86_64/docker-25.0.5.tgz": "2babe3c42931434534c62f3acf7b42744d9b9a11d6756137b9f6aad1d9094fe9",
  "https://download.docker.com/linux/static/stable/x86_64/docker-25.0.5.tgz": "d5ff82e5fd469aab5ce73f01c27fa4ca8df85e5376d8245d012c73694dc2fc95",
  "https://download.docker.com/mac/static/stable/aarch64/docker-26.0.1.tgz": "af28842d0c3679d296d4d142ea508b7c5767a73b2745e8e30b9179defc82dcab",
  "https://download.docker.com/mac/static/stable/x86_64/docker-26.0.1.tgz": "ea7a026e1d67c98997265cf6f9f775aba58a9eba776430c84c14e80e912450a5",
  "https://download.docker.com/linux/static/stable/x86_64/docker-26.0.1.tgz": "d362e648f6a7cccbe313145864d2316ab3114abb22c15a685427ebd5cb306078",
  "https://download.docker.com/mac/static/stable/x86_64/docker-26.0.2.tgz": "eb44b82f33b9b3974ba8f3d28ab764378505ffef7524ca0afd19a7f6e0ec0f56",
  "https://download.docker.com/mac/static/stable/aarch64/docker-26.0.2.tgz": "99236bc151372a279b0f16bba5a01b7939cfb5959b3125d93fdfac401cb5dd58",
  "https://download.docker.com/linux/static/stable/x86_64/docker-26.0.2.tgz": "118a556898671cceb4d5d726b9114ca5cbbae5b5956716eb92f465932f1c6363",
  "https://download.docker.com/mac/static/stable/aarch64/docker-26.1.0.tgz": "c726b35ca96b6d44f19c7d5154941c67b8b95d50d91fe0b58259178e641313f0",
  "https://download.docker.com/linux/static/stable/x86_64/docker-26.1.0.tgz": "ab46df00fbf4d218a8694da06f9c171760b6cad875924ed251a3a9d57a7180bf",
  "https://download.docker.com/mac/static/stable/x86_64/docker-26.1.0.tgz": "b133a0ec12137530f0d112e1a9ff3ea5e7cdf23b8c8e29afea58c34df4f346a8",
  "https://download.docker.com/mac/static/stable/x86_64/docker-26.1.1.tgz": "5bdd542bb7a62e4d178b3a1f893472ecba1012185abd00331548a3f13f947cf7",
  "https://download.docker.com/mac/static/stable/aarch64/docker-26.1.1.tgz": "63bb1956a93efda9ed0331f11de4e8eed06e5561008eaa1ae3331843b1a9510b",
  "https://download.docker.com/linux/static/stable/x86_64/docker-26.1.1.tgz": "c0ef0ee7d00deb803a6f5fa78d83ec8cbe1848eaaea9fb7071364d526624278f",
}
