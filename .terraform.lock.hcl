# This file is maintained automatically by "terraform init".
# Manual edits may be lost in future updates.

provider "registry.terraform.io/gavinbunney/kubectl" {
  version     = "1.14.0"
  constraints = ">= 1.7.0"
  hashes = [
    "h1:ItrWfCZMzM2JmvDncihBMalNLutsAk7kyyxVRaipftY=",
    "h1:gLFn+RvP37sVzp9qnFCwngRjjFV649r6apjxvJ1E/SE=",
    "zh:0350f3122ff711984bbc36f6093c1fe19043173fad5a904bce27f86afe3cc858",
    "zh:07ca36c7aa7533e8325b38232c77c04d6ef1081cb0bac9d56e8ccd51f12f2030",
    "zh:0c351afd91d9e994a71fe64bbd1662d0024006b3493bb61d46c23ea3e42a7cf5",
    "zh:39f1a0aa1d589a7e815b62b5aa11041040903b061672c4cfc7de38622866cbc4",
    "zh:428d3a321043b78e23c91a8d641f2d08d6b97f74c195c654f04d2c455e017de5",
    "zh:4baf5b1de2dfe9968cc0f57fd4be5a741deb5b34ee0989519267697af5f3eee5",
    "zh:6131a927f9dffa014ab5ca5364ac965fe9b19830d2bbf916a5b2865b956fdfcf",
    "zh:c62e0c9fd052cbf68c5c2612af4f6408c61c7e37b615dc347918d2442dd05e93",
    "zh:f0beffd7ce78f49ead612e4b1aefb7cb6a461d040428f514f4f9cc4e5698ac65",
  ]
}

provider "registry.terraform.io/hashicorp/google" {
  version     = "4.70.0"
  constraints = ">= 3.33.0, >= 3.45.0, >= 3.83.0, >= 4.25.0, >= 4.47.0, != 4.49.0, != 4.50.0, >= 4.51.0, != 4.65.0, != 4.65.1, >= 4.69.1, < 5.0.0"
  hashes = [
    "h1:3nPvQ/hhHjqiayBXLzY3THDxhx0u043bwDTTV0Y8w6k=",
    "h1:5U82BdTzlNkC1S2USGjePJG/F2y1N6FI3ZZJ96IAE58=",
    "zh:1b0366f8ec54e2d2bd201aba24bb8091a84159da666b0d794e9d97eb65a39b4c",
    "zh:3b8fdd08f6585b9075b0e6c1ab67e05264a83d3dafd75abba6a9e485adace7f1",
    "zh:530b49d8416446d03920aebc92b0f363a7d24827e8e31620bc18fac07781582c",
    "zh:54541a962891696199f068fb50b70cf79e68a9050dd72fd8af60b9ee6ea50d15",
    "zh:579a6a695151a7d6685fb5d5a900de6a64f8a7c3a80e7b535ce8374f9ec51922",
    "zh:5996f31420d7ee36b406875c9d77af15faa72334be28c731d9f5de3b7933426a",
    "zh:77b0878ddad0042c37c113db783595beca9aaa5e1ef8130cc37cca61237d8569",
    "zh:7a1d512a2e36464d7983b97d3a76d94c34ab772920d7e8a6fe243b95835d451b",
    "zh:965760a933a214ed86a0bc8a32a8614fef8b969a203137a2335387b455ec9bc4",
    "zh:cfc63c8792d88da3ae560748b565efc6328375a5bd4db460256500b73af51790",
    "zh:de0b33e995f66a0e2c74a28ee54fa22dcc156ac45070789000df05dd3533fbde",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
  ]
}

provider "registry.terraform.io/hashicorp/google-beta" {
  version     = "4.70.0"
  constraints = ">= 3.45.0, >= 4.51.0, != 4.65.0, != 4.65.1, >= 4.69.1, < 5.0.0"
  hashes = [
    "h1:82DfllOBjczA1jrC3BeJPSXcMUMSgKrFNbWqxzXt+T4=",
    "h1:RYs5OCkc73qcdZiBldI7ozAWao8v6yKC1AABenpDclU=",
    "zh:161e6f289537f7270062d1425b0cd901901f7f96f85940eb197c1955f4d3521d",
    "zh:1af261af67982288aa04cc392da7ae914861014aca694e11733d2520ef175a0f",
    "zh:2a8af2e78ebdce03b10386381796c2384f56c67e4df115dfeff552acf2bd8286",
    "zh:5c4b48f66e57697b65604cdcbfab1fe097ef4237b31b4f1b74a79d3fff0aec48",
    "zh:765acb868c1f6a9ea7333f8caf675268f547116ec7ec36e18b83a239ebbd3471",
    "zh:a7e7f5b9ba993f8c3e1060a3c851ded59c373bdc42df8240e360c7b8a87d21a2",
    "zh:b3fa9e15afa6595293ee1c30b3bb24a922aba0c5348e274bcd31aaa9094ee800",
    "zh:b751ef30858dd752bff57b43fbb760624c4ed93bb93c189fa3867025c46dbe38",
    "zh:cd33e984756f317f75ac0e0be9870fd0e6d5a7058f58dea6ea8c910f56b2339b",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
    "zh:f714fdf6295938662b3868cefcc7980df669ae9c3464b31cdcf2adc6887fbb2d",
    "zh:fb7d558191795b32070939d759d44fa16ed027293439992ab2ba56ef6e6c093c",
  ]
}

provider "registry.terraform.io/hashicorp/helm" {
  version     = "2.10.1"
  constraints = ">= 2.3.0"
  hashes = [
    "h1:ctDhNJU4tEcyoUgPzwKuJmbDIqUl25mCY+s/lVHP6Sg=",
    "h1:rssAXPIBWhumMtToGhh63w1euKOgVOi7+9LK6qZtDUQ=",
    "zh:0717312baed39fb0a00576297241b69b419880cad8771bf72dec97ebdc96b200",
    "zh:0e0e287b4e8429a0700143c8159764502eba0b33b1d094bf0d4ef4d93c7802cb",
    "zh:4f74605377dab4065aaad35a2c5fa6186558c6e2e57b9058bdc8a62cf91857b9",
    "zh:505f4af4dedb7a4f8f45b4201900b8e16216bdc2a01cc84fe13cdbf937570e7e",
    "zh:83f37fe692513c0ce307d487248765383e00f9a84ed95f993ce0d3efdf4204d3",
    "zh:840e5a84e1b5744f0211f611a2c6890da58016a40aafd5971f12285164d4e29b",
    "zh:8c03d8dee292fa0367b0511cf3e95b706e034f78025f5dff0388116e1798bf47",
    "zh:937800d1860f6b3adbb20e65f11e5fcd940b21ce8bdb48198630426244691325",
    "zh:c1853aa5cbbdd1d46f4b169e84c3482103f0e8575a9bb044dbde908e27348c5d",
    "zh:c9b0f640590da20931c30818b0b0587aa517d5606cb6e8052e4e4bf38f97b54d",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
    "zh:fe8bd4dd09dc7ca218959eda1ced9115408c2cdc9b4a76964bfa455f3bcadfd3",
  ]
}

provider "registry.terraform.io/hashicorp/http" {
  version = "3.4.0"
  hashes = [
    "h1:h3URn6qAnP36OlSqI1tTuKgPL3GriZaJia9ZDrUvRdg=",
    "h1:m0d6+9xK/9TJSE9Z6nM4IwHXZgod4/jkdsf7CZSpUvo=",
    "zh:56712497a87bc4e91bbaf1a5a2be4b3f9cfa2384baeb20fc9fad0aff8f063914",
    "zh:6661355e1090ebacab16a40ede35b029caffc279d67da73a000b6eecf0b58eba",
    "zh:67b92d343e808b92d7e6c3bbcb9b9d5475fecfed0836963f7feb9d9908bd4c4f",
    "zh:78d5eefdd9e494defcb3c68d282b8f96630502cac21d1ea161f53cfe9bb483b3",
    "zh:86ebb9be9b685c96dbb5c024b55d87526d57a4b127796d6046344f8294d3f28e",
    "zh:902be7cfca4308cba3e1e7ba6fc292629dfd150eb9a9f054a854fa1532b0ceba",
    "zh:9ba26e0215cd53b21fe26a0a98c007de1348b7d13a75ae3cfaf7729e0f2c50bb",
    "zh:a195c941e1f1526147134c257ff549bea4c89c953685acd3d48d9de7a38f39dc",
    "zh:a7967b3d2a8c3e7e1dc9ae381ca753268f9fce756466fe2fc9e414ca2d85a92e",
    "zh:bde56542e9a093434d96bea21c341285737c6d38fea2f05e12ba7b333f3e9c05",
    "zh:c0306f76903024c497fd01f9fd9bace5854c263e87a97bc2e89dcc96d35ca3cc",
    "zh:f9335a6c336171e85f8e3e99c3d31758811a19aeb21fa8c9013d427e155ae2a9",
  ]
}

provider "registry.terraform.io/hashicorp/kubernetes" {
  version     = "2.21.1"
  constraints = "~> 2.10, >= 2.16.1"
  hashes = [
    "h1:I1qWLUFmB0Z8+3CX+XzJtkgiAOYQ1nHlLN9lFcPf+zc=",
    "h1:gP8IU3gFfXYRfGZr5Qws9JryZsOGsluAVpiAoZW7eo0=",
    "zh:156a437d7edd6813e9cb7bdff16ebce28cec08b07ba1b0f5e9cec029a217bc27",
    "zh:1a21c255d8099e303560e252579c54e99b5f24f2efde772c7e39502c62472605",
    "zh:27b2021f86e5eaf6b9ee7c77d7a9e32bc496e59dd0808fb15a5687879736acf6",
    "zh:31fa284c1c873a85c3b5cfc26cf7e7214d27b3b8ba7ea5134ab7d53800894c42",
    "zh:4be9cc1654e994229c0d598f4e07487fc8b513337de9719d79b45ce07fc4e123",
    "zh:5f684ed161f54213a1414ac71b3971a527c3a6bfbaaf687a7c8cc39dcd68c512",
    "zh:6d58f1832665c256afb68110c99c8112926406ae0b64dd5f250c2954fc26928e",
    "zh:9dadfa4a019d1e90decb1fab14278ee2dbefd42e8f58fe7fa567a9bf51b01e0e",
    "zh:a68ce7208a1ef4502528efb8ce9f774db56c421dcaccd3eb10ae68f1324a6963",
    "zh:acdd5b45a7e80bc9d254ad0c2f9cb4715104117425f0d22409685909a790a6dd",
    "zh:f569b65999264a9416862bca5cd2a6177d94ccb0424f3a4ef424428912b9cb3c",
    "zh:fb451e882118fe92e1cb2e60ac2d77592f5f7282b3608b878b5bdc38bbe4fd5b",
  ]
}

provider "registry.terraform.io/hashicorp/random" {
  version     = "3.5.1"
  constraints = ">= 2.1.0"
  hashes = [
    "h1:IL9mSatmwov+e0+++YX2V6uel+dV6bn+fC/cnGDK3Ck=",
    "h1:VSnd9ZIPyfKHOObuQCaKfnjIHRtR7qTw19Rz8tJxm+k=",
    "zh:04e3fbd610cb52c1017d282531364b9c53ef72b6bc533acb2a90671957324a64",
    "zh:119197103301ebaf7efb91df8f0b6e0dd31e6ff943d231af35ee1831c599188d",
    "zh:4d2b219d09abf3b1bb4df93d399ed156cadd61f44ad3baf5cf2954df2fba0831",
    "zh:6130bdde527587bbe2dcaa7150363e96dbc5250ea20154176d82bc69df5d4ce3",
    "zh:6cc326cd4000f724d3086ee05587e7710f032f94fc9af35e96a386a1c6f2214f",
    "zh:78d5eefdd9e494defcb3c68d282b8f96630502cac21d1ea161f53cfe9bb483b3",
    "zh:b6d88e1d28cf2dfa24e9fdcc3efc77adcdc1c3c3b5c7ce503a423efbdd6de57b",
    "zh:ba74c592622ecbcef9dc2a4d81ed321c4e44cddf7da799faa324da9bf52a22b2",
    "zh:c7c5cde98fe4ef1143bd1b3ec5dc04baf0d4cc3ca2c5c7d40d17c0e9b2076865",
    "zh:dac4bad52c940cd0dfc27893507c1e92393846b024c5a9db159a93c534a3da03",
    "zh:de8febe2a2acd9ac454b844a4106ed295ae9520ef54dc8ed2faf29f12716b602",
    "zh:eab0d0495e7e711cca367f7d4df6e322e6c562fc52151ec931176115b83ed014",
  ]
}
