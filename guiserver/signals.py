import json
import os

class Signals():

    signal_index = {
        0: 'RIP',
        1: 'SVC',
        2: 'HRA',
        3: 'MRA',
        4: 'LRA',
        5: 'RV',
        6: 'RVW',
        14: 'IVC',
        16: 'PA'
    }

    def __init__(self):
        json_file = os.path.abspath('guiserver/signals.json')

        with open(json_file) as f:
            self.ecg_signals = json.load(f)

    def get_signal(self, location, rate, version=0):
        signal = self.ecg_signals[location][version]

        x1 = signal['x']
        y1 = signal['y']

        y1[-1] = y1[0]
        time_beat = x1[-1] - x1[0]
        r = 1 / (rate/60)

        if r > time_beat:
            x1.append(x1[0] + r)
            x1 = [xx - x1[0] for xx in x1]
            y1.append(y1[-1])
        else:
            length = x1[-1] - x1[0]
            d = r / length
            x1.append(x1[0])
            x1 = [xx * d for xx in x1]
            x1 = [xx - x1[0] for xx in x1]

        return x1, y1

if __name__ == "__main__":
    signals = Signals()

    print(signals.get_signal('SVC', 20))
    print(signals.get_signal('SVC', 80))
    print(signals.get_signal('SVC', 120))
