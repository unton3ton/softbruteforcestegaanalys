### Cлучайное [извлечение](https://github.com/unton3ton/mijn_blind_watermark/blob/master/out.py) из случайного [внедрения](https://huggingface.co/datasets/thonypythony/Binary_classification_for_DCTandSVD_watermarks/blob/main/inDATASET.py) в [Dataset](https://huggingface.co/datasets/thonypythony/Binary_classification_for_DCTandSVD_watermarks/tree/main) не позволило однозначно создать бинарный классификатор-стегаанализатор "есть/нет" ватермарка, как и в случае с [нейросетями](https://github.com/unton3ton/my-check-for-a-result-from-an-ai-article/tree/main/pretrainedstegaanalyzator).  Из "пустых" (индекс 0) что-то (мусорные значения) извлекается из-за режима ***replace*** в строке 85 mijn_blind_watermark/[blind_watermark.py](https://github.com/unton3ton/mijn_blind_watermark/blob/master/blind_watermark.py):

```python
wm = bytes.fromhex(hex(int(byte, base=2))[2:]).decode('utf-8', errors='replace')
```


## Sources

* [Ошибки при конвертации. Параметр errors в decode. Режим replace](https://pyneng.readthedocs.io/ru/latest/book/16_unicode/errors.html)
* [grep. Карманный справочник](https://akawah.ru/linux/grep.html)
* [🐧 16 опций grep, которые помогут вам в реальном мире](https://proglib.io/p/16-opciy-grep-kotorye-pomogut-vam-v-realnom-mire-2021-03-16)
* [Команда grep в Linux](https://losst.pro/gerp-poisk-vnutri-fajlov-v-linux)
* [Grep 'binary file matches'. How to get normal grep output?](https://stackoverflow.com/questions/23512852/grep-binary-file-matches-how-to-get-normal-grep-output)
* [Команда Sed для удаления строки](https://andreyex.ru/linux/komanda-sed-dlya-udaleniya-stroki/)
* [Циклы Bash](https://losst.pro/tsikly-bash)
* [Bash скрипты](https://habr.com/ru/articles/726316/)
