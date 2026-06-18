# Wu-Tang Is For The Children

This project started by scraping the classic [Wu-Tang Name Generator](http://www.mess.be/inickgenwuname.php) — the same one that blessed Donald Glover with "Childish Gambino." We ripped all 676 possible two-letter seed combinations, parsed out the words, and built our own local generator.

It's taken a more cyberpunk twist from there

Current word counts:
- **229 first-words** (adjectives/descriptors)
- **230 second-words** (nouns/titles)

## Usage

```bash
./wutang        # one name
./wutang -n 10  # ten names
```

## Sample Names

```
encrypted_codec
cached_swami
neural_assassin
quantum_shogun
permabanned_daemon
synthwave_ronin
glitched_netrunner
mainframe_deckard
su-preme_venom
404_ghost
vaporized_sysadmin
posthuman_samurai
y2k_overlord
telefragd_monk
```

## customizing the lists

Just edit `first-words.txt` or `second-words.txt`. One word per line. The script picks em up automatically.

## the original names

`originals.txt` has the real Wu-Tang Clan members and affiliates for reference. RZA, GZA, ODB, Method Man, Raekwon, Ghostface, Inspectah Deck, U-God, Masta Killa, Cappadonna, and the whole extended universe.

