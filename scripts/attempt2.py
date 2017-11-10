#!/usr/bin/env python

import sounddevice as sd


def main():
    duration = 3  # seconds
    fs = 44100
    myrecording = sd.rec(int(duration * fs), samplerate=fs, channels=2)
    sd.play(myrecording, fs)

if __name__ == '__main__':
    main()
