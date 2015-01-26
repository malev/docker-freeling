# Freeling

The FreeLing package consists of a library providing language analysis services (such as morphological analysis, date recognition, PoS tagging, etc.)

The current version provides language identification, tokenizing, sentence splitting, morphological analysis, NE detection and classification, recognition of dates/numbers/physical magnitudes/currency/ratios, phonetic encoding, PoS tagging, shallow parsing, dependency parsing, WN-based sense annotation, Word Sense Disambiguation, and coreference resolution. Future versions are expected to improve performance in existing functionalities, as well as incorporate new features.

FreeLing is designed to be used as an external library from any application requiring this kind of services. Nevertheless, a sample main program is also provided as a basic interface to the library, which enables the user to analyze text files from the command line.

## Usage

This installation is meat to use the client/server mode. There are different configurations that you can use and they are going to influence in the analysis performed.

### Running freeling as a server:

Performing morphological analysis:

    docker run -it --rm malev/freeling analyzer -f $FREELINGSHARE/config/freeling/analyzer.cfg --server --port 50005 --inpf plain --outf morfo

Performing morphological with PoS tagging:

    docker run -it --rm malev/freeling analyzer -f $FREELINGSHARE/config/freeling/analyzer.cfg --server --port 50005 --inpf plain --outf tagged

Asking for the senses of the tagged words:

    docker run -it --rm malev/freeling analyzer -f $FREELINGSHARE/config/freeling/analyzer.cfg --server --port 50005 --inpf plain --outf sense --sense all

With `nec` analysis:

    docker run -it --rm malev/freeling analyzer -f $FREELINGSHARE/config/freeling/analyzer.cfg --server --port 50005 --inpf plain --outf tagged --nec --noflush

## Connect

Get the IP of your Graphite container:

    docker inspect --format '{{.NetworkSettings.IPAddress}}' malev/freeling

And start playing with your client.
