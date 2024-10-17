'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "ec77e9965e03b8bdc2959ddf4a2c8d37",
"assets/AssetManifest.bin.json": "67056721e08766d85dce947908ce1de4",
"assets/AssetManifest.json": "be7f349c7b77ad2f1e92cb44c7c30d33",
"assets/assets/icons/aave_icon.png": "34299621874420cabb41de2291c9cdd4",
"assets/assets/icons/affiliate_program_icon_svg.svg": "7fd5f3ef65543b6e8ec7f4470c0fc679",
"assets/assets/icons/arrow_right_fill.png": "47f59171e8088286ecabad2abb0f3afe",
"assets/assets/icons/back_video.svg": "d2efe73dcd6773a3c660466ddd34e827",
"assets/assets/icons/coin_icon.png": "34299621874420cabb41de2291c9cdd4",
"assets/assets/icons/consistebtly_low_icon.svg": "ee62262547d2c7ce0bc08a5aef7180c3",
"assets/assets/icons/copy_icon_svg.svg": "0e54fe3a77eb35272c2582af2384a51d",
"assets/assets/icons/docs_icon_svg.svg": "ed424f2594b5c51dc0b9e5cf68160d30",
"assets/assets/icons/fb_icon.svg": "116dca50e9814997fe8999219a9931e1",
"assets/assets/icons/home_icon_svg.svg": "f47ea139d589ff430ca7f401155965f9",
"assets/assets/icons/how_it_work_icon_svg.svg": "df9b4a060460d2c83758b437a632073c",
"assets/assets/icons/instagram_icon.svg": "d87f64f8ee6eaed091b49f3a676e8dc5",
"assets/assets/icons/interoperability.svg": "e9daee6b941730a487cec11eded51787",
"assets/assets/icons/introduce_icon.svg": "8841cb28fcaee6f18eabb6ee20ff5ec0",
"assets/assets/icons/link_icon.png": "a568e5338145e7ebcae72ad2ede993b2",
"assets/assets/icons/logo.svg": "84e2d9974e04834b54cdb778c491f81c",
"assets/assets/icons/ltr_arrow_icon.svg": "dff6027d8748958795f0398556f2b9df",
"assets/assets/icons/medium_icon.svg": "a59e5b028bb54e999468e7f7b69bc050",
"assets/assets/icons/metamask_icon_svg.svg": "1d49b21e72a2cf77287f7c4ae987c7f4",
"assets/assets/icons/news_icon_svg.svg": "e8ddb87c2143c3fa79ec7b610e60a9c0",
"assets/assets/icons/next_video.svg": "4d6c8f282ef1f9bfbd9cf5573a02a7eb",
"assets/assets/icons/pause_circle_icon.svg": "e6c66e2949d8b97ab8437f537d279f2e",
"assets/assets/icons/play_circle_icon.svg": "4015117809f7f6a09e1f2859fa38d3fd",
"assets/assets/icons/process_icon.svg": "23864d2a99f77ba827cbb4aefd0c14fd",
"assets/assets/icons/rtl_arrow_icon.svg": "ae664d936fadfed2c401f76a4ba65f6b",
"assets/assets/icons/safepal_icon_svg.svg": "d31a6eea7fc38e1a6cae806a59658d12",
"assets/assets/icons/share_icon_svg.svg": "3aad914dcaa213b560d8505d1b2ce9d3",
"assets/assets/icons/telegram_icon.svg": "49235d7197da29ef9836cd1f2deb93f4",
"assets/assets/icons/total_top_up_icon_png.png": "41be5f1e1cdaad0dac815a569748e43a",
"assets/assets/icons/trust_icon_svg.svg": "39031df32f33381034bbf424ff290f4b",
"assets/assets/icons/walletconnect_icon_svg.svg": "58c46d64e1b998cad9d5e9237618b562",
"assets/assets/icons/white_paper_icon_svg.svg": "cdb7f077391a4a932e4e879f60a0ef0c",
"assets/assets/icons/x_icon.svg": "1cac317421067218197450ef2674777d",
"assets/assets/icons/zoom_full_video.svg": "048d24309a18ba2015979536339cfef5",
"assets/assets/images/aave_banner.png": "8bb3583a8f185484bcd60dcc75752a40",
"assets/assets/images/aave_banner_desktop.png": "f1e4cbcbefc88b8a285269778a3c4ca5",
"assets/assets/images/accessibility.svg": "20204ce74d441652fbe051ebaba4d4c6",
"assets/assets/images/banco_central.svg": "39b08bbcc98d9c4b1919f66955eb186f",
"assets/assets/images/bgr_video_blur_img.png": "ef43d6abbea00b3996149396af59004a",
"assets/assets/images/blockchain_apps.png": "c39398b4718a8ee1a9b37d59b64e5769",
"assets/assets/images/blockchain_apps_desktop.png": "e589150ed7216396d4d97ef4e3beae5c",
"assets/assets/images/centrifuge_svg.svg": "9cd31c0ab478b3965123ecba1c1dc3aa",
"assets/assets/images/chart_1.svg": "d72cf1e7b8df9740e070d81d4e7694ca",
"assets/assets/images/chart_2.svg": "d198c4b16d6ec5a778aa9fc9b575fb68",
"assets/assets/images/consensys_svg.svg": "012e8e59a40644952fdf017deab0006d",
"assets/assets/images/decentralized_governance_img.png": "25348bfcfcf4c88744e22d9fe8641d93",
"assets/assets/images/desktop_banner.png": "af8607349078cbac99d858aba26507fc",
"assets/assets/images/desktop_blur.png": "664042db22462fc00fc380149df84139",
"assets/assets/images/fireblocks_svg.svg": "8f4eac087f85b357ce63ed83ef3bc517",
"assets/assets/images/flash_loans_img.png": "277d25f79a90b5ff781b22b4009f0402",
"assets/assets/images/fox.png": "b44b2cb8d830caee7f17c0e10e8ec6d6",
"assets/assets/images/fox.svg": "16972b4c76c321367515f076a4d2a94a",
"assets/assets/images/get_instant_profits_png.png": "88932e09305d3f26ab89498ec3918467",
"assets/assets/images/headerbanner.png": "2ac16aa5f76217dd548ede6d0a6501ca",
"assets/assets/images/high_leverage.svg": "fb0046eb21c22fc801085137ef2d3676",
"assets/assets/images/icon_menu.svg": "aba3c8d92567cfbd82a81d6bb6011b04",
"assets/assets/images/instant_proffit_bgr.svg": "bb9fcdc05306be75769844898f5f8b9e",
"assets/assets/images/instant_profits_png.png": "88932e09305d3f26ab89498ec3918467",
"assets/assets/images/introduce.png": "7fd1f337291959aff89e398233d8fb0b",
"assets/assets/images/introduce_desktop.png": "8292fc3991a7b9a1d940efd413426802",
"assets/assets/images/join_now_banner.png": "4a01b35a8ee56179e91ef1e7210c3558",
"assets/assets/images/jp_morgan_chase_svg.svg": "a5e049c2dcf0d5ea39f2f937fc300b84",
"assets/assets/images/mas_svg.svg": "fd53a1437b762abcaf941c0ba54314f4",
"assets/assets/images/metamask_seeklogo.svg": "554d278c87df77472f617a63b11fc5bd",
"assets/assets/images/metamask_text.svg": "44895d2c027e0c706d0907bfc17cf020",
"assets/assets/images/next_page.svg": "b0ecac6b7562c8a9fc01181bff886d97",
"assets/assets/images/open_source_img.png": "36c72e9a4c4f1f8f7fb70f09bc0e047c",
"assets/assets/images/own_your_data.png": "fe700771b2cd52aefd8a9951ad2e7356",
"assets/assets/images/own_your_data_desktop.png": "a2135bd9a4a9ccbb76f93bf305a93018",
"assets/assets/images/polygon.svg": "528ca341a9eada53bfccd79a3b5cdeb8",
"assets/assets/images/previous_page_icon.svg": "c1d38fed6d423e08f435af940111e0ae",
"assets/assets/images/protocol_img.png": "a18dec8a89ea0d479a4ea16f9d994340",
"assets/assets/images/reputation_img.png": "f2be33877a20114f1949c08d629f116c",
"assets/assets/images/strong_tokenomics_img.png": "6a08c68c4e29bf4a7a8497787328756b",
"assets/assets/images/total_funds_cap_svg.svg": "97858cf151a53d781955c6c09e6a6bbc",
"assets/assets/images/total_funds_used_icon_svg.svg": "d7a1e879571681aeb173e446846a8478",
"assets/assets/images/total_topup_icon_svg.svg": "fd3c1629e156fa908d2d841c09a3ee3b",
"assets/assets/images/trading%2520_opportunities.svg": "0397a7b7b0cd3dcaccbf9636f7f2bab8",
"assets/assets/images/transparency_security.svg": "242b02157eebf3d7a7b28195c5282786",
"assets/assets/images/video_player.png": "a24749219b6be11c3ee6d79d564ad606",
"assets/assets/images/your_wallet_web3.png": "f9188a95b1bde119c73d8904f2f8e216",
"assets/assets/images/your_walleWallet_desktop.png": "ed3cfd1f33ef0eb4153cbbe5e76aae58",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "9833c8bd656c215ca07c3177c7af9eab",
"assets/NOTICES": "e2cb5f613e3909fa58b6ad6c8f451d26",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "54726a94c9a364d7579cc779bfe7cc65",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "67516e75ccc1d5f26fb878ffeb5d1389",
"/": "67516e75ccc1d5f26fb878ffeb5d1389",
"main.dart.js": "9b169fb1574dce83190c35ba5ed6270e",
"manifest.json": "b3ca5dfd2310c013c539283f98b88c4e",
"version.json": "5059111552452e9f3d29fa68a9e67f1f"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
